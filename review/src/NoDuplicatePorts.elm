module NoDuplicatePorts exposing (rule)

{-| Highlights duplicate port names, which will break the Elm compiler
-}

import Dict exposing (Dict)
import Elm.Syntax.Declaration as Declaration exposing (Declaration)
import Elm.Syntax.Module as Module exposing (Module)
import Elm.Syntax.ModuleName exposing (ModuleName)
import Elm.Syntax.Node as Node exposing (Node)
import Elm.Syntax.Range exposing (Range)
import Review.Rule as Rule exposing (Direction, Error, Rule)


error : { message : String, details : List String }
error =
    { message = "Ensure that port names are unique across your project."
    , details = [ "This port has been defined elsewhere." ]
    }


rule : Rule
rule =
    Rule.newProjectRuleSchema "NoDuplicatePorts" initialProjectContext
        |> Rule.withModuleVisitor moduleVisitor
        |> Rule.withModuleContext
            { fromProjectToModule = fromProjectToModule
            , fromModuleToProject = fromModuleToProject
            , foldProjectContexts = foldProjectContexts
            }
        |> Rule.withFinalProjectEvaluation finalProjectEvaluation
        |> Rule.fromProjectRuleSchema


moduleVisitor : Rule.ModuleRuleSchema {} ModuleContext -> Rule.ModuleRuleSchema { hasAtLeastOneVisitor : () } ModuleContext
moduleVisitor schema =
    schema
        |> Rule.withModuleDefinitionVisitor moduleDefinitionVisitor
        |> Rule.withDeclarationVisitor declarationVisitor


moduleDefinitionVisitor : Node Module -> ModuleContext -> ( List (Error {}), ModuleContext )
moduleDefinitionVisitor node context =
    ( [], context )


declarationVisitor : Node Declaration -> Direction -> ModuleContext -> ( List (Error {}), ModuleContext )
declarationVisitor node direction context =
    case ( direction, Node.value node ) of
        ( Rule.OnEnter, Declaration.PortDeclaration { name } ) ->
            ( [], Dict.insert (Node.value name) (Node.range name) context )

        _ ->
            ( [], context )


type alias PortLocation =
    ( Rule.ModuleKey, Range )


type alias ProjectContext =
    Dict String (Dict ModuleName PortLocation)


type alias ModuleContext =
    Dict String Range


initialProjectContext : ProjectContext
initialProjectContext =
    Dict.empty


fromProjectToModule : Rule.ModuleKey -> Node ModuleName -> ProjectContext -> ModuleContext
fromProjectToModule _ _ _ =
    Dict.empty


fromModuleToProject : Rule.ModuleKey -> Node ModuleName -> ModuleContext -> ProjectContext
fromModuleToProject moduleKey moduleNameNode =
    Dict.map (fromModuleToProjectPort moduleKey moduleNameNode)


fromModuleToProjectPort : Rule.ModuleKey -> Node ModuleName -> String -> Range -> Dict ModuleName PortLocation
fromModuleToProjectPort moduleKey moduleNameNode _ range =
    Dict.singleton (Node.value moduleNameNode) ( moduleKey, range )


foldProjectContexts : ProjectContext -> ProjectContext -> ProjectContext
foldProjectContexts newPorts oldPorts =
    Dict.merge Dict.insert mergePortLocationDicts Dict.insert newPorts oldPorts Dict.empty


mergePortLocationDicts : String -> Dict ModuleName PortLocation -> Dict ModuleName PortLocation -> ProjectContext -> ProjectContext
mergePortLocationDicts portName newLocations oldLocations =
    Dict.insert portName (Dict.union newLocations oldLocations)


finalProjectEvaluation : ProjectContext -> List (Error scope)
finalProjectEvaluation projectContext =
    projectContext
        |> Dict.values
        |> List.map errorsFromPortLocations
        |> List.concat


errorsFromPortLocations : Dict ModuleName PortLocation -> List (Error scope)
errorsFromPortLocations locations =
    if Dict.size locations < 2 then
        []

    else
        locations
            |> Dict.values
            |> List.map errorFromPortLocation


errorFromPortLocation : ( Rule.ModuleKey, Range ) -> Error scope
errorFromPortLocation ( moduleKey, range ) =
    Rule.errorForModule moduleKey error range
