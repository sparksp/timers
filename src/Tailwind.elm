module Tailwind exposing
    ( absolute
    , align_baseline
    , align_bottom
    , align_middle
    , align_text_bottom
    , align_text_top
    , align_top
    , antialiased
    , appearance_none
    , bg_auto
    , bg_black
    , bg_blue_100
    , bg_blue_200
    , bg_blue_300
    , bg_blue_400
    , bg_blue_500
    , bg_blue_600
    , bg_blue_700
    , bg_blue_800
    , bg_blue_900
    , bg_bottom
    , bg_center
    , bg_contain
    , bg_cover
    , bg_fixed
    , bg_gray_100
    , bg_gray_200
    , bg_gray_300
    , bg_gray_400
    , bg_gray_500
    , bg_gray_600
    , bg_gray_700
    , bg_gray_800
    , bg_gray_900
    , bg_green_100
    , bg_green_200
    , bg_green_300
    , bg_green_400
    , bg_green_500
    , bg_green_600
    , bg_green_700
    , bg_green_800
    , bg_green_900
    , bg_indigo_100
    , bg_indigo_200
    , bg_indigo_300
    , bg_indigo_400
    , bg_indigo_500
    , bg_indigo_600
    , bg_indigo_700
    , bg_indigo_800
    , bg_indigo_900
    , bg_left
    , bg_left_bottom
    , bg_left_top
    , bg_local
    , bg_no_repeat
    , bg_orange_100
    , bg_orange_200
    , bg_orange_300
    , bg_orange_400
    , bg_orange_500
    , bg_orange_600
    , bg_orange_700
    , bg_orange_800
    , bg_orange_900
    , bg_pink_100
    , bg_pink_200
    , bg_pink_300
    , bg_pink_400
    , bg_pink_500
    , bg_pink_600
    , bg_pink_700
    , bg_pink_800
    , bg_pink_900
    , bg_purple_100
    , bg_purple_200
    , bg_purple_300
    , bg_purple_400
    , bg_purple_500
    , bg_purple_600
    , bg_purple_700
    , bg_purple_800
    , bg_purple_900
    , bg_red_100
    , bg_red_200
    , bg_red_300
    , bg_red_400
    , bg_red_500
    , bg_red_600
    , bg_red_700
    , bg_red_800
    , bg_red_900
    , bg_repeat
    , bg_repeat_round
    , bg_repeat_space
    , bg_repeat_x
    , bg_repeat_y
    , bg_right
    , bg_right_bottom
    , bg_right_top
    , bg_scroll
    , bg_teal_100
    , bg_teal_200
    , bg_teal_300
    , bg_teal_400
    , bg_teal_500
    , bg_teal_600
    , bg_teal_700
    , bg_teal_800
    , bg_teal_900
    , bg_top
    , bg_transparent
    , bg_white
    , bg_yellow_100
    , bg_yellow_200
    , bg_yellow_300
    , bg_yellow_400
    , bg_yellow_500
    , bg_yellow_600
    , bg_yellow_700
    , bg_yellow_800
    , bg_yellow_900
    , block
    , border
    , border_0
    , border_2
    , border_4
    , border_8
    , border_b
    , border_b_0
    , border_b_2
    , border_b_4
    , border_b_8
    , border_black
    , border_blue_100
    , border_blue_200
    , border_blue_300
    , border_blue_400
    , border_blue_500
    , border_blue_600
    , border_blue_700
    , border_blue_800
    , border_blue_900
    , border_collapse
    , border_dashed
    , border_dotted
    , border_double
    , border_gray_100
    , border_gray_200
    , border_gray_300
    , border_gray_400
    , border_gray_500
    , border_gray_600
    , border_gray_700
    , border_gray_800
    , border_gray_900
    , border_green_100
    , border_green_200
    , border_green_300
    , border_green_400
    , border_green_500
    , border_green_600
    , border_green_700
    , border_green_800
    , border_green_900
    , border_indigo_100
    , border_indigo_200
    , border_indigo_300
    , border_indigo_400
    , border_indigo_500
    , border_indigo_600
    , border_indigo_700
    , border_indigo_800
    , border_indigo_900
    , border_l
    , border_l_0
    , border_l_2
    , border_l_4
    , border_l_8
    , border_none
    , border_orange_100
    , border_orange_200
    , border_orange_300
    , border_orange_400
    , border_orange_500
    , border_orange_600
    , border_orange_700
    , border_orange_800
    , border_orange_900
    , border_pink_100
    , border_pink_200
    , border_pink_300
    , border_pink_400
    , border_pink_500
    , border_pink_600
    , border_pink_700
    , border_pink_800
    , border_pink_900
    , border_purple_100
    , border_purple_200
    , border_purple_300
    , border_purple_400
    , border_purple_500
    , border_purple_600
    , border_purple_700
    , border_purple_800
    , border_purple_900
    , border_r
    , border_r_0
    , border_r_2
    , border_r_4
    , border_r_8
    , border_red_100
    , border_red_200
    , border_red_300
    , border_red_400
    , border_red_500
    , border_red_600
    , border_red_700
    , border_red_800
    , border_red_900
    , border_separate
    , border_solid
    , border_t
    , border_t_0
    , border_t_2
    , border_t_4
    , border_t_8
    , border_teal_100
    , border_teal_200
    , border_teal_300
    , border_teal_400
    , border_teal_500
    , border_teal_600
    , border_teal_700
    , border_teal_800
    , border_teal_900
    , border_transparent
    , border_white
    , border_yellow_100
    , border_yellow_200
    , border_yellow_300
    , border_yellow_400
    , border_yellow_500
    , border_yellow_600
    , border_yellow_700
    , border_yellow_800
    , border_yellow_900
    , bottom_0
    , bottom_auto
    , box_border
    , box_content
    , break_all
    , break_normal
    , break_words
    , capitalize
    , classList
    , clear_both
    , clear_left
    , clear_right
    , clearfix__after
    , col_auto
    , col_end_1
    , col_end_10
    , col_end_11
    , col_end_12
    , col_end_13
    , col_end_2
    , col_end_3
    , col_end_4
    , col_end_5
    , col_end_6
    , col_end_7
    , col_end_8
    , col_end_9
    , col_end_auto
    , col_gap_0
    , col_gap_1
    , col_gap_10
    , col_gap_12
    , col_gap_16
    , col_gap_2
    , col_gap_20
    , col_gap_24
    , col_gap_3
    , col_gap_32
    , col_gap_4
    , col_gap_40
    , col_gap_48
    , col_gap_5
    , col_gap_56
    , col_gap_6
    , col_gap_64
    , col_gap_8
    , col_gap_px
    , col_span_1
    , col_span_10
    , col_span_11
    , col_span_12
    , col_span_2
    , col_span_3
    , col_span_4
    , col_span_5
    , col_span_6
    , col_span_7
    , col_span_8
    , col_span_9
    , col_start_1
    , col_start_10
    , col_start_11
    , col_start_12
    , col_start_13
    , col_start_2
    , col_start_3
    , col_start_4
    , col_start_5
    , col_start_6
    , col_start_7
    , col_start_8
    , col_start_9
    , col_start_auto
    , container
    , content_around
    , content_between
    , content_center
    , content_end
    , content_start
    , cursor_auto
    , cursor_default
    , cursor_move
    , cursor_not_allowed
    , cursor_pointer
    , cursor_text
    , cursor_wait
    , duration_100
    , duration_1000
    , duration_150
    , duration_200
    , duration_300
    , duration_500
    , duration_700
    , duration_75
    , ease_in
    , ease_in_out
    , ease_linear
    , ease_out
    , fill_current
    , fixed
    , flex
    , flex_1
    , flex_auto
    , flex_col
    , flex_col_reverse
    , flex_grow
    , flex_grow_0
    , flex_initial
    , flex_no_wrap
    , flex_none
    , flex_row
    , flex_row_reverse
    , flex_shrink
    , flex_shrink_0
    , flex_wrap
    , flex_wrap_reverse
    , float_left
    , float_none
    , float_right
    , focus__bg_black
    , focus__bg_blue_100
    , focus__bg_blue_200
    , focus__bg_blue_300
    , focus__bg_blue_400
    , focus__bg_blue_500
    , focus__bg_blue_600
    , focus__bg_blue_700
    , focus__bg_blue_800
    , focus__bg_blue_900
    , focus__bg_gray_100
    , focus__bg_gray_200
    , focus__bg_gray_300
    , focus__bg_gray_400
    , focus__bg_gray_500
    , focus__bg_gray_600
    , focus__bg_gray_700
    , focus__bg_gray_800
    , focus__bg_gray_900
    , focus__bg_green_100
    , focus__bg_green_200
    , focus__bg_green_300
    , focus__bg_green_400
    , focus__bg_green_500
    , focus__bg_green_600
    , focus__bg_green_700
    , focus__bg_green_800
    , focus__bg_green_900
    , focus__bg_indigo_100
    , focus__bg_indigo_200
    , focus__bg_indigo_300
    , focus__bg_indigo_400
    , focus__bg_indigo_500
    , focus__bg_indigo_600
    , focus__bg_indigo_700
    , focus__bg_indigo_800
    , focus__bg_indigo_900
    , focus__bg_orange_100
    , focus__bg_orange_200
    , focus__bg_orange_300
    , focus__bg_orange_400
    , focus__bg_orange_500
    , focus__bg_orange_600
    , focus__bg_orange_700
    , focus__bg_orange_800
    , focus__bg_orange_900
    , focus__bg_pink_100
    , focus__bg_pink_200
    , focus__bg_pink_300
    , focus__bg_pink_400
    , focus__bg_pink_500
    , focus__bg_pink_600
    , focus__bg_pink_700
    , focus__bg_pink_800
    , focus__bg_pink_900
    , focus__bg_purple_100
    , focus__bg_purple_200
    , focus__bg_purple_300
    , focus__bg_purple_400
    , focus__bg_purple_500
    , focus__bg_purple_600
    , focus__bg_purple_700
    , focus__bg_purple_800
    , focus__bg_purple_900
    , focus__bg_red_100
    , focus__bg_red_200
    , focus__bg_red_300
    , focus__bg_red_400
    , focus__bg_red_500
    , focus__bg_red_600
    , focus__bg_red_700
    , focus__bg_red_800
    , focus__bg_red_900
    , focus__bg_teal_100
    , focus__bg_teal_200
    , focus__bg_teal_300
    , focus__bg_teal_400
    , focus__bg_teal_500
    , focus__bg_teal_600
    , focus__bg_teal_700
    , focus__bg_teal_800
    , focus__bg_teal_900
    , focus__bg_transparent
    , focus__bg_white
    , focus__bg_yellow_100
    , focus__bg_yellow_200
    , focus__bg_yellow_300
    , focus__bg_yellow_400
    , focus__bg_yellow_500
    , focus__bg_yellow_600
    , focus__bg_yellow_700
    , focus__bg_yellow_800
    , focus__bg_yellow_900
    , focus__border_black
    , focus__border_blue_100
    , focus__border_blue_200
    , focus__border_blue_300
    , focus__border_blue_400
    , focus__border_blue_500
    , focus__border_blue_600
    , focus__border_blue_700
    , focus__border_blue_800
    , focus__border_blue_900
    , focus__border_gray_100
    , focus__border_gray_200
    , focus__border_gray_300
    , focus__border_gray_400
    , focus__border_gray_500
    , focus__border_gray_600
    , focus__border_gray_700
    , focus__border_gray_800
    , focus__border_gray_900
    , focus__border_green_100
    , focus__border_green_200
    , focus__border_green_300
    , focus__border_green_400
    , focus__border_green_500
    , focus__border_green_600
    , focus__border_green_700
    , focus__border_green_800
    , focus__border_green_900
    , focus__border_indigo_100
    , focus__border_indigo_200
    , focus__border_indigo_300
    , focus__border_indigo_400
    , focus__border_indigo_500
    , focus__border_indigo_600
    , focus__border_indigo_700
    , focus__border_indigo_800
    , focus__border_indigo_900
    , focus__border_orange_100
    , focus__border_orange_200
    , focus__border_orange_300
    , focus__border_orange_400
    , focus__border_orange_500
    , focus__border_orange_600
    , focus__border_orange_700
    , focus__border_orange_800
    , focus__border_orange_900
    , focus__border_pink_100
    , focus__border_pink_200
    , focus__border_pink_300
    , focus__border_pink_400
    , focus__border_pink_500
    , focus__border_pink_600
    , focus__border_pink_700
    , focus__border_pink_800
    , focus__border_pink_900
    , focus__border_purple_100
    , focus__border_purple_200
    , focus__border_purple_300
    , focus__border_purple_400
    , focus__border_purple_500
    , focus__border_purple_600
    , focus__border_purple_700
    , focus__border_purple_800
    , focus__border_purple_900
    , focus__border_red_100
    , focus__border_red_200
    , focus__border_red_300
    , focus__border_red_400
    , focus__border_red_500
    , focus__border_red_600
    , focus__border_red_700
    , focus__border_red_800
    , focus__border_red_900
    , focus__border_teal_100
    , focus__border_teal_200
    , focus__border_teal_300
    , focus__border_teal_400
    , focus__border_teal_500
    , focus__border_teal_600
    , focus__border_teal_700
    , focus__border_teal_800
    , focus__border_teal_900
    , focus__border_transparent
    , focus__border_white
    , focus__border_yellow_100
    , focus__border_yellow_200
    , focus__border_yellow_300
    , focus__border_yellow_400
    , focus__border_yellow_500
    , focus__border_yellow_600
    , focus__border_yellow_700
    , focus__border_yellow_800
    , focus__border_yellow_900
    , focus__font_black
    , focus__font_bold
    , focus__font_extrabold
    , focus__font_hairline
    , focus__font_light
    , focus__font_medium
    , focus__font_normal
    , focus__font_semibold
    , focus__font_thin
    , focus__line_through
    , focus__neg_rotate_180
    , focus__neg_rotate_45
    , focus__neg_rotate_90
    , focus__neg_skew_x_12
    , focus__neg_skew_x_3
    , focus__neg_skew_x_6
    , focus__neg_skew_y_12
    , focus__neg_skew_y_3
    , focus__neg_skew_y_6
    , focus__neg_translate_x_1
    , focus__neg_translate_x_10
    , focus__neg_translate_x_12
    , focus__neg_translate_x_16
    , focus__neg_translate_x_1over2
    , focus__neg_translate_x_2
    , focus__neg_translate_x_20
    , focus__neg_translate_x_24
    , focus__neg_translate_x_3
    , focus__neg_translate_x_32
    , focus__neg_translate_x_4
    , focus__neg_translate_x_40
    , focus__neg_translate_x_48
    , focus__neg_translate_x_5
    , focus__neg_translate_x_56
    , focus__neg_translate_x_6
    , focus__neg_translate_x_64
    , focus__neg_translate_x_8
    , focus__neg_translate_x_full
    , focus__neg_translate_x_px
    , focus__neg_translate_y_1
    , focus__neg_translate_y_10
    , focus__neg_translate_y_12
    , focus__neg_translate_y_16
    , focus__neg_translate_y_1over2
    , focus__neg_translate_y_2
    , focus__neg_translate_y_20
    , focus__neg_translate_y_24
    , focus__neg_translate_y_3
    , focus__neg_translate_y_32
    , focus__neg_translate_y_4
    , focus__neg_translate_y_40
    , focus__neg_translate_y_48
    , focus__neg_translate_y_5
    , focus__neg_translate_y_56
    , focus__neg_translate_y_6
    , focus__neg_translate_y_64
    , focus__neg_translate_y_8
    , focus__neg_translate_y_full
    , focus__neg_translate_y_px
    , focus__no_underline
    , focus__not_sr_only
    , focus__opacity_0
    , focus__opacity_100
    , focus__opacity_25
    , focus__opacity_50
    , focus__opacity_75
    , focus__outline_none
    , focus__placeholder_black__focus
    , focus__placeholder_blue_100__focus
    , focus__placeholder_blue_200__focus
    , focus__placeholder_blue_300__focus
    , focus__placeholder_blue_400__focus
    , focus__placeholder_blue_500__focus
    , focus__placeholder_blue_600__focus
    , focus__placeholder_blue_700__focus
    , focus__placeholder_blue_800__focus
    , focus__placeholder_blue_900__focus
    , focus__placeholder_gray_100__focus
    , focus__placeholder_gray_200__focus
    , focus__placeholder_gray_300__focus
    , focus__placeholder_gray_400__focus
    , focus__placeholder_gray_500__focus
    , focus__placeholder_gray_600__focus
    , focus__placeholder_gray_700__focus
    , focus__placeholder_gray_800__focus
    , focus__placeholder_gray_900__focus
    , focus__placeholder_green_100__focus
    , focus__placeholder_green_200__focus
    , focus__placeholder_green_300__focus
    , focus__placeholder_green_400__focus
    , focus__placeholder_green_500__focus
    , focus__placeholder_green_600__focus
    , focus__placeholder_green_700__focus
    , focus__placeholder_green_800__focus
    , focus__placeholder_green_900__focus
    , focus__placeholder_indigo_100__focus
    , focus__placeholder_indigo_200__focus
    , focus__placeholder_indigo_300__focus
    , focus__placeholder_indigo_400__focus
    , focus__placeholder_indigo_500__focus
    , focus__placeholder_indigo_600__focus
    , focus__placeholder_indigo_700__focus
    , focus__placeholder_indigo_800__focus
    , focus__placeholder_indigo_900__focus
    , focus__placeholder_orange_100__focus
    , focus__placeholder_orange_200__focus
    , focus__placeholder_orange_300__focus
    , focus__placeholder_orange_400__focus
    , focus__placeholder_orange_500__focus
    , focus__placeholder_orange_600__focus
    , focus__placeholder_orange_700__focus
    , focus__placeholder_orange_800__focus
    , focus__placeholder_orange_900__focus
    , focus__placeholder_pink_100__focus
    , focus__placeholder_pink_200__focus
    , focus__placeholder_pink_300__focus
    , focus__placeholder_pink_400__focus
    , focus__placeholder_pink_500__focus
    , focus__placeholder_pink_600__focus
    , focus__placeholder_pink_700__focus
    , focus__placeholder_pink_800__focus
    , focus__placeholder_pink_900__focus
    , focus__placeholder_purple_100__focus
    , focus__placeholder_purple_200__focus
    , focus__placeholder_purple_300__focus
    , focus__placeholder_purple_400__focus
    , focus__placeholder_purple_500__focus
    , focus__placeholder_purple_600__focus
    , focus__placeholder_purple_700__focus
    , focus__placeholder_purple_800__focus
    , focus__placeholder_purple_900__focus
    , focus__placeholder_red_100__focus
    , focus__placeholder_red_200__focus
    , focus__placeholder_red_300__focus
    , focus__placeholder_red_400__focus
    , focus__placeholder_red_500__focus
    , focus__placeholder_red_600__focus
    , focus__placeholder_red_700__focus
    , focus__placeholder_red_800__focus
    , focus__placeholder_red_900__focus
    , focus__placeholder_teal_100__focus
    , focus__placeholder_teal_200__focus
    , focus__placeholder_teal_300__focus
    , focus__placeholder_teal_400__focus
    , focus__placeholder_teal_500__focus
    , focus__placeholder_teal_600__focus
    , focus__placeholder_teal_700__focus
    , focus__placeholder_teal_800__focus
    , focus__placeholder_teal_900__focus
    , focus__placeholder_transparent__focus
    , focus__placeholder_white__focus
    , focus__placeholder_yellow_100__focus
    , focus__placeholder_yellow_200__focus
    , focus__placeholder_yellow_300__focus
    , focus__placeholder_yellow_400__focus
    , focus__placeholder_yellow_500__focus
    , focus__placeholder_yellow_600__focus
    , focus__placeholder_yellow_700__focus
    , focus__placeholder_yellow_800__focus
    , focus__placeholder_yellow_900__focus
    , focus__rotate_0
    , focus__rotate_180
    , focus__rotate_45
    , focus__rotate_90
    , focus__scale_0
    , focus__scale_100
    , focus__scale_105
    , focus__scale_110
    , focus__scale_125
    , focus__scale_150
    , focus__scale_50
    , focus__scale_75
    , focus__scale_90
    , focus__scale_95
    , focus__scale_x_0
    , focus__scale_x_100
    , focus__scale_x_105
    , focus__scale_x_110
    , focus__scale_x_125
    , focus__scale_x_150
    , focus__scale_x_50
    , focus__scale_x_75
    , focus__scale_x_90
    , focus__scale_x_95
    , focus__scale_y_0
    , focus__scale_y_100
    , focus__scale_y_105
    , focus__scale_y_110
    , focus__scale_y_125
    , focus__scale_y_150
    , focus__scale_y_50
    , focus__scale_y_75
    , focus__scale_y_90
    , focus__scale_y_95
    , focus__shadow
    , focus__shadow_2xl
    , focus__shadow_inner
    , focus__shadow_lg
    , focus__shadow_md
    , focus__shadow_none
    , focus__shadow_outline
    , focus__shadow_sm
    , focus__shadow_xl
    , focus__shadow_xs
    , focus__skew_x_0
    , focus__skew_x_12
    , focus__skew_x_3
    , focus__skew_x_6
    , focus__skew_y_0
    , focus__skew_y_12
    , focus__skew_y_3
    , focus__skew_y_6
    , focus__sr_only
    , focus__text_black
    , focus__text_blue_100
    , focus__text_blue_200
    , focus__text_blue_300
    , focus__text_blue_400
    , focus__text_blue_500
    , focus__text_blue_600
    , focus__text_blue_700
    , focus__text_blue_800
    , focus__text_blue_900
    , focus__text_gray_100
    , focus__text_gray_200
    , focus__text_gray_300
    , focus__text_gray_400
    , focus__text_gray_500
    , focus__text_gray_600
    , focus__text_gray_700
    , focus__text_gray_800
    , focus__text_gray_900
    , focus__text_green_100
    , focus__text_green_200
    , focus__text_green_300
    , focus__text_green_400
    , focus__text_green_500
    , focus__text_green_600
    , focus__text_green_700
    , focus__text_green_800
    , focus__text_green_900
    , focus__text_indigo_100
    , focus__text_indigo_200
    , focus__text_indigo_300
    , focus__text_indigo_400
    , focus__text_indigo_500
    , focus__text_indigo_600
    , focus__text_indigo_700
    , focus__text_indigo_800
    , focus__text_indigo_900
    , focus__text_orange_100
    , focus__text_orange_200
    , focus__text_orange_300
    , focus__text_orange_400
    , focus__text_orange_500
    , focus__text_orange_600
    , focus__text_orange_700
    , focus__text_orange_800
    , focus__text_orange_900
    , focus__text_pink_100
    , focus__text_pink_200
    , focus__text_pink_300
    , focus__text_pink_400
    , focus__text_pink_500
    , focus__text_pink_600
    , focus__text_pink_700
    , focus__text_pink_800
    , focus__text_pink_900
    , focus__text_purple_100
    , focus__text_purple_200
    , focus__text_purple_300
    , focus__text_purple_400
    , focus__text_purple_500
    , focus__text_purple_600
    , focus__text_purple_700
    , focus__text_purple_800
    , focus__text_purple_900
    , focus__text_red_100
    , focus__text_red_200
    , focus__text_red_300
    , focus__text_red_400
    , focus__text_red_500
    , focus__text_red_600
    , focus__text_red_700
    , focus__text_red_800
    , focus__text_red_900
    , focus__text_teal_100
    , focus__text_teal_200
    , focus__text_teal_300
    , focus__text_teal_400
    , focus__text_teal_500
    , focus__text_teal_600
    , focus__text_teal_700
    , focus__text_teal_800
    , focus__text_teal_900
    , focus__text_transparent
    , focus__text_white
    , focus__text_yellow_100
    , focus__text_yellow_200
    , focus__text_yellow_300
    , focus__text_yellow_400
    , focus__text_yellow_500
    , focus__text_yellow_600
    , focus__text_yellow_700
    , focus__text_yellow_800
    , focus__text_yellow_900
    , focus__translate_x_0
    , focus__translate_x_1
    , focus__translate_x_10
    , focus__translate_x_12
    , focus__translate_x_16
    , focus__translate_x_1over2
    , focus__translate_x_2
    , focus__translate_x_20
    , focus__translate_x_24
    , focus__translate_x_3
    , focus__translate_x_32
    , focus__translate_x_4
    , focus__translate_x_40
    , focus__translate_x_48
    , focus__translate_x_5
    , focus__translate_x_56
    , focus__translate_x_6
    , focus__translate_x_64
    , focus__translate_x_8
    , focus__translate_x_full
    , focus__translate_x_px
    , focus__translate_y_0
    , focus__translate_y_1
    , focus__translate_y_10
    , focus__translate_y_12
    , focus__translate_y_16
    , focus__translate_y_1over2
    , focus__translate_y_2
    , focus__translate_y_20
    , focus__translate_y_24
    , focus__translate_y_3
    , focus__translate_y_32
    , focus__translate_y_4
    , focus__translate_y_40
    , focus__translate_y_48
    , focus__translate_y_5
    , focus__translate_y_56
    , focus__translate_y_6
    , focus__translate_y_64
    , focus__translate_y_8
    , focus__translate_y_full
    , focus__translate_y_px
    , focus__underline
    , font_black
    , font_bold
    , font_extrabold
    , font_hairline
    , font_light
    , font_medium
    , font_mono
    , font_normal
    , font_sans
    , font_semibold
    , font_serif
    , font_thin
    , gap_0
    , gap_1
    , gap_10
    , gap_12
    , gap_16
    , gap_2
    , gap_20
    , gap_24
    , gap_3
    , gap_32
    , gap_4
    , gap_40
    , gap_48
    , gap_5
    , gap_56
    , gap_6
    , gap_64
    , gap_8
    , gap_px
    , grid
    , grid_cols_1
    , grid_cols_10
    , grid_cols_11
    , grid_cols_12
    , grid_cols_2
    , grid_cols_3
    , grid_cols_4
    , grid_cols_5
    , grid_cols_6
    , grid_cols_7
    , grid_cols_8
    , grid_cols_9
    , grid_cols_none
    , grid_flow_col
    , grid_flow_col_dense
    , grid_flow_row
    , grid_flow_row_dense
    , grid_rows_1
    , grid_rows_2
    , grid_rows_3
    , grid_rows_4
    , grid_rows_5
    , grid_rows_6
    , grid_rows_none
    , h_0
    , h_1
    , h_10
    , h_12
    , h_16
    , h_2
    , h_20
    , h_24
    , h_3
    , h_32
    , h_4
    , h_40
    , h_48
    , h_5
    , h_56
    , h_6
    , h_64
    , h_8
    , h_auto
    , h_full
    , h_px
    , h_screen
    , hidden
    , hover__bg_black
    , hover__bg_blue_100
    , hover__bg_blue_200
    , hover__bg_blue_300
    , hover__bg_blue_400
    , hover__bg_blue_500
    , hover__bg_blue_600
    , hover__bg_blue_700
    , hover__bg_blue_800
    , hover__bg_blue_900
    , hover__bg_gray_100
    , hover__bg_gray_200
    , hover__bg_gray_300
    , hover__bg_gray_400
    , hover__bg_gray_500
    , hover__bg_gray_600
    , hover__bg_gray_700
    , hover__bg_gray_800
    , hover__bg_gray_900
    , hover__bg_green_100
    , hover__bg_green_200
    , hover__bg_green_300
    , hover__bg_green_400
    , hover__bg_green_500
    , hover__bg_green_600
    , hover__bg_green_700
    , hover__bg_green_800
    , hover__bg_green_900
    , hover__bg_indigo_100
    , hover__bg_indigo_200
    , hover__bg_indigo_300
    , hover__bg_indigo_400
    , hover__bg_indigo_500
    , hover__bg_indigo_600
    , hover__bg_indigo_700
    , hover__bg_indigo_800
    , hover__bg_indigo_900
    , hover__bg_orange_100
    , hover__bg_orange_200
    , hover__bg_orange_300
    , hover__bg_orange_400
    , hover__bg_orange_500
    , hover__bg_orange_600
    , hover__bg_orange_700
    , hover__bg_orange_800
    , hover__bg_orange_900
    , hover__bg_pink_100
    , hover__bg_pink_200
    , hover__bg_pink_300
    , hover__bg_pink_400
    , hover__bg_pink_500
    , hover__bg_pink_600
    , hover__bg_pink_700
    , hover__bg_pink_800
    , hover__bg_pink_900
    , hover__bg_purple_100
    , hover__bg_purple_200
    , hover__bg_purple_300
    , hover__bg_purple_400
    , hover__bg_purple_500
    , hover__bg_purple_600
    , hover__bg_purple_700
    , hover__bg_purple_800
    , hover__bg_purple_900
    , hover__bg_red_100
    , hover__bg_red_200
    , hover__bg_red_300
    , hover__bg_red_400
    , hover__bg_red_500
    , hover__bg_red_600
    , hover__bg_red_700
    , hover__bg_red_800
    , hover__bg_red_900
    , hover__bg_teal_100
    , hover__bg_teal_200
    , hover__bg_teal_300
    , hover__bg_teal_400
    , hover__bg_teal_500
    , hover__bg_teal_600
    , hover__bg_teal_700
    , hover__bg_teal_800
    , hover__bg_teal_900
    , hover__bg_transparent
    , hover__bg_white
    , hover__bg_yellow_100
    , hover__bg_yellow_200
    , hover__bg_yellow_300
    , hover__bg_yellow_400
    , hover__bg_yellow_500
    , hover__bg_yellow_600
    , hover__bg_yellow_700
    , hover__bg_yellow_800
    , hover__bg_yellow_900
    , hover__border_black
    , hover__border_blue_100
    , hover__border_blue_200
    , hover__border_blue_300
    , hover__border_blue_400
    , hover__border_blue_500
    , hover__border_blue_600
    , hover__border_blue_700
    , hover__border_blue_800
    , hover__border_blue_900
    , hover__border_gray_100
    , hover__border_gray_200
    , hover__border_gray_300
    , hover__border_gray_400
    , hover__border_gray_500
    , hover__border_gray_600
    , hover__border_gray_700
    , hover__border_gray_800
    , hover__border_gray_900
    , hover__border_green_100
    , hover__border_green_200
    , hover__border_green_300
    , hover__border_green_400
    , hover__border_green_500
    , hover__border_green_600
    , hover__border_green_700
    , hover__border_green_800
    , hover__border_green_900
    , hover__border_indigo_100
    , hover__border_indigo_200
    , hover__border_indigo_300
    , hover__border_indigo_400
    , hover__border_indigo_500
    , hover__border_indigo_600
    , hover__border_indigo_700
    , hover__border_indigo_800
    , hover__border_indigo_900
    , hover__border_orange_100
    , hover__border_orange_200
    , hover__border_orange_300
    , hover__border_orange_400
    , hover__border_orange_500
    , hover__border_orange_600
    , hover__border_orange_700
    , hover__border_orange_800
    , hover__border_orange_900
    , hover__border_pink_100
    , hover__border_pink_200
    , hover__border_pink_300
    , hover__border_pink_400
    , hover__border_pink_500
    , hover__border_pink_600
    , hover__border_pink_700
    , hover__border_pink_800
    , hover__border_pink_900
    , hover__border_purple_100
    , hover__border_purple_200
    , hover__border_purple_300
    , hover__border_purple_400
    , hover__border_purple_500
    , hover__border_purple_600
    , hover__border_purple_700
    , hover__border_purple_800
    , hover__border_purple_900
    , hover__border_red_100
    , hover__border_red_200
    , hover__border_red_300
    , hover__border_red_400
    , hover__border_red_500
    , hover__border_red_600
    , hover__border_red_700
    , hover__border_red_800
    , hover__border_red_900
    , hover__border_teal_100
    , hover__border_teal_200
    , hover__border_teal_300
    , hover__border_teal_400
    , hover__border_teal_500
    , hover__border_teal_600
    , hover__border_teal_700
    , hover__border_teal_800
    , hover__border_teal_900
    , hover__border_transparent
    , hover__border_white
    , hover__border_yellow_100
    , hover__border_yellow_200
    , hover__border_yellow_300
    , hover__border_yellow_400
    , hover__border_yellow_500
    , hover__border_yellow_600
    , hover__border_yellow_700
    , hover__border_yellow_800
    , hover__border_yellow_900
    , hover__font_black
    , hover__font_bold
    , hover__font_extrabold
    , hover__font_hairline
    , hover__font_light
    , hover__font_medium
    , hover__font_normal
    , hover__font_semibold
    , hover__font_thin
    , hover__line_through
    , hover__neg_rotate_180
    , hover__neg_rotate_45
    , hover__neg_rotate_90
    , hover__neg_skew_x_12
    , hover__neg_skew_x_3
    , hover__neg_skew_x_6
    , hover__neg_skew_y_12
    , hover__neg_skew_y_3
    , hover__neg_skew_y_6
    , hover__neg_translate_x_1
    , hover__neg_translate_x_10
    , hover__neg_translate_x_12
    , hover__neg_translate_x_16
    , hover__neg_translate_x_1over2
    , hover__neg_translate_x_2
    , hover__neg_translate_x_20
    , hover__neg_translate_x_24
    , hover__neg_translate_x_3
    , hover__neg_translate_x_32
    , hover__neg_translate_x_4
    , hover__neg_translate_x_40
    , hover__neg_translate_x_48
    , hover__neg_translate_x_5
    , hover__neg_translate_x_56
    , hover__neg_translate_x_6
    , hover__neg_translate_x_64
    , hover__neg_translate_x_8
    , hover__neg_translate_x_full
    , hover__neg_translate_x_px
    , hover__neg_translate_y_1
    , hover__neg_translate_y_10
    , hover__neg_translate_y_12
    , hover__neg_translate_y_16
    , hover__neg_translate_y_1over2
    , hover__neg_translate_y_2
    , hover__neg_translate_y_20
    , hover__neg_translate_y_24
    , hover__neg_translate_y_3
    , hover__neg_translate_y_32
    , hover__neg_translate_y_4
    , hover__neg_translate_y_40
    , hover__neg_translate_y_48
    , hover__neg_translate_y_5
    , hover__neg_translate_y_56
    , hover__neg_translate_y_6
    , hover__neg_translate_y_64
    , hover__neg_translate_y_8
    , hover__neg_translate_y_full
    , hover__neg_translate_y_px
    , hover__no_underline
    , hover__opacity_0
    , hover__opacity_100
    , hover__opacity_25
    , hover__opacity_50
    , hover__opacity_75
    , hover__rotate_0
    , hover__rotate_180
    , hover__rotate_45
    , hover__rotate_90
    , hover__scale_0
    , hover__scale_100
    , hover__scale_105
    , hover__scale_110
    , hover__scale_125
    , hover__scale_150
    , hover__scale_50
    , hover__scale_75
    , hover__scale_90
    , hover__scale_95
    , hover__scale_x_0
    , hover__scale_x_100
    , hover__scale_x_105
    , hover__scale_x_110
    , hover__scale_x_125
    , hover__scale_x_150
    , hover__scale_x_50
    , hover__scale_x_75
    , hover__scale_x_90
    , hover__scale_x_95
    , hover__scale_y_0
    , hover__scale_y_100
    , hover__scale_y_105
    , hover__scale_y_110
    , hover__scale_y_125
    , hover__scale_y_150
    , hover__scale_y_50
    , hover__scale_y_75
    , hover__scale_y_90
    , hover__scale_y_95
    , hover__shadow
    , hover__shadow_2xl
    , hover__shadow_inner
    , hover__shadow_lg
    , hover__shadow_md
    , hover__shadow_none
    , hover__shadow_outline
    , hover__shadow_sm
    , hover__shadow_xl
    , hover__shadow_xs
    , hover__skew_x_0
    , hover__skew_x_12
    , hover__skew_x_3
    , hover__skew_x_6
    , hover__skew_y_0
    , hover__skew_y_12
    , hover__skew_y_3
    , hover__skew_y_6
    , hover__text_black
    , hover__text_blue_100
    , hover__text_blue_200
    , hover__text_blue_300
    , hover__text_blue_400
    , hover__text_blue_500
    , hover__text_blue_600
    , hover__text_blue_700
    , hover__text_blue_800
    , hover__text_blue_900
    , hover__text_gray_100
    , hover__text_gray_200
    , hover__text_gray_300
    , hover__text_gray_400
    , hover__text_gray_500
    , hover__text_gray_600
    , hover__text_gray_700
    , hover__text_gray_800
    , hover__text_gray_900
    , hover__text_green_100
    , hover__text_green_200
    , hover__text_green_300
    , hover__text_green_400
    , hover__text_green_500
    , hover__text_green_600
    , hover__text_green_700
    , hover__text_green_800
    , hover__text_green_900
    , hover__text_indigo_100
    , hover__text_indigo_200
    , hover__text_indigo_300
    , hover__text_indigo_400
    , hover__text_indigo_500
    , hover__text_indigo_600
    , hover__text_indigo_700
    , hover__text_indigo_800
    , hover__text_indigo_900
    , hover__text_orange_100
    , hover__text_orange_200
    , hover__text_orange_300
    , hover__text_orange_400
    , hover__text_orange_500
    , hover__text_orange_600
    , hover__text_orange_700
    , hover__text_orange_800
    , hover__text_orange_900
    , hover__text_pink_100
    , hover__text_pink_200
    , hover__text_pink_300
    , hover__text_pink_400
    , hover__text_pink_500
    , hover__text_pink_600
    , hover__text_pink_700
    , hover__text_pink_800
    , hover__text_pink_900
    , hover__text_purple_100
    , hover__text_purple_200
    , hover__text_purple_300
    , hover__text_purple_400
    , hover__text_purple_500
    , hover__text_purple_600
    , hover__text_purple_700
    , hover__text_purple_800
    , hover__text_purple_900
    , hover__text_red_100
    , hover__text_red_200
    , hover__text_red_300
    , hover__text_red_400
    , hover__text_red_500
    , hover__text_red_600
    , hover__text_red_700
    , hover__text_red_800
    , hover__text_red_900
    , hover__text_teal_100
    , hover__text_teal_200
    , hover__text_teal_300
    , hover__text_teal_400
    , hover__text_teal_500
    , hover__text_teal_600
    , hover__text_teal_700
    , hover__text_teal_800
    , hover__text_teal_900
    , hover__text_transparent
    , hover__text_white
    , hover__text_yellow_100
    , hover__text_yellow_200
    , hover__text_yellow_300
    , hover__text_yellow_400
    , hover__text_yellow_500
    , hover__text_yellow_600
    , hover__text_yellow_700
    , hover__text_yellow_800
    , hover__text_yellow_900
    , hover__translate_x_0
    , hover__translate_x_1
    , hover__translate_x_10
    , hover__translate_x_12
    , hover__translate_x_16
    , hover__translate_x_1over2
    , hover__translate_x_2
    , hover__translate_x_20
    , hover__translate_x_24
    , hover__translate_x_3
    , hover__translate_x_32
    , hover__translate_x_4
    , hover__translate_x_40
    , hover__translate_x_48
    , hover__translate_x_5
    , hover__translate_x_56
    , hover__translate_x_6
    , hover__translate_x_64
    , hover__translate_x_8
    , hover__translate_x_full
    , hover__translate_x_px
    , hover__translate_y_0
    , hover__translate_y_1
    , hover__translate_y_10
    , hover__translate_y_12
    , hover__translate_y_16
    , hover__translate_y_1over2
    , hover__translate_y_2
    , hover__translate_y_20
    , hover__translate_y_24
    , hover__translate_y_3
    , hover__translate_y_32
    , hover__translate_y_4
    , hover__translate_y_40
    , hover__translate_y_48
    , hover__translate_y_5
    , hover__translate_y_56
    , hover__translate_y_6
    , hover__translate_y_64
    , hover__translate_y_8
    , hover__translate_y_full
    , hover__translate_y_px
    , hover__underline
    , inline
    , inline_block
    , inline_flex
    , inset_0
    , inset_auto
    , inset_x_0
    , inset_x_auto
    , inset_y_0
    , inset_y_auto
    , invisible
    , italic
    , items_baseline
    , items_center
    , items_end
    , items_start
    , items_stretch
    , justify_around
    , justify_between
    , justify_center
    , justify_end
    , justify_evenly
    , justify_start
    , leading_10
    , leading_3
    , leading_4
    , leading_5
    , leading_6
    , leading_7
    , leading_8
    , leading_9
    , leading_loose
    , leading_none
    , leading_normal
    , leading_relaxed
    , leading_snug
    , leading_tight
    , left_0
    , left_auto
    , lg__absolute
    , lg__align_baseline
    , lg__align_bottom
    , lg__align_middle
    , lg__align_text_bottom
    , lg__align_text_top
    , lg__align_top
    , lg__antialiased
    , lg__appearance_none
    , lg__bg_auto
    , lg__bg_black
    , lg__bg_blue_100
    , lg__bg_blue_200
    , lg__bg_blue_300
    , lg__bg_blue_400
    , lg__bg_blue_500
    , lg__bg_blue_600
    , lg__bg_blue_700
    , lg__bg_blue_800
    , lg__bg_blue_900
    , lg__bg_bottom
    , lg__bg_center
    , lg__bg_contain
    , lg__bg_cover
    , lg__bg_fixed
    , lg__bg_gray_100
    , lg__bg_gray_200
    , lg__bg_gray_300
    , lg__bg_gray_400
    , lg__bg_gray_500
    , lg__bg_gray_600
    , lg__bg_gray_700
    , lg__bg_gray_800
    , lg__bg_gray_900
    , lg__bg_green_100
    , lg__bg_green_200
    , lg__bg_green_300
    , lg__bg_green_400
    , lg__bg_green_500
    , lg__bg_green_600
    , lg__bg_green_700
    , lg__bg_green_800
    , lg__bg_green_900
    , lg__bg_indigo_100
    , lg__bg_indigo_200
    , lg__bg_indigo_300
    , lg__bg_indigo_400
    , lg__bg_indigo_500
    , lg__bg_indigo_600
    , lg__bg_indigo_700
    , lg__bg_indigo_800
    , lg__bg_indigo_900
    , lg__bg_left
    , lg__bg_left_bottom
    , lg__bg_left_top
    , lg__bg_local
    , lg__bg_no_repeat
    , lg__bg_orange_100
    , lg__bg_orange_200
    , lg__bg_orange_300
    , lg__bg_orange_400
    , lg__bg_orange_500
    , lg__bg_orange_600
    , lg__bg_orange_700
    , lg__bg_orange_800
    , lg__bg_orange_900
    , lg__bg_pink_100
    , lg__bg_pink_200
    , lg__bg_pink_300
    , lg__bg_pink_400
    , lg__bg_pink_500
    , lg__bg_pink_600
    , lg__bg_pink_700
    , lg__bg_pink_800
    , lg__bg_pink_900
    , lg__bg_purple_100
    , lg__bg_purple_200
    , lg__bg_purple_300
    , lg__bg_purple_400
    , lg__bg_purple_500
    , lg__bg_purple_600
    , lg__bg_purple_700
    , lg__bg_purple_800
    , lg__bg_purple_900
    , lg__bg_red_100
    , lg__bg_red_200
    , lg__bg_red_300
    , lg__bg_red_400
    , lg__bg_red_500
    , lg__bg_red_600
    , lg__bg_red_700
    , lg__bg_red_800
    , lg__bg_red_900
    , lg__bg_repeat
    , lg__bg_repeat_round
    , lg__bg_repeat_space
    , lg__bg_repeat_x
    , lg__bg_repeat_y
    , lg__bg_right
    , lg__bg_right_bottom
    , lg__bg_right_top
    , lg__bg_scroll
    , lg__bg_teal_100
    , lg__bg_teal_200
    , lg__bg_teal_300
    , lg__bg_teal_400
    , lg__bg_teal_500
    , lg__bg_teal_600
    , lg__bg_teal_700
    , lg__bg_teal_800
    , lg__bg_teal_900
    , lg__bg_top
    , lg__bg_transparent
    , lg__bg_white
    , lg__bg_yellow_100
    , lg__bg_yellow_200
    , lg__bg_yellow_300
    , lg__bg_yellow_400
    , lg__bg_yellow_500
    , lg__bg_yellow_600
    , lg__bg_yellow_700
    , lg__bg_yellow_800
    , lg__bg_yellow_900
    , lg__block
    , lg__border
    , lg__border_0
    , lg__border_2
    , lg__border_4
    , lg__border_8
    , lg__border_b
    , lg__border_b_0
    , lg__border_b_2
    , lg__border_b_4
    , lg__border_b_8
    , lg__border_black
    , lg__border_blue_100
    , lg__border_blue_200
    , lg__border_blue_300
    , lg__border_blue_400
    , lg__border_blue_500
    , lg__border_blue_600
    , lg__border_blue_700
    , lg__border_blue_800
    , lg__border_blue_900
    , lg__border_collapse
    , lg__border_dashed
    , lg__border_dotted
    , lg__border_double
    , lg__border_gray_100
    , lg__border_gray_200
    , lg__border_gray_300
    , lg__border_gray_400
    , lg__border_gray_500
    , lg__border_gray_600
    , lg__border_gray_700
    , lg__border_gray_800
    , lg__border_gray_900
    , lg__border_green_100
    , lg__border_green_200
    , lg__border_green_300
    , lg__border_green_400
    , lg__border_green_500
    , lg__border_green_600
    , lg__border_green_700
    , lg__border_green_800
    , lg__border_green_900
    , lg__border_indigo_100
    , lg__border_indigo_200
    , lg__border_indigo_300
    , lg__border_indigo_400
    , lg__border_indigo_500
    , lg__border_indigo_600
    , lg__border_indigo_700
    , lg__border_indigo_800
    , lg__border_indigo_900
    , lg__border_l
    , lg__border_l_0
    , lg__border_l_2
    , lg__border_l_4
    , lg__border_l_8
    , lg__border_none
    , lg__border_orange_100
    , lg__border_orange_200
    , lg__border_orange_300
    , lg__border_orange_400
    , lg__border_orange_500
    , lg__border_orange_600
    , lg__border_orange_700
    , lg__border_orange_800
    , lg__border_orange_900
    , lg__border_pink_100
    , lg__border_pink_200
    , lg__border_pink_300
    , lg__border_pink_400
    , lg__border_pink_500
    , lg__border_pink_600
    , lg__border_pink_700
    , lg__border_pink_800
    , lg__border_pink_900
    , lg__border_purple_100
    , lg__border_purple_200
    , lg__border_purple_300
    , lg__border_purple_400
    , lg__border_purple_500
    , lg__border_purple_600
    , lg__border_purple_700
    , lg__border_purple_800
    , lg__border_purple_900
    , lg__border_r
    , lg__border_r_0
    , lg__border_r_2
    , lg__border_r_4
    , lg__border_r_8
    , lg__border_red_100
    , lg__border_red_200
    , lg__border_red_300
    , lg__border_red_400
    , lg__border_red_500
    , lg__border_red_600
    , lg__border_red_700
    , lg__border_red_800
    , lg__border_red_900
    , lg__border_separate
    , lg__border_solid
    , lg__border_t
    , lg__border_t_0
    , lg__border_t_2
    , lg__border_t_4
    , lg__border_t_8
    , lg__border_teal_100
    , lg__border_teal_200
    , lg__border_teal_300
    , lg__border_teal_400
    , lg__border_teal_500
    , lg__border_teal_600
    , lg__border_teal_700
    , lg__border_teal_800
    , lg__border_teal_900
    , lg__border_transparent
    , lg__border_white
    , lg__border_yellow_100
    , lg__border_yellow_200
    , lg__border_yellow_300
    , lg__border_yellow_400
    , lg__border_yellow_500
    , lg__border_yellow_600
    , lg__border_yellow_700
    , lg__border_yellow_800
    , lg__border_yellow_900
    , lg__bottom_0
    , lg__bottom_auto
    , lg__box_border
    , lg__box_content
    , lg__break_all
    , lg__break_normal
    , lg__break_words
    , lg__capitalize
    , lg__clear_both
    , lg__clear_left
    , lg__clear_right
    , lg__clearfix__after
    , lg__col_auto
    , lg__col_end_1
    , lg__col_end_10
    , lg__col_end_11
    , lg__col_end_12
    , lg__col_end_13
    , lg__col_end_2
    , lg__col_end_3
    , lg__col_end_4
    , lg__col_end_5
    , lg__col_end_6
    , lg__col_end_7
    , lg__col_end_8
    , lg__col_end_9
    , lg__col_end_auto
    , lg__col_gap_0
    , lg__col_gap_1
    , lg__col_gap_10
    , lg__col_gap_12
    , lg__col_gap_16
    , lg__col_gap_2
    , lg__col_gap_20
    , lg__col_gap_24
    , lg__col_gap_3
    , lg__col_gap_32
    , lg__col_gap_4
    , lg__col_gap_40
    , lg__col_gap_48
    , lg__col_gap_5
    , lg__col_gap_56
    , lg__col_gap_6
    , lg__col_gap_64
    , lg__col_gap_8
    , lg__col_gap_px
    , lg__col_span_1
    , lg__col_span_10
    , lg__col_span_11
    , lg__col_span_12
    , lg__col_span_2
    , lg__col_span_3
    , lg__col_span_4
    , lg__col_span_5
    , lg__col_span_6
    , lg__col_span_7
    , lg__col_span_8
    , lg__col_span_9
    , lg__col_start_1
    , lg__col_start_10
    , lg__col_start_11
    , lg__col_start_12
    , lg__col_start_13
    , lg__col_start_2
    , lg__col_start_3
    , lg__col_start_4
    , lg__col_start_5
    , lg__col_start_6
    , lg__col_start_7
    , lg__col_start_8
    , lg__col_start_9
    , lg__col_start_auto
    , lg__content_around
    , lg__content_between
    , lg__content_center
    , lg__content_end
    , lg__content_start
    , lg__cursor_auto
    , lg__cursor_default
    , lg__cursor_move
    , lg__cursor_not_allowed
    , lg__cursor_pointer
    , lg__cursor_text
    , lg__cursor_wait
    , lg__duration_100
    , lg__duration_1000
    , lg__duration_150
    , lg__duration_200
    , lg__duration_300
    , lg__duration_500
    , lg__duration_700
    , lg__duration_75
    , lg__ease_in
    , lg__ease_in_out
    , lg__ease_linear
    , lg__ease_out
    , lg__fill_current
    , lg__fixed
    , lg__flex
    , lg__flex_1
    , lg__flex_auto
    , lg__flex_col
    , lg__flex_col_reverse
    , lg__flex_grow
    , lg__flex_grow_0
    , lg__flex_initial
    , lg__flex_no_wrap
    , lg__flex_none
    , lg__flex_row
    , lg__flex_row_reverse
    , lg__flex_shrink
    , lg__flex_shrink_0
    , lg__flex_wrap
    , lg__flex_wrap_reverse
    , lg__float_left
    , lg__float_none
    , lg__float_right
    , lg__focus__bg_black
    , lg__focus__bg_blue_100
    , lg__focus__bg_blue_200
    , lg__focus__bg_blue_300
    , lg__focus__bg_blue_400
    , lg__focus__bg_blue_500
    , lg__focus__bg_blue_600
    , lg__focus__bg_blue_700
    , lg__focus__bg_blue_800
    , lg__focus__bg_blue_900
    , lg__focus__bg_gray_100
    , lg__focus__bg_gray_200
    , lg__focus__bg_gray_300
    , lg__focus__bg_gray_400
    , lg__focus__bg_gray_500
    , lg__focus__bg_gray_600
    , lg__focus__bg_gray_700
    , lg__focus__bg_gray_800
    , lg__focus__bg_gray_900
    , lg__focus__bg_green_100
    , lg__focus__bg_green_200
    , lg__focus__bg_green_300
    , lg__focus__bg_green_400
    , lg__focus__bg_green_500
    , lg__focus__bg_green_600
    , lg__focus__bg_green_700
    , lg__focus__bg_green_800
    , lg__focus__bg_green_900
    , lg__focus__bg_indigo_100
    , lg__focus__bg_indigo_200
    , lg__focus__bg_indigo_300
    , lg__focus__bg_indigo_400
    , lg__focus__bg_indigo_500
    , lg__focus__bg_indigo_600
    , lg__focus__bg_indigo_700
    , lg__focus__bg_indigo_800
    , lg__focus__bg_indigo_900
    , lg__focus__bg_orange_100
    , lg__focus__bg_orange_200
    , lg__focus__bg_orange_300
    , lg__focus__bg_orange_400
    , lg__focus__bg_orange_500
    , lg__focus__bg_orange_600
    , lg__focus__bg_orange_700
    , lg__focus__bg_orange_800
    , lg__focus__bg_orange_900
    , lg__focus__bg_pink_100
    , lg__focus__bg_pink_200
    , lg__focus__bg_pink_300
    , lg__focus__bg_pink_400
    , lg__focus__bg_pink_500
    , lg__focus__bg_pink_600
    , lg__focus__bg_pink_700
    , lg__focus__bg_pink_800
    , lg__focus__bg_pink_900
    , lg__focus__bg_purple_100
    , lg__focus__bg_purple_200
    , lg__focus__bg_purple_300
    , lg__focus__bg_purple_400
    , lg__focus__bg_purple_500
    , lg__focus__bg_purple_600
    , lg__focus__bg_purple_700
    , lg__focus__bg_purple_800
    , lg__focus__bg_purple_900
    , lg__focus__bg_red_100
    , lg__focus__bg_red_200
    , lg__focus__bg_red_300
    , lg__focus__bg_red_400
    , lg__focus__bg_red_500
    , lg__focus__bg_red_600
    , lg__focus__bg_red_700
    , lg__focus__bg_red_800
    , lg__focus__bg_red_900
    , lg__focus__bg_teal_100
    , lg__focus__bg_teal_200
    , lg__focus__bg_teal_300
    , lg__focus__bg_teal_400
    , lg__focus__bg_teal_500
    , lg__focus__bg_teal_600
    , lg__focus__bg_teal_700
    , lg__focus__bg_teal_800
    , lg__focus__bg_teal_900
    , lg__focus__bg_transparent
    , lg__focus__bg_white
    , lg__focus__bg_yellow_100
    , lg__focus__bg_yellow_200
    , lg__focus__bg_yellow_300
    , lg__focus__bg_yellow_400
    , lg__focus__bg_yellow_500
    , lg__focus__bg_yellow_600
    , lg__focus__bg_yellow_700
    , lg__focus__bg_yellow_800
    , lg__focus__bg_yellow_900
    , lg__focus__border_black
    , lg__focus__border_blue_100
    , lg__focus__border_blue_200
    , lg__focus__border_blue_300
    , lg__focus__border_blue_400
    , lg__focus__border_blue_500
    , lg__focus__border_blue_600
    , lg__focus__border_blue_700
    , lg__focus__border_blue_800
    , lg__focus__border_blue_900
    , lg__focus__border_gray_100
    , lg__focus__border_gray_200
    , lg__focus__border_gray_300
    , lg__focus__border_gray_400
    , lg__focus__border_gray_500
    , lg__focus__border_gray_600
    , lg__focus__border_gray_700
    , lg__focus__border_gray_800
    , lg__focus__border_gray_900
    , lg__focus__border_green_100
    , lg__focus__border_green_200
    , lg__focus__border_green_300
    , lg__focus__border_green_400
    , lg__focus__border_green_500
    , lg__focus__border_green_600
    , lg__focus__border_green_700
    , lg__focus__border_green_800
    , lg__focus__border_green_900
    , lg__focus__border_indigo_100
    , lg__focus__border_indigo_200
    , lg__focus__border_indigo_300
    , lg__focus__border_indigo_400
    , lg__focus__border_indigo_500
    , lg__focus__border_indigo_600
    , lg__focus__border_indigo_700
    , lg__focus__border_indigo_800
    , lg__focus__border_indigo_900
    , lg__focus__border_orange_100
    , lg__focus__border_orange_200
    , lg__focus__border_orange_300
    , lg__focus__border_orange_400
    , lg__focus__border_orange_500
    , lg__focus__border_orange_600
    , lg__focus__border_orange_700
    , lg__focus__border_orange_800
    , lg__focus__border_orange_900
    , lg__focus__border_pink_100
    , lg__focus__border_pink_200
    , lg__focus__border_pink_300
    , lg__focus__border_pink_400
    , lg__focus__border_pink_500
    , lg__focus__border_pink_600
    , lg__focus__border_pink_700
    , lg__focus__border_pink_800
    , lg__focus__border_pink_900
    , lg__focus__border_purple_100
    , lg__focus__border_purple_200
    , lg__focus__border_purple_300
    , lg__focus__border_purple_400
    , lg__focus__border_purple_500
    , lg__focus__border_purple_600
    , lg__focus__border_purple_700
    , lg__focus__border_purple_800
    , lg__focus__border_purple_900
    , lg__focus__border_red_100
    , lg__focus__border_red_200
    , lg__focus__border_red_300
    , lg__focus__border_red_400
    , lg__focus__border_red_500
    , lg__focus__border_red_600
    , lg__focus__border_red_700
    , lg__focus__border_red_800
    , lg__focus__border_red_900
    , lg__focus__border_teal_100
    , lg__focus__border_teal_200
    , lg__focus__border_teal_300
    , lg__focus__border_teal_400
    , lg__focus__border_teal_500
    , lg__focus__border_teal_600
    , lg__focus__border_teal_700
    , lg__focus__border_teal_800
    , lg__focus__border_teal_900
    , lg__focus__border_transparent
    , lg__focus__border_white
    , lg__focus__border_yellow_100
    , lg__focus__border_yellow_200
    , lg__focus__border_yellow_300
    , lg__focus__border_yellow_400
    , lg__focus__border_yellow_500
    , lg__focus__border_yellow_600
    , lg__focus__border_yellow_700
    , lg__focus__border_yellow_800
    , lg__focus__border_yellow_900
    , lg__focus__font_black
    , lg__focus__font_bold
    , lg__focus__font_extrabold
    , lg__focus__font_hairline
    , lg__focus__font_light
    , lg__focus__font_medium
    , lg__focus__font_normal
    , lg__focus__font_semibold
    , lg__focus__font_thin
    , lg__focus__line_through
    , lg__focus__neg_rotate_180
    , lg__focus__neg_rotate_45
    , lg__focus__neg_rotate_90
    , lg__focus__neg_skew_x_12
    , lg__focus__neg_skew_x_3
    , lg__focus__neg_skew_x_6
    , lg__focus__neg_skew_y_12
    , lg__focus__neg_skew_y_3
    , lg__focus__neg_skew_y_6
    , lg__focus__neg_translate_x_1
    , lg__focus__neg_translate_x_10
    , lg__focus__neg_translate_x_12
    , lg__focus__neg_translate_x_16
    , lg__focus__neg_translate_x_1over2
    , lg__focus__neg_translate_x_2
    , lg__focus__neg_translate_x_20
    , lg__focus__neg_translate_x_24
    , lg__focus__neg_translate_x_3
    , lg__focus__neg_translate_x_32
    , lg__focus__neg_translate_x_4
    , lg__focus__neg_translate_x_40
    , lg__focus__neg_translate_x_48
    , lg__focus__neg_translate_x_5
    , lg__focus__neg_translate_x_56
    , lg__focus__neg_translate_x_6
    , lg__focus__neg_translate_x_64
    , lg__focus__neg_translate_x_8
    , lg__focus__neg_translate_x_full
    , lg__focus__neg_translate_x_px
    , lg__focus__neg_translate_y_1
    , lg__focus__neg_translate_y_10
    , lg__focus__neg_translate_y_12
    , lg__focus__neg_translate_y_16
    , lg__focus__neg_translate_y_1over2
    , lg__focus__neg_translate_y_2
    , lg__focus__neg_translate_y_20
    , lg__focus__neg_translate_y_24
    , lg__focus__neg_translate_y_3
    , lg__focus__neg_translate_y_32
    , lg__focus__neg_translate_y_4
    , lg__focus__neg_translate_y_40
    , lg__focus__neg_translate_y_48
    , lg__focus__neg_translate_y_5
    , lg__focus__neg_translate_y_56
    , lg__focus__neg_translate_y_6
    , lg__focus__neg_translate_y_64
    , lg__focus__neg_translate_y_8
    , lg__focus__neg_translate_y_full
    , lg__focus__neg_translate_y_px
    , lg__focus__no_underline
    , lg__focus__not_sr_only
    , lg__focus__opacity_0
    , lg__focus__opacity_100
    , lg__focus__opacity_25
    , lg__focus__opacity_50
    , lg__focus__opacity_75
    , lg__focus__outline_none
    , lg__focus__placeholder_black__focus
    , lg__focus__placeholder_blue_100__focus
    , lg__focus__placeholder_blue_200__focus
    , lg__focus__placeholder_blue_300__focus
    , lg__focus__placeholder_blue_400__focus
    , lg__focus__placeholder_blue_500__focus
    , lg__focus__placeholder_blue_600__focus
    , lg__focus__placeholder_blue_700__focus
    , lg__focus__placeholder_blue_800__focus
    , lg__focus__placeholder_blue_900__focus
    , lg__focus__placeholder_gray_100__focus
    , lg__focus__placeholder_gray_200__focus
    , lg__focus__placeholder_gray_300__focus
    , lg__focus__placeholder_gray_400__focus
    , lg__focus__placeholder_gray_500__focus
    , lg__focus__placeholder_gray_600__focus
    , lg__focus__placeholder_gray_700__focus
    , lg__focus__placeholder_gray_800__focus
    , lg__focus__placeholder_gray_900__focus
    , lg__focus__placeholder_green_100__focus
    , lg__focus__placeholder_green_200__focus
    , lg__focus__placeholder_green_300__focus
    , lg__focus__placeholder_green_400__focus
    , lg__focus__placeholder_green_500__focus
    , lg__focus__placeholder_green_600__focus
    , lg__focus__placeholder_green_700__focus
    , lg__focus__placeholder_green_800__focus
    , lg__focus__placeholder_green_900__focus
    , lg__focus__placeholder_indigo_100__focus
    , lg__focus__placeholder_indigo_200__focus
    , lg__focus__placeholder_indigo_300__focus
    , lg__focus__placeholder_indigo_400__focus
    , lg__focus__placeholder_indigo_500__focus
    , lg__focus__placeholder_indigo_600__focus
    , lg__focus__placeholder_indigo_700__focus
    , lg__focus__placeholder_indigo_800__focus
    , lg__focus__placeholder_indigo_900__focus
    , lg__focus__placeholder_orange_100__focus
    , lg__focus__placeholder_orange_200__focus
    , lg__focus__placeholder_orange_300__focus
    , lg__focus__placeholder_orange_400__focus
    , lg__focus__placeholder_orange_500__focus
    , lg__focus__placeholder_orange_600__focus
    , lg__focus__placeholder_orange_700__focus
    , lg__focus__placeholder_orange_800__focus
    , lg__focus__placeholder_orange_900__focus
    , lg__focus__placeholder_pink_100__focus
    , lg__focus__placeholder_pink_200__focus
    , lg__focus__placeholder_pink_300__focus
    , lg__focus__placeholder_pink_400__focus
    , lg__focus__placeholder_pink_500__focus
    , lg__focus__placeholder_pink_600__focus
    , lg__focus__placeholder_pink_700__focus
    , lg__focus__placeholder_pink_800__focus
    , lg__focus__placeholder_pink_900__focus
    , lg__focus__placeholder_purple_100__focus
    , lg__focus__placeholder_purple_200__focus
    , lg__focus__placeholder_purple_300__focus
    , lg__focus__placeholder_purple_400__focus
    , lg__focus__placeholder_purple_500__focus
    , lg__focus__placeholder_purple_600__focus
    , lg__focus__placeholder_purple_700__focus
    , lg__focus__placeholder_purple_800__focus
    , lg__focus__placeholder_purple_900__focus
    , lg__focus__placeholder_red_100__focus
    , lg__focus__placeholder_red_200__focus
    , lg__focus__placeholder_red_300__focus
    , lg__focus__placeholder_red_400__focus
    , lg__focus__placeholder_red_500__focus
    , lg__focus__placeholder_red_600__focus
    , lg__focus__placeholder_red_700__focus
    , lg__focus__placeholder_red_800__focus
    , lg__focus__placeholder_red_900__focus
    , lg__focus__placeholder_teal_100__focus
    , lg__focus__placeholder_teal_200__focus
    , lg__focus__placeholder_teal_300__focus
    , lg__focus__placeholder_teal_400__focus
    , lg__focus__placeholder_teal_500__focus
    , lg__focus__placeholder_teal_600__focus
    , lg__focus__placeholder_teal_700__focus
    , lg__focus__placeholder_teal_800__focus
    , lg__focus__placeholder_teal_900__focus
    , lg__focus__placeholder_transparent__focus
    , lg__focus__placeholder_white__focus
    , lg__focus__placeholder_yellow_100__focus
    , lg__focus__placeholder_yellow_200__focus
    , lg__focus__placeholder_yellow_300__focus
    , lg__focus__placeholder_yellow_400__focus
    , lg__focus__placeholder_yellow_500__focus
    , lg__focus__placeholder_yellow_600__focus
    , lg__focus__placeholder_yellow_700__focus
    , lg__focus__placeholder_yellow_800__focus
    , lg__focus__placeholder_yellow_900__focus
    , lg__focus__rotate_0
    , lg__focus__rotate_180
    , lg__focus__rotate_45
    , lg__focus__rotate_90
    , lg__focus__scale_0
    , lg__focus__scale_100
    , lg__focus__scale_105
    , lg__focus__scale_110
    , lg__focus__scale_125
    , lg__focus__scale_150
    , lg__focus__scale_50
    , lg__focus__scale_75
    , lg__focus__scale_90
    , lg__focus__scale_95
    , lg__focus__scale_x_0
    , lg__focus__scale_x_100
    , lg__focus__scale_x_105
    , lg__focus__scale_x_110
    , lg__focus__scale_x_125
    , lg__focus__scale_x_150
    , lg__focus__scale_x_50
    , lg__focus__scale_x_75
    , lg__focus__scale_x_90
    , lg__focus__scale_x_95
    , lg__focus__scale_y_0
    , lg__focus__scale_y_100
    , lg__focus__scale_y_105
    , lg__focus__scale_y_110
    , lg__focus__scale_y_125
    , lg__focus__scale_y_150
    , lg__focus__scale_y_50
    , lg__focus__scale_y_75
    , lg__focus__scale_y_90
    , lg__focus__scale_y_95
    , lg__focus__shadow
    , lg__focus__shadow_2xl
    , lg__focus__shadow_inner
    , lg__focus__shadow_lg
    , lg__focus__shadow_md
    , lg__focus__shadow_none
    , lg__focus__shadow_outline
    , lg__focus__shadow_sm
    , lg__focus__shadow_xl
    , lg__focus__shadow_xs
    , lg__focus__skew_x_0
    , lg__focus__skew_x_12
    , lg__focus__skew_x_3
    , lg__focus__skew_x_6
    , lg__focus__skew_y_0
    , lg__focus__skew_y_12
    , lg__focus__skew_y_3
    , lg__focus__skew_y_6
    , lg__focus__sr_only
    , lg__focus__text_black
    , lg__focus__text_blue_100
    , lg__focus__text_blue_200
    , lg__focus__text_blue_300
    , lg__focus__text_blue_400
    , lg__focus__text_blue_500
    , lg__focus__text_blue_600
    , lg__focus__text_blue_700
    , lg__focus__text_blue_800
    , lg__focus__text_blue_900
    , lg__focus__text_gray_100
    , lg__focus__text_gray_200
    , lg__focus__text_gray_300
    , lg__focus__text_gray_400
    , lg__focus__text_gray_500
    , lg__focus__text_gray_600
    , lg__focus__text_gray_700
    , lg__focus__text_gray_800
    , lg__focus__text_gray_900
    , lg__focus__text_green_100
    , lg__focus__text_green_200
    , lg__focus__text_green_300
    , lg__focus__text_green_400
    , lg__focus__text_green_500
    , lg__focus__text_green_600
    , lg__focus__text_green_700
    , lg__focus__text_green_800
    , lg__focus__text_green_900
    , lg__focus__text_indigo_100
    , lg__focus__text_indigo_200
    , lg__focus__text_indigo_300
    , lg__focus__text_indigo_400
    , lg__focus__text_indigo_500
    , lg__focus__text_indigo_600
    , lg__focus__text_indigo_700
    , lg__focus__text_indigo_800
    , lg__focus__text_indigo_900
    , lg__focus__text_orange_100
    , lg__focus__text_orange_200
    , lg__focus__text_orange_300
    , lg__focus__text_orange_400
    , lg__focus__text_orange_500
    , lg__focus__text_orange_600
    , lg__focus__text_orange_700
    , lg__focus__text_orange_800
    , lg__focus__text_orange_900
    , lg__focus__text_pink_100
    , lg__focus__text_pink_200
    , lg__focus__text_pink_300
    , lg__focus__text_pink_400
    , lg__focus__text_pink_500
    , lg__focus__text_pink_600
    , lg__focus__text_pink_700
    , lg__focus__text_pink_800
    , lg__focus__text_pink_900
    , lg__focus__text_purple_100
    , lg__focus__text_purple_200
    , lg__focus__text_purple_300
    , lg__focus__text_purple_400
    , lg__focus__text_purple_500
    , lg__focus__text_purple_600
    , lg__focus__text_purple_700
    , lg__focus__text_purple_800
    , lg__focus__text_purple_900
    , lg__focus__text_red_100
    , lg__focus__text_red_200
    , lg__focus__text_red_300
    , lg__focus__text_red_400
    , lg__focus__text_red_500
    , lg__focus__text_red_600
    , lg__focus__text_red_700
    , lg__focus__text_red_800
    , lg__focus__text_red_900
    , lg__focus__text_teal_100
    , lg__focus__text_teal_200
    , lg__focus__text_teal_300
    , lg__focus__text_teal_400
    , lg__focus__text_teal_500
    , lg__focus__text_teal_600
    , lg__focus__text_teal_700
    , lg__focus__text_teal_800
    , lg__focus__text_teal_900
    , lg__focus__text_transparent
    , lg__focus__text_white
    , lg__focus__text_yellow_100
    , lg__focus__text_yellow_200
    , lg__focus__text_yellow_300
    , lg__focus__text_yellow_400
    , lg__focus__text_yellow_500
    , lg__focus__text_yellow_600
    , lg__focus__text_yellow_700
    , lg__focus__text_yellow_800
    , lg__focus__text_yellow_900
    , lg__focus__translate_x_0
    , lg__focus__translate_x_1
    , lg__focus__translate_x_10
    , lg__focus__translate_x_12
    , lg__focus__translate_x_16
    , lg__focus__translate_x_1over2
    , lg__focus__translate_x_2
    , lg__focus__translate_x_20
    , lg__focus__translate_x_24
    , lg__focus__translate_x_3
    , lg__focus__translate_x_32
    , lg__focus__translate_x_4
    , lg__focus__translate_x_40
    , lg__focus__translate_x_48
    , lg__focus__translate_x_5
    , lg__focus__translate_x_56
    , lg__focus__translate_x_6
    , lg__focus__translate_x_64
    , lg__focus__translate_x_8
    , lg__focus__translate_x_full
    , lg__focus__translate_x_px
    , lg__focus__translate_y_0
    , lg__focus__translate_y_1
    , lg__focus__translate_y_10
    , lg__focus__translate_y_12
    , lg__focus__translate_y_16
    , lg__focus__translate_y_1over2
    , lg__focus__translate_y_2
    , lg__focus__translate_y_20
    , lg__focus__translate_y_24
    , lg__focus__translate_y_3
    , lg__focus__translate_y_32
    , lg__focus__translate_y_4
    , lg__focus__translate_y_40
    , lg__focus__translate_y_48
    , lg__focus__translate_y_5
    , lg__focus__translate_y_56
    , lg__focus__translate_y_6
    , lg__focus__translate_y_64
    , lg__focus__translate_y_8
    , lg__focus__translate_y_full
    , lg__focus__translate_y_px
    , lg__focus__underline
    , lg__font_black
    , lg__font_bold
    , lg__font_extrabold
    , lg__font_hairline
    , lg__font_light
    , lg__font_medium
    , lg__font_mono
    , lg__font_normal
    , lg__font_sans
    , lg__font_semibold
    , lg__font_serif
    , lg__font_thin
    , lg__gap_0
    , lg__gap_1
    , lg__gap_10
    , lg__gap_12
    , lg__gap_16
    , lg__gap_2
    , lg__gap_20
    , lg__gap_24
    , lg__gap_3
    , lg__gap_32
    , lg__gap_4
    , lg__gap_40
    , lg__gap_48
    , lg__gap_5
    , lg__gap_56
    , lg__gap_6
    , lg__gap_64
    , lg__gap_8
    , lg__gap_px
    , lg__grid
    , lg__grid_cols_1
    , lg__grid_cols_10
    , lg__grid_cols_11
    , lg__grid_cols_12
    , lg__grid_cols_2
    , lg__grid_cols_3
    , lg__grid_cols_4
    , lg__grid_cols_5
    , lg__grid_cols_6
    , lg__grid_cols_7
    , lg__grid_cols_8
    , lg__grid_cols_9
    , lg__grid_cols_none
    , lg__grid_flow_col
    , lg__grid_flow_col_dense
    , lg__grid_flow_row
    , lg__grid_flow_row_dense
    , lg__grid_rows_1
    , lg__grid_rows_2
    , lg__grid_rows_3
    , lg__grid_rows_4
    , lg__grid_rows_5
    , lg__grid_rows_6
    , lg__grid_rows_none
    , lg__h_0
    , lg__h_1
    , lg__h_10
    , lg__h_12
    , lg__h_16
    , lg__h_2
    , lg__h_20
    , lg__h_24
    , lg__h_3
    , lg__h_32
    , lg__h_4
    , lg__h_40
    , lg__h_48
    , lg__h_5
    , lg__h_56
    , lg__h_6
    , lg__h_64
    , lg__h_8
    , lg__h_auto
    , lg__h_full
    , lg__h_px
    , lg__h_screen
    , lg__hidden
    , lg__hover__bg_black
    , lg__hover__bg_blue_100
    , lg__hover__bg_blue_200
    , lg__hover__bg_blue_300
    , lg__hover__bg_blue_400
    , lg__hover__bg_blue_500
    , lg__hover__bg_blue_600
    , lg__hover__bg_blue_700
    , lg__hover__bg_blue_800
    , lg__hover__bg_blue_900
    , lg__hover__bg_gray_100
    , lg__hover__bg_gray_200
    , lg__hover__bg_gray_300
    , lg__hover__bg_gray_400
    , lg__hover__bg_gray_500
    , lg__hover__bg_gray_600
    , lg__hover__bg_gray_700
    , lg__hover__bg_gray_800
    , lg__hover__bg_gray_900
    , lg__hover__bg_green_100
    , lg__hover__bg_green_200
    , lg__hover__bg_green_300
    , lg__hover__bg_green_400
    , lg__hover__bg_green_500
    , lg__hover__bg_green_600
    , lg__hover__bg_green_700
    , lg__hover__bg_green_800
    , lg__hover__bg_green_900
    , lg__hover__bg_indigo_100
    , lg__hover__bg_indigo_200
    , lg__hover__bg_indigo_300
    , lg__hover__bg_indigo_400
    , lg__hover__bg_indigo_500
    , lg__hover__bg_indigo_600
    , lg__hover__bg_indigo_700
    , lg__hover__bg_indigo_800
    , lg__hover__bg_indigo_900
    , lg__hover__bg_orange_100
    , lg__hover__bg_orange_200
    , lg__hover__bg_orange_300
    , lg__hover__bg_orange_400
    , lg__hover__bg_orange_500
    , lg__hover__bg_orange_600
    , lg__hover__bg_orange_700
    , lg__hover__bg_orange_800
    , lg__hover__bg_orange_900
    , lg__hover__bg_pink_100
    , lg__hover__bg_pink_200
    , lg__hover__bg_pink_300
    , lg__hover__bg_pink_400
    , lg__hover__bg_pink_500
    , lg__hover__bg_pink_600
    , lg__hover__bg_pink_700
    , lg__hover__bg_pink_800
    , lg__hover__bg_pink_900
    , lg__hover__bg_purple_100
    , lg__hover__bg_purple_200
    , lg__hover__bg_purple_300
    , lg__hover__bg_purple_400
    , lg__hover__bg_purple_500
    , lg__hover__bg_purple_600
    , lg__hover__bg_purple_700
    , lg__hover__bg_purple_800
    , lg__hover__bg_purple_900
    , lg__hover__bg_red_100
    , lg__hover__bg_red_200
    , lg__hover__bg_red_300
    , lg__hover__bg_red_400
    , lg__hover__bg_red_500
    , lg__hover__bg_red_600
    , lg__hover__bg_red_700
    , lg__hover__bg_red_800
    , lg__hover__bg_red_900
    , lg__hover__bg_teal_100
    , lg__hover__bg_teal_200
    , lg__hover__bg_teal_300
    , lg__hover__bg_teal_400
    , lg__hover__bg_teal_500
    , lg__hover__bg_teal_600
    , lg__hover__bg_teal_700
    , lg__hover__bg_teal_800
    , lg__hover__bg_teal_900
    , lg__hover__bg_transparent
    , lg__hover__bg_white
    , lg__hover__bg_yellow_100
    , lg__hover__bg_yellow_200
    , lg__hover__bg_yellow_300
    , lg__hover__bg_yellow_400
    , lg__hover__bg_yellow_500
    , lg__hover__bg_yellow_600
    , lg__hover__bg_yellow_700
    , lg__hover__bg_yellow_800
    , lg__hover__bg_yellow_900
    , lg__hover__border_black
    , lg__hover__border_blue_100
    , lg__hover__border_blue_200
    , lg__hover__border_blue_300
    , lg__hover__border_blue_400
    , lg__hover__border_blue_500
    , lg__hover__border_blue_600
    , lg__hover__border_blue_700
    , lg__hover__border_blue_800
    , lg__hover__border_blue_900
    , lg__hover__border_gray_100
    , lg__hover__border_gray_200
    , lg__hover__border_gray_300
    , lg__hover__border_gray_400
    , lg__hover__border_gray_500
    , lg__hover__border_gray_600
    , lg__hover__border_gray_700
    , lg__hover__border_gray_800
    , lg__hover__border_gray_900
    , lg__hover__border_green_100
    , lg__hover__border_green_200
    , lg__hover__border_green_300
    , lg__hover__border_green_400
    , lg__hover__border_green_500
    , lg__hover__border_green_600
    , lg__hover__border_green_700
    , lg__hover__border_green_800
    , lg__hover__border_green_900
    , lg__hover__border_indigo_100
    , lg__hover__border_indigo_200
    , lg__hover__border_indigo_300
    , lg__hover__border_indigo_400
    , lg__hover__border_indigo_500
    , lg__hover__border_indigo_600
    , lg__hover__border_indigo_700
    , lg__hover__border_indigo_800
    , lg__hover__border_indigo_900
    , lg__hover__border_orange_100
    , lg__hover__border_orange_200
    , lg__hover__border_orange_300
    , lg__hover__border_orange_400
    , lg__hover__border_orange_500
    , lg__hover__border_orange_600
    , lg__hover__border_orange_700
    , lg__hover__border_orange_800
    , lg__hover__border_orange_900
    , lg__hover__border_pink_100
    , lg__hover__border_pink_200
    , lg__hover__border_pink_300
    , lg__hover__border_pink_400
    , lg__hover__border_pink_500
    , lg__hover__border_pink_600
    , lg__hover__border_pink_700
    , lg__hover__border_pink_800
    , lg__hover__border_pink_900
    , lg__hover__border_purple_100
    , lg__hover__border_purple_200
    , lg__hover__border_purple_300
    , lg__hover__border_purple_400
    , lg__hover__border_purple_500
    , lg__hover__border_purple_600
    , lg__hover__border_purple_700
    , lg__hover__border_purple_800
    , lg__hover__border_purple_900
    , lg__hover__border_red_100
    , lg__hover__border_red_200
    , lg__hover__border_red_300
    , lg__hover__border_red_400
    , lg__hover__border_red_500
    , lg__hover__border_red_600
    , lg__hover__border_red_700
    , lg__hover__border_red_800
    , lg__hover__border_red_900
    , lg__hover__border_teal_100
    , lg__hover__border_teal_200
    , lg__hover__border_teal_300
    , lg__hover__border_teal_400
    , lg__hover__border_teal_500
    , lg__hover__border_teal_600
    , lg__hover__border_teal_700
    , lg__hover__border_teal_800
    , lg__hover__border_teal_900
    , lg__hover__border_transparent
    , lg__hover__border_white
    , lg__hover__border_yellow_100
    , lg__hover__border_yellow_200
    , lg__hover__border_yellow_300
    , lg__hover__border_yellow_400
    , lg__hover__border_yellow_500
    , lg__hover__border_yellow_600
    , lg__hover__border_yellow_700
    , lg__hover__border_yellow_800
    , lg__hover__border_yellow_900
    , lg__hover__font_black
    , lg__hover__font_bold
    , lg__hover__font_extrabold
    , lg__hover__font_hairline
    , lg__hover__font_light
    , lg__hover__font_medium
    , lg__hover__font_normal
    , lg__hover__font_semibold
    , lg__hover__font_thin
    , lg__hover__line_through
    , lg__hover__neg_rotate_180
    , lg__hover__neg_rotate_45
    , lg__hover__neg_rotate_90
    , lg__hover__neg_skew_x_12
    , lg__hover__neg_skew_x_3
    , lg__hover__neg_skew_x_6
    , lg__hover__neg_skew_y_12
    , lg__hover__neg_skew_y_3
    , lg__hover__neg_skew_y_6
    , lg__hover__neg_translate_x_1
    , lg__hover__neg_translate_x_10
    , lg__hover__neg_translate_x_12
    , lg__hover__neg_translate_x_16
    , lg__hover__neg_translate_x_1over2
    , lg__hover__neg_translate_x_2
    , lg__hover__neg_translate_x_20
    , lg__hover__neg_translate_x_24
    , lg__hover__neg_translate_x_3
    , lg__hover__neg_translate_x_32
    , lg__hover__neg_translate_x_4
    , lg__hover__neg_translate_x_40
    , lg__hover__neg_translate_x_48
    , lg__hover__neg_translate_x_5
    , lg__hover__neg_translate_x_56
    , lg__hover__neg_translate_x_6
    , lg__hover__neg_translate_x_64
    , lg__hover__neg_translate_x_8
    , lg__hover__neg_translate_x_full
    , lg__hover__neg_translate_x_px
    , lg__hover__neg_translate_y_1
    , lg__hover__neg_translate_y_10
    , lg__hover__neg_translate_y_12
    , lg__hover__neg_translate_y_16
    , lg__hover__neg_translate_y_1over2
    , lg__hover__neg_translate_y_2
    , lg__hover__neg_translate_y_20
    , lg__hover__neg_translate_y_24
    , lg__hover__neg_translate_y_3
    , lg__hover__neg_translate_y_32
    , lg__hover__neg_translate_y_4
    , lg__hover__neg_translate_y_40
    , lg__hover__neg_translate_y_48
    , lg__hover__neg_translate_y_5
    , lg__hover__neg_translate_y_56
    , lg__hover__neg_translate_y_6
    , lg__hover__neg_translate_y_64
    , lg__hover__neg_translate_y_8
    , lg__hover__neg_translate_y_full
    , lg__hover__neg_translate_y_px
    , lg__hover__no_underline
    , lg__hover__opacity_0
    , lg__hover__opacity_100
    , lg__hover__opacity_25
    , lg__hover__opacity_50
    , lg__hover__opacity_75
    , lg__hover__rotate_0
    , lg__hover__rotate_180
    , lg__hover__rotate_45
    , lg__hover__rotate_90
    , lg__hover__scale_0
    , lg__hover__scale_100
    , lg__hover__scale_105
    , lg__hover__scale_110
    , lg__hover__scale_125
    , lg__hover__scale_150
    , lg__hover__scale_50
    , lg__hover__scale_75
    , lg__hover__scale_90
    , lg__hover__scale_95
    , lg__hover__scale_x_0
    , lg__hover__scale_x_100
    , lg__hover__scale_x_105
    , lg__hover__scale_x_110
    , lg__hover__scale_x_125
    , lg__hover__scale_x_150
    , lg__hover__scale_x_50
    , lg__hover__scale_x_75
    , lg__hover__scale_x_90
    , lg__hover__scale_x_95
    , lg__hover__scale_y_0
    , lg__hover__scale_y_100
    , lg__hover__scale_y_105
    , lg__hover__scale_y_110
    , lg__hover__scale_y_125
    , lg__hover__scale_y_150
    , lg__hover__scale_y_50
    , lg__hover__scale_y_75
    , lg__hover__scale_y_90
    , lg__hover__scale_y_95
    , lg__hover__shadow
    , lg__hover__shadow_2xl
    , lg__hover__shadow_inner
    , lg__hover__shadow_lg
    , lg__hover__shadow_md
    , lg__hover__shadow_none
    , lg__hover__shadow_outline
    , lg__hover__shadow_sm
    , lg__hover__shadow_xl
    , lg__hover__shadow_xs
    , lg__hover__skew_x_0
    , lg__hover__skew_x_12
    , lg__hover__skew_x_3
    , lg__hover__skew_x_6
    , lg__hover__skew_y_0
    , lg__hover__skew_y_12
    , lg__hover__skew_y_3
    , lg__hover__skew_y_6
    , lg__hover__text_black
    , lg__hover__text_blue_100
    , lg__hover__text_blue_200
    , lg__hover__text_blue_300
    , lg__hover__text_blue_400
    , lg__hover__text_blue_500
    , lg__hover__text_blue_600
    , lg__hover__text_blue_700
    , lg__hover__text_blue_800
    , lg__hover__text_blue_900
    , lg__hover__text_gray_100
    , lg__hover__text_gray_200
    , lg__hover__text_gray_300
    , lg__hover__text_gray_400
    , lg__hover__text_gray_500
    , lg__hover__text_gray_600
    , lg__hover__text_gray_700
    , lg__hover__text_gray_800
    , lg__hover__text_gray_900
    , lg__hover__text_green_100
    , lg__hover__text_green_200
    , lg__hover__text_green_300
    , lg__hover__text_green_400
    , lg__hover__text_green_500
    , lg__hover__text_green_600
    , lg__hover__text_green_700
    , lg__hover__text_green_800
    , lg__hover__text_green_900
    , lg__hover__text_indigo_100
    , lg__hover__text_indigo_200
    , lg__hover__text_indigo_300
    , lg__hover__text_indigo_400
    , lg__hover__text_indigo_500
    , lg__hover__text_indigo_600
    , lg__hover__text_indigo_700
    , lg__hover__text_indigo_800
    , lg__hover__text_indigo_900
    , lg__hover__text_orange_100
    , lg__hover__text_orange_200
    , lg__hover__text_orange_300
    , lg__hover__text_orange_400
    , lg__hover__text_orange_500
    , lg__hover__text_orange_600
    , lg__hover__text_orange_700
    , lg__hover__text_orange_800
    , lg__hover__text_orange_900
    , lg__hover__text_pink_100
    , lg__hover__text_pink_200
    , lg__hover__text_pink_300
    , lg__hover__text_pink_400
    , lg__hover__text_pink_500
    , lg__hover__text_pink_600
    , lg__hover__text_pink_700
    , lg__hover__text_pink_800
    , lg__hover__text_pink_900
    , lg__hover__text_purple_100
    , lg__hover__text_purple_200
    , lg__hover__text_purple_300
    , lg__hover__text_purple_400
    , lg__hover__text_purple_500
    , lg__hover__text_purple_600
    , lg__hover__text_purple_700
    , lg__hover__text_purple_800
    , lg__hover__text_purple_900
    , lg__hover__text_red_100
    , lg__hover__text_red_200
    , lg__hover__text_red_300
    , lg__hover__text_red_400
    , lg__hover__text_red_500
    , lg__hover__text_red_600
    , lg__hover__text_red_700
    , lg__hover__text_red_800
    , lg__hover__text_red_900
    , lg__hover__text_teal_100
    , lg__hover__text_teal_200
    , lg__hover__text_teal_300
    , lg__hover__text_teal_400
    , lg__hover__text_teal_500
    , lg__hover__text_teal_600
    , lg__hover__text_teal_700
    , lg__hover__text_teal_800
    , lg__hover__text_teal_900
    , lg__hover__text_transparent
    , lg__hover__text_white
    , lg__hover__text_yellow_100
    , lg__hover__text_yellow_200
    , lg__hover__text_yellow_300
    , lg__hover__text_yellow_400
    , lg__hover__text_yellow_500
    , lg__hover__text_yellow_600
    , lg__hover__text_yellow_700
    , lg__hover__text_yellow_800
    , lg__hover__text_yellow_900
    , lg__hover__translate_x_0
    , lg__hover__translate_x_1
    , lg__hover__translate_x_10
    , lg__hover__translate_x_12
    , lg__hover__translate_x_16
    , lg__hover__translate_x_1over2
    , lg__hover__translate_x_2
    , lg__hover__translate_x_20
    , lg__hover__translate_x_24
    , lg__hover__translate_x_3
    , lg__hover__translate_x_32
    , lg__hover__translate_x_4
    , lg__hover__translate_x_40
    , lg__hover__translate_x_48
    , lg__hover__translate_x_5
    , lg__hover__translate_x_56
    , lg__hover__translate_x_6
    , lg__hover__translate_x_64
    , lg__hover__translate_x_8
    , lg__hover__translate_x_full
    , lg__hover__translate_x_px
    , lg__hover__translate_y_0
    , lg__hover__translate_y_1
    , lg__hover__translate_y_10
    , lg__hover__translate_y_12
    , lg__hover__translate_y_16
    , lg__hover__translate_y_1over2
    , lg__hover__translate_y_2
    , lg__hover__translate_y_20
    , lg__hover__translate_y_24
    , lg__hover__translate_y_3
    , lg__hover__translate_y_32
    , lg__hover__translate_y_4
    , lg__hover__translate_y_40
    , lg__hover__translate_y_48
    , lg__hover__translate_y_5
    , lg__hover__translate_y_56
    , lg__hover__translate_y_6
    , lg__hover__translate_y_64
    , lg__hover__translate_y_8
    , lg__hover__translate_y_full
    , lg__hover__translate_y_px
    , lg__hover__underline
    , lg__inline
    , lg__inline_block
    , lg__inline_flex
    , lg__inset_0
    , lg__inset_auto
    , lg__inset_x_0
    , lg__inset_x_auto
    , lg__inset_y_0
    , lg__inset_y_auto
    , lg__invisible
    , lg__italic
    , lg__items_baseline
    , lg__items_center
    , lg__items_end
    , lg__items_start
    , lg__items_stretch
    , lg__justify_around
    , lg__justify_between
    , lg__justify_center
    , lg__justify_end
    , lg__justify_evenly
    , lg__justify_start
    , lg__leading_10
    , lg__leading_3
    , lg__leading_4
    , lg__leading_5
    , lg__leading_6
    , lg__leading_7
    , lg__leading_8
    , lg__leading_9
    , lg__leading_loose
    , lg__leading_none
    , lg__leading_normal
    , lg__leading_relaxed
    , lg__leading_snug
    , lg__leading_tight
    , lg__left_0
    , lg__left_auto
    , lg__line_through
    , lg__list_decimal
    , lg__list_disc
    , lg__list_inside
    , lg__list_none
    , lg__list_outside
    , lg__lowercase
    , lg__m_0
    , lg__m_1
    , lg__m_10
    , lg__m_12
    , lg__m_16
    , lg__m_2
    , lg__m_20
    , lg__m_24
    , lg__m_3
    , lg__m_32
    , lg__m_4
    , lg__m_40
    , lg__m_48
    , lg__m_5
    , lg__m_56
    , lg__m_6
    , lg__m_64
    , lg__m_8
    , lg__m_auto
    , lg__m_px
    , lg__max_h_full
    , lg__max_h_screen
    , lg__max_w_2xl
    , lg__max_w_3xl
    , lg__max_w_4xl
    , lg__max_w_5xl
    , lg__max_w_6xl
    , lg__max_w_full
    , lg__max_w_lg
    , lg__max_w_md
    , lg__max_w_none
    , lg__max_w_screen_lg
    , lg__max_w_screen_md
    , lg__max_w_screen_sm
    , lg__max_w_screen_xl
    , lg__max_w_sm
    , lg__max_w_xl
    , lg__max_w_xs
    , lg__mb_0
    , lg__mb_1
    , lg__mb_10
    , lg__mb_12
    , lg__mb_16
    , lg__mb_2
    , lg__mb_20
    , lg__mb_24
    , lg__mb_3
    , lg__mb_32
    , lg__mb_4
    , lg__mb_40
    , lg__mb_48
    , lg__mb_5
    , lg__mb_56
    , lg__mb_6
    , lg__mb_64
    , lg__mb_8
    , lg__mb_auto
    , lg__mb_px
    , lg__min_h_0
    , lg__min_h_full
    , lg__min_h_screen
    , lg__min_w_0
    , lg__min_w_full
    , lg__ml_0
    , lg__ml_1
    , lg__ml_10
    , lg__ml_12
    , lg__ml_16
    , lg__ml_2
    , lg__ml_20
    , lg__ml_24
    , lg__ml_3
    , lg__ml_32
    , lg__ml_4
    , lg__ml_40
    , lg__ml_48
    , lg__ml_5
    , lg__ml_56
    , lg__ml_6
    , lg__ml_64
    , lg__ml_8
    , lg__ml_auto
    , lg__ml_px
    , lg__mr_0
    , lg__mr_1
    , lg__mr_10
    , lg__mr_12
    , lg__mr_16
    , lg__mr_2
    , lg__mr_20
    , lg__mr_24
    , lg__mr_3
    , lg__mr_32
    , lg__mr_4
    , lg__mr_40
    , lg__mr_48
    , lg__mr_5
    , lg__mr_56
    , lg__mr_6
    , lg__mr_64
    , lg__mr_8
    , lg__mr_auto
    , lg__mr_px
    , lg__mt_0
    , lg__mt_1
    , lg__mt_10
    , lg__mt_12
    , lg__mt_16
    , lg__mt_2
    , lg__mt_20
    , lg__mt_24
    , lg__mt_3
    , lg__mt_32
    , lg__mt_4
    , lg__mt_40
    , lg__mt_48
    , lg__mt_5
    , lg__mt_56
    , lg__mt_6
    , lg__mt_64
    , lg__mt_8
    , lg__mt_auto
    , lg__mt_px
    , lg__mx_0
    , lg__mx_1
    , lg__mx_10
    , lg__mx_12
    , lg__mx_16
    , lg__mx_2
    , lg__mx_20
    , lg__mx_24
    , lg__mx_3
    , lg__mx_32
    , lg__mx_4
    , lg__mx_40
    , lg__mx_48
    , lg__mx_5
    , lg__mx_56
    , lg__mx_6
    , lg__mx_64
    , lg__mx_8
    , lg__mx_auto
    , lg__mx_px
    , lg__my_0
    , lg__my_1
    , lg__my_10
    , lg__my_12
    , lg__my_16
    , lg__my_2
    , lg__my_20
    , lg__my_24
    , lg__my_3
    , lg__my_32
    , lg__my_4
    , lg__my_40
    , lg__my_48
    , lg__my_5
    , lg__my_56
    , lg__my_6
    , lg__my_64
    , lg__my_8
    , lg__my_auto
    , lg__my_px
    , lg__neg_m_1
    , lg__neg_m_10
    , lg__neg_m_12
    , lg__neg_m_16
    , lg__neg_m_2
    , lg__neg_m_20
    , lg__neg_m_24
    , lg__neg_m_3
    , lg__neg_m_32
    , lg__neg_m_4
    , lg__neg_m_40
    , lg__neg_m_48
    , lg__neg_m_5
    , lg__neg_m_56
    , lg__neg_m_6
    , lg__neg_m_64
    , lg__neg_m_8
    , lg__neg_m_px
    , lg__neg_mb_1
    , lg__neg_mb_10
    , lg__neg_mb_12
    , lg__neg_mb_16
    , lg__neg_mb_2
    , lg__neg_mb_20
    , lg__neg_mb_24
    , lg__neg_mb_3
    , lg__neg_mb_32
    , lg__neg_mb_4
    , lg__neg_mb_40
    , lg__neg_mb_48
    , lg__neg_mb_5
    , lg__neg_mb_56
    , lg__neg_mb_6
    , lg__neg_mb_64
    , lg__neg_mb_8
    , lg__neg_mb_px
    , lg__neg_ml_1
    , lg__neg_ml_10
    , lg__neg_ml_12
    , lg__neg_ml_16
    , lg__neg_ml_2
    , lg__neg_ml_20
    , lg__neg_ml_24
    , lg__neg_ml_3
    , lg__neg_ml_32
    , lg__neg_ml_4
    , lg__neg_ml_40
    , lg__neg_ml_48
    , lg__neg_ml_5
    , lg__neg_ml_56
    , lg__neg_ml_6
    , lg__neg_ml_64
    , lg__neg_ml_8
    , lg__neg_ml_px
    , lg__neg_mr_1
    , lg__neg_mr_10
    , lg__neg_mr_12
    , lg__neg_mr_16
    , lg__neg_mr_2
    , lg__neg_mr_20
    , lg__neg_mr_24
    , lg__neg_mr_3
    , lg__neg_mr_32
    , lg__neg_mr_4
    , lg__neg_mr_40
    , lg__neg_mr_48
    , lg__neg_mr_5
    , lg__neg_mr_56
    , lg__neg_mr_6
    , lg__neg_mr_64
    , lg__neg_mr_8
    , lg__neg_mr_px
    , lg__neg_mt_1
    , lg__neg_mt_10
    , lg__neg_mt_12
    , lg__neg_mt_16
    , lg__neg_mt_2
    , lg__neg_mt_20
    , lg__neg_mt_24
    , lg__neg_mt_3
    , lg__neg_mt_32
    , lg__neg_mt_4
    , lg__neg_mt_40
    , lg__neg_mt_48
    , lg__neg_mt_5
    , lg__neg_mt_56
    , lg__neg_mt_6
    , lg__neg_mt_64
    , lg__neg_mt_8
    , lg__neg_mt_px
    , lg__neg_mx_1
    , lg__neg_mx_10
    , lg__neg_mx_12
    , lg__neg_mx_16
    , lg__neg_mx_2
    , lg__neg_mx_20
    , lg__neg_mx_24
    , lg__neg_mx_3
    , lg__neg_mx_32
    , lg__neg_mx_4
    , lg__neg_mx_40
    , lg__neg_mx_48
    , lg__neg_mx_5
    , lg__neg_mx_56
    , lg__neg_mx_6
    , lg__neg_mx_64
    , lg__neg_mx_8
    , lg__neg_mx_px
    , lg__neg_my_1
    , lg__neg_my_10
    , lg__neg_my_12
    , lg__neg_my_16
    , lg__neg_my_2
    , lg__neg_my_20
    , lg__neg_my_24
    , lg__neg_my_3
    , lg__neg_my_32
    , lg__neg_my_4
    , lg__neg_my_40
    , lg__neg_my_48
    , lg__neg_my_5
    , lg__neg_my_56
    , lg__neg_my_6
    , lg__neg_my_64
    , lg__neg_my_8
    , lg__neg_my_px
    , lg__neg_rotate_180
    , lg__neg_rotate_45
    , lg__neg_rotate_90
    , lg__neg_skew_x_12
    , lg__neg_skew_x_3
    , lg__neg_skew_x_6
    , lg__neg_skew_y_12
    , lg__neg_skew_y_3
    , lg__neg_skew_y_6
    , lg__neg_translate_x_1
    , lg__neg_translate_x_10
    , lg__neg_translate_x_12
    , lg__neg_translate_x_16
    , lg__neg_translate_x_1over2
    , lg__neg_translate_x_2
    , lg__neg_translate_x_20
    , lg__neg_translate_x_24
    , lg__neg_translate_x_3
    , lg__neg_translate_x_32
    , lg__neg_translate_x_4
    , lg__neg_translate_x_40
    , lg__neg_translate_x_48
    , lg__neg_translate_x_5
    , lg__neg_translate_x_56
    , lg__neg_translate_x_6
    , lg__neg_translate_x_64
    , lg__neg_translate_x_8
    , lg__neg_translate_x_full
    , lg__neg_translate_x_px
    , lg__neg_translate_y_1
    , lg__neg_translate_y_10
    , lg__neg_translate_y_12
    , lg__neg_translate_y_16
    , lg__neg_translate_y_1over2
    , lg__neg_translate_y_2
    , lg__neg_translate_y_20
    , lg__neg_translate_y_24
    , lg__neg_translate_y_3
    , lg__neg_translate_y_32
    , lg__neg_translate_y_4
    , lg__neg_translate_y_40
    , lg__neg_translate_y_48
    , lg__neg_translate_y_5
    , lg__neg_translate_y_56
    , lg__neg_translate_y_6
    , lg__neg_translate_y_64
    , lg__neg_translate_y_8
    , lg__neg_translate_y_full
    , lg__neg_translate_y_px
    , lg__no_underline
    , lg__normal_case
    , lg__not_italic
    , lg__not_sr_only
    , lg__object_bottom
    , lg__object_center
    , lg__object_contain
    , lg__object_cover
    , lg__object_fill
    , lg__object_left
    , lg__object_left_bottom
    , lg__object_left_top
    , lg__object_none
    , lg__object_right
    , lg__object_right_bottom
    , lg__object_right_top
    , lg__object_scale_down
    , lg__object_top
    , lg__opacity_0
    , lg__opacity_100
    , lg__opacity_25
    , lg__opacity_50
    , lg__opacity_75
    , lg__order_1
    , lg__order_10
    , lg__order_11
    , lg__order_12
    , lg__order_2
    , lg__order_3
    , lg__order_4
    , lg__order_5
    , lg__order_6
    , lg__order_7
    , lg__order_8
    , lg__order_9
    , lg__order_first
    , lg__order_last
    , lg__order_none
    , lg__origin_bottom
    , lg__origin_bottom_left
    , lg__origin_bottom_right
    , lg__origin_center
    , lg__origin_left
    , lg__origin_right
    , lg__origin_top
    , lg__origin_top_left
    , lg__origin_top_right
    , lg__outline_none
    , lg__overflow_auto
    , lg__overflow_hidden
    , lg__overflow_scroll
    , lg__overflow_visible
    , lg__overflow_x_auto
    , lg__overflow_x_hidden
    , lg__overflow_x_scroll
    , lg__overflow_x_visible
    , lg__overflow_y_auto
    , lg__overflow_y_hidden
    , lg__overflow_y_scroll
    , lg__overflow_y_visible
    , lg__p_0
    , lg__p_1
    , lg__p_10
    , lg__p_12
    , lg__p_16
    , lg__p_2
    , lg__p_20
    , lg__p_24
    , lg__p_3
    , lg__p_32
    , lg__p_4
    , lg__p_40
    , lg__p_48
    , lg__p_5
    , lg__p_56
    , lg__p_6
    , lg__p_64
    , lg__p_8
    , lg__p_px
    , lg__pb_0
    , lg__pb_1
    , lg__pb_10
    , lg__pb_12
    , lg__pb_16
    , lg__pb_2
    , lg__pb_20
    , lg__pb_24
    , lg__pb_3
    , lg__pb_32
    , lg__pb_4
    , lg__pb_40
    , lg__pb_48
    , lg__pb_5
    , lg__pb_56
    , lg__pb_6
    , lg__pb_64
    , lg__pb_8
    , lg__pb_px
    , lg__pl_0
    , lg__pl_1
    , lg__pl_10
    , lg__pl_12
    , lg__pl_16
    , lg__pl_2
    , lg__pl_20
    , lg__pl_24
    , lg__pl_3
    , lg__pl_32
    , lg__pl_4
    , lg__pl_40
    , lg__pl_48
    , lg__pl_5
    , lg__pl_56
    , lg__pl_6
    , lg__pl_64
    , lg__pl_8
    , lg__pl_px
    , lg__placeholder_black
    , lg__placeholder_blue_100
    , lg__placeholder_blue_200
    , lg__placeholder_blue_300
    , lg__placeholder_blue_400
    , lg__placeholder_blue_500
    , lg__placeholder_blue_600
    , lg__placeholder_blue_700
    , lg__placeholder_blue_800
    , lg__placeholder_blue_900
    , lg__placeholder_gray_100
    , lg__placeholder_gray_200
    , lg__placeholder_gray_300
    , lg__placeholder_gray_400
    , lg__placeholder_gray_500
    , lg__placeholder_gray_600
    , lg__placeholder_gray_700
    , lg__placeholder_gray_800
    , lg__placeholder_gray_900
    , lg__placeholder_green_100
    , lg__placeholder_green_200
    , lg__placeholder_green_300
    , lg__placeholder_green_400
    , lg__placeholder_green_500
    , lg__placeholder_green_600
    , lg__placeholder_green_700
    , lg__placeholder_green_800
    , lg__placeholder_green_900
    , lg__placeholder_indigo_100
    , lg__placeholder_indigo_200
    , lg__placeholder_indigo_300
    , lg__placeholder_indigo_400
    , lg__placeholder_indigo_500
    , lg__placeholder_indigo_600
    , lg__placeholder_indigo_700
    , lg__placeholder_indigo_800
    , lg__placeholder_indigo_900
    , lg__placeholder_orange_100
    , lg__placeholder_orange_200
    , lg__placeholder_orange_300
    , lg__placeholder_orange_400
    , lg__placeholder_orange_500
    , lg__placeholder_orange_600
    , lg__placeholder_orange_700
    , lg__placeholder_orange_800
    , lg__placeholder_orange_900
    , lg__placeholder_pink_100
    , lg__placeholder_pink_200
    , lg__placeholder_pink_300
    , lg__placeholder_pink_400
    , lg__placeholder_pink_500
    , lg__placeholder_pink_600
    , lg__placeholder_pink_700
    , lg__placeholder_pink_800
    , lg__placeholder_pink_900
    , lg__placeholder_purple_100
    , lg__placeholder_purple_200
    , lg__placeholder_purple_300
    , lg__placeholder_purple_400
    , lg__placeholder_purple_500
    , lg__placeholder_purple_600
    , lg__placeholder_purple_700
    , lg__placeholder_purple_800
    , lg__placeholder_purple_900
    , lg__placeholder_red_100
    , lg__placeholder_red_200
    , lg__placeholder_red_300
    , lg__placeholder_red_400
    , lg__placeholder_red_500
    , lg__placeholder_red_600
    , lg__placeholder_red_700
    , lg__placeholder_red_800
    , lg__placeholder_red_900
    , lg__placeholder_teal_100
    , lg__placeholder_teal_200
    , lg__placeholder_teal_300
    , lg__placeholder_teal_400
    , lg__placeholder_teal_500
    , lg__placeholder_teal_600
    , lg__placeholder_teal_700
    , lg__placeholder_teal_800
    , lg__placeholder_teal_900
    , lg__placeholder_transparent
    , lg__placeholder_white
    , lg__placeholder_yellow_100
    , lg__placeholder_yellow_200
    , lg__placeholder_yellow_300
    , lg__placeholder_yellow_400
    , lg__placeholder_yellow_500
    , lg__placeholder_yellow_600
    , lg__placeholder_yellow_700
    , lg__placeholder_yellow_800
    , lg__placeholder_yellow_900
    , lg__pointer_events_auto
    , lg__pointer_events_none
    , lg__pr_0
    , lg__pr_1
    , lg__pr_10
    , lg__pr_12
    , lg__pr_16
    , lg__pr_2
    , lg__pr_20
    , lg__pr_24
    , lg__pr_3
    , lg__pr_32
    , lg__pr_4
    , lg__pr_40
    , lg__pr_48
    , lg__pr_5
    , lg__pr_56
    , lg__pr_6
    , lg__pr_64
    , lg__pr_8
    , lg__pr_px
    , lg__pt_0
    , lg__pt_1
    , lg__pt_10
    , lg__pt_12
    , lg__pt_16
    , lg__pt_2
    , lg__pt_20
    , lg__pt_24
    , lg__pt_3
    , lg__pt_32
    , lg__pt_4
    , lg__pt_40
    , lg__pt_48
    , lg__pt_5
    , lg__pt_56
    , lg__pt_6
    , lg__pt_64
    , lg__pt_8
    , lg__pt_px
    , lg__px_0
    , lg__px_1
    , lg__px_10
    , lg__px_12
    , lg__px_16
    , lg__px_2
    , lg__px_20
    , lg__px_24
    , lg__px_3
    , lg__px_32
    , lg__px_4
    , lg__px_40
    , lg__px_48
    , lg__px_5
    , lg__px_56
    , lg__px_6
    , lg__px_64
    , lg__px_8
    , lg__px_px
    , lg__py_0
    , lg__py_1
    , lg__py_10
    , lg__py_12
    , lg__py_16
    , lg__py_2
    , lg__py_20
    , lg__py_24
    , lg__py_3
    , lg__py_32
    , lg__py_4
    , lg__py_40
    , lg__py_48
    , lg__py_5
    , lg__py_56
    , lg__py_6
    , lg__py_64
    , lg__py_8
    , lg__py_px
    , lg__relative
    , lg__resize
    , lg__resize_none
    , lg__resize_x
    , lg__resize_y
    , lg__right_0
    , lg__right_auto
    , lg__rotate_0
    , lg__rotate_180
    , lg__rotate_45
    , lg__rotate_90
    , lg__rounded
    , lg__rounded_b
    , lg__rounded_b_full
    , lg__rounded_b_lg
    , lg__rounded_b_md
    , lg__rounded_b_none
    , lg__rounded_b_sm
    , lg__rounded_bl
    , lg__rounded_bl_full
    , lg__rounded_bl_lg
    , lg__rounded_bl_md
    , lg__rounded_bl_none
    , lg__rounded_bl_sm
    , lg__rounded_br
    , lg__rounded_br_full
    , lg__rounded_br_lg
    , lg__rounded_br_md
    , lg__rounded_br_none
    , lg__rounded_br_sm
    , lg__rounded_full
    , lg__rounded_l
    , lg__rounded_l_full
    , lg__rounded_l_lg
    , lg__rounded_l_md
    , lg__rounded_l_none
    , lg__rounded_l_sm
    , lg__rounded_lg
    , lg__rounded_md
    , lg__rounded_none
    , lg__rounded_r
    , lg__rounded_r_full
    , lg__rounded_r_lg
    , lg__rounded_r_md
    , lg__rounded_r_none
    , lg__rounded_r_sm
    , lg__rounded_sm
    , lg__rounded_t
    , lg__rounded_t_full
    , lg__rounded_t_lg
    , lg__rounded_t_md
    , lg__rounded_t_none
    , lg__rounded_t_sm
    , lg__rounded_tl
    , lg__rounded_tl_full
    , lg__rounded_tl_lg
    , lg__rounded_tl_md
    , lg__rounded_tl_none
    , lg__rounded_tl_sm
    , lg__rounded_tr
    , lg__rounded_tr_full
    , lg__rounded_tr_lg
    , lg__rounded_tr_md
    , lg__rounded_tr_none
    , lg__rounded_tr_sm
    , lg__row_auto
    , lg__row_end_1
    , lg__row_end_2
    , lg__row_end_3
    , lg__row_end_4
    , lg__row_end_5
    , lg__row_end_6
    , lg__row_end_7
    , lg__row_end_auto
    , lg__row_gap_0
    , lg__row_gap_1
    , lg__row_gap_10
    , lg__row_gap_12
    , lg__row_gap_16
    , lg__row_gap_2
    , lg__row_gap_20
    , lg__row_gap_24
    , lg__row_gap_3
    , lg__row_gap_32
    , lg__row_gap_4
    , lg__row_gap_40
    , lg__row_gap_48
    , lg__row_gap_5
    , lg__row_gap_56
    , lg__row_gap_6
    , lg__row_gap_64
    , lg__row_gap_8
    , lg__row_gap_px
    , lg__row_span_1
    , lg__row_span_2
    , lg__row_span_3
    , lg__row_span_4
    , lg__row_span_5
    , lg__row_span_6
    , lg__row_start_1
    , lg__row_start_2
    , lg__row_start_3
    , lg__row_start_4
    , lg__row_start_5
    , lg__row_start_6
    , lg__row_start_7
    , lg__row_start_auto
    , lg__scale_0
    , lg__scale_100
    , lg__scale_105
    , lg__scale_110
    , lg__scale_125
    , lg__scale_150
    , lg__scale_50
    , lg__scale_75
    , lg__scale_90
    , lg__scale_95
    , lg__scale_x_0
    , lg__scale_x_100
    , lg__scale_x_105
    , lg__scale_x_110
    , lg__scale_x_125
    , lg__scale_x_150
    , lg__scale_x_50
    , lg__scale_x_75
    , lg__scale_x_90
    , lg__scale_x_95
    , lg__scale_y_0
    , lg__scale_y_100
    , lg__scale_y_105
    , lg__scale_y_110
    , lg__scale_y_125
    , lg__scale_y_150
    , lg__scale_y_50
    , lg__scale_y_75
    , lg__scale_y_90
    , lg__scale_y_95
    , lg__scrolling_auto
    , lg__scrolling_touch
    , lg__select_all
    , lg__select_auto
    , lg__select_none
    , lg__select_text
    , lg__self_auto
    , lg__self_center
    , lg__self_end
    , lg__self_start
    , lg__self_stretch
    , lg__shadow
    , lg__shadow_2xl
    , lg__shadow_inner
    , lg__shadow_lg
    , lg__shadow_md
    , lg__shadow_none
    , lg__shadow_outline
    , lg__shadow_sm
    , lg__shadow_xl
    , lg__shadow_xs
    , lg__skew_x_0
    , lg__skew_x_12
    , lg__skew_x_3
    , lg__skew_x_6
    , lg__skew_y_0
    , lg__skew_y_12
    , lg__skew_y_3
    , lg__skew_y_6
    , lg__sr_only
    , lg__static
    , lg__sticky
    , lg__stroke_0
    , lg__stroke_1
    , lg__stroke_2
    , lg__stroke_current
    , lg__subpixel_antialiased
    , lg__table
    , lg__table_auto
    , lg__table_caption
    , lg__table_cell
    , lg__table_column
    , lg__table_column_group
    , lg__table_fixed
    , lg__table_footer_group
    , lg__table_header_group
    , lg__table_row
    , lg__table_row_group
    , lg__text_2xl
    , lg__text_3xl
    , lg__text_4xl
    , lg__text_5xl
    , lg__text_6xl
    , lg__text_base
    , lg__text_black
    , lg__text_blue_100
    , lg__text_blue_200
    , lg__text_blue_300
    , lg__text_blue_400
    , lg__text_blue_500
    , lg__text_blue_600
    , lg__text_blue_700
    , lg__text_blue_800
    , lg__text_blue_900
    , lg__text_center
    , lg__text_gray_100
    , lg__text_gray_200
    , lg__text_gray_300
    , lg__text_gray_400
    , lg__text_gray_500
    , lg__text_gray_600
    , lg__text_gray_700
    , lg__text_gray_800
    , lg__text_gray_900
    , lg__text_green_100
    , lg__text_green_200
    , lg__text_green_300
    , lg__text_green_400
    , lg__text_green_500
    , lg__text_green_600
    , lg__text_green_700
    , lg__text_green_800
    , lg__text_green_900
    , lg__text_indigo_100
    , lg__text_indigo_200
    , lg__text_indigo_300
    , lg__text_indigo_400
    , lg__text_indigo_500
    , lg__text_indigo_600
    , lg__text_indigo_700
    , lg__text_indigo_800
    , lg__text_indigo_900
    , lg__text_justify
    , lg__text_left
    , lg__text_lg
    , lg__text_orange_100
    , lg__text_orange_200
    , lg__text_orange_300
    , lg__text_orange_400
    , lg__text_orange_500
    , lg__text_orange_600
    , lg__text_orange_700
    , lg__text_orange_800
    , lg__text_orange_900
    , lg__text_pink_100
    , lg__text_pink_200
    , lg__text_pink_300
    , lg__text_pink_400
    , lg__text_pink_500
    , lg__text_pink_600
    , lg__text_pink_700
    , lg__text_pink_800
    , lg__text_pink_900
    , lg__text_purple_100
    , lg__text_purple_200
    , lg__text_purple_300
    , lg__text_purple_400
    , lg__text_purple_500
    , lg__text_purple_600
    , lg__text_purple_700
    , lg__text_purple_800
    , lg__text_purple_900
    , lg__text_red_100
    , lg__text_red_200
    , lg__text_red_300
    , lg__text_red_400
    , lg__text_red_500
    , lg__text_red_600
    , lg__text_red_700
    , lg__text_red_800
    , lg__text_red_900
    , lg__text_right
    , lg__text_sm
    , lg__text_teal_100
    , lg__text_teal_200
    , lg__text_teal_300
    , lg__text_teal_400
    , lg__text_teal_500
    , lg__text_teal_600
    , lg__text_teal_700
    , lg__text_teal_800
    , lg__text_teal_900
    , lg__text_transparent
    , lg__text_white
    , lg__text_xl
    , lg__text_xs
    , lg__text_yellow_100
    , lg__text_yellow_200
    , lg__text_yellow_300
    , lg__text_yellow_400
    , lg__text_yellow_500
    , lg__text_yellow_600
    , lg__text_yellow_700
    , lg__text_yellow_800
    , lg__text_yellow_900
    , lg__top_0
    , lg__top_auto
    , lg__tracking_normal
    , lg__tracking_tight
    , lg__tracking_tighter
    , lg__tracking_wide
    , lg__tracking_wider
    , lg__tracking_widest
    , lg__transform
    , lg__transform_none
    , lg__transition
    , lg__transition_all
    , lg__transition_colors
    , lg__transition_none
    , lg__transition_opacity
    , lg__transition_shadow
    , lg__transition_transform
    , lg__translate_x_0
    , lg__translate_x_1
    , lg__translate_x_10
    , lg__translate_x_12
    , lg__translate_x_16
    , lg__translate_x_1over2
    , lg__translate_x_2
    , lg__translate_x_20
    , lg__translate_x_24
    , lg__translate_x_3
    , lg__translate_x_32
    , lg__translate_x_4
    , lg__translate_x_40
    , lg__translate_x_48
    , lg__translate_x_5
    , lg__translate_x_56
    , lg__translate_x_6
    , lg__translate_x_64
    , lg__translate_x_8
    , lg__translate_x_full
    , lg__translate_x_px
    , lg__translate_y_0
    , lg__translate_y_1
    , lg__translate_y_10
    , lg__translate_y_12
    , lg__translate_y_16
    , lg__translate_y_1over2
    , lg__translate_y_2
    , lg__translate_y_20
    , lg__translate_y_24
    , lg__translate_y_3
    , lg__translate_y_32
    , lg__translate_y_4
    , lg__translate_y_40
    , lg__translate_y_48
    , lg__translate_y_5
    , lg__translate_y_56
    , lg__translate_y_6
    , lg__translate_y_64
    , lg__translate_y_8
    , lg__translate_y_full
    , lg__translate_y_px
    , lg__truncate
    , lg__underline
    , lg__uppercase
    , lg__visible
    , lg__w_0
    , lg__w_1
    , lg__w_10
    , lg__w_10over12
    , lg__w_11over12
    , lg__w_12
    , lg__w_16
    , lg__w_1over12
    , lg__w_1over2
    , lg__w_1over3
    , lg__w_1over4
    , lg__w_1over5
    , lg__w_1over6
    , lg__w_2
    , lg__w_20
    , lg__w_24
    , lg__w_2over12
    , lg__w_2over3
    , lg__w_2over4
    , lg__w_2over5
    , lg__w_2over6
    , lg__w_3
    , lg__w_32
    , lg__w_3over12
    , lg__w_3over4
    , lg__w_3over5
    , lg__w_3over6
    , lg__w_4
    , lg__w_40
    , lg__w_48
    , lg__w_4over12
    , lg__w_4over5
    , lg__w_4over6
    , lg__w_5
    , lg__w_56
    , lg__w_5over12
    , lg__w_5over6
    , lg__w_6
    , lg__w_64
    , lg__w_6over12
    , lg__w_7over12
    , lg__w_8
    , lg__w_8over12
    , lg__w_9over12
    , lg__w_auto
    , lg__w_full
    , lg__w_px
    , lg__w_screen
    , lg__whitespace_no_wrap
    , lg__whitespace_normal
    , lg__whitespace_pre
    , lg__whitespace_pre_line
    , lg__whitespace_pre_wrap
    , lg__z_0
    , lg__z_10
    , lg__z_20
    , lg__z_30
    , lg__z_40
    , lg__z_50
    , lg__z_auto
    , line_through
    , list_decimal
    , list_disc
    , list_inside
    , list_none
    , list_outside
    , lowercase
    , m_0
    , m_1
    , m_10
    , m_12
    , m_16
    , m_2
    , m_20
    , m_24
    , m_3
    , m_32
    , m_4
    , m_40
    , m_48
    , m_5
    , m_56
    , m_6
    , m_64
    , m_8
    , m_auto
    , m_px
    , max_h_full
    , max_h_screen
    , max_w_2xl
    , max_w_3xl
    , max_w_4xl
    , max_w_5xl
    , max_w_6xl
    , max_w_full
    , max_w_lg
    , max_w_md
    , max_w_none
    , max_w_screen_lg
    , max_w_screen_md
    , max_w_screen_sm
    , max_w_screen_xl
    , max_w_sm
    , max_w_xl
    , max_w_xs
    , mb_0
    , mb_1
    , mb_10
    , mb_12
    , mb_16
    , mb_2
    , mb_20
    , mb_24
    , mb_3
    , mb_32
    , mb_4
    , mb_40
    , mb_48
    , mb_5
    , mb_56
    , mb_6
    , mb_64
    , mb_8
    , mb_auto
    , mb_px
    , md__absolute
    , md__align_baseline
    , md__align_bottom
    , md__align_middle
    , md__align_text_bottom
    , md__align_text_top
    , md__align_top
    , md__antialiased
    , md__appearance_none
    , md__bg_auto
    , md__bg_black
    , md__bg_blue_100
    , md__bg_blue_200
    , md__bg_blue_300
    , md__bg_blue_400
    , md__bg_blue_500
    , md__bg_blue_600
    , md__bg_blue_700
    , md__bg_blue_800
    , md__bg_blue_900
    , md__bg_bottom
    , md__bg_center
    , md__bg_contain
    , md__bg_cover
    , md__bg_fixed
    , md__bg_gray_100
    , md__bg_gray_200
    , md__bg_gray_300
    , md__bg_gray_400
    , md__bg_gray_500
    , md__bg_gray_600
    , md__bg_gray_700
    , md__bg_gray_800
    , md__bg_gray_900
    , md__bg_green_100
    , md__bg_green_200
    , md__bg_green_300
    , md__bg_green_400
    , md__bg_green_500
    , md__bg_green_600
    , md__bg_green_700
    , md__bg_green_800
    , md__bg_green_900
    , md__bg_indigo_100
    , md__bg_indigo_200
    , md__bg_indigo_300
    , md__bg_indigo_400
    , md__bg_indigo_500
    , md__bg_indigo_600
    , md__bg_indigo_700
    , md__bg_indigo_800
    , md__bg_indigo_900
    , md__bg_left
    , md__bg_left_bottom
    , md__bg_left_top
    , md__bg_local
    , md__bg_no_repeat
    , md__bg_orange_100
    , md__bg_orange_200
    , md__bg_orange_300
    , md__bg_orange_400
    , md__bg_orange_500
    , md__bg_orange_600
    , md__bg_orange_700
    , md__bg_orange_800
    , md__bg_orange_900
    , md__bg_pink_100
    , md__bg_pink_200
    , md__bg_pink_300
    , md__bg_pink_400
    , md__bg_pink_500
    , md__bg_pink_600
    , md__bg_pink_700
    , md__bg_pink_800
    , md__bg_pink_900
    , md__bg_purple_100
    , md__bg_purple_200
    , md__bg_purple_300
    , md__bg_purple_400
    , md__bg_purple_500
    , md__bg_purple_600
    , md__bg_purple_700
    , md__bg_purple_800
    , md__bg_purple_900
    , md__bg_red_100
    , md__bg_red_200
    , md__bg_red_300
    , md__bg_red_400
    , md__bg_red_500
    , md__bg_red_600
    , md__bg_red_700
    , md__bg_red_800
    , md__bg_red_900
    , md__bg_repeat
    , md__bg_repeat_round
    , md__bg_repeat_space
    , md__bg_repeat_x
    , md__bg_repeat_y
    , md__bg_right
    , md__bg_right_bottom
    , md__bg_right_top
    , md__bg_scroll
    , md__bg_teal_100
    , md__bg_teal_200
    , md__bg_teal_300
    , md__bg_teal_400
    , md__bg_teal_500
    , md__bg_teal_600
    , md__bg_teal_700
    , md__bg_teal_800
    , md__bg_teal_900
    , md__bg_top
    , md__bg_transparent
    , md__bg_white
    , md__bg_yellow_100
    , md__bg_yellow_200
    , md__bg_yellow_300
    , md__bg_yellow_400
    , md__bg_yellow_500
    , md__bg_yellow_600
    , md__bg_yellow_700
    , md__bg_yellow_800
    , md__bg_yellow_900
    , md__block
    , md__border
    , md__border_0
    , md__border_2
    , md__border_4
    , md__border_8
    , md__border_b
    , md__border_b_0
    , md__border_b_2
    , md__border_b_4
    , md__border_b_8
    , md__border_black
    , md__border_blue_100
    , md__border_blue_200
    , md__border_blue_300
    , md__border_blue_400
    , md__border_blue_500
    , md__border_blue_600
    , md__border_blue_700
    , md__border_blue_800
    , md__border_blue_900
    , md__border_collapse
    , md__border_dashed
    , md__border_dotted
    , md__border_double
    , md__border_gray_100
    , md__border_gray_200
    , md__border_gray_300
    , md__border_gray_400
    , md__border_gray_500
    , md__border_gray_600
    , md__border_gray_700
    , md__border_gray_800
    , md__border_gray_900
    , md__border_green_100
    , md__border_green_200
    , md__border_green_300
    , md__border_green_400
    , md__border_green_500
    , md__border_green_600
    , md__border_green_700
    , md__border_green_800
    , md__border_green_900
    , md__border_indigo_100
    , md__border_indigo_200
    , md__border_indigo_300
    , md__border_indigo_400
    , md__border_indigo_500
    , md__border_indigo_600
    , md__border_indigo_700
    , md__border_indigo_800
    , md__border_indigo_900
    , md__border_l
    , md__border_l_0
    , md__border_l_2
    , md__border_l_4
    , md__border_l_8
    , md__border_none
    , md__border_orange_100
    , md__border_orange_200
    , md__border_orange_300
    , md__border_orange_400
    , md__border_orange_500
    , md__border_orange_600
    , md__border_orange_700
    , md__border_orange_800
    , md__border_orange_900
    , md__border_pink_100
    , md__border_pink_200
    , md__border_pink_300
    , md__border_pink_400
    , md__border_pink_500
    , md__border_pink_600
    , md__border_pink_700
    , md__border_pink_800
    , md__border_pink_900
    , md__border_purple_100
    , md__border_purple_200
    , md__border_purple_300
    , md__border_purple_400
    , md__border_purple_500
    , md__border_purple_600
    , md__border_purple_700
    , md__border_purple_800
    , md__border_purple_900
    , md__border_r
    , md__border_r_0
    , md__border_r_2
    , md__border_r_4
    , md__border_r_8
    , md__border_red_100
    , md__border_red_200
    , md__border_red_300
    , md__border_red_400
    , md__border_red_500
    , md__border_red_600
    , md__border_red_700
    , md__border_red_800
    , md__border_red_900
    , md__border_separate
    , md__border_solid
    , md__border_t
    , md__border_t_0
    , md__border_t_2
    , md__border_t_4
    , md__border_t_8
    , md__border_teal_100
    , md__border_teal_200
    , md__border_teal_300
    , md__border_teal_400
    , md__border_teal_500
    , md__border_teal_600
    , md__border_teal_700
    , md__border_teal_800
    , md__border_teal_900
    , md__border_transparent
    , md__border_white
    , md__border_yellow_100
    , md__border_yellow_200
    , md__border_yellow_300
    , md__border_yellow_400
    , md__border_yellow_500
    , md__border_yellow_600
    , md__border_yellow_700
    , md__border_yellow_800
    , md__border_yellow_900
    , md__bottom_0
    , md__bottom_auto
    , md__box_border
    , md__box_content
    , md__break_all
    , md__break_normal
    , md__break_words
    , md__capitalize
    , md__clear_both
    , md__clear_left
    , md__clear_right
    , md__clearfix__after
    , md__col_auto
    , md__col_end_1
    , md__col_end_10
    , md__col_end_11
    , md__col_end_12
    , md__col_end_13
    , md__col_end_2
    , md__col_end_3
    , md__col_end_4
    , md__col_end_5
    , md__col_end_6
    , md__col_end_7
    , md__col_end_8
    , md__col_end_9
    , md__col_end_auto
    , md__col_gap_0
    , md__col_gap_1
    , md__col_gap_10
    , md__col_gap_12
    , md__col_gap_16
    , md__col_gap_2
    , md__col_gap_20
    , md__col_gap_24
    , md__col_gap_3
    , md__col_gap_32
    , md__col_gap_4
    , md__col_gap_40
    , md__col_gap_48
    , md__col_gap_5
    , md__col_gap_56
    , md__col_gap_6
    , md__col_gap_64
    , md__col_gap_8
    , md__col_gap_px
    , md__col_span_1
    , md__col_span_10
    , md__col_span_11
    , md__col_span_12
    , md__col_span_2
    , md__col_span_3
    , md__col_span_4
    , md__col_span_5
    , md__col_span_6
    , md__col_span_7
    , md__col_span_8
    , md__col_span_9
    , md__col_start_1
    , md__col_start_10
    , md__col_start_11
    , md__col_start_12
    , md__col_start_13
    , md__col_start_2
    , md__col_start_3
    , md__col_start_4
    , md__col_start_5
    , md__col_start_6
    , md__col_start_7
    , md__col_start_8
    , md__col_start_9
    , md__col_start_auto
    , md__content_around
    , md__content_between
    , md__content_center
    , md__content_end
    , md__content_start
    , md__cursor_auto
    , md__cursor_default
    , md__cursor_move
    , md__cursor_not_allowed
    , md__cursor_pointer
    , md__cursor_text
    , md__cursor_wait
    , md__duration_100
    , md__duration_1000
    , md__duration_150
    , md__duration_200
    , md__duration_300
    , md__duration_500
    , md__duration_700
    , md__duration_75
    , md__ease_in
    , md__ease_in_out
    , md__ease_linear
    , md__ease_out
    , md__fill_current
    , md__fixed
    , md__flex
    , md__flex_1
    , md__flex_auto
    , md__flex_col
    , md__flex_col_reverse
    , md__flex_grow
    , md__flex_grow_0
    , md__flex_initial
    , md__flex_no_wrap
    , md__flex_none
    , md__flex_row
    , md__flex_row_reverse
    , md__flex_shrink
    , md__flex_shrink_0
    , md__flex_wrap
    , md__flex_wrap_reverse
    , md__float_left
    , md__float_none
    , md__float_right
    , md__focus__bg_black
    , md__focus__bg_blue_100
    , md__focus__bg_blue_200
    , md__focus__bg_blue_300
    , md__focus__bg_blue_400
    , md__focus__bg_blue_500
    , md__focus__bg_blue_600
    , md__focus__bg_blue_700
    , md__focus__bg_blue_800
    , md__focus__bg_blue_900
    , md__focus__bg_gray_100
    , md__focus__bg_gray_200
    , md__focus__bg_gray_300
    , md__focus__bg_gray_400
    , md__focus__bg_gray_500
    , md__focus__bg_gray_600
    , md__focus__bg_gray_700
    , md__focus__bg_gray_800
    , md__focus__bg_gray_900
    , md__focus__bg_green_100
    , md__focus__bg_green_200
    , md__focus__bg_green_300
    , md__focus__bg_green_400
    , md__focus__bg_green_500
    , md__focus__bg_green_600
    , md__focus__bg_green_700
    , md__focus__bg_green_800
    , md__focus__bg_green_900
    , md__focus__bg_indigo_100
    , md__focus__bg_indigo_200
    , md__focus__bg_indigo_300
    , md__focus__bg_indigo_400
    , md__focus__bg_indigo_500
    , md__focus__bg_indigo_600
    , md__focus__bg_indigo_700
    , md__focus__bg_indigo_800
    , md__focus__bg_indigo_900
    , md__focus__bg_orange_100
    , md__focus__bg_orange_200
    , md__focus__bg_orange_300
    , md__focus__bg_orange_400
    , md__focus__bg_orange_500
    , md__focus__bg_orange_600
    , md__focus__bg_orange_700
    , md__focus__bg_orange_800
    , md__focus__bg_orange_900
    , md__focus__bg_pink_100
    , md__focus__bg_pink_200
    , md__focus__bg_pink_300
    , md__focus__bg_pink_400
    , md__focus__bg_pink_500
    , md__focus__bg_pink_600
    , md__focus__bg_pink_700
    , md__focus__bg_pink_800
    , md__focus__bg_pink_900
    , md__focus__bg_purple_100
    , md__focus__bg_purple_200
    , md__focus__bg_purple_300
    , md__focus__bg_purple_400
    , md__focus__bg_purple_500
    , md__focus__bg_purple_600
    , md__focus__bg_purple_700
    , md__focus__bg_purple_800
    , md__focus__bg_purple_900
    , md__focus__bg_red_100
    , md__focus__bg_red_200
    , md__focus__bg_red_300
    , md__focus__bg_red_400
    , md__focus__bg_red_500
    , md__focus__bg_red_600
    , md__focus__bg_red_700
    , md__focus__bg_red_800
    , md__focus__bg_red_900
    , md__focus__bg_teal_100
    , md__focus__bg_teal_200
    , md__focus__bg_teal_300
    , md__focus__bg_teal_400
    , md__focus__bg_teal_500
    , md__focus__bg_teal_600
    , md__focus__bg_teal_700
    , md__focus__bg_teal_800
    , md__focus__bg_teal_900
    , md__focus__bg_transparent
    , md__focus__bg_white
    , md__focus__bg_yellow_100
    , md__focus__bg_yellow_200
    , md__focus__bg_yellow_300
    , md__focus__bg_yellow_400
    , md__focus__bg_yellow_500
    , md__focus__bg_yellow_600
    , md__focus__bg_yellow_700
    , md__focus__bg_yellow_800
    , md__focus__bg_yellow_900
    , md__focus__border_black
    , md__focus__border_blue_100
    , md__focus__border_blue_200
    , md__focus__border_blue_300
    , md__focus__border_blue_400
    , md__focus__border_blue_500
    , md__focus__border_blue_600
    , md__focus__border_blue_700
    , md__focus__border_blue_800
    , md__focus__border_blue_900
    , md__focus__border_gray_100
    , md__focus__border_gray_200
    , md__focus__border_gray_300
    , md__focus__border_gray_400
    , md__focus__border_gray_500
    , md__focus__border_gray_600
    , md__focus__border_gray_700
    , md__focus__border_gray_800
    , md__focus__border_gray_900
    , md__focus__border_green_100
    , md__focus__border_green_200
    , md__focus__border_green_300
    , md__focus__border_green_400
    , md__focus__border_green_500
    , md__focus__border_green_600
    , md__focus__border_green_700
    , md__focus__border_green_800
    , md__focus__border_green_900
    , md__focus__border_indigo_100
    , md__focus__border_indigo_200
    , md__focus__border_indigo_300
    , md__focus__border_indigo_400
    , md__focus__border_indigo_500
    , md__focus__border_indigo_600
    , md__focus__border_indigo_700
    , md__focus__border_indigo_800
    , md__focus__border_indigo_900
    , md__focus__border_orange_100
    , md__focus__border_orange_200
    , md__focus__border_orange_300
    , md__focus__border_orange_400
    , md__focus__border_orange_500
    , md__focus__border_orange_600
    , md__focus__border_orange_700
    , md__focus__border_orange_800
    , md__focus__border_orange_900
    , md__focus__border_pink_100
    , md__focus__border_pink_200
    , md__focus__border_pink_300
    , md__focus__border_pink_400
    , md__focus__border_pink_500
    , md__focus__border_pink_600
    , md__focus__border_pink_700
    , md__focus__border_pink_800
    , md__focus__border_pink_900
    , md__focus__border_purple_100
    , md__focus__border_purple_200
    , md__focus__border_purple_300
    , md__focus__border_purple_400
    , md__focus__border_purple_500
    , md__focus__border_purple_600
    , md__focus__border_purple_700
    , md__focus__border_purple_800
    , md__focus__border_purple_900
    , md__focus__border_red_100
    , md__focus__border_red_200
    , md__focus__border_red_300
    , md__focus__border_red_400
    , md__focus__border_red_500
    , md__focus__border_red_600
    , md__focus__border_red_700
    , md__focus__border_red_800
    , md__focus__border_red_900
    , md__focus__border_teal_100
    , md__focus__border_teal_200
    , md__focus__border_teal_300
    , md__focus__border_teal_400
    , md__focus__border_teal_500
    , md__focus__border_teal_600
    , md__focus__border_teal_700
    , md__focus__border_teal_800
    , md__focus__border_teal_900
    , md__focus__border_transparent
    , md__focus__border_white
    , md__focus__border_yellow_100
    , md__focus__border_yellow_200
    , md__focus__border_yellow_300
    , md__focus__border_yellow_400
    , md__focus__border_yellow_500
    , md__focus__border_yellow_600
    , md__focus__border_yellow_700
    , md__focus__border_yellow_800
    , md__focus__border_yellow_900
    , md__focus__font_black
    , md__focus__font_bold
    , md__focus__font_extrabold
    , md__focus__font_hairline
    , md__focus__font_light
    , md__focus__font_medium
    , md__focus__font_normal
    , md__focus__font_semibold
    , md__focus__font_thin
    , md__focus__line_through
    , md__focus__neg_rotate_180
    , md__focus__neg_rotate_45
    , md__focus__neg_rotate_90
    , md__focus__neg_skew_x_12
    , md__focus__neg_skew_x_3
    , md__focus__neg_skew_x_6
    , md__focus__neg_skew_y_12
    , md__focus__neg_skew_y_3
    , md__focus__neg_skew_y_6
    , md__focus__neg_translate_x_1
    , md__focus__neg_translate_x_10
    , md__focus__neg_translate_x_12
    , md__focus__neg_translate_x_16
    , md__focus__neg_translate_x_1over2
    , md__focus__neg_translate_x_2
    , md__focus__neg_translate_x_20
    , md__focus__neg_translate_x_24
    , md__focus__neg_translate_x_3
    , md__focus__neg_translate_x_32
    , md__focus__neg_translate_x_4
    , md__focus__neg_translate_x_40
    , md__focus__neg_translate_x_48
    , md__focus__neg_translate_x_5
    , md__focus__neg_translate_x_56
    , md__focus__neg_translate_x_6
    , md__focus__neg_translate_x_64
    , md__focus__neg_translate_x_8
    , md__focus__neg_translate_x_full
    , md__focus__neg_translate_x_px
    , md__focus__neg_translate_y_1
    , md__focus__neg_translate_y_10
    , md__focus__neg_translate_y_12
    , md__focus__neg_translate_y_16
    , md__focus__neg_translate_y_1over2
    , md__focus__neg_translate_y_2
    , md__focus__neg_translate_y_20
    , md__focus__neg_translate_y_24
    , md__focus__neg_translate_y_3
    , md__focus__neg_translate_y_32
    , md__focus__neg_translate_y_4
    , md__focus__neg_translate_y_40
    , md__focus__neg_translate_y_48
    , md__focus__neg_translate_y_5
    , md__focus__neg_translate_y_56
    , md__focus__neg_translate_y_6
    , md__focus__neg_translate_y_64
    , md__focus__neg_translate_y_8
    , md__focus__neg_translate_y_full
    , md__focus__neg_translate_y_px
    , md__focus__no_underline
    , md__focus__not_sr_only
    , md__focus__opacity_0
    , md__focus__opacity_100
    , md__focus__opacity_25
    , md__focus__opacity_50
    , md__focus__opacity_75
    , md__focus__outline_none
    , md__focus__placeholder_black__focus
    , md__focus__placeholder_blue_100__focus
    , md__focus__placeholder_blue_200__focus
    , md__focus__placeholder_blue_300__focus
    , md__focus__placeholder_blue_400__focus
    , md__focus__placeholder_blue_500__focus
    , md__focus__placeholder_blue_600__focus
    , md__focus__placeholder_blue_700__focus
    , md__focus__placeholder_blue_800__focus
    , md__focus__placeholder_blue_900__focus
    , md__focus__placeholder_gray_100__focus
    , md__focus__placeholder_gray_200__focus
    , md__focus__placeholder_gray_300__focus
    , md__focus__placeholder_gray_400__focus
    , md__focus__placeholder_gray_500__focus
    , md__focus__placeholder_gray_600__focus
    , md__focus__placeholder_gray_700__focus
    , md__focus__placeholder_gray_800__focus
    , md__focus__placeholder_gray_900__focus
    , md__focus__placeholder_green_100__focus
    , md__focus__placeholder_green_200__focus
    , md__focus__placeholder_green_300__focus
    , md__focus__placeholder_green_400__focus
    , md__focus__placeholder_green_500__focus
    , md__focus__placeholder_green_600__focus
    , md__focus__placeholder_green_700__focus
    , md__focus__placeholder_green_800__focus
    , md__focus__placeholder_green_900__focus
    , md__focus__placeholder_indigo_100__focus
    , md__focus__placeholder_indigo_200__focus
    , md__focus__placeholder_indigo_300__focus
    , md__focus__placeholder_indigo_400__focus
    , md__focus__placeholder_indigo_500__focus
    , md__focus__placeholder_indigo_600__focus
    , md__focus__placeholder_indigo_700__focus
    , md__focus__placeholder_indigo_800__focus
    , md__focus__placeholder_indigo_900__focus
    , md__focus__placeholder_orange_100__focus
    , md__focus__placeholder_orange_200__focus
    , md__focus__placeholder_orange_300__focus
    , md__focus__placeholder_orange_400__focus
    , md__focus__placeholder_orange_500__focus
    , md__focus__placeholder_orange_600__focus
    , md__focus__placeholder_orange_700__focus
    , md__focus__placeholder_orange_800__focus
    , md__focus__placeholder_orange_900__focus
    , md__focus__placeholder_pink_100__focus
    , md__focus__placeholder_pink_200__focus
    , md__focus__placeholder_pink_300__focus
    , md__focus__placeholder_pink_400__focus
    , md__focus__placeholder_pink_500__focus
    , md__focus__placeholder_pink_600__focus
    , md__focus__placeholder_pink_700__focus
    , md__focus__placeholder_pink_800__focus
    , md__focus__placeholder_pink_900__focus
    , md__focus__placeholder_purple_100__focus
    , md__focus__placeholder_purple_200__focus
    , md__focus__placeholder_purple_300__focus
    , md__focus__placeholder_purple_400__focus
    , md__focus__placeholder_purple_500__focus
    , md__focus__placeholder_purple_600__focus
    , md__focus__placeholder_purple_700__focus
    , md__focus__placeholder_purple_800__focus
    , md__focus__placeholder_purple_900__focus
    , md__focus__placeholder_red_100__focus
    , md__focus__placeholder_red_200__focus
    , md__focus__placeholder_red_300__focus
    , md__focus__placeholder_red_400__focus
    , md__focus__placeholder_red_500__focus
    , md__focus__placeholder_red_600__focus
    , md__focus__placeholder_red_700__focus
    , md__focus__placeholder_red_800__focus
    , md__focus__placeholder_red_900__focus
    , md__focus__placeholder_teal_100__focus
    , md__focus__placeholder_teal_200__focus
    , md__focus__placeholder_teal_300__focus
    , md__focus__placeholder_teal_400__focus
    , md__focus__placeholder_teal_500__focus
    , md__focus__placeholder_teal_600__focus
    , md__focus__placeholder_teal_700__focus
    , md__focus__placeholder_teal_800__focus
    , md__focus__placeholder_teal_900__focus
    , md__focus__placeholder_transparent__focus
    , md__focus__placeholder_white__focus
    , md__focus__placeholder_yellow_100__focus
    , md__focus__placeholder_yellow_200__focus
    , md__focus__placeholder_yellow_300__focus
    , md__focus__placeholder_yellow_400__focus
    , md__focus__placeholder_yellow_500__focus
    , md__focus__placeholder_yellow_600__focus
    , md__focus__placeholder_yellow_700__focus
    , md__focus__placeholder_yellow_800__focus
    , md__focus__placeholder_yellow_900__focus
    , md__focus__rotate_0
    , md__focus__rotate_180
    , md__focus__rotate_45
    , md__focus__rotate_90
    , md__focus__scale_0
    , md__focus__scale_100
    , md__focus__scale_105
    , md__focus__scale_110
    , md__focus__scale_125
    , md__focus__scale_150
    , md__focus__scale_50
    , md__focus__scale_75
    , md__focus__scale_90
    , md__focus__scale_95
    , md__focus__scale_x_0
    , md__focus__scale_x_100
    , md__focus__scale_x_105
    , md__focus__scale_x_110
    , md__focus__scale_x_125
    , md__focus__scale_x_150
    , md__focus__scale_x_50
    , md__focus__scale_x_75
    , md__focus__scale_x_90
    , md__focus__scale_x_95
    , md__focus__scale_y_0
    , md__focus__scale_y_100
    , md__focus__scale_y_105
    , md__focus__scale_y_110
    , md__focus__scale_y_125
    , md__focus__scale_y_150
    , md__focus__scale_y_50
    , md__focus__scale_y_75
    , md__focus__scale_y_90
    , md__focus__scale_y_95
    , md__focus__shadow
    , md__focus__shadow_2xl
    , md__focus__shadow_inner
    , md__focus__shadow_lg
    , md__focus__shadow_md
    , md__focus__shadow_none
    , md__focus__shadow_outline
    , md__focus__shadow_sm
    , md__focus__shadow_xl
    , md__focus__shadow_xs
    , md__focus__skew_x_0
    , md__focus__skew_x_12
    , md__focus__skew_x_3
    , md__focus__skew_x_6
    , md__focus__skew_y_0
    , md__focus__skew_y_12
    , md__focus__skew_y_3
    , md__focus__skew_y_6
    , md__focus__sr_only
    , md__focus__text_black
    , md__focus__text_blue_100
    , md__focus__text_blue_200
    , md__focus__text_blue_300
    , md__focus__text_blue_400
    , md__focus__text_blue_500
    , md__focus__text_blue_600
    , md__focus__text_blue_700
    , md__focus__text_blue_800
    , md__focus__text_blue_900
    , md__focus__text_gray_100
    , md__focus__text_gray_200
    , md__focus__text_gray_300
    , md__focus__text_gray_400
    , md__focus__text_gray_500
    , md__focus__text_gray_600
    , md__focus__text_gray_700
    , md__focus__text_gray_800
    , md__focus__text_gray_900
    , md__focus__text_green_100
    , md__focus__text_green_200
    , md__focus__text_green_300
    , md__focus__text_green_400
    , md__focus__text_green_500
    , md__focus__text_green_600
    , md__focus__text_green_700
    , md__focus__text_green_800
    , md__focus__text_green_900
    , md__focus__text_indigo_100
    , md__focus__text_indigo_200
    , md__focus__text_indigo_300
    , md__focus__text_indigo_400
    , md__focus__text_indigo_500
    , md__focus__text_indigo_600
    , md__focus__text_indigo_700
    , md__focus__text_indigo_800
    , md__focus__text_indigo_900
    , md__focus__text_orange_100
    , md__focus__text_orange_200
    , md__focus__text_orange_300
    , md__focus__text_orange_400
    , md__focus__text_orange_500
    , md__focus__text_orange_600
    , md__focus__text_orange_700
    , md__focus__text_orange_800
    , md__focus__text_orange_900
    , md__focus__text_pink_100
    , md__focus__text_pink_200
    , md__focus__text_pink_300
    , md__focus__text_pink_400
    , md__focus__text_pink_500
    , md__focus__text_pink_600
    , md__focus__text_pink_700
    , md__focus__text_pink_800
    , md__focus__text_pink_900
    , md__focus__text_purple_100
    , md__focus__text_purple_200
    , md__focus__text_purple_300
    , md__focus__text_purple_400
    , md__focus__text_purple_500
    , md__focus__text_purple_600
    , md__focus__text_purple_700
    , md__focus__text_purple_800
    , md__focus__text_purple_900
    , md__focus__text_red_100
    , md__focus__text_red_200
    , md__focus__text_red_300
    , md__focus__text_red_400
    , md__focus__text_red_500
    , md__focus__text_red_600
    , md__focus__text_red_700
    , md__focus__text_red_800
    , md__focus__text_red_900
    , md__focus__text_teal_100
    , md__focus__text_teal_200
    , md__focus__text_teal_300
    , md__focus__text_teal_400
    , md__focus__text_teal_500
    , md__focus__text_teal_600
    , md__focus__text_teal_700
    , md__focus__text_teal_800
    , md__focus__text_teal_900
    , md__focus__text_transparent
    , md__focus__text_white
    , md__focus__text_yellow_100
    , md__focus__text_yellow_200
    , md__focus__text_yellow_300
    , md__focus__text_yellow_400
    , md__focus__text_yellow_500
    , md__focus__text_yellow_600
    , md__focus__text_yellow_700
    , md__focus__text_yellow_800
    , md__focus__text_yellow_900
    , md__focus__translate_x_0
    , md__focus__translate_x_1
    , md__focus__translate_x_10
    , md__focus__translate_x_12
    , md__focus__translate_x_16
    , md__focus__translate_x_1over2
    , md__focus__translate_x_2
    , md__focus__translate_x_20
    , md__focus__translate_x_24
    , md__focus__translate_x_3
    , md__focus__translate_x_32
    , md__focus__translate_x_4
    , md__focus__translate_x_40
    , md__focus__translate_x_48
    , md__focus__translate_x_5
    , md__focus__translate_x_56
    , md__focus__translate_x_6
    , md__focus__translate_x_64
    , md__focus__translate_x_8
    , md__focus__translate_x_full
    , md__focus__translate_x_px
    , md__focus__translate_y_0
    , md__focus__translate_y_1
    , md__focus__translate_y_10
    , md__focus__translate_y_12
    , md__focus__translate_y_16
    , md__focus__translate_y_1over2
    , md__focus__translate_y_2
    , md__focus__translate_y_20
    , md__focus__translate_y_24
    , md__focus__translate_y_3
    , md__focus__translate_y_32
    , md__focus__translate_y_4
    , md__focus__translate_y_40
    , md__focus__translate_y_48
    , md__focus__translate_y_5
    , md__focus__translate_y_56
    , md__focus__translate_y_6
    , md__focus__translate_y_64
    , md__focus__translate_y_8
    , md__focus__translate_y_full
    , md__focus__translate_y_px
    , md__focus__underline
    , md__font_black
    , md__font_bold
    , md__font_extrabold
    , md__font_hairline
    , md__font_light
    , md__font_medium
    , md__font_mono
    , md__font_normal
    , md__font_sans
    , md__font_semibold
    , md__font_serif
    , md__font_thin
    , md__gap_0
    , md__gap_1
    , md__gap_10
    , md__gap_12
    , md__gap_16
    , md__gap_2
    , md__gap_20
    , md__gap_24
    , md__gap_3
    , md__gap_32
    , md__gap_4
    , md__gap_40
    , md__gap_48
    , md__gap_5
    , md__gap_56
    , md__gap_6
    , md__gap_64
    , md__gap_8
    , md__gap_px
    , md__grid
    , md__grid_cols_1
    , md__grid_cols_10
    , md__grid_cols_11
    , md__grid_cols_12
    , md__grid_cols_2
    , md__grid_cols_3
    , md__grid_cols_4
    , md__grid_cols_5
    , md__grid_cols_6
    , md__grid_cols_7
    , md__grid_cols_8
    , md__grid_cols_9
    , md__grid_cols_none
    , md__grid_flow_col
    , md__grid_flow_col_dense
    , md__grid_flow_row
    , md__grid_flow_row_dense
    , md__grid_rows_1
    , md__grid_rows_2
    , md__grid_rows_3
    , md__grid_rows_4
    , md__grid_rows_5
    , md__grid_rows_6
    , md__grid_rows_none
    , md__h_0
    , md__h_1
    , md__h_10
    , md__h_12
    , md__h_16
    , md__h_2
    , md__h_20
    , md__h_24
    , md__h_3
    , md__h_32
    , md__h_4
    , md__h_40
    , md__h_48
    , md__h_5
    , md__h_56
    , md__h_6
    , md__h_64
    , md__h_8
    , md__h_auto
    , md__h_full
    , md__h_px
    , md__h_screen
    , md__hidden
    , md__hover__bg_black
    , md__hover__bg_blue_100
    , md__hover__bg_blue_200
    , md__hover__bg_blue_300
    , md__hover__bg_blue_400
    , md__hover__bg_blue_500
    , md__hover__bg_blue_600
    , md__hover__bg_blue_700
    , md__hover__bg_blue_800
    , md__hover__bg_blue_900
    , md__hover__bg_gray_100
    , md__hover__bg_gray_200
    , md__hover__bg_gray_300
    , md__hover__bg_gray_400
    , md__hover__bg_gray_500
    , md__hover__bg_gray_600
    , md__hover__bg_gray_700
    , md__hover__bg_gray_800
    , md__hover__bg_gray_900
    , md__hover__bg_green_100
    , md__hover__bg_green_200
    , md__hover__bg_green_300
    , md__hover__bg_green_400
    , md__hover__bg_green_500
    , md__hover__bg_green_600
    , md__hover__bg_green_700
    , md__hover__bg_green_800
    , md__hover__bg_green_900
    , md__hover__bg_indigo_100
    , md__hover__bg_indigo_200
    , md__hover__bg_indigo_300
    , md__hover__bg_indigo_400
    , md__hover__bg_indigo_500
    , md__hover__bg_indigo_600
    , md__hover__bg_indigo_700
    , md__hover__bg_indigo_800
    , md__hover__bg_indigo_900
    , md__hover__bg_orange_100
    , md__hover__bg_orange_200
    , md__hover__bg_orange_300
    , md__hover__bg_orange_400
    , md__hover__bg_orange_500
    , md__hover__bg_orange_600
    , md__hover__bg_orange_700
    , md__hover__bg_orange_800
    , md__hover__bg_orange_900
    , md__hover__bg_pink_100
    , md__hover__bg_pink_200
    , md__hover__bg_pink_300
    , md__hover__bg_pink_400
    , md__hover__bg_pink_500
    , md__hover__bg_pink_600
    , md__hover__bg_pink_700
    , md__hover__bg_pink_800
    , md__hover__bg_pink_900
    , md__hover__bg_purple_100
    , md__hover__bg_purple_200
    , md__hover__bg_purple_300
    , md__hover__bg_purple_400
    , md__hover__bg_purple_500
    , md__hover__bg_purple_600
    , md__hover__bg_purple_700
    , md__hover__bg_purple_800
    , md__hover__bg_purple_900
    , md__hover__bg_red_100
    , md__hover__bg_red_200
    , md__hover__bg_red_300
    , md__hover__bg_red_400
    , md__hover__bg_red_500
    , md__hover__bg_red_600
    , md__hover__bg_red_700
    , md__hover__bg_red_800
    , md__hover__bg_red_900
    , md__hover__bg_teal_100
    , md__hover__bg_teal_200
    , md__hover__bg_teal_300
    , md__hover__bg_teal_400
    , md__hover__bg_teal_500
    , md__hover__bg_teal_600
    , md__hover__bg_teal_700
    , md__hover__bg_teal_800
    , md__hover__bg_teal_900
    , md__hover__bg_transparent
    , md__hover__bg_white
    , md__hover__bg_yellow_100
    , md__hover__bg_yellow_200
    , md__hover__bg_yellow_300
    , md__hover__bg_yellow_400
    , md__hover__bg_yellow_500
    , md__hover__bg_yellow_600
    , md__hover__bg_yellow_700
    , md__hover__bg_yellow_800
    , md__hover__bg_yellow_900
    , md__hover__border_black
    , md__hover__border_blue_100
    , md__hover__border_blue_200
    , md__hover__border_blue_300
    , md__hover__border_blue_400
    , md__hover__border_blue_500
    , md__hover__border_blue_600
    , md__hover__border_blue_700
    , md__hover__border_blue_800
    , md__hover__border_blue_900
    , md__hover__border_gray_100
    , md__hover__border_gray_200
    , md__hover__border_gray_300
    , md__hover__border_gray_400
    , md__hover__border_gray_500
    , md__hover__border_gray_600
    , md__hover__border_gray_700
    , md__hover__border_gray_800
    , md__hover__border_gray_900
    , md__hover__border_green_100
    , md__hover__border_green_200
    , md__hover__border_green_300
    , md__hover__border_green_400
    , md__hover__border_green_500
    , md__hover__border_green_600
    , md__hover__border_green_700
    , md__hover__border_green_800
    , md__hover__border_green_900
    , md__hover__border_indigo_100
    , md__hover__border_indigo_200
    , md__hover__border_indigo_300
    , md__hover__border_indigo_400
    , md__hover__border_indigo_500
    , md__hover__border_indigo_600
    , md__hover__border_indigo_700
    , md__hover__border_indigo_800
    , md__hover__border_indigo_900
    , md__hover__border_orange_100
    , md__hover__border_orange_200
    , md__hover__border_orange_300
    , md__hover__border_orange_400
    , md__hover__border_orange_500
    , md__hover__border_orange_600
    , md__hover__border_orange_700
    , md__hover__border_orange_800
    , md__hover__border_orange_900
    , md__hover__border_pink_100
    , md__hover__border_pink_200
    , md__hover__border_pink_300
    , md__hover__border_pink_400
    , md__hover__border_pink_500
    , md__hover__border_pink_600
    , md__hover__border_pink_700
    , md__hover__border_pink_800
    , md__hover__border_pink_900
    , md__hover__border_purple_100
    , md__hover__border_purple_200
    , md__hover__border_purple_300
    , md__hover__border_purple_400
    , md__hover__border_purple_500
    , md__hover__border_purple_600
    , md__hover__border_purple_700
    , md__hover__border_purple_800
    , md__hover__border_purple_900
    , md__hover__border_red_100
    , md__hover__border_red_200
    , md__hover__border_red_300
    , md__hover__border_red_400
    , md__hover__border_red_500
    , md__hover__border_red_600
    , md__hover__border_red_700
    , md__hover__border_red_800
    , md__hover__border_red_900
    , md__hover__border_teal_100
    , md__hover__border_teal_200
    , md__hover__border_teal_300
    , md__hover__border_teal_400
    , md__hover__border_teal_500
    , md__hover__border_teal_600
    , md__hover__border_teal_700
    , md__hover__border_teal_800
    , md__hover__border_teal_900
    , md__hover__border_transparent
    , md__hover__border_white
    , md__hover__border_yellow_100
    , md__hover__border_yellow_200
    , md__hover__border_yellow_300
    , md__hover__border_yellow_400
    , md__hover__border_yellow_500
    , md__hover__border_yellow_600
    , md__hover__border_yellow_700
    , md__hover__border_yellow_800
    , md__hover__border_yellow_900
    , md__hover__font_black
    , md__hover__font_bold
    , md__hover__font_extrabold
    , md__hover__font_hairline
    , md__hover__font_light
    , md__hover__font_medium
    , md__hover__font_normal
    , md__hover__font_semibold
    , md__hover__font_thin
    , md__hover__line_through
    , md__hover__neg_rotate_180
    , md__hover__neg_rotate_45
    , md__hover__neg_rotate_90
    , md__hover__neg_skew_x_12
    , md__hover__neg_skew_x_3
    , md__hover__neg_skew_x_6
    , md__hover__neg_skew_y_12
    , md__hover__neg_skew_y_3
    , md__hover__neg_skew_y_6
    , md__hover__neg_translate_x_1
    , md__hover__neg_translate_x_10
    , md__hover__neg_translate_x_12
    , md__hover__neg_translate_x_16
    , md__hover__neg_translate_x_1over2
    , md__hover__neg_translate_x_2
    , md__hover__neg_translate_x_20
    , md__hover__neg_translate_x_24
    , md__hover__neg_translate_x_3
    , md__hover__neg_translate_x_32
    , md__hover__neg_translate_x_4
    , md__hover__neg_translate_x_40
    , md__hover__neg_translate_x_48
    , md__hover__neg_translate_x_5
    , md__hover__neg_translate_x_56
    , md__hover__neg_translate_x_6
    , md__hover__neg_translate_x_64
    , md__hover__neg_translate_x_8
    , md__hover__neg_translate_x_full
    , md__hover__neg_translate_x_px
    , md__hover__neg_translate_y_1
    , md__hover__neg_translate_y_10
    , md__hover__neg_translate_y_12
    , md__hover__neg_translate_y_16
    , md__hover__neg_translate_y_1over2
    , md__hover__neg_translate_y_2
    , md__hover__neg_translate_y_20
    , md__hover__neg_translate_y_24
    , md__hover__neg_translate_y_3
    , md__hover__neg_translate_y_32
    , md__hover__neg_translate_y_4
    , md__hover__neg_translate_y_40
    , md__hover__neg_translate_y_48
    , md__hover__neg_translate_y_5
    , md__hover__neg_translate_y_56
    , md__hover__neg_translate_y_6
    , md__hover__neg_translate_y_64
    , md__hover__neg_translate_y_8
    , md__hover__neg_translate_y_full
    , md__hover__neg_translate_y_px
    , md__hover__no_underline
    , md__hover__opacity_0
    , md__hover__opacity_100
    , md__hover__opacity_25
    , md__hover__opacity_50
    , md__hover__opacity_75
    , md__hover__rotate_0
    , md__hover__rotate_180
    , md__hover__rotate_45
    , md__hover__rotate_90
    , md__hover__scale_0
    , md__hover__scale_100
    , md__hover__scale_105
    , md__hover__scale_110
    , md__hover__scale_125
    , md__hover__scale_150
    , md__hover__scale_50
    , md__hover__scale_75
    , md__hover__scale_90
    , md__hover__scale_95
    , md__hover__scale_x_0
    , md__hover__scale_x_100
    , md__hover__scale_x_105
    , md__hover__scale_x_110
    , md__hover__scale_x_125
    , md__hover__scale_x_150
    , md__hover__scale_x_50
    , md__hover__scale_x_75
    , md__hover__scale_x_90
    , md__hover__scale_x_95
    , md__hover__scale_y_0
    , md__hover__scale_y_100
    , md__hover__scale_y_105
    , md__hover__scale_y_110
    , md__hover__scale_y_125
    , md__hover__scale_y_150
    , md__hover__scale_y_50
    , md__hover__scale_y_75
    , md__hover__scale_y_90
    , md__hover__scale_y_95
    , md__hover__shadow
    , md__hover__shadow_2xl
    , md__hover__shadow_inner
    , md__hover__shadow_lg
    , md__hover__shadow_md
    , md__hover__shadow_none
    , md__hover__shadow_outline
    , md__hover__shadow_sm
    , md__hover__shadow_xl
    , md__hover__shadow_xs
    , md__hover__skew_x_0
    , md__hover__skew_x_12
    , md__hover__skew_x_3
    , md__hover__skew_x_6
    , md__hover__skew_y_0
    , md__hover__skew_y_12
    , md__hover__skew_y_3
    , md__hover__skew_y_6
    , md__hover__text_black
    , md__hover__text_blue_100
    , md__hover__text_blue_200
    , md__hover__text_blue_300
    , md__hover__text_blue_400
    , md__hover__text_blue_500
    , md__hover__text_blue_600
    , md__hover__text_blue_700
    , md__hover__text_blue_800
    , md__hover__text_blue_900
    , md__hover__text_gray_100
    , md__hover__text_gray_200
    , md__hover__text_gray_300
    , md__hover__text_gray_400
    , md__hover__text_gray_500
    , md__hover__text_gray_600
    , md__hover__text_gray_700
    , md__hover__text_gray_800
    , md__hover__text_gray_900
    , md__hover__text_green_100
    , md__hover__text_green_200
    , md__hover__text_green_300
    , md__hover__text_green_400
    , md__hover__text_green_500
    , md__hover__text_green_600
    , md__hover__text_green_700
    , md__hover__text_green_800
    , md__hover__text_green_900
    , md__hover__text_indigo_100
    , md__hover__text_indigo_200
    , md__hover__text_indigo_300
    , md__hover__text_indigo_400
    , md__hover__text_indigo_500
    , md__hover__text_indigo_600
    , md__hover__text_indigo_700
    , md__hover__text_indigo_800
    , md__hover__text_indigo_900
    , md__hover__text_orange_100
    , md__hover__text_orange_200
    , md__hover__text_orange_300
    , md__hover__text_orange_400
    , md__hover__text_orange_500
    , md__hover__text_orange_600
    , md__hover__text_orange_700
    , md__hover__text_orange_800
    , md__hover__text_orange_900
    , md__hover__text_pink_100
    , md__hover__text_pink_200
    , md__hover__text_pink_300
    , md__hover__text_pink_400
    , md__hover__text_pink_500
    , md__hover__text_pink_600
    , md__hover__text_pink_700
    , md__hover__text_pink_800
    , md__hover__text_pink_900
    , md__hover__text_purple_100
    , md__hover__text_purple_200
    , md__hover__text_purple_300
    , md__hover__text_purple_400
    , md__hover__text_purple_500
    , md__hover__text_purple_600
    , md__hover__text_purple_700
    , md__hover__text_purple_800
    , md__hover__text_purple_900
    , md__hover__text_red_100
    , md__hover__text_red_200
    , md__hover__text_red_300
    , md__hover__text_red_400
    , md__hover__text_red_500
    , md__hover__text_red_600
    , md__hover__text_red_700
    , md__hover__text_red_800
    , md__hover__text_red_900
    , md__hover__text_teal_100
    , md__hover__text_teal_200
    , md__hover__text_teal_300
    , md__hover__text_teal_400
    , md__hover__text_teal_500
    , md__hover__text_teal_600
    , md__hover__text_teal_700
    , md__hover__text_teal_800
    , md__hover__text_teal_900
    , md__hover__text_transparent
    , md__hover__text_white
    , md__hover__text_yellow_100
    , md__hover__text_yellow_200
    , md__hover__text_yellow_300
    , md__hover__text_yellow_400
    , md__hover__text_yellow_500
    , md__hover__text_yellow_600
    , md__hover__text_yellow_700
    , md__hover__text_yellow_800
    , md__hover__text_yellow_900
    , md__hover__translate_x_0
    , md__hover__translate_x_1
    , md__hover__translate_x_10
    , md__hover__translate_x_12
    , md__hover__translate_x_16
    , md__hover__translate_x_1over2
    , md__hover__translate_x_2
    , md__hover__translate_x_20
    , md__hover__translate_x_24
    , md__hover__translate_x_3
    , md__hover__translate_x_32
    , md__hover__translate_x_4
    , md__hover__translate_x_40
    , md__hover__translate_x_48
    , md__hover__translate_x_5
    , md__hover__translate_x_56
    , md__hover__translate_x_6
    , md__hover__translate_x_64
    , md__hover__translate_x_8
    , md__hover__translate_x_full
    , md__hover__translate_x_px
    , md__hover__translate_y_0
    , md__hover__translate_y_1
    , md__hover__translate_y_10
    , md__hover__translate_y_12
    , md__hover__translate_y_16
    , md__hover__translate_y_1over2
    , md__hover__translate_y_2
    , md__hover__translate_y_20
    , md__hover__translate_y_24
    , md__hover__translate_y_3
    , md__hover__translate_y_32
    , md__hover__translate_y_4
    , md__hover__translate_y_40
    , md__hover__translate_y_48
    , md__hover__translate_y_5
    , md__hover__translate_y_56
    , md__hover__translate_y_6
    , md__hover__translate_y_64
    , md__hover__translate_y_8
    , md__hover__translate_y_full
    , md__hover__translate_y_px
    , md__hover__underline
    , md__inline
    , md__inline_block
    , md__inline_flex
    , md__inset_0
    , md__inset_auto
    , md__inset_x_0
    , md__inset_x_auto
    , md__inset_y_0
    , md__inset_y_auto
    , md__invisible
    , md__italic
    , md__items_baseline
    , md__items_center
    , md__items_end
    , md__items_start
    , md__items_stretch
    , md__justify_around
    , md__justify_between
    , md__justify_center
    , md__justify_end
    , md__justify_evenly
    , md__justify_start
    , md__leading_10
    , md__leading_3
    , md__leading_4
    , md__leading_5
    , md__leading_6
    , md__leading_7
    , md__leading_8
    , md__leading_9
    , md__leading_loose
    , md__leading_none
    , md__leading_normal
    , md__leading_relaxed
    , md__leading_snug
    , md__leading_tight
    , md__left_0
    , md__left_auto
    , md__line_through
    , md__list_decimal
    , md__list_disc
    , md__list_inside
    , md__list_none
    , md__list_outside
    , md__lowercase
    , md__m_0
    , md__m_1
    , md__m_10
    , md__m_12
    , md__m_16
    , md__m_2
    , md__m_20
    , md__m_24
    , md__m_3
    , md__m_32
    , md__m_4
    , md__m_40
    , md__m_48
    , md__m_5
    , md__m_56
    , md__m_6
    , md__m_64
    , md__m_8
    , md__m_auto
    , md__m_px
    , md__max_h_full
    , md__max_h_screen
    , md__max_w_2xl
    , md__max_w_3xl
    , md__max_w_4xl
    , md__max_w_5xl
    , md__max_w_6xl
    , md__max_w_full
    , md__max_w_lg
    , md__max_w_md
    , md__max_w_none
    , md__max_w_screen_lg
    , md__max_w_screen_md
    , md__max_w_screen_sm
    , md__max_w_screen_xl
    , md__max_w_sm
    , md__max_w_xl
    , md__max_w_xs
    , md__mb_0
    , md__mb_1
    , md__mb_10
    , md__mb_12
    , md__mb_16
    , md__mb_2
    , md__mb_20
    , md__mb_24
    , md__mb_3
    , md__mb_32
    , md__mb_4
    , md__mb_40
    , md__mb_48
    , md__mb_5
    , md__mb_56
    , md__mb_6
    , md__mb_64
    , md__mb_8
    , md__mb_auto
    , md__mb_px
    , md__min_h_0
    , md__min_h_full
    , md__min_h_screen
    , md__min_w_0
    , md__min_w_full
    , md__ml_0
    , md__ml_1
    , md__ml_10
    , md__ml_12
    , md__ml_16
    , md__ml_2
    , md__ml_20
    , md__ml_24
    , md__ml_3
    , md__ml_32
    , md__ml_4
    , md__ml_40
    , md__ml_48
    , md__ml_5
    , md__ml_56
    , md__ml_6
    , md__ml_64
    , md__ml_8
    , md__ml_auto
    , md__ml_px
    , md__mr_0
    , md__mr_1
    , md__mr_10
    , md__mr_12
    , md__mr_16
    , md__mr_2
    , md__mr_20
    , md__mr_24
    , md__mr_3
    , md__mr_32
    , md__mr_4
    , md__mr_40
    , md__mr_48
    , md__mr_5
    , md__mr_56
    , md__mr_6
    , md__mr_64
    , md__mr_8
    , md__mr_auto
    , md__mr_px
    , md__mt_0
    , md__mt_1
    , md__mt_10
    , md__mt_12
    , md__mt_16
    , md__mt_2
    , md__mt_20
    , md__mt_24
    , md__mt_3
    , md__mt_32
    , md__mt_4
    , md__mt_40
    , md__mt_48
    , md__mt_5
    , md__mt_56
    , md__mt_6
    , md__mt_64
    , md__mt_8
    , md__mt_auto
    , md__mt_px
    , md__mx_0
    , md__mx_1
    , md__mx_10
    , md__mx_12
    , md__mx_16
    , md__mx_2
    , md__mx_20
    , md__mx_24
    , md__mx_3
    , md__mx_32
    , md__mx_4
    , md__mx_40
    , md__mx_48
    , md__mx_5
    , md__mx_56
    , md__mx_6
    , md__mx_64
    , md__mx_8
    , md__mx_auto
    , md__mx_px
    , md__my_0
    , md__my_1
    , md__my_10
    , md__my_12
    , md__my_16
    , md__my_2
    , md__my_20
    , md__my_24
    , md__my_3
    , md__my_32
    , md__my_4
    , md__my_40
    , md__my_48
    , md__my_5
    , md__my_56
    , md__my_6
    , md__my_64
    , md__my_8
    , md__my_auto
    , md__my_px
    , md__neg_m_1
    , md__neg_m_10
    , md__neg_m_12
    , md__neg_m_16
    , md__neg_m_2
    , md__neg_m_20
    , md__neg_m_24
    , md__neg_m_3
    , md__neg_m_32
    , md__neg_m_4
    , md__neg_m_40
    , md__neg_m_48
    , md__neg_m_5
    , md__neg_m_56
    , md__neg_m_6
    , md__neg_m_64
    , md__neg_m_8
    , md__neg_m_px
    , md__neg_mb_1
    , md__neg_mb_10
    , md__neg_mb_12
    , md__neg_mb_16
    , md__neg_mb_2
    , md__neg_mb_20
    , md__neg_mb_24
    , md__neg_mb_3
    , md__neg_mb_32
    , md__neg_mb_4
    , md__neg_mb_40
    , md__neg_mb_48
    , md__neg_mb_5
    , md__neg_mb_56
    , md__neg_mb_6
    , md__neg_mb_64
    , md__neg_mb_8
    , md__neg_mb_px
    , md__neg_ml_1
    , md__neg_ml_10
    , md__neg_ml_12
    , md__neg_ml_16
    , md__neg_ml_2
    , md__neg_ml_20
    , md__neg_ml_24
    , md__neg_ml_3
    , md__neg_ml_32
    , md__neg_ml_4
    , md__neg_ml_40
    , md__neg_ml_48
    , md__neg_ml_5
    , md__neg_ml_56
    , md__neg_ml_6
    , md__neg_ml_64
    , md__neg_ml_8
    , md__neg_ml_px
    , md__neg_mr_1
    , md__neg_mr_10
    , md__neg_mr_12
    , md__neg_mr_16
    , md__neg_mr_2
    , md__neg_mr_20
    , md__neg_mr_24
    , md__neg_mr_3
    , md__neg_mr_32
    , md__neg_mr_4
    , md__neg_mr_40
    , md__neg_mr_48
    , md__neg_mr_5
    , md__neg_mr_56
    , md__neg_mr_6
    , md__neg_mr_64
    , md__neg_mr_8
    , md__neg_mr_px
    , md__neg_mt_1
    , md__neg_mt_10
    , md__neg_mt_12
    , md__neg_mt_16
    , md__neg_mt_2
    , md__neg_mt_20
    , md__neg_mt_24
    , md__neg_mt_3
    , md__neg_mt_32
    , md__neg_mt_4
    , md__neg_mt_40
    , md__neg_mt_48
    , md__neg_mt_5
    , md__neg_mt_56
    , md__neg_mt_6
    , md__neg_mt_64
    , md__neg_mt_8
    , md__neg_mt_px
    , md__neg_mx_1
    , md__neg_mx_10
    , md__neg_mx_12
    , md__neg_mx_16
    , md__neg_mx_2
    , md__neg_mx_20
    , md__neg_mx_24
    , md__neg_mx_3
    , md__neg_mx_32
    , md__neg_mx_4
    , md__neg_mx_40
    , md__neg_mx_48
    , md__neg_mx_5
    , md__neg_mx_56
    , md__neg_mx_6
    , md__neg_mx_64
    , md__neg_mx_8
    , md__neg_mx_px
    , md__neg_my_1
    , md__neg_my_10
    , md__neg_my_12
    , md__neg_my_16
    , md__neg_my_2
    , md__neg_my_20
    , md__neg_my_24
    , md__neg_my_3
    , md__neg_my_32
    , md__neg_my_4
    , md__neg_my_40
    , md__neg_my_48
    , md__neg_my_5
    , md__neg_my_56
    , md__neg_my_6
    , md__neg_my_64
    , md__neg_my_8
    , md__neg_my_px
    , md__neg_rotate_180
    , md__neg_rotate_45
    , md__neg_rotate_90
    , md__neg_skew_x_12
    , md__neg_skew_x_3
    , md__neg_skew_x_6
    , md__neg_skew_y_12
    , md__neg_skew_y_3
    , md__neg_skew_y_6
    , md__neg_translate_x_1
    , md__neg_translate_x_10
    , md__neg_translate_x_12
    , md__neg_translate_x_16
    , md__neg_translate_x_1over2
    , md__neg_translate_x_2
    , md__neg_translate_x_20
    , md__neg_translate_x_24
    , md__neg_translate_x_3
    , md__neg_translate_x_32
    , md__neg_translate_x_4
    , md__neg_translate_x_40
    , md__neg_translate_x_48
    , md__neg_translate_x_5
    , md__neg_translate_x_56
    , md__neg_translate_x_6
    , md__neg_translate_x_64
    , md__neg_translate_x_8
    , md__neg_translate_x_full
    , md__neg_translate_x_px
    , md__neg_translate_y_1
    , md__neg_translate_y_10
    , md__neg_translate_y_12
    , md__neg_translate_y_16
    , md__neg_translate_y_1over2
    , md__neg_translate_y_2
    , md__neg_translate_y_20
    , md__neg_translate_y_24
    , md__neg_translate_y_3
    , md__neg_translate_y_32
    , md__neg_translate_y_4
    , md__neg_translate_y_40
    , md__neg_translate_y_48
    , md__neg_translate_y_5
    , md__neg_translate_y_56
    , md__neg_translate_y_6
    , md__neg_translate_y_64
    , md__neg_translate_y_8
    , md__neg_translate_y_full
    , md__neg_translate_y_px
    , md__no_underline
    , md__normal_case
    , md__not_italic
    , md__not_sr_only
    , md__object_bottom
    , md__object_center
    , md__object_contain
    , md__object_cover
    , md__object_fill
    , md__object_left
    , md__object_left_bottom
    , md__object_left_top
    , md__object_none
    , md__object_right
    , md__object_right_bottom
    , md__object_right_top
    , md__object_scale_down
    , md__object_top
    , md__opacity_0
    , md__opacity_100
    , md__opacity_25
    , md__opacity_50
    , md__opacity_75
    , md__order_1
    , md__order_10
    , md__order_11
    , md__order_12
    , md__order_2
    , md__order_3
    , md__order_4
    , md__order_5
    , md__order_6
    , md__order_7
    , md__order_8
    , md__order_9
    , md__order_first
    , md__order_last
    , md__order_none
    , md__origin_bottom
    , md__origin_bottom_left
    , md__origin_bottom_right
    , md__origin_center
    , md__origin_left
    , md__origin_right
    , md__origin_top
    , md__origin_top_left
    , md__origin_top_right
    , md__outline_none
    , md__overflow_auto
    , md__overflow_hidden
    , md__overflow_scroll
    , md__overflow_visible
    , md__overflow_x_auto
    , md__overflow_x_hidden
    , md__overflow_x_scroll
    , md__overflow_x_visible
    , md__overflow_y_auto
    , md__overflow_y_hidden
    , md__overflow_y_scroll
    , md__overflow_y_visible
    , md__p_0
    , md__p_1
    , md__p_10
    , md__p_12
    , md__p_16
    , md__p_2
    , md__p_20
    , md__p_24
    , md__p_3
    , md__p_32
    , md__p_4
    , md__p_40
    , md__p_48
    , md__p_5
    , md__p_56
    , md__p_6
    , md__p_64
    , md__p_8
    , md__p_px
    , md__pb_0
    , md__pb_1
    , md__pb_10
    , md__pb_12
    , md__pb_16
    , md__pb_2
    , md__pb_20
    , md__pb_24
    , md__pb_3
    , md__pb_32
    , md__pb_4
    , md__pb_40
    , md__pb_48
    , md__pb_5
    , md__pb_56
    , md__pb_6
    , md__pb_64
    , md__pb_8
    , md__pb_px
    , md__pl_0
    , md__pl_1
    , md__pl_10
    , md__pl_12
    , md__pl_16
    , md__pl_2
    , md__pl_20
    , md__pl_24
    , md__pl_3
    , md__pl_32
    , md__pl_4
    , md__pl_40
    , md__pl_48
    , md__pl_5
    , md__pl_56
    , md__pl_6
    , md__pl_64
    , md__pl_8
    , md__pl_px
    , md__placeholder_black
    , md__placeholder_blue_100
    , md__placeholder_blue_200
    , md__placeholder_blue_300
    , md__placeholder_blue_400
    , md__placeholder_blue_500
    , md__placeholder_blue_600
    , md__placeholder_blue_700
    , md__placeholder_blue_800
    , md__placeholder_blue_900
    , md__placeholder_gray_100
    , md__placeholder_gray_200
    , md__placeholder_gray_300
    , md__placeholder_gray_400
    , md__placeholder_gray_500
    , md__placeholder_gray_600
    , md__placeholder_gray_700
    , md__placeholder_gray_800
    , md__placeholder_gray_900
    , md__placeholder_green_100
    , md__placeholder_green_200
    , md__placeholder_green_300
    , md__placeholder_green_400
    , md__placeholder_green_500
    , md__placeholder_green_600
    , md__placeholder_green_700
    , md__placeholder_green_800
    , md__placeholder_green_900
    , md__placeholder_indigo_100
    , md__placeholder_indigo_200
    , md__placeholder_indigo_300
    , md__placeholder_indigo_400
    , md__placeholder_indigo_500
    , md__placeholder_indigo_600
    , md__placeholder_indigo_700
    , md__placeholder_indigo_800
    , md__placeholder_indigo_900
    , md__placeholder_orange_100
    , md__placeholder_orange_200
    , md__placeholder_orange_300
    , md__placeholder_orange_400
    , md__placeholder_orange_500
    , md__placeholder_orange_600
    , md__placeholder_orange_700
    , md__placeholder_orange_800
    , md__placeholder_orange_900
    , md__placeholder_pink_100
    , md__placeholder_pink_200
    , md__placeholder_pink_300
    , md__placeholder_pink_400
    , md__placeholder_pink_500
    , md__placeholder_pink_600
    , md__placeholder_pink_700
    , md__placeholder_pink_800
    , md__placeholder_pink_900
    , md__placeholder_purple_100
    , md__placeholder_purple_200
    , md__placeholder_purple_300
    , md__placeholder_purple_400
    , md__placeholder_purple_500
    , md__placeholder_purple_600
    , md__placeholder_purple_700
    , md__placeholder_purple_800
    , md__placeholder_purple_900
    , md__placeholder_red_100
    , md__placeholder_red_200
    , md__placeholder_red_300
    , md__placeholder_red_400
    , md__placeholder_red_500
    , md__placeholder_red_600
    , md__placeholder_red_700
    , md__placeholder_red_800
    , md__placeholder_red_900
    , md__placeholder_teal_100
    , md__placeholder_teal_200
    , md__placeholder_teal_300
    , md__placeholder_teal_400
    , md__placeholder_teal_500
    , md__placeholder_teal_600
    , md__placeholder_teal_700
    , md__placeholder_teal_800
    , md__placeholder_teal_900
    , md__placeholder_transparent
    , md__placeholder_white
    , md__placeholder_yellow_100
    , md__placeholder_yellow_200
    , md__placeholder_yellow_300
    , md__placeholder_yellow_400
    , md__placeholder_yellow_500
    , md__placeholder_yellow_600
    , md__placeholder_yellow_700
    , md__placeholder_yellow_800
    , md__placeholder_yellow_900
    , md__pointer_events_auto
    , md__pointer_events_none
    , md__pr_0
    , md__pr_1
    , md__pr_10
    , md__pr_12
    , md__pr_16
    , md__pr_2
    , md__pr_20
    , md__pr_24
    , md__pr_3
    , md__pr_32
    , md__pr_4
    , md__pr_40
    , md__pr_48
    , md__pr_5
    , md__pr_56
    , md__pr_6
    , md__pr_64
    , md__pr_8
    , md__pr_px
    , md__pt_0
    , md__pt_1
    , md__pt_10
    , md__pt_12
    , md__pt_16
    , md__pt_2
    , md__pt_20
    , md__pt_24
    , md__pt_3
    , md__pt_32
    , md__pt_4
    , md__pt_40
    , md__pt_48
    , md__pt_5
    , md__pt_56
    , md__pt_6
    , md__pt_64
    , md__pt_8
    , md__pt_px
    , md__px_0
    , md__px_1
    , md__px_10
    , md__px_12
    , md__px_16
    , md__px_2
    , md__px_20
    , md__px_24
    , md__px_3
    , md__px_32
    , md__px_4
    , md__px_40
    , md__px_48
    , md__px_5
    , md__px_56
    , md__px_6
    , md__px_64
    , md__px_8
    , md__px_px
    , md__py_0
    , md__py_1
    , md__py_10
    , md__py_12
    , md__py_16
    , md__py_2
    , md__py_20
    , md__py_24
    , md__py_3
    , md__py_32
    , md__py_4
    , md__py_40
    , md__py_48
    , md__py_5
    , md__py_56
    , md__py_6
    , md__py_64
    , md__py_8
    , md__py_px
    , md__relative
    , md__resize
    , md__resize_none
    , md__resize_x
    , md__resize_y
    , md__right_0
    , md__right_auto
    , md__rotate_0
    , md__rotate_180
    , md__rotate_45
    , md__rotate_90
    , md__rounded
    , md__rounded_b
    , md__rounded_b_full
    , md__rounded_b_lg
    , md__rounded_b_md
    , md__rounded_b_none
    , md__rounded_b_sm
    , md__rounded_bl
    , md__rounded_bl_full
    , md__rounded_bl_lg
    , md__rounded_bl_md
    , md__rounded_bl_none
    , md__rounded_bl_sm
    , md__rounded_br
    , md__rounded_br_full
    , md__rounded_br_lg
    , md__rounded_br_md
    , md__rounded_br_none
    , md__rounded_br_sm
    , md__rounded_full
    , md__rounded_l
    , md__rounded_l_full
    , md__rounded_l_lg
    , md__rounded_l_md
    , md__rounded_l_none
    , md__rounded_l_sm
    , md__rounded_lg
    , md__rounded_md
    , md__rounded_none
    , md__rounded_r
    , md__rounded_r_full
    , md__rounded_r_lg
    , md__rounded_r_md
    , md__rounded_r_none
    , md__rounded_r_sm
    , md__rounded_sm
    , md__rounded_t
    , md__rounded_t_full
    , md__rounded_t_lg
    , md__rounded_t_md
    , md__rounded_t_none
    , md__rounded_t_sm
    , md__rounded_tl
    , md__rounded_tl_full
    , md__rounded_tl_lg
    , md__rounded_tl_md
    , md__rounded_tl_none
    , md__rounded_tl_sm
    , md__rounded_tr
    , md__rounded_tr_full
    , md__rounded_tr_lg
    , md__rounded_tr_md
    , md__rounded_tr_none
    , md__rounded_tr_sm
    , md__row_auto
    , md__row_end_1
    , md__row_end_2
    , md__row_end_3
    , md__row_end_4
    , md__row_end_5
    , md__row_end_6
    , md__row_end_7
    , md__row_end_auto
    , md__row_gap_0
    , md__row_gap_1
    , md__row_gap_10
    , md__row_gap_12
    , md__row_gap_16
    , md__row_gap_2
    , md__row_gap_20
    , md__row_gap_24
    , md__row_gap_3
    , md__row_gap_32
    , md__row_gap_4
    , md__row_gap_40
    , md__row_gap_48
    , md__row_gap_5
    , md__row_gap_56
    , md__row_gap_6
    , md__row_gap_64
    , md__row_gap_8
    , md__row_gap_px
    , md__row_span_1
    , md__row_span_2
    , md__row_span_3
    , md__row_span_4
    , md__row_span_5
    , md__row_span_6
    , md__row_start_1
    , md__row_start_2
    , md__row_start_3
    , md__row_start_4
    , md__row_start_5
    , md__row_start_6
    , md__row_start_7
    , md__row_start_auto
    , md__scale_0
    , md__scale_100
    , md__scale_105
    , md__scale_110
    , md__scale_125
    , md__scale_150
    , md__scale_50
    , md__scale_75
    , md__scale_90
    , md__scale_95
    , md__scale_x_0
    , md__scale_x_100
    , md__scale_x_105
    , md__scale_x_110
    , md__scale_x_125
    , md__scale_x_150
    , md__scale_x_50
    , md__scale_x_75
    , md__scale_x_90
    , md__scale_x_95
    , md__scale_y_0
    , md__scale_y_100
    , md__scale_y_105
    , md__scale_y_110
    , md__scale_y_125
    , md__scale_y_150
    , md__scale_y_50
    , md__scale_y_75
    , md__scale_y_90
    , md__scale_y_95
    , md__scrolling_auto
    , md__scrolling_touch
    , md__select_all
    , md__select_auto
    , md__select_none
    , md__select_text
    , md__self_auto
    , md__self_center
    , md__self_end
    , md__self_start
    , md__self_stretch
    , md__shadow
    , md__shadow_2xl
    , md__shadow_inner
    , md__shadow_lg
    , md__shadow_md
    , md__shadow_none
    , md__shadow_outline
    , md__shadow_sm
    , md__shadow_xl
    , md__shadow_xs
    , md__skew_x_0
    , md__skew_x_12
    , md__skew_x_3
    , md__skew_x_6
    , md__skew_y_0
    , md__skew_y_12
    , md__skew_y_3
    , md__skew_y_6
    , md__sr_only
    , md__static
    , md__sticky
    , md__stroke_0
    , md__stroke_1
    , md__stroke_2
    , md__stroke_current
    , md__subpixel_antialiased
    , md__table
    , md__table_auto
    , md__table_caption
    , md__table_cell
    , md__table_column
    , md__table_column_group
    , md__table_fixed
    , md__table_footer_group
    , md__table_header_group
    , md__table_row
    , md__table_row_group
    , md__text_2xl
    , md__text_3xl
    , md__text_4xl
    , md__text_5xl
    , md__text_6xl
    , md__text_base
    , md__text_black
    , md__text_blue_100
    , md__text_blue_200
    , md__text_blue_300
    , md__text_blue_400
    , md__text_blue_500
    , md__text_blue_600
    , md__text_blue_700
    , md__text_blue_800
    , md__text_blue_900
    , md__text_center
    , md__text_gray_100
    , md__text_gray_200
    , md__text_gray_300
    , md__text_gray_400
    , md__text_gray_500
    , md__text_gray_600
    , md__text_gray_700
    , md__text_gray_800
    , md__text_gray_900
    , md__text_green_100
    , md__text_green_200
    , md__text_green_300
    , md__text_green_400
    , md__text_green_500
    , md__text_green_600
    , md__text_green_700
    , md__text_green_800
    , md__text_green_900
    , md__text_indigo_100
    , md__text_indigo_200
    , md__text_indigo_300
    , md__text_indigo_400
    , md__text_indigo_500
    , md__text_indigo_600
    , md__text_indigo_700
    , md__text_indigo_800
    , md__text_indigo_900
    , md__text_justify
    , md__text_left
    , md__text_lg
    , md__text_orange_100
    , md__text_orange_200
    , md__text_orange_300
    , md__text_orange_400
    , md__text_orange_500
    , md__text_orange_600
    , md__text_orange_700
    , md__text_orange_800
    , md__text_orange_900
    , md__text_pink_100
    , md__text_pink_200
    , md__text_pink_300
    , md__text_pink_400
    , md__text_pink_500
    , md__text_pink_600
    , md__text_pink_700
    , md__text_pink_800
    , md__text_pink_900
    , md__text_purple_100
    , md__text_purple_200
    , md__text_purple_300
    , md__text_purple_400
    , md__text_purple_500
    , md__text_purple_600
    , md__text_purple_700
    , md__text_purple_800
    , md__text_purple_900
    , md__text_red_100
    , md__text_red_200
    , md__text_red_300
    , md__text_red_400
    , md__text_red_500
    , md__text_red_600
    , md__text_red_700
    , md__text_red_800
    , md__text_red_900
    , md__text_right
    , md__text_sm
    , md__text_teal_100
    , md__text_teal_200
    , md__text_teal_300
    , md__text_teal_400
    , md__text_teal_500
    , md__text_teal_600
    , md__text_teal_700
    , md__text_teal_800
    , md__text_teal_900
    , md__text_transparent
    , md__text_white
    , md__text_xl
    , md__text_xs
    , md__text_yellow_100
    , md__text_yellow_200
    , md__text_yellow_300
    , md__text_yellow_400
    , md__text_yellow_500
    , md__text_yellow_600
    , md__text_yellow_700
    , md__text_yellow_800
    , md__text_yellow_900
    , md__top_0
    , md__top_auto
    , md__tracking_normal
    , md__tracking_tight
    , md__tracking_tighter
    , md__tracking_wide
    , md__tracking_wider
    , md__tracking_widest
    , md__transform
    , md__transform_none
    , md__transition
    , md__transition_all
    , md__transition_colors
    , md__transition_none
    , md__transition_opacity
    , md__transition_shadow
    , md__transition_transform
    , md__translate_x_0
    , md__translate_x_1
    , md__translate_x_10
    , md__translate_x_12
    , md__translate_x_16
    , md__translate_x_1over2
    , md__translate_x_2
    , md__translate_x_20
    , md__translate_x_24
    , md__translate_x_3
    , md__translate_x_32
    , md__translate_x_4
    , md__translate_x_40
    , md__translate_x_48
    , md__translate_x_5
    , md__translate_x_56
    , md__translate_x_6
    , md__translate_x_64
    , md__translate_x_8
    , md__translate_x_full
    , md__translate_x_px
    , md__translate_y_0
    , md__translate_y_1
    , md__translate_y_10
    , md__translate_y_12
    , md__translate_y_16
    , md__translate_y_1over2
    , md__translate_y_2
    , md__translate_y_20
    , md__translate_y_24
    , md__translate_y_3
    , md__translate_y_32
    , md__translate_y_4
    , md__translate_y_40
    , md__translate_y_48
    , md__translate_y_5
    , md__translate_y_56
    , md__translate_y_6
    , md__translate_y_64
    , md__translate_y_8
    , md__translate_y_full
    , md__translate_y_px
    , md__truncate
    , md__underline
    , md__uppercase
    , md__visible
    , md__w_0
    , md__w_1
    , md__w_10
    , md__w_10over12
    , md__w_11over12
    , md__w_12
    , md__w_16
    , md__w_1over12
    , md__w_1over2
    , md__w_1over3
    , md__w_1over4
    , md__w_1over5
    , md__w_1over6
    , md__w_2
    , md__w_20
    , md__w_24
    , md__w_2over12
    , md__w_2over3
    , md__w_2over4
    , md__w_2over5
    , md__w_2over6
    , md__w_3
    , md__w_32
    , md__w_3over12
    , md__w_3over4
    , md__w_3over5
    , md__w_3over6
    , md__w_4
    , md__w_40
    , md__w_48
    , md__w_4over12
    , md__w_4over5
    , md__w_4over6
    , md__w_5
    , md__w_56
    , md__w_5over12
    , md__w_5over6
    , md__w_6
    , md__w_64
    , md__w_6over12
    , md__w_7over12
    , md__w_8
    , md__w_8over12
    , md__w_9over12
    , md__w_auto
    , md__w_full
    , md__w_px
    , md__w_screen
    , md__whitespace_no_wrap
    , md__whitespace_normal
    , md__whitespace_pre
    , md__whitespace_pre_line
    , md__whitespace_pre_wrap
    , md__z_0
    , md__z_10
    , md__z_20
    , md__z_30
    , md__z_40
    , md__z_50
    , md__z_auto
    , min_h_0
    , min_h_full
    , min_h_screen
    , min_w_0
    , min_w_full
    , ml_0
    , ml_1
    , ml_10
    , ml_12
    , ml_16
    , ml_2
    , ml_20
    , ml_24
    , ml_3
    , ml_32
    , ml_4
    , ml_40
    , ml_48
    , ml_5
    , ml_56
    , ml_6
    , ml_64
    , ml_8
    , ml_auto
    , ml_px
    , mr_0
    , mr_1
    , mr_10
    , mr_12
    , mr_16
    , mr_2
    , mr_20
    , mr_24
    , mr_3
    , mr_32
    , mr_4
    , mr_40
    , mr_48
    , mr_5
    , mr_56
    , mr_6
    , mr_64
    , mr_8
    , mr_auto
    , mr_px
    , mt_0
    , mt_1
    , mt_10
    , mt_12
    , mt_16
    , mt_2
    , mt_20
    , mt_24
    , mt_3
    , mt_32
    , mt_4
    , mt_40
    , mt_48
    , mt_5
    , mt_56
    , mt_6
    , mt_64
    , mt_8
    , mt_auto
    , mt_px
    , mx_0
    , mx_1
    , mx_10
    , mx_12
    , mx_16
    , mx_2
    , mx_20
    , mx_24
    , mx_3
    , mx_32
    , mx_4
    , mx_40
    , mx_48
    , mx_5
    , mx_56
    , mx_6
    , mx_64
    , mx_8
    , mx_auto
    , mx_px
    , my_0
    , my_1
    , my_10
    , my_12
    , my_16
    , my_2
    , my_20
    , my_24
    , my_3
    , my_32
    , my_4
    , my_40
    , my_48
    , my_5
    , my_56
    , my_6
    , my_64
    , my_8
    , my_auto
    , my_px
    , neg_m_1
    , neg_m_10
    , neg_m_12
    , neg_m_16
    , neg_m_2
    , neg_m_20
    , neg_m_24
    , neg_m_3
    , neg_m_32
    , neg_m_4
    , neg_m_40
    , neg_m_48
    , neg_m_5
    , neg_m_56
    , neg_m_6
    , neg_m_64
    , neg_m_8
    , neg_m_px
    , neg_mb_1
    , neg_mb_10
    , neg_mb_12
    , neg_mb_16
    , neg_mb_2
    , neg_mb_20
    , neg_mb_24
    , neg_mb_3
    , neg_mb_32
    , neg_mb_4
    , neg_mb_40
    , neg_mb_48
    , neg_mb_5
    , neg_mb_56
    , neg_mb_6
    , neg_mb_64
    , neg_mb_8
    , neg_mb_px
    , neg_ml_1
    , neg_ml_10
    , neg_ml_12
    , neg_ml_16
    , neg_ml_2
    , neg_ml_20
    , neg_ml_24
    , neg_ml_3
    , neg_ml_32
    , neg_ml_4
    , neg_ml_40
    , neg_ml_48
    , neg_ml_5
    , neg_ml_56
    , neg_ml_6
    , neg_ml_64
    , neg_ml_8
    , neg_ml_px
    , neg_mr_1
    , neg_mr_10
    , neg_mr_12
    , neg_mr_16
    , neg_mr_2
    , neg_mr_20
    , neg_mr_24
    , neg_mr_3
    , neg_mr_32
    , neg_mr_4
    , neg_mr_40
    , neg_mr_48
    , neg_mr_5
    , neg_mr_56
    , neg_mr_6
    , neg_mr_64
    , neg_mr_8
    , neg_mr_px
    , neg_mt_1
    , neg_mt_10
    , neg_mt_12
    , neg_mt_16
    , neg_mt_2
    , neg_mt_20
    , neg_mt_24
    , neg_mt_3
    , neg_mt_32
    , neg_mt_4
    , neg_mt_40
    , neg_mt_48
    , neg_mt_5
    , neg_mt_56
    , neg_mt_6
    , neg_mt_64
    , neg_mt_8
    , neg_mt_px
    , neg_mx_1
    , neg_mx_10
    , neg_mx_12
    , neg_mx_16
    , neg_mx_2
    , neg_mx_20
    , neg_mx_24
    , neg_mx_3
    , neg_mx_32
    , neg_mx_4
    , neg_mx_40
    , neg_mx_48
    , neg_mx_5
    , neg_mx_56
    , neg_mx_6
    , neg_mx_64
    , neg_mx_8
    , neg_mx_px
    , neg_my_1
    , neg_my_10
    , neg_my_12
    , neg_my_16
    , neg_my_2
    , neg_my_20
    , neg_my_24
    , neg_my_3
    , neg_my_32
    , neg_my_4
    , neg_my_40
    , neg_my_48
    , neg_my_5
    , neg_my_56
    , neg_my_6
    , neg_my_64
    , neg_my_8
    , neg_my_px
    , neg_rotate_180
    , neg_rotate_45
    , neg_rotate_90
    , neg_skew_x_12
    , neg_skew_x_3
    , neg_skew_x_6
    , neg_skew_y_12
    , neg_skew_y_3
    , neg_skew_y_6
    , neg_translate_x_1
    , neg_translate_x_10
    , neg_translate_x_12
    , neg_translate_x_16
    , neg_translate_x_1over2
    , neg_translate_x_2
    , neg_translate_x_20
    , neg_translate_x_24
    , neg_translate_x_3
    , neg_translate_x_32
    , neg_translate_x_4
    , neg_translate_x_40
    , neg_translate_x_48
    , neg_translate_x_5
    , neg_translate_x_56
    , neg_translate_x_6
    , neg_translate_x_64
    , neg_translate_x_8
    , neg_translate_x_full
    , neg_translate_x_px
    , neg_translate_y_1
    , neg_translate_y_10
    , neg_translate_y_12
    , neg_translate_y_16
    , neg_translate_y_1over2
    , neg_translate_y_2
    , neg_translate_y_20
    , neg_translate_y_24
    , neg_translate_y_3
    , neg_translate_y_32
    , neg_translate_y_4
    , neg_translate_y_40
    , neg_translate_y_48
    , neg_translate_y_5
    , neg_translate_y_56
    , neg_translate_y_6
    , neg_translate_y_64
    , neg_translate_y_8
    , neg_translate_y_full
    , neg_translate_y_px
    , no_underline
    , normal_case
    , not_italic
    , not_sr_only
    , object_bottom
    , object_center
    , object_contain
    , object_cover
    , object_fill
    , object_left
    , object_left_bottom
    , object_left_top
    , object_none
    , object_right
    , object_right_bottom
    , object_right_top
    , object_scale_down
    , object_top
    , opacity_0
    , opacity_100
    , opacity_25
    , opacity_50
    , opacity_75
    , order_1
    , order_10
    , order_11
    , order_12
    , order_2
    , order_3
    , order_4
    , order_5
    , order_6
    , order_7
    , order_8
    , order_9
    , order_first
    , order_last
    , order_none
    , origin_bottom
    , origin_bottom_left
    , origin_bottom_right
    , origin_center
    , origin_left
    , origin_right
    , origin_top
    , origin_top_left
    , origin_top_right
    , outline_none
    , overflow_auto
    , overflow_hidden
    , overflow_scroll
    , overflow_visible
    , overflow_x_auto
    , overflow_x_hidden
    , overflow_x_scroll
    , overflow_x_visible
    , overflow_y_auto
    , overflow_y_hidden
    , overflow_y_scroll
    , overflow_y_visible
    , p_0
    , p_1
    , p_10
    , p_12
    , p_16
    , p_2
    , p_20
    , p_24
    , p_3
    , p_32
    , p_4
    , p_40
    , p_48
    , p_5
    , p_56
    , p_6
    , p_64
    , p_8
    , p_px
    , pb_0
    , pb_1
    , pb_10
    , pb_12
    , pb_16
    , pb_2
    , pb_20
    , pb_24
    , pb_3
    , pb_32
    , pb_4
    , pb_40
    , pb_48
    , pb_5
    , pb_56
    , pb_6
    , pb_64
    , pb_8
    , pb_px
    , pl_0
    , pl_1
    , pl_10
    , pl_12
    , pl_16
    , pl_2
    , pl_20
    , pl_24
    , pl_3
    , pl_32
    , pl_4
    , pl_40
    , pl_48
    , pl_5
    , pl_56
    , pl_6
    , pl_64
    , pl_8
    , pl_px
    , placeholder_black
    , placeholder_blue_100
    , placeholder_blue_200
    , placeholder_blue_300
    , placeholder_blue_400
    , placeholder_blue_500
    , placeholder_blue_600
    , placeholder_blue_700
    , placeholder_blue_800
    , placeholder_blue_900
    , placeholder_gray_100
    , placeholder_gray_200
    , placeholder_gray_300
    , placeholder_gray_400
    , placeholder_gray_500
    , placeholder_gray_600
    , placeholder_gray_700
    , placeholder_gray_800
    , placeholder_gray_900
    , placeholder_green_100
    , placeholder_green_200
    , placeholder_green_300
    , placeholder_green_400
    , placeholder_green_500
    , placeholder_green_600
    , placeholder_green_700
    , placeholder_green_800
    , placeholder_green_900
    , placeholder_indigo_100
    , placeholder_indigo_200
    , placeholder_indigo_300
    , placeholder_indigo_400
    , placeholder_indigo_500
    , placeholder_indigo_600
    , placeholder_indigo_700
    , placeholder_indigo_800
    , placeholder_indigo_900
    , placeholder_orange_100
    , placeholder_orange_200
    , placeholder_orange_300
    , placeholder_orange_400
    , placeholder_orange_500
    , placeholder_orange_600
    , placeholder_orange_700
    , placeholder_orange_800
    , placeholder_orange_900
    , placeholder_pink_100
    , placeholder_pink_200
    , placeholder_pink_300
    , placeholder_pink_400
    , placeholder_pink_500
    , placeholder_pink_600
    , placeholder_pink_700
    , placeholder_pink_800
    , placeholder_pink_900
    , placeholder_purple_100
    , placeholder_purple_200
    , placeholder_purple_300
    , placeholder_purple_400
    , placeholder_purple_500
    , placeholder_purple_600
    , placeholder_purple_700
    , placeholder_purple_800
    , placeholder_purple_900
    , placeholder_red_100
    , placeholder_red_200
    , placeholder_red_300
    , placeholder_red_400
    , placeholder_red_500
    , placeholder_red_600
    , placeholder_red_700
    , placeholder_red_800
    , placeholder_red_900
    , placeholder_teal_100
    , placeholder_teal_200
    , placeholder_teal_300
    , placeholder_teal_400
    , placeholder_teal_500
    , placeholder_teal_600
    , placeholder_teal_700
    , placeholder_teal_800
    , placeholder_teal_900
    , placeholder_transparent
    , placeholder_white
    , placeholder_yellow_100
    , placeholder_yellow_200
    , placeholder_yellow_300
    , placeholder_yellow_400
    , placeholder_yellow_500
    , placeholder_yellow_600
    , placeholder_yellow_700
    , placeholder_yellow_800
    , placeholder_yellow_900
    , pointer_events_auto
    , pointer_events_none
    , pr_0
    , pr_1
    , pr_10
    , pr_12
    , pr_16
    , pr_2
    , pr_20
    , pr_24
    , pr_3
    , pr_32
    , pr_4
    , pr_40
    , pr_48
    , pr_5
    , pr_56
    , pr_6
    , pr_64
    , pr_8
    , pr_px
    , pt_0
    , pt_1
    , pt_10
    , pt_12
    , pt_16
    , pt_2
    , pt_20
    , pt_24
    , pt_3
    , pt_32
    , pt_4
    , pt_40
    , pt_48
    , pt_5
    , pt_56
    , pt_6
    , pt_64
    , pt_8
    , pt_px
    , px_0
    , px_1
    , px_10
    , px_12
    , px_16
    , px_2
    , px_20
    , px_24
    , px_3
    , px_32
    , px_4
    , px_40
    , px_48
    , px_5
    , px_56
    , px_6
    , px_64
    , px_8
    , px_px
    , py_0
    , py_1
    , py_10
    , py_12
    , py_16
    , py_2
    , py_20
    , py_24
    , py_3
    , py_32
    , py_4
    , py_40
    , py_48
    , py_5
    , py_56
    , py_6
    , py_64
    , py_8
    , py_px
    , relative
    , resize
    , resize_none
    , resize_x
    , resize_y
    , right_0
    , right_auto
    , rotate_0
    , rotate_180
    , rotate_45
    , rotate_90
    , rounded
    , rounded_b
    , rounded_b_full
    , rounded_b_lg
    , rounded_b_md
    , rounded_b_none
    , rounded_b_sm
    , rounded_bl
    , rounded_bl_full
    , rounded_bl_lg
    , rounded_bl_md
    , rounded_bl_none
    , rounded_bl_sm
    , rounded_br
    , rounded_br_full
    , rounded_br_lg
    , rounded_br_md
    , rounded_br_none
    , rounded_br_sm
    , rounded_full
    , rounded_l
    , rounded_l_full
    , rounded_l_lg
    , rounded_l_md
    , rounded_l_none
    , rounded_l_sm
    , rounded_lg
    , rounded_md
    , rounded_none
    , rounded_r
    , rounded_r_full
    , rounded_r_lg
    , rounded_r_md
    , rounded_r_none
    , rounded_r_sm
    , rounded_sm
    , rounded_t
    , rounded_t_full
    , rounded_t_lg
    , rounded_t_md
    , rounded_t_none
    , rounded_t_sm
    , rounded_tl
    , rounded_tl_full
    , rounded_tl_lg
    , rounded_tl_md
    , rounded_tl_none
    , rounded_tl_sm
    , rounded_tr
    , rounded_tr_full
    , rounded_tr_lg
    , rounded_tr_md
    , rounded_tr_none
    , rounded_tr_sm
    , row_auto
    , row_end_1
    , row_end_2
    , row_end_3
    , row_end_4
    , row_end_5
    , row_end_6
    , row_end_7
    , row_end_auto
    , row_gap_0
    , row_gap_1
    , row_gap_10
    , row_gap_12
    , row_gap_16
    , row_gap_2
    , row_gap_20
    , row_gap_24
    , row_gap_3
    , row_gap_32
    , row_gap_4
    , row_gap_40
    , row_gap_48
    , row_gap_5
    , row_gap_56
    , row_gap_6
    , row_gap_64
    , row_gap_8
    , row_gap_px
    , row_span_1
    , row_span_2
    , row_span_3
    , row_span_4
    , row_span_5
    , row_span_6
    , row_start_1
    , row_start_2
    , row_start_3
    , row_start_4
    , row_start_5
    , row_start_6
    , row_start_7
    , row_start_auto
    , scale_0
    , scale_100
    , scale_105
    , scale_110
    , scale_125
    , scale_150
    , scale_50
    , scale_75
    , scale_90
    , scale_95
    , scale_x_0
    , scale_x_100
    , scale_x_105
    , scale_x_110
    , scale_x_125
    , scale_x_150
    , scale_x_50
    , scale_x_75
    , scale_x_90
    , scale_x_95
    , scale_y_0
    , scale_y_100
    , scale_y_105
    , scale_y_110
    , scale_y_125
    , scale_y_150
    , scale_y_50
    , scale_y_75
    , scale_y_90
    , scale_y_95
    , scrolling_auto
    , scrolling_touch
    , select_all
    , select_auto
    , select_none
    , select_text
    , self_auto
    , self_center
    , self_end
    , self_start
    , self_stretch
    , shadow
    , shadow_2xl
    , shadow_inner
    , shadow_lg
    , shadow_md
    , shadow_none
    , shadow_outline
    , shadow_sm
    , shadow_xl
    , shadow_xs
    , skew_x_0
    , skew_x_12
    , skew_x_3
    , skew_x_6
    , skew_y_0
    , skew_y_12
    , skew_y_3
    , skew_y_6
    , sm__absolute
    , sm__align_baseline
    , sm__align_bottom
    , sm__align_middle
    , sm__align_text_bottom
    , sm__align_text_top
    , sm__align_top
    , sm__antialiased
    , sm__appearance_none
    , sm__bg_auto
    , sm__bg_black
    , sm__bg_blue_100
    , sm__bg_blue_200
    , sm__bg_blue_300
    , sm__bg_blue_400
    , sm__bg_blue_500
    , sm__bg_blue_600
    , sm__bg_blue_700
    , sm__bg_blue_800
    , sm__bg_blue_900
    , sm__bg_bottom
    , sm__bg_center
    , sm__bg_contain
    , sm__bg_cover
    , sm__bg_fixed
    , sm__bg_gray_100
    , sm__bg_gray_200
    , sm__bg_gray_300
    , sm__bg_gray_400
    , sm__bg_gray_500
    , sm__bg_gray_600
    , sm__bg_gray_700
    , sm__bg_gray_800
    , sm__bg_gray_900
    , sm__bg_green_100
    , sm__bg_green_200
    , sm__bg_green_300
    , sm__bg_green_400
    , sm__bg_green_500
    , sm__bg_green_600
    , sm__bg_green_700
    , sm__bg_green_800
    , sm__bg_green_900
    , sm__bg_indigo_100
    , sm__bg_indigo_200
    , sm__bg_indigo_300
    , sm__bg_indigo_400
    , sm__bg_indigo_500
    , sm__bg_indigo_600
    , sm__bg_indigo_700
    , sm__bg_indigo_800
    , sm__bg_indigo_900
    , sm__bg_left
    , sm__bg_left_bottom
    , sm__bg_left_top
    , sm__bg_local
    , sm__bg_no_repeat
    , sm__bg_orange_100
    , sm__bg_orange_200
    , sm__bg_orange_300
    , sm__bg_orange_400
    , sm__bg_orange_500
    , sm__bg_orange_600
    , sm__bg_orange_700
    , sm__bg_orange_800
    , sm__bg_orange_900
    , sm__bg_pink_100
    , sm__bg_pink_200
    , sm__bg_pink_300
    , sm__bg_pink_400
    , sm__bg_pink_500
    , sm__bg_pink_600
    , sm__bg_pink_700
    , sm__bg_pink_800
    , sm__bg_pink_900
    , sm__bg_purple_100
    , sm__bg_purple_200
    , sm__bg_purple_300
    , sm__bg_purple_400
    , sm__bg_purple_500
    , sm__bg_purple_600
    , sm__bg_purple_700
    , sm__bg_purple_800
    , sm__bg_purple_900
    , sm__bg_red_100
    , sm__bg_red_200
    , sm__bg_red_300
    , sm__bg_red_400
    , sm__bg_red_500
    , sm__bg_red_600
    , sm__bg_red_700
    , sm__bg_red_800
    , sm__bg_red_900
    , sm__bg_repeat
    , sm__bg_repeat_round
    , sm__bg_repeat_space
    , sm__bg_repeat_x
    , sm__bg_repeat_y
    , sm__bg_right
    , sm__bg_right_bottom
    , sm__bg_right_top
    , sm__bg_scroll
    , sm__bg_teal_100
    , sm__bg_teal_200
    , sm__bg_teal_300
    , sm__bg_teal_400
    , sm__bg_teal_500
    , sm__bg_teal_600
    , sm__bg_teal_700
    , sm__bg_teal_800
    , sm__bg_teal_900
    , sm__bg_top
    , sm__bg_transparent
    , sm__bg_white
    , sm__bg_yellow_100
    , sm__bg_yellow_200
    , sm__bg_yellow_300
    , sm__bg_yellow_400
    , sm__bg_yellow_500
    , sm__bg_yellow_600
    , sm__bg_yellow_700
    , sm__bg_yellow_800
    , sm__bg_yellow_900
    , sm__block
    , sm__border
    , sm__border_0
    , sm__border_2
    , sm__border_4
    , sm__border_8
    , sm__border_b
    , sm__border_b_0
    , sm__border_b_2
    , sm__border_b_4
    , sm__border_b_8
    , sm__border_black
    , sm__border_blue_100
    , sm__border_blue_200
    , sm__border_blue_300
    , sm__border_blue_400
    , sm__border_blue_500
    , sm__border_blue_600
    , sm__border_blue_700
    , sm__border_blue_800
    , sm__border_blue_900
    , sm__border_collapse
    , sm__border_dashed
    , sm__border_dotted
    , sm__border_double
    , sm__border_gray_100
    , sm__border_gray_200
    , sm__border_gray_300
    , sm__border_gray_400
    , sm__border_gray_500
    , sm__border_gray_600
    , sm__border_gray_700
    , sm__border_gray_800
    , sm__border_gray_900
    , sm__border_green_100
    , sm__border_green_200
    , sm__border_green_300
    , sm__border_green_400
    , sm__border_green_500
    , sm__border_green_600
    , sm__border_green_700
    , sm__border_green_800
    , sm__border_green_900
    , sm__border_indigo_100
    , sm__border_indigo_200
    , sm__border_indigo_300
    , sm__border_indigo_400
    , sm__border_indigo_500
    , sm__border_indigo_600
    , sm__border_indigo_700
    , sm__border_indigo_800
    , sm__border_indigo_900
    , sm__border_l
    , sm__border_l_0
    , sm__border_l_2
    , sm__border_l_4
    , sm__border_l_8
    , sm__border_none
    , sm__border_orange_100
    , sm__border_orange_200
    , sm__border_orange_300
    , sm__border_orange_400
    , sm__border_orange_500
    , sm__border_orange_600
    , sm__border_orange_700
    , sm__border_orange_800
    , sm__border_orange_900
    , sm__border_pink_100
    , sm__border_pink_200
    , sm__border_pink_300
    , sm__border_pink_400
    , sm__border_pink_500
    , sm__border_pink_600
    , sm__border_pink_700
    , sm__border_pink_800
    , sm__border_pink_900
    , sm__border_purple_100
    , sm__border_purple_200
    , sm__border_purple_300
    , sm__border_purple_400
    , sm__border_purple_500
    , sm__border_purple_600
    , sm__border_purple_700
    , sm__border_purple_800
    , sm__border_purple_900
    , sm__border_r
    , sm__border_r_0
    , sm__border_r_2
    , sm__border_r_4
    , sm__border_r_8
    , sm__border_red_100
    , sm__border_red_200
    , sm__border_red_300
    , sm__border_red_400
    , sm__border_red_500
    , sm__border_red_600
    , sm__border_red_700
    , sm__border_red_800
    , sm__border_red_900
    , sm__border_separate
    , sm__border_solid
    , sm__border_t
    , sm__border_t_0
    , sm__border_t_2
    , sm__border_t_4
    , sm__border_t_8
    , sm__border_teal_100
    , sm__border_teal_200
    , sm__border_teal_300
    , sm__border_teal_400
    , sm__border_teal_500
    , sm__border_teal_600
    , sm__border_teal_700
    , sm__border_teal_800
    , sm__border_teal_900
    , sm__border_transparent
    , sm__border_white
    , sm__border_yellow_100
    , sm__border_yellow_200
    , sm__border_yellow_300
    , sm__border_yellow_400
    , sm__border_yellow_500
    , sm__border_yellow_600
    , sm__border_yellow_700
    , sm__border_yellow_800
    , sm__border_yellow_900
    , sm__bottom_0
    , sm__bottom_auto
    , sm__box_border
    , sm__box_content
    , sm__break_all
    , sm__break_normal
    , sm__break_words
    , sm__capitalize
    , sm__clear_both
    , sm__clear_left
    , sm__clear_right
    , sm__clearfix__after
    , sm__col_auto
    , sm__col_end_1
    , sm__col_end_10
    , sm__col_end_11
    , sm__col_end_12
    , sm__col_end_13
    , sm__col_end_2
    , sm__col_end_3
    , sm__col_end_4
    , sm__col_end_5
    , sm__col_end_6
    , sm__col_end_7
    , sm__col_end_8
    , sm__col_end_9
    , sm__col_end_auto
    , sm__col_gap_0
    , sm__col_gap_1
    , sm__col_gap_10
    , sm__col_gap_12
    , sm__col_gap_16
    , sm__col_gap_2
    , sm__col_gap_20
    , sm__col_gap_24
    , sm__col_gap_3
    , sm__col_gap_32
    , sm__col_gap_4
    , sm__col_gap_40
    , sm__col_gap_48
    , sm__col_gap_5
    , sm__col_gap_56
    , sm__col_gap_6
    , sm__col_gap_64
    , sm__col_gap_8
    , sm__col_gap_px
    , sm__col_span_1
    , sm__col_span_10
    , sm__col_span_11
    , sm__col_span_12
    , sm__col_span_2
    , sm__col_span_3
    , sm__col_span_4
    , sm__col_span_5
    , sm__col_span_6
    , sm__col_span_7
    , sm__col_span_8
    , sm__col_span_9
    , sm__col_start_1
    , sm__col_start_10
    , sm__col_start_11
    , sm__col_start_12
    , sm__col_start_13
    , sm__col_start_2
    , sm__col_start_3
    , sm__col_start_4
    , sm__col_start_5
    , sm__col_start_6
    , sm__col_start_7
    , sm__col_start_8
    , sm__col_start_9
    , sm__col_start_auto
    , sm__content_around
    , sm__content_between
    , sm__content_center
    , sm__content_end
    , sm__content_start
    , sm__cursor_auto
    , sm__cursor_default
    , sm__cursor_move
    , sm__cursor_not_allowed
    , sm__cursor_pointer
    , sm__cursor_text
    , sm__cursor_wait
    , sm__duration_100
    , sm__duration_1000
    , sm__duration_150
    , sm__duration_200
    , sm__duration_300
    , sm__duration_500
    , sm__duration_700
    , sm__duration_75
    , sm__ease_in
    , sm__ease_in_out
    , sm__ease_linear
    , sm__ease_out
    , sm__fill_current
    , sm__fixed
    , sm__flex
    , sm__flex_1
    , sm__flex_auto
    , sm__flex_col
    , sm__flex_col_reverse
    , sm__flex_grow
    , sm__flex_grow_0
    , sm__flex_initial
    , sm__flex_no_wrap
    , sm__flex_none
    , sm__flex_row
    , sm__flex_row_reverse
    , sm__flex_shrink
    , sm__flex_shrink_0
    , sm__flex_wrap
    , sm__flex_wrap_reverse
    , sm__float_left
    , sm__float_none
    , sm__float_right
    , sm__focus__bg_black
    , sm__focus__bg_blue_100
    , sm__focus__bg_blue_200
    , sm__focus__bg_blue_300
    , sm__focus__bg_blue_400
    , sm__focus__bg_blue_500
    , sm__focus__bg_blue_600
    , sm__focus__bg_blue_700
    , sm__focus__bg_blue_800
    , sm__focus__bg_blue_900
    , sm__focus__bg_gray_100
    , sm__focus__bg_gray_200
    , sm__focus__bg_gray_300
    , sm__focus__bg_gray_400
    , sm__focus__bg_gray_500
    , sm__focus__bg_gray_600
    , sm__focus__bg_gray_700
    , sm__focus__bg_gray_800
    , sm__focus__bg_gray_900
    , sm__focus__bg_green_100
    , sm__focus__bg_green_200
    , sm__focus__bg_green_300
    , sm__focus__bg_green_400
    , sm__focus__bg_green_500
    , sm__focus__bg_green_600
    , sm__focus__bg_green_700
    , sm__focus__bg_green_800
    , sm__focus__bg_green_900
    , sm__focus__bg_indigo_100
    , sm__focus__bg_indigo_200
    , sm__focus__bg_indigo_300
    , sm__focus__bg_indigo_400
    , sm__focus__bg_indigo_500
    , sm__focus__bg_indigo_600
    , sm__focus__bg_indigo_700
    , sm__focus__bg_indigo_800
    , sm__focus__bg_indigo_900
    , sm__focus__bg_orange_100
    , sm__focus__bg_orange_200
    , sm__focus__bg_orange_300
    , sm__focus__bg_orange_400
    , sm__focus__bg_orange_500
    , sm__focus__bg_orange_600
    , sm__focus__bg_orange_700
    , sm__focus__bg_orange_800
    , sm__focus__bg_orange_900
    , sm__focus__bg_pink_100
    , sm__focus__bg_pink_200
    , sm__focus__bg_pink_300
    , sm__focus__bg_pink_400
    , sm__focus__bg_pink_500
    , sm__focus__bg_pink_600
    , sm__focus__bg_pink_700
    , sm__focus__bg_pink_800
    , sm__focus__bg_pink_900
    , sm__focus__bg_purple_100
    , sm__focus__bg_purple_200
    , sm__focus__bg_purple_300
    , sm__focus__bg_purple_400
    , sm__focus__bg_purple_500
    , sm__focus__bg_purple_600
    , sm__focus__bg_purple_700
    , sm__focus__bg_purple_800
    , sm__focus__bg_purple_900
    , sm__focus__bg_red_100
    , sm__focus__bg_red_200
    , sm__focus__bg_red_300
    , sm__focus__bg_red_400
    , sm__focus__bg_red_500
    , sm__focus__bg_red_600
    , sm__focus__bg_red_700
    , sm__focus__bg_red_800
    , sm__focus__bg_red_900
    , sm__focus__bg_teal_100
    , sm__focus__bg_teal_200
    , sm__focus__bg_teal_300
    , sm__focus__bg_teal_400
    , sm__focus__bg_teal_500
    , sm__focus__bg_teal_600
    , sm__focus__bg_teal_700
    , sm__focus__bg_teal_800
    , sm__focus__bg_teal_900
    , sm__focus__bg_transparent
    , sm__focus__bg_white
    , sm__focus__bg_yellow_100
    , sm__focus__bg_yellow_200
    , sm__focus__bg_yellow_300
    , sm__focus__bg_yellow_400
    , sm__focus__bg_yellow_500
    , sm__focus__bg_yellow_600
    , sm__focus__bg_yellow_700
    , sm__focus__bg_yellow_800
    , sm__focus__bg_yellow_900
    , sm__focus__border_black
    , sm__focus__border_blue_100
    , sm__focus__border_blue_200
    , sm__focus__border_blue_300
    , sm__focus__border_blue_400
    , sm__focus__border_blue_500
    , sm__focus__border_blue_600
    , sm__focus__border_blue_700
    , sm__focus__border_blue_800
    , sm__focus__border_blue_900
    , sm__focus__border_gray_100
    , sm__focus__border_gray_200
    , sm__focus__border_gray_300
    , sm__focus__border_gray_400
    , sm__focus__border_gray_500
    , sm__focus__border_gray_600
    , sm__focus__border_gray_700
    , sm__focus__border_gray_800
    , sm__focus__border_gray_900
    , sm__focus__border_green_100
    , sm__focus__border_green_200
    , sm__focus__border_green_300
    , sm__focus__border_green_400
    , sm__focus__border_green_500
    , sm__focus__border_green_600
    , sm__focus__border_green_700
    , sm__focus__border_green_800
    , sm__focus__border_green_900
    , sm__focus__border_indigo_100
    , sm__focus__border_indigo_200
    , sm__focus__border_indigo_300
    , sm__focus__border_indigo_400
    , sm__focus__border_indigo_500
    , sm__focus__border_indigo_600
    , sm__focus__border_indigo_700
    , sm__focus__border_indigo_800
    , sm__focus__border_indigo_900
    , sm__focus__border_orange_100
    , sm__focus__border_orange_200
    , sm__focus__border_orange_300
    , sm__focus__border_orange_400
    , sm__focus__border_orange_500
    , sm__focus__border_orange_600
    , sm__focus__border_orange_700
    , sm__focus__border_orange_800
    , sm__focus__border_orange_900
    , sm__focus__border_pink_100
    , sm__focus__border_pink_200
    , sm__focus__border_pink_300
    , sm__focus__border_pink_400
    , sm__focus__border_pink_500
    , sm__focus__border_pink_600
    , sm__focus__border_pink_700
    , sm__focus__border_pink_800
    , sm__focus__border_pink_900
    , sm__focus__border_purple_100
    , sm__focus__border_purple_200
    , sm__focus__border_purple_300
    , sm__focus__border_purple_400
    , sm__focus__border_purple_500
    , sm__focus__border_purple_600
    , sm__focus__border_purple_700
    , sm__focus__border_purple_800
    , sm__focus__border_purple_900
    , sm__focus__border_red_100
    , sm__focus__border_red_200
    , sm__focus__border_red_300
    , sm__focus__border_red_400
    , sm__focus__border_red_500
    , sm__focus__border_red_600
    , sm__focus__border_red_700
    , sm__focus__border_red_800
    , sm__focus__border_red_900
    , sm__focus__border_teal_100
    , sm__focus__border_teal_200
    , sm__focus__border_teal_300
    , sm__focus__border_teal_400
    , sm__focus__border_teal_500
    , sm__focus__border_teal_600
    , sm__focus__border_teal_700
    , sm__focus__border_teal_800
    , sm__focus__border_teal_900
    , sm__focus__border_transparent
    , sm__focus__border_white
    , sm__focus__border_yellow_100
    , sm__focus__border_yellow_200
    , sm__focus__border_yellow_300
    , sm__focus__border_yellow_400
    , sm__focus__border_yellow_500
    , sm__focus__border_yellow_600
    , sm__focus__border_yellow_700
    , sm__focus__border_yellow_800
    , sm__focus__border_yellow_900
    , sm__focus__font_black
    , sm__focus__font_bold
    , sm__focus__font_extrabold
    , sm__focus__font_hairline
    , sm__focus__font_light
    , sm__focus__font_medium
    , sm__focus__font_normal
    , sm__focus__font_semibold
    , sm__focus__font_thin
    , sm__focus__line_through
    , sm__focus__neg_rotate_180
    , sm__focus__neg_rotate_45
    , sm__focus__neg_rotate_90
    , sm__focus__neg_skew_x_12
    , sm__focus__neg_skew_x_3
    , sm__focus__neg_skew_x_6
    , sm__focus__neg_skew_y_12
    , sm__focus__neg_skew_y_3
    , sm__focus__neg_skew_y_6
    , sm__focus__neg_translate_x_1
    , sm__focus__neg_translate_x_10
    , sm__focus__neg_translate_x_12
    , sm__focus__neg_translate_x_16
    , sm__focus__neg_translate_x_1over2
    , sm__focus__neg_translate_x_2
    , sm__focus__neg_translate_x_20
    , sm__focus__neg_translate_x_24
    , sm__focus__neg_translate_x_3
    , sm__focus__neg_translate_x_32
    , sm__focus__neg_translate_x_4
    , sm__focus__neg_translate_x_40
    , sm__focus__neg_translate_x_48
    , sm__focus__neg_translate_x_5
    , sm__focus__neg_translate_x_56
    , sm__focus__neg_translate_x_6
    , sm__focus__neg_translate_x_64
    , sm__focus__neg_translate_x_8
    , sm__focus__neg_translate_x_full
    , sm__focus__neg_translate_x_px
    , sm__focus__neg_translate_y_1
    , sm__focus__neg_translate_y_10
    , sm__focus__neg_translate_y_12
    , sm__focus__neg_translate_y_16
    , sm__focus__neg_translate_y_1over2
    , sm__focus__neg_translate_y_2
    , sm__focus__neg_translate_y_20
    , sm__focus__neg_translate_y_24
    , sm__focus__neg_translate_y_3
    , sm__focus__neg_translate_y_32
    , sm__focus__neg_translate_y_4
    , sm__focus__neg_translate_y_40
    , sm__focus__neg_translate_y_48
    , sm__focus__neg_translate_y_5
    , sm__focus__neg_translate_y_56
    , sm__focus__neg_translate_y_6
    , sm__focus__neg_translate_y_64
    , sm__focus__neg_translate_y_8
    , sm__focus__neg_translate_y_full
    , sm__focus__neg_translate_y_px
    , sm__focus__no_underline
    , sm__focus__not_sr_only
    , sm__focus__opacity_0
    , sm__focus__opacity_100
    , sm__focus__opacity_25
    , sm__focus__opacity_50
    , sm__focus__opacity_75
    , sm__focus__outline_none
    , sm__focus__placeholder_black__focus
    , sm__focus__placeholder_blue_100__focus
    , sm__focus__placeholder_blue_200__focus
    , sm__focus__placeholder_blue_300__focus
    , sm__focus__placeholder_blue_400__focus
    , sm__focus__placeholder_blue_500__focus
    , sm__focus__placeholder_blue_600__focus
    , sm__focus__placeholder_blue_700__focus
    , sm__focus__placeholder_blue_800__focus
    , sm__focus__placeholder_blue_900__focus
    , sm__focus__placeholder_gray_100__focus
    , sm__focus__placeholder_gray_200__focus
    , sm__focus__placeholder_gray_300__focus
    , sm__focus__placeholder_gray_400__focus
    , sm__focus__placeholder_gray_500__focus
    , sm__focus__placeholder_gray_600__focus
    , sm__focus__placeholder_gray_700__focus
    , sm__focus__placeholder_gray_800__focus
    , sm__focus__placeholder_gray_900__focus
    , sm__focus__placeholder_green_100__focus
    , sm__focus__placeholder_green_200__focus
    , sm__focus__placeholder_green_300__focus
    , sm__focus__placeholder_green_400__focus
    , sm__focus__placeholder_green_500__focus
    , sm__focus__placeholder_green_600__focus
    , sm__focus__placeholder_green_700__focus
    , sm__focus__placeholder_green_800__focus
    , sm__focus__placeholder_green_900__focus
    , sm__focus__placeholder_indigo_100__focus
    , sm__focus__placeholder_indigo_200__focus
    , sm__focus__placeholder_indigo_300__focus
    , sm__focus__placeholder_indigo_400__focus
    , sm__focus__placeholder_indigo_500__focus
    , sm__focus__placeholder_indigo_600__focus
    , sm__focus__placeholder_indigo_700__focus
    , sm__focus__placeholder_indigo_800__focus
    , sm__focus__placeholder_indigo_900__focus
    , sm__focus__placeholder_orange_100__focus
    , sm__focus__placeholder_orange_200__focus
    , sm__focus__placeholder_orange_300__focus
    , sm__focus__placeholder_orange_400__focus
    , sm__focus__placeholder_orange_500__focus
    , sm__focus__placeholder_orange_600__focus
    , sm__focus__placeholder_orange_700__focus
    , sm__focus__placeholder_orange_800__focus
    , sm__focus__placeholder_orange_900__focus
    , sm__focus__placeholder_pink_100__focus
    , sm__focus__placeholder_pink_200__focus
    , sm__focus__placeholder_pink_300__focus
    , sm__focus__placeholder_pink_400__focus
    , sm__focus__placeholder_pink_500__focus
    , sm__focus__placeholder_pink_600__focus
    , sm__focus__placeholder_pink_700__focus
    , sm__focus__placeholder_pink_800__focus
    , sm__focus__placeholder_pink_900__focus
    , sm__focus__placeholder_purple_100__focus
    , sm__focus__placeholder_purple_200__focus
    , sm__focus__placeholder_purple_300__focus
    , sm__focus__placeholder_purple_400__focus
    , sm__focus__placeholder_purple_500__focus
    , sm__focus__placeholder_purple_600__focus
    , sm__focus__placeholder_purple_700__focus
    , sm__focus__placeholder_purple_800__focus
    , sm__focus__placeholder_purple_900__focus
    , sm__focus__placeholder_red_100__focus
    , sm__focus__placeholder_red_200__focus
    , sm__focus__placeholder_red_300__focus
    , sm__focus__placeholder_red_400__focus
    , sm__focus__placeholder_red_500__focus
    , sm__focus__placeholder_red_600__focus
    , sm__focus__placeholder_red_700__focus
    , sm__focus__placeholder_red_800__focus
    , sm__focus__placeholder_red_900__focus
    , sm__focus__placeholder_teal_100__focus
    , sm__focus__placeholder_teal_200__focus
    , sm__focus__placeholder_teal_300__focus
    , sm__focus__placeholder_teal_400__focus
    , sm__focus__placeholder_teal_500__focus
    , sm__focus__placeholder_teal_600__focus
    , sm__focus__placeholder_teal_700__focus
    , sm__focus__placeholder_teal_800__focus
    , sm__focus__placeholder_teal_900__focus
    , sm__focus__placeholder_transparent__focus
    , sm__focus__placeholder_white__focus
    , sm__focus__placeholder_yellow_100__focus
    , sm__focus__placeholder_yellow_200__focus
    , sm__focus__placeholder_yellow_300__focus
    , sm__focus__placeholder_yellow_400__focus
    , sm__focus__placeholder_yellow_500__focus
    , sm__focus__placeholder_yellow_600__focus
    , sm__focus__placeholder_yellow_700__focus
    , sm__focus__placeholder_yellow_800__focus
    , sm__focus__placeholder_yellow_900__focus
    , sm__focus__rotate_0
    , sm__focus__rotate_180
    , sm__focus__rotate_45
    , sm__focus__rotate_90
    , sm__focus__scale_0
    , sm__focus__scale_100
    , sm__focus__scale_105
    , sm__focus__scale_110
    , sm__focus__scale_125
    , sm__focus__scale_150
    , sm__focus__scale_50
    , sm__focus__scale_75
    , sm__focus__scale_90
    , sm__focus__scale_95
    , sm__focus__scale_x_0
    , sm__focus__scale_x_100
    , sm__focus__scale_x_105
    , sm__focus__scale_x_110
    , sm__focus__scale_x_125
    , sm__focus__scale_x_150
    , sm__focus__scale_x_50
    , sm__focus__scale_x_75
    , sm__focus__scale_x_90
    , sm__focus__scale_x_95
    , sm__focus__scale_y_0
    , sm__focus__scale_y_100
    , sm__focus__scale_y_105
    , sm__focus__scale_y_110
    , sm__focus__scale_y_125
    , sm__focus__scale_y_150
    , sm__focus__scale_y_50
    , sm__focus__scale_y_75
    , sm__focus__scale_y_90
    , sm__focus__scale_y_95
    , sm__focus__shadow
    , sm__focus__shadow_2xl
    , sm__focus__shadow_inner
    , sm__focus__shadow_lg
    , sm__focus__shadow_md
    , sm__focus__shadow_none
    , sm__focus__shadow_outline
    , sm__focus__shadow_sm
    , sm__focus__shadow_xl
    , sm__focus__shadow_xs
    , sm__focus__skew_x_0
    , sm__focus__skew_x_12
    , sm__focus__skew_x_3
    , sm__focus__skew_x_6
    , sm__focus__skew_y_0
    , sm__focus__skew_y_12
    , sm__focus__skew_y_3
    , sm__focus__skew_y_6
    , sm__focus__sr_only
    , sm__focus__text_black
    , sm__focus__text_blue_100
    , sm__focus__text_blue_200
    , sm__focus__text_blue_300
    , sm__focus__text_blue_400
    , sm__focus__text_blue_500
    , sm__focus__text_blue_600
    , sm__focus__text_blue_700
    , sm__focus__text_blue_800
    , sm__focus__text_blue_900
    , sm__focus__text_gray_100
    , sm__focus__text_gray_200
    , sm__focus__text_gray_300
    , sm__focus__text_gray_400
    , sm__focus__text_gray_500
    , sm__focus__text_gray_600
    , sm__focus__text_gray_700
    , sm__focus__text_gray_800
    , sm__focus__text_gray_900
    , sm__focus__text_green_100
    , sm__focus__text_green_200
    , sm__focus__text_green_300
    , sm__focus__text_green_400
    , sm__focus__text_green_500
    , sm__focus__text_green_600
    , sm__focus__text_green_700
    , sm__focus__text_green_800
    , sm__focus__text_green_900
    , sm__focus__text_indigo_100
    , sm__focus__text_indigo_200
    , sm__focus__text_indigo_300
    , sm__focus__text_indigo_400
    , sm__focus__text_indigo_500
    , sm__focus__text_indigo_600
    , sm__focus__text_indigo_700
    , sm__focus__text_indigo_800
    , sm__focus__text_indigo_900
    , sm__focus__text_orange_100
    , sm__focus__text_orange_200
    , sm__focus__text_orange_300
    , sm__focus__text_orange_400
    , sm__focus__text_orange_500
    , sm__focus__text_orange_600
    , sm__focus__text_orange_700
    , sm__focus__text_orange_800
    , sm__focus__text_orange_900
    , sm__focus__text_pink_100
    , sm__focus__text_pink_200
    , sm__focus__text_pink_300
    , sm__focus__text_pink_400
    , sm__focus__text_pink_500
    , sm__focus__text_pink_600
    , sm__focus__text_pink_700
    , sm__focus__text_pink_800
    , sm__focus__text_pink_900
    , sm__focus__text_purple_100
    , sm__focus__text_purple_200
    , sm__focus__text_purple_300
    , sm__focus__text_purple_400
    , sm__focus__text_purple_500
    , sm__focus__text_purple_600
    , sm__focus__text_purple_700
    , sm__focus__text_purple_800
    , sm__focus__text_purple_900
    , sm__focus__text_red_100
    , sm__focus__text_red_200
    , sm__focus__text_red_300
    , sm__focus__text_red_400
    , sm__focus__text_red_500
    , sm__focus__text_red_600
    , sm__focus__text_red_700
    , sm__focus__text_red_800
    , sm__focus__text_red_900
    , sm__focus__text_teal_100
    , sm__focus__text_teal_200
    , sm__focus__text_teal_300
    , sm__focus__text_teal_400
    , sm__focus__text_teal_500
    , sm__focus__text_teal_600
    , sm__focus__text_teal_700
    , sm__focus__text_teal_800
    , sm__focus__text_teal_900
    , sm__focus__text_transparent
    , sm__focus__text_white
    , sm__focus__text_yellow_100
    , sm__focus__text_yellow_200
    , sm__focus__text_yellow_300
    , sm__focus__text_yellow_400
    , sm__focus__text_yellow_500
    , sm__focus__text_yellow_600
    , sm__focus__text_yellow_700
    , sm__focus__text_yellow_800
    , sm__focus__text_yellow_900
    , sm__focus__translate_x_0
    , sm__focus__translate_x_1
    , sm__focus__translate_x_10
    , sm__focus__translate_x_12
    , sm__focus__translate_x_16
    , sm__focus__translate_x_1over2
    , sm__focus__translate_x_2
    , sm__focus__translate_x_20
    , sm__focus__translate_x_24
    , sm__focus__translate_x_3
    , sm__focus__translate_x_32
    , sm__focus__translate_x_4
    , sm__focus__translate_x_40
    , sm__focus__translate_x_48
    , sm__focus__translate_x_5
    , sm__focus__translate_x_56
    , sm__focus__translate_x_6
    , sm__focus__translate_x_64
    , sm__focus__translate_x_8
    , sm__focus__translate_x_full
    , sm__focus__translate_x_px
    , sm__focus__translate_y_0
    , sm__focus__translate_y_1
    , sm__focus__translate_y_10
    , sm__focus__translate_y_12
    , sm__focus__translate_y_16
    , sm__focus__translate_y_1over2
    , sm__focus__translate_y_2
    , sm__focus__translate_y_20
    , sm__focus__translate_y_24
    , sm__focus__translate_y_3
    , sm__focus__translate_y_32
    , sm__focus__translate_y_4
    , sm__focus__translate_y_40
    , sm__focus__translate_y_48
    , sm__focus__translate_y_5
    , sm__focus__translate_y_56
    , sm__focus__translate_y_6
    , sm__focus__translate_y_64
    , sm__focus__translate_y_8
    , sm__focus__translate_y_full
    , sm__focus__translate_y_px
    , sm__focus__underline
    , sm__font_black
    , sm__font_bold
    , sm__font_extrabold
    , sm__font_hairline
    , sm__font_light
    , sm__font_medium
    , sm__font_mono
    , sm__font_normal
    , sm__font_sans
    , sm__font_semibold
    , sm__font_serif
    , sm__font_thin
    , sm__gap_0
    , sm__gap_1
    , sm__gap_10
    , sm__gap_12
    , sm__gap_16
    , sm__gap_2
    , sm__gap_20
    , sm__gap_24
    , sm__gap_3
    , sm__gap_32
    , sm__gap_4
    , sm__gap_40
    , sm__gap_48
    , sm__gap_5
    , sm__gap_56
    , sm__gap_6
    , sm__gap_64
    , sm__gap_8
    , sm__gap_px
    , sm__grid
    , sm__grid_cols_1
    , sm__grid_cols_10
    , sm__grid_cols_11
    , sm__grid_cols_12
    , sm__grid_cols_2
    , sm__grid_cols_3
    , sm__grid_cols_4
    , sm__grid_cols_5
    , sm__grid_cols_6
    , sm__grid_cols_7
    , sm__grid_cols_8
    , sm__grid_cols_9
    , sm__grid_cols_none
    , sm__grid_flow_col
    , sm__grid_flow_col_dense
    , sm__grid_flow_row
    , sm__grid_flow_row_dense
    , sm__grid_rows_1
    , sm__grid_rows_2
    , sm__grid_rows_3
    , sm__grid_rows_4
    , sm__grid_rows_5
    , sm__grid_rows_6
    , sm__grid_rows_none
    , sm__h_0
    , sm__h_1
    , sm__h_10
    , sm__h_12
    , sm__h_16
    , sm__h_2
    , sm__h_20
    , sm__h_24
    , sm__h_3
    , sm__h_32
    , sm__h_4
    , sm__h_40
    , sm__h_48
    , sm__h_5
    , sm__h_56
    , sm__h_6
    , sm__h_64
    , sm__h_8
    , sm__h_auto
    , sm__h_full
    , sm__h_px
    , sm__h_screen
    , sm__hidden
    , sm__hover__bg_black
    , sm__hover__bg_blue_100
    , sm__hover__bg_blue_200
    , sm__hover__bg_blue_300
    , sm__hover__bg_blue_400
    , sm__hover__bg_blue_500
    , sm__hover__bg_blue_600
    , sm__hover__bg_blue_700
    , sm__hover__bg_blue_800
    , sm__hover__bg_blue_900
    , sm__hover__bg_gray_100
    , sm__hover__bg_gray_200
    , sm__hover__bg_gray_300
    , sm__hover__bg_gray_400
    , sm__hover__bg_gray_500
    , sm__hover__bg_gray_600
    , sm__hover__bg_gray_700
    , sm__hover__bg_gray_800
    , sm__hover__bg_gray_900
    , sm__hover__bg_green_100
    , sm__hover__bg_green_200
    , sm__hover__bg_green_300
    , sm__hover__bg_green_400
    , sm__hover__bg_green_500
    , sm__hover__bg_green_600
    , sm__hover__bg_green_700
    , sm__hover__bg_green_800
    , sm__hover__bg_green_900
    , sm__hover__bg_indigo_100
    , sm__hover__bg_indigo_200
    , sm__hover__bg_indigo_300
    , sm__hover__bg_indigo_400
    , sm__hover__bg_indigo_500
    , sm__hover__bg_indigo_600
    , sm__hover__bg_indigo_700
    , sm__hover__bg_indigo_800
    , sm__hover__bg_indigo_900
    , sm__hover__bg_orange_100
    , sm__hover__bg_orange_200
    , sm__hover__bg_orange_300
    , sm__hover__bg_orange_400
    , sm__hover__bg_orange_500
    , sm__hover__bg_orange_600
    , sm__hover__bg_orange_700
    , sm__hover__bg_orange_800
    , sm__hover__bg_orange_900
    , sm__hover__bg_pink_100
    , sm__hover__bg_pink_200
    , sm__hover__bg_pink_300
    , sm__hover__bg_pink_400
    , sm__hover__bg_pink_500
    , sm__hover__bg_pink_600
    , sm__hover__bg_pink_700
    , sm__hover__bg_pink_800
    , sm__hover__bg_pink_900
    , sm__hover__bg_purple_100
    , sm__hover__bg_purple_200
    , sm__hover__bg_purple_300
    , sm__hover__bg_purple_400
    , sm__hover__bg_purple_500
    , sm__hover__bg_purple_600
    , sm__hover__bg_purple_700
    , sm__hover__bg_purple_800
    , sm__hover__bg_purple_900
    , sm__hover__bg_red_100
    , sm__hover__bg_red_200
    , sm__hover__bg_red_300
    , sm__hover__bg_red_400
    , sm__hover__bg_red_500
    , sm__hover__bg_red_600
    , sm__hover__bg_red_700
    , sm__hover__bg_red_800
    , sm__hover__bg_red_900
    , sm__hover__bg_teal_100
    , sm__hover__bg_teal_200
    , sm__hover__bg_teal_300
    , sm__hover__bg_teal_400
    , sm__hover__bg_teal_500
    , sm__hover__bg_teal_600
    , sm__hover__bg_teal_700
    , sm__hover__bg_teal_800
    , sm__hover__bg_teal_900
    , sm__hover__bg_transparent
    , sm__hover__bg_white
    , sm__hover__bg_yellow_100
    , sm__hover__bg_yellow_200
    , sm__hover__bg_yellow_300
    , sm__hover__bg_yellow_400
    , sm__hover__bg_yellow_500
    , sm__hover__bg_yellow_600
    , sm__hover__bg_yellow_700
    , sm__hover__bg_yellow_800
    , sm__hover__bg_yellow_900
    , sm__hover__border_black
    , sm__hover__border_blue_100
    , sm__hover__border_blue_200
    , sm__hover__border_blue_300
    , sm__hover__border_blue_400
    , sm__hover__border_blue_500
    , sm__hover__border_blue_600
    , sm__hover__border_blue_700
    , sm__hover__border_blue_800
    , sm__hover__border_blue_900
    , sm__hover__border_gray_100
    , sm__hover__border_gray_200
    , sm__hover__border_gray_300
    , sm__hover__border_gray_400
    , sm__hover__border_gray_500
    , sm__hover__border_gray_600
    , sm__hover__border_gray_700
    , sm__hover__border_gray_800
    , sm__hover__border_gray_900
    , sm__hover__border_green_100
    , sm__hover__border_green_200
    , sm__hover__border_green_300
    , sm__hover__border_green_400
    , sm__hover__border_green_500
    , sm__hover__border_green_600
    , sm__hover__border_green_700
    , sm__hover__border_green_800
    , sm__hover__border_green_900
    , sm__hover__border_indigo_100
    , sm__hover__border_indigo_200
    , sm__hover__border_indigo_300
    , sm__hover__border_indigo_400
    , sm__hover__border_indigo_500
    , sm__hover__border_indigo_600
    , sm__hover__border_indigo_700
    , sm__hover__border_indigo_800
    , sm__hover__border_indigo_900
    , sm__hover__border_orange_100
    , sm__hover__border_orange_200
    , sm__hover__border_orange_300
    , sm__hover__border_orange_400
    , sm__hover__border_orange_500
    , sm__hover__border_orange_600
    , sm__hover__border_orange_700
    , sm__hover__border_orange_800
    , sm__hover__border_orange_900
    , sm__hover__border_pink_100
    , sm__hover__border_pink_200
    , sm__hover__border_pink_300
    , sm__hover__border_pink_400
    , sm__hover__border_pink_500
    , sm__hover__border_pink_600
    , sm__hover__border_pink_700
    , sm__hover__border_pink_800
    , sm__hover__border_pink_900
    , sm__hover__border_purple_100
    , sm__hover__border_purple_200
    , sm__hover__border_purple_300
    , sm__hover__border_purple_400
    , sm__hover__border_purple_500
    , sm__hover__border_purple_600
    , sm__hover__border_purple_700
    , sm__hover__border_purple_800
    , sm__hover__border_purple_900
    , sm__hover__border_red_100
    , sm__hover__border_red_200
    , sm__hover__border_red_300
    , sm__hover__border_red_400
    , sm__hover__border_red_500
    , sm__hover__border_red_600
    , sm__hover__border_red_700
    , sm__hover__border_red_800
    , sm__hover__border_red_900
    , sm__hover__border_teal_100
    , sm__hover__border_teal_200
    , sm__hover__border_teal_300
    , sm__hover__border_teal_400
    , sm__hover__border_teal_500
    , sm__hover__border_teal_600
    , sm__hover__border_teal_700
    , sm__hover__border_teal_800
    , sm__hover__border_teal_900
    , sm__hover__border_transparent
    , sm__hover__border_white
    , sm__hover__border_yellow_100
    , sm__hover__border_yellow_200
    , sm__hover__border_yellow_300
    , sm__hover__border_yellow_400
    , sm__hover__border_yellow_500
    , sm__hover__border_yellow_600
    , sm__hover__border_yellow_700
    , sm__hover__border_yellow_800
    , sm__hover__border_yellow_900
    , sm__hover__font_black
    , sm__hover__font_bold
    , sm__hover__font_extrabold
    , sm__hover__font_hairline
    , sm__hover__font_light
    , sm__hover__font_medium
    , sm__hover__font_normal
    , sm__hover__font_semibold
    , sm__hover__font_thin
    , sm__hover__line_through
    , sm__hover__neg_rotate_180
    , sm__hover__neg_rotate_45
    , sm__hover__neg_rotate_90
    , sm__hover__neg_skew_x_12
    , sm__hover__neg_skew_x_3
    , sm__hover__neg_skew_x_6
    , sm__hover__neg_skew_y_12
    , sm__hover__neg_skew_y_3
    , sm__hover__neg_skew_y_6
    , sm__hover__neg_translate_x_1
    , sm__hover__neg_translate_x_10
    , sm__hover__neg_translate_x_12
    , sm__hover__neg_translate_x_16
    , sm__hover__neg_translate_x_1over2
    , sm__hover__neg_translate_x_2
    , sm__hover__neg_translate_x_20
    , sm__hover__neg_translate_x_24
    , sm__hover__neg_translate_x_3
    , sm__hover__neg_translate_x_32
    , sm__hover__neg_translate_x_4
    , sm__hover__neg_translate_x_40
    , sm__hover__neg_translate_x_48
    , sm__hover__neg_translate_x_5
    , sm__hover__neg_translate_x_56
    , sm__hover__neg_translate_x_6
    , sm__hover__neg_translate_x_64
    , sm__hover__neg_translate_x_8
    , sm__hover__neg_translate_x_full
    , sm__hover__neg_translate_x_px
    , sm__hover__neg_translate_y_1
    , sm__hover__neg_translate_y_10
    , sm__hover__neg_translate_y_12
    , sm__hover__neg_translate_y_16
    , sm__hover__neg_translate_y_1over2
    , sm__hover__neg_translate_y_2
    , sm__hover__neg_translate_y_20
    , sm__hover__neg_translate_y_24
    , sm__hover__neg_translate_y_3
    , sm__hover__neg_translate_y_32
    , sm__hover__neg_translate_y_4
    , sm__hover__neg_translate_y_40
    , sm__hover__neg_translate_y_48
    , sm__hover__neg_translate_y_5
    , sm__hover__neg_translate_y_56
    , sm__hover__neg_translate_y_6
    , sm__hover__neg_translate_y_64
    , sm__hover__neg_translate_y_8
    , sm__hover__neg_translate_y_full
    , sm__hover__neg_translate_y_px
    , sm__hover__no_underline
    , sm__hover__opacity_0
    , sm__hover__opacity_100
    , sm__hover__opacity_25
    , sm__hover__opacity_50
    , sm__hover__opacity_75
    , sm__hover__rotate_0
    , sm__hover__rotate_180
    , sm__hover__rotate_45
    , sm__hover__rotate_90
    , sm__hover__scale_0
    , sm__hover__scale_100
    , sm__hover__scale_105
    , sm__hover__scale_110
    , sm__hover__scale_125
    , sm__hover__scale_150
    , sm__hover__scale_50
    , sm__hover__scale_75
    , sm__hover__scale_90
    , sm__hover__scale_95
    , sm__hover__scale_x_0
    , sm__hover__scale_x_100
    , sm__hover__scale_x_105
    , sm__hover__scale_x_110
    , sm__hover__scale_x_125
    , sm__hover__scale_x_150
    , sm__hover__scale_x_50
    , sm__hover__scale_x_75
    , sm__hover__scale_x_90
    , sm__hover__scale_x_95
    , sm__hover__scale_y_0
    , sm__hover__scale_y_100
    , sm__hover__scale_y_105
    , sm__hover__scale_y_110
    , sm__hover__scale_y_125
    , sm__hover__scale_y_150
    , sm__hover__scale_y_50
    , sm__hover__scale_y_75
    , sm__hover__scale_y_90
    , sm__hover__scale_y_95
    , sm__hover__shadow
    , sm__hover__shadow_2xl
    , sm__hover__shadow_inner
    , sm__hover__shadow_lg
    , sm__hover__shadow_md
    , sm__hover__shadow_none
    , sm__hover__shadow_outline
    , sm__hover__shadow_sm
    , sm__hover__shadow_xl
    , sm__hover__shadow_xs
    , sm__hover__skew_x_0
    , sm__hover__skew_x_12
    , sm__hover__skew_x_3
    , sm__hover__skew_x_6
    , sm__hover__skew_y_0
    , sm__hover__skew_y_12
    , sm__hover__skew_y_3
    , sm__hover__skew_y_6
    , sm__hover__text_black
    , sm__hover__text_blue_100
    , sm__hover__text_blue_200
    , sm__hover__text_blue_300
    , sm__hover__text_blue_400
    , sm__hover__text_blue_500
    , sm__hover__text_blue_600
    , sm__hover__text_blue_700
    , sm__hover__text_blue_800
    , sm__hover__text_blue_900
    , sm__hover__text_gray_100
    , sm__hover__text_gray_200
    , sm__hover__text_gray_300
    , sm__hover__text_gray_400
    , sm__hover__text_gray_500
    , sm__hover__text_gray_600
    , sm__hover__text_gray_700
    , sm__hover__text_gray_800
    , sm__hover__text_gray_900
    , sm__hover__text_green_100
    , sm__hover__text_green_200
    , sm__hover__text_green_300
    , sm__hover__text_green_400
    , sm__hover__text_green_500
    , sm__hover__text_green_600
    , sm__hover__text_green_700
    , sm__hover__text_green_800
    , sm__hover__text_green_900
    , sm__hover__text_indigo_100
    , sm__hover__text_indigo_200
    , sm__hover__text_indigo_300
    , sm__hover__text_indigo_400
    , sm__hover__text_indigo_500
    , sm__hover__text_indigo_600
    , sm__hover__text_indigo_700
    , sm__hover__text_indigo_800
    , sm__hover__text_indigo_900
    , sm__hover__text_orange_100
    , sm__hover__text_orange_200
    , sm__hover__text_orange_300
    , sm__hover__text_orange_400
    , sm__hover__text_orange_500
    , sm__hover__text_orange_600
    , sm__hover__text_orange_700
    , sm__hover__text_orange_800
    , sm__hover__text_orange_900
    , sm__hover__text_pink_100
    , sm__hover__text_pink_200
    , sm__hover__text_pink_300
    , sm__hover__text_pink_400
    , sm__hover__text_pink_500
    , sm__hover__text_pink_600
    , sm__hover__text_pink_700
    , sm__hover__text_pink_800
    , sm__hover__text_pink_900
    , sm__hover__text_purple_100
    , sm__hover__text_purple_200
    , sm__hover__text_purple_300
    , sm__hover__text_purple_400
    , sm__hover__text_purple_500
    , sm__hover__text_purple_600
    , sm__hover__text_purple_700
    , sm__hover__text_purple_800
    , sm__hover__text_purple_900
    , sm__hover__text_red_100
    , sm__hover__text_red_200
    , sm__hover__text_red_300
    , sm__hover__text_red_400
    , sm__hover__text_red_500
    , sm__hover__text_red_600
    , sm__hover__text_red_700
    , sm__hover__text_red_800
    , sm__hover__text_red_900
    , sm__hover__text_teal_100
    , sm__hover__text_teal_200
    , sm__hover__text_teal_300
    , sm__hover__text_teal_400
    , sm__hover__text_teal_500
    , sm__hover__text_teal_600
    , sm__hover__text_teal_700
    , sm__hover__text_teal_800
    , sm__hover__text_teal_900
    , sm__hover__text_transparent
    , sm__hover__text_white
    , sm__hover__text_yellow_100
    , sm__hover__text_yellow_200
    , sm__hover__text_yellow_300
    , sm__hover__text_yellow_400
    , sm__hover__text_yellow_500
    , sm__hover__text_yellow_600
    , sm__hover__text_yellow_700
    , sm__hover__text_yellow_800
    , sm__hover__text_yellow_900
    , sm__hover__translate_x_0
    , sm__hover__translate_x_1
    , sm__hover__translate_x_10
    , sm__hover__translate_x_12
    , sm__hover__translate_x_16
    , sm__hover__translate_x_1over2
    , sm__hover__translate_x_2
    , sm__hover__translate_x_20
    , sm__hover__translate_x_24
    , sm__hover__translate_x_3
    , sm__hover__translate_x_32
    , sm__hover__translate_x_4
    , sm__hover__translate_x_40
    , sm__hover__translate_x_48
    , sm__hover__translate_x_5
    , sm__hover__translate_x_56
    , sm__hover__translate_x_6
    , sm__hover__translate_x_64
    , sm__hover__translate_x_8
    , sm__hover__translate_x_full
    , sm__hover__translate_x_px
    , sm__hover__translate_y_0
    , sm__hover__translate_y_1
    , sm__hover__translate_y_10
    , sm__hover__translate_y_12
    , sm__hover__translate_y_16
    , sm__hover__translate_y_1over2
    , sm__hover__translate_y_2
    , sm__hover__translate_y_20
    , sm__hover__translate_y_24
    , sm__hover__translate_y_3
    , sm__hover__translate_y_32
    , sm__hover__translate_y_4
    , sm__hover__translate_y_40
    , sm__hover__translate_y_48
    , sm__hover__translate_y_5
    , sm__hover__translate_y_56
    , sm__hover__translate_y_6
    , sm__hover__translate_y_64
    , sm__hover__translate_y_8
    , sm__hover__translate_y_full
    , sm__hover__translate_y_px
    , sm__hover__underline
    , sm__inline
    , sm__inline_block
    , sm__inline_flex
    , sm__inset_0
    , sm__inset_auto
    , sm__inset_x_0
    , sm__inset_x_auto
    , sm__inset_y_0
    , sm__inset_y_auto
    , sm__invisible
    , sm__italic
    , sm__items_baseline
    , sm__items_center
    , sm__items_end
    , sm__items_start
    , sm__items_stretch
    , sm__justify_around
    , sm__justify_between
    , sm__justify_center
    , sm__justify_end
    , sm__justify_evenly
    , sm__justify_start
    , sm__leading_10
    , sm__leading_3
    , sm__leading_4
    , sm__leading_5
    , sm__leading_6
    , sm__leading_7
    , sm__leading_8
    , sm__leading_9
    , sm__leading_loose
    , sm__leading_none
    , sm__leading_normal
    , sm__leading_relaxed
    , sm__leading_snug
    , sm__leading_tight
    , sm__left_0
    , sm__left_auto
    , sm__line_through
    , sm__list_decimal
    , sm__list_disc
    , sm__list_inside
    , sm__list_none
    , sm__list_outside
    , sm__lowercase
    , sm__m_0
    , sm__m_1
    , sm__m_10
    , sm__m_12
    , sm__m_16
    , sm__m_2
    , sm__m_20
    , sm__m_24
    , sm__m_3
    , sm__m_32
    , sm__m_4
    , sm__m_40
    , sm__m_48
    , sm__m_5
    , sm__m_56
    , sm__m_6
    , sm__m_64
    , sm__m_8
    , sm__m_auto
    , sm__m_px
    , sm__max_h_full
    , sm__max_h_screen
    , sm__max_w_2xl
    , sm__max_w_3xl
    , sm__max_w_4xl
    , sm__max_w_5xl
    , sm__max_w_6xl
    , sm__max_w_full
    , sm__max_w_lg
    , sm__max_w_md
    , sm__max_w_none
    , sm__max_w_screen_lg
    , sm__max_w_screen_md
    , sm__max_w_screen_sm
    , sm__max_w_screen_xl
    , sm__max_w_sm
    , sm__max_w_xl
    , sm__max_w_xs
    , sm__mb_0
    , sm__mb_1
    , sm__mb_10
    , sm__mb_12
    , sm__mb_16
    , sm__mb_2
    , sm__mb_20
    , sm__mb_24
    , sm__mb_3
    , sm__mb_32
    , sm__mb_4
    , sm__mb_40
    , sm__mb_48
    , sm__mb_5
    , sm__mb_56
    , sm__mb_6
    , sm__mb_64
    , sm__mb_8
    , sm__mb_auto
    , sm__mb_px
    , sm__min_h_0
    , sm__min_h_full
    , sm__min_h_screen
    , sm__min_w_0
    , sm__min_w_full
    , sm__ml_0
    , sm__ml_1
    , sm__ml_10
    , sm__ml_12
    , sm__ml_16
    , sm__ml_2
    , sm__ml_20
    , sm__ml_24
    , sm__ml_3
    , sm__ml_32
    , sm__ml_4
    , sm__ml_40
    , sm__ml_48
    , sm__ml_5
    , sm__ml_56
    , sm__ml_6
    , sm__ml_64
    , sm__ml_8
    , sm__ml_auto
    , sm__ml_px
    , sm__mr_0
    , sm__mr_1
    , sm__mr_10
    , sm__mr_12
    , sm__mr_16
    , sm__mr_2
    , sm__mr_20
    , sm__mr_24
    , sm__mr_3
    , sm__mr_32
    , sm__mr_4
    , sm__mr_40
    , sm__mr_48
    , sm__mr_5
    , sm__mr_56
    , sm__mr_6
    , sm__mr_64
    , sm__mr_8
    , sm__mr_auto
    , sm__mr_px
    , sm__mt_0
    , sm__mt_1
    , sm__mt_10
    , sm__mt_12
    , sm__mt_16
    , sm__mt_2
    , sm__mt_20
    , sm__mt_24
    , sm__mt_3
    , sm__mt_32
    , sm__mt_4
    , sm__mt_40
    , sm__mt_48
    , sm__mt_5
    , sm__mt_56
    , sm__mt_6
    , sm__mt_64
    , sm__mt_8
    , sm__mt_auto
    , sm__mt_px
    , sm__mx_0
    , sm__mx_1
    , sm__mx_10
    , sm__mx_12
    , sm__mx_16
    , sm__mx_2
    , sm__mx_20
    , sm__mx_24
    , sm__mx_3
    , sm__mx_32
    , sm__mx_4
    , sm__mx_40
    , sm__mx_48
    , sm__mx_5
    , sm__mx_56
    , sm__mx_6
    , sm__mx_64
    , sm__mx_8
    , sm__mx_auto
    , sm__mx_px
    , sm__my_0
    , sm__my_1
    , sm__my_10
    , sm__my_12
    , sm__my_16
    , sm__my_2
    , sm__my_20
    , sm__my_24
    , sm__my_3
    , sm__my_32
    , sm__my_4
    , sm__my_40
    , sm__my_48
    , sm__my_5
    , sm__my_56
    , sm__my_6
    , sm__my_64
    , sm__my_8
    , sm__my_auto
    , sm__my_px
    , sm__neg_m_1
    , sm__neg_m_10
    , sm__neg_m_12
    , sm__neg_m_16
    , sm__neg_m_2
    , sm__neg_m_20
    , sm__neg_m_24
    , sm__neg_m_3
    , sm__neg_m_32
    , sm__neg_m_4
    , sm__neg_m_40
    , sm__neg_m_48
    , sm__neg_m_5
    , sm__neg_m_56
    , sm__neg_m_6
    , sm__neg_m_64
    , sm__neg_m_8
    , sm__neg_m_px
    , sm__neg_mb_1
    , sm__neg_mb_10
    , sm__neg_mb_12
    , sm__neg_mb_16
    , sm__neg_mb_2
    , sm__neg_mb_20
    , sm__neg_mb_24
    , sm__neg_mb_3
    , sm__neg_mb_32
    , sm__neg_mb_4
    , sm__neg_mb_40
    , sm__neg_mb_48
    , sm__neg_mb_5
    , sm__neg_mb_56
    , sm__neg_mb_6
    , sm__neg_mb_64
    , sm__neg_mb_8
    , sm__neg_mb_px
    , sm__neg_ml_1
    , sm__neg_ml_10
    , sm__neg_ml_12
    , sm__neg_ml_16
    , sm__neg_ml_2
    , sm__neg_ml_20
    , sm__neg_ml_24
    , sm__neg_ml_3
    , sm__neg_ml_32
    , sm__neg_ml_4
    , sm__neg_ml_40
    , sm__neg_ml_48
    , sm__neg_ml_5
    , sm__neg_ml_56
    , sm__neg_ml_6
    , sm__neg_ml_64
    , sm__neg_ml_8
    , sm__neg_ml_px
    , sm__neg_mr_1
    , sm__neg_mr_10
    , sm__neg_mr_12
    , sm__neg_mr_16
    , sm__neg_mr_2
    , sm__neg_mr_20
    , sm__neg_mr_24
    , sm__neg_mr_3
    , sm__neg_mr_32
    , sm__neg_mr_4
    , sm__neg_mr_40
    , sm__neg_mr_48
    , sm__neg_mr_5
    , sm__neg_mr_56
    , sm__neg_mr_6
    , sm__neg_mr_64
    , sm__neg_mr_8
    , sm__neg_mr_px
    , sm__neg_mt_1
    , sm__neg_mt_10
    , sm__neg_mt_12
    , sm__neg_mt_16
    , sm__neg_mt_2
    , sm__neg_mt_20
    , sm__neg_mt_24
    , sm__neg_mt_3
    , sm__neg_mt_32
    , sm__neg_mt_4
    , sm__neg_mt_40
    , sm__neg_mt_48
    , sm__neg_mt_5
    , sm__neg_mt_56
    , sm__neg_mt_6
    , sm__neg_mt_64
    , sm__neg_mt_8
    , sm__neg_mt_px
    , sm__neg_mx_1
    , sm__neg_mx_10
    , sm__neg_mx_12
    , sm__neg_mx_16
    , sm__neg_mx_2
    , sm__neg_mx_20
    , sm__neg_mx_24
    , sm__neg_mx_3
    , sm__neg_mx_32
    , sm__neg_mx_4
    , sm__neg_mx_40
    , sm__neg_mx_48
    , sm__neg_mx_5
    , sm__neg_mx_56
    , sm__neg_mx_6
    , sm__neg_mx_64
    , sm__neg_mx_8
    , sm__neg_mx_px
    , sm__neg_my_1
    , sm__neg_my_10
    , sm__neg_my_12
    , sm__neg_my_16
    , sm__neg_my_2
    , sm__neg_my_20
    , sm__neg_my_24
    , sm__neg_my_3
    , sm__neg_my_32
    , sm__neg_my_4
    , sm__neg_my_40
    , sm__neg_my_48
    , sm__neg_my_5
    , sm__neg_my_56
    , sm__neg_my_6
    , sm__neg_my_64
    , sm__neg_my_8
    , sm__neg_my_px
    , sm__neg_rotate_180
    , sm__neg_rotate_45
    , sm__neg_rotate_90
    , sm__neg_skew_x_12
    , sm__neg_skew_x_3
    , sm__neg_skew_x_6
    , sm__neg_skew_y_12
    , sm__neg_skew_y_3
    , sm__neg_skew_y_6
    , sm__neg_translate_x_1
    , sm__neg_translate_x_10
    , sm__neg_translate_x_12
    , sm__neg_translate_x_16
    , sm__neg_translate_x_1over2
    , sm__neg_translate_x_2
    , sm__neg_translate_x_20
    , sm__neg_translate_x_24
    , sm__neg_translate_x_3
    , sm__neg_translate_x_32
    , sm__neg_translate_x_4
    , sm__neg_translate_x_40
    , sm__neg_translate_x_48
    , sm__neg_translate_x_5
    , sm__neg_translate_x_56
    , sm__neg_translate_x_6
    , sm__neg_translate_x_64
    , sm__neg_translate_x_8
    , sm__neg_translate_x_full
    , sm__neg_translate_x_px
    , sm__neg_translate_y_1
    , sm__neg_translate_y_10
    , sm__neg_translate_y_12
    , sm__neg_translate_y_16
    , sm__neg_translate_y_1over2
    , sm__neg_translate_y_2
    , sm__neg_translate_y_20
    , sm__neg_translate_y_24
    , sm__neg_translate_y_3
    , sm__neg_translate_y_32
    , sm__neg_translate_y_4
    , sm__neg_translate_y_40
    , sm__neg_translate_y_48
    , sm__neg_translate_y_5
    , sm__neg_translate_y_56
    , sm__neg_translate_y_6
    , sm__neg_translate_y_64
    , sm__neg_translate_y_8
    , sm__neg_translate_y_full
    , sm__neg_translate_y_px
    , sm__no_underline
    , sm__normal_case
    , sm__not_italic
    , sm__not_sr_only
    , sm__object_bottom
    , sm__object_center
    , sm__object_contain
    , sm__object_cover
    , sm__object_fill
    , sm__object_left
    , sm__object_left_bottom
    , sm__object_left_top
    , sm__object_none
    , sm__object_right
    , sm__object_right_bottom
    , sm__object_right_top
    , sm__object_scale_down
    , sm__object_top
    , sm__opacity_0
    , sm__opacity_100
    , sm__opacity_25
    , sm__opacity_50
    , sm__opacity_75
    , sm__order_1
    , sm__order_10
    , sm__order_11
    , sm__order_12
    , sm__order_2
    , sm__order_3
    , sm__order_4
    , sm__order_5
    , sm__order_6
    , sm__order_7
    , sm__order_8
    , sm__order_9
    , sm__order_first
    , sm__order_last
    , sm__order_none
    , sm__origin_bottom
    , sm__origin_bottom_left
    , sm__origin_bottom_right
    , sm__origin_center
    , sm__origin_left
    , sm__origin_right
    , sm__origin_top
    , sm__origin_top_left
    , sm__origin_top_right
    , sm__outline_none
    , sm__overflow_auto
    , sm__overflow_hidden
    , sm__overflow_scroll
    , sm__overflow_visible
    , sm__overflow_x_auto
    , sm__overflow_x_hidden
    , sm__overflow_x_scroll
    , sm__overflow_x_visible
    , sm__overflow_y_auto
    , sm__overflow_y_hidden
    , sm__overflow_y_scroll
    , sm__overflow_y_visible
    , sm__p_0
    , sm__p_1
    , sm__p_10
    , sm__p_12
    , sm__p_16
    , sm__p_2
    , sm__p_20
    , sm__p_24
    , sm__p_3
    , sm__p_32
    , sm__p_4
    , sm__p_40
    , sm__p_48
    , sm__p_5
    , sm__p_56
    , sm__p_6
    , sm__p_64
    , sm__p_8
    , sm__p_px
    , sm__pb_0
    , sm__pb_1
    , sm__pb_10
    , sm__pb_12
    , sm__pb_16
    , sm__pb_2
    , sm__pb_20
    , sm__pb_24
    , sm__pb_3
    , sm__pb_32
    , sm__pb_4
    , sm__pb_40
    , sm__pb_48
    , sm__pb_5
    , sm__pb_56
    , sm__pb_6
    , sm__pb_64
    , sm__pb_8
    , sm__pb_px
    , sm__pl_0
    , sm__pl_1
    , sm__pl_10
    , sm__pl_12
    , sm__pl_16
    , sm__pl_2
    , sm__pl_20
    , sm__pl_24
    , sm__pl_3
    , sm__pl_32
    , sm__pl_4
    , sm__pl_40
    , sm__pl_48
    , sm__pl_5
    , sm__pl_56
    , sm__pl_6
    , sm__pl_64
    , sm__pl_8
    , sm__pl_px
    , sm__placeholder_black
    , sm__placeholder_blue_100
    , sm__placeholder_blue_200
    , sm__placeholder_blue_300
    , sm__placeholder_blue_400
    , sm__placeholder_blue_500
    , sm__placeholder_blue_600
    , sm__placeholder_blue_700
    , sm__placeholder_blue_800
    , sm__placeholder_blue_900
    , sm__placeholder_gray_100
    , sm__placeholder_gray_200
    , sm__placeholder_gray_300
    , sm__placeholder_gray_400
    , sm__placeholder_gray_500
    , sm__placeholder_gray_600
    , sm__placeholder_gray_700
    , sm__placeholder_gray_800
    , sm__placeholder_gray_900
    , sm__placeholder_green_100
    , sm__placeholder_green_200
    , sm__placeholder_green_300
    , sm__placeholder_green_400
    , sm__placeholder_green_500
    , sm__placeholder_green_600
    , sm__placeholder_green_700
    , sm__placeholder_green_800
    , sm__placeholder_green_900
    , sm__placeholder_indigo_100
    , sm__placeholder_indigo_200
    , sm__placeholder_indigo_300
    , sm__placeholder_indigo_400
    , sm__placeholder_indigo_500
    , sm__placeholder_indigo_600
    , sm__placeholder_indigo_700
    , sm__placeholder_indigo_800
    , sm__placeholder_indigo_900
    , sm__placeholder_orange_100
    , sm__placeholder_orange_200
    , sm__placeholder_orange_300
    , sm__placeholder_orange_400
    , sm__placeholder_orange_500
    , sm__placeholder_orange_600
    , sm__placeholder_orange_700
    , sm__placeholder_orange_800
    , sm__placeholder_orange_900
    , sm__placeholder_pink_100
    , sm__placeholder_pink_200
    , sm__placeholder_pink_300
    , sm__placeholder_pink_400
    , sm__placeholder_pink_500
    , sm__placeholder_pink_600
    , sm__placeholder_pink_700
    , sm__placeholder_pink_800
    , sm__placeholder_pink_900
    , sm__placeholder_purple_100
    , sm__placeholder_purple_200
    , sm__placeholder_purple_300
    , sm__placeholder_purple_400
    , sm__placeholder_purple_500
    , sm__placeholder_purple_600
    , sm__placeholder_purple_700
    , sm__placeholder_purple_800
    , sm__placeholder_purple_900
    , sm__placeholder_red_100
    , sm__placeholder_red_200
    , sm__placeholder_red_300
    , sm__placeholder_red_400
    , sm__placeholder_red_500
    , sm__placeholder_red_600
    , sm__placeholder_red_700
    , sm__placeholder_red_800
    , sm__placeholder_red_900
    , sm__placeholder_teal_100
    , sm__placeholder_teal_200
    , sm__placeholder_teal_300
    , sm__placeholder_teal_400
    , sm__placeholder_teal_500
    , sm__placeholder_teal_600
    , sm__placeholder_teal_700
    , sm__placeholder_teal_800
    , sm__placeholder_teal_900
    , sm__placeholder_transparent
    , sm__placeholder_white
    , sm__placeholder_yellow_100
    , sm__placeholder_yellow_200
    , sm__placeholder_yellow_300
    , sm__placeholder_yellow_400
    , sm__placeholder_yellow_500
    , sm__placeholder_yellow_600
    , sm__placeholder_yellow_700
    , sm__placeholder_yellow_800
    , sm__placeholder_yellow_900
    , sm__pointer_events_auto
    , sm__pointer_events_none
    , sm__pr_0
    , sm__pr_1
    , sm__pr_10
    , sm__pr_12
    , sm__pr_16
    , sm__pr_2
    , sm__pr_20
    , sm__pr_24
    , sm__pr_3
    , sm__pr_32
    , sm__pr_4
    , sm__pr_40
    , sm__pr_48
    , sm__pr_5
    , sm__pr_56
    , sm__pr_6
    , sm__pr_64
    , sm__pr_8
    , sm__pr_px
    , sm__pt_0
    , sm__pt_1
    , sm__pt_10
    , sm__pt_12
    , sm__pt_16
    , sm__pt_2
    , sm__pt_20
    , sm__pt_24
    , sm__pt_3
    , sm__pt_32
    , sm__pt_4
    , sm__pt_40
    , sm__pt_48
    , sm__pt_5
    , sm__pt_56
    , sm__pt_6
    , sm__pt_64
    , sm__pt_8
    , sm__pt_px
    , sm__px_0
    , sm__px_1
    , sm__px_10
    , sm__px_12
    , sm__px_16
    , sm__px_2
    , sm__px_20
    , sm__px_24
    , sm__px_3
    , sm__px_32
    , sm__px_4
    , sm__px_40
    , sm__px_48
    , sm__px_5
    , sm__px_56
    , sm__px_6
    , sm__px_64
    , sm__px_8
    , sm__px_px
    , sm__py_0
    , sm__py_1
    , sm__py_10
    , sm__py_12
    , sm__py_16
    , sm__py_2
    , sm__py_20
    , sm__py_24
    , sm__py_3
    , sm__py_32
    , sm__py_4
    , sm__py_40
    , sm__py_48
    , sm__py_5
    , sm__py_56
    , sm__py_6
    , sm__py_64
    , sm__py_8
    , sm__py_px
    , sm__relative
    , sm__resize
    , sm__resize_none
    , sm__resize_x
    , sm__resize_y
    , sm__right_0
    , sm__right_auto
    , sm__rotate_0
    , sm__rotate_180
    , sm__rotate_45
    , sm__rotate_90
    , sm__rounded
    , sm__rounded_b
    , sm__rounded_b_full
    , sm__rounded_b_lg
    , sm__rounded_b_md
    , sm__rounded_b_none
    , sm__rounded_b_sm
    , sm__rounded_bl
    , sm__rounded_bl_full
    , sm__rounded_bl_lg
    , sm__rounded_bl_md
    , sm__rounded_bl_none
    , sm__rounded_bl_sm
    , sm__rounded_br
    , sm__rounded_br_full
    , sm__rounded_br_lg
    , sm__rounded_br_md
    , sm__rounded_br_none
    , sm__rounded_br_sm
    , sm__rounded_full
    , sm__rounded_l
    , sm__rounded_l_full
    , sm__rounded_l_lg
    , sm__rounded_l_md
    , sm__rounded_l_none
    , sm__rounded_l_sm
    , sm__rounded_lg
    , sm__rounded_md
    , sm__rounded_none
    , sm__rounded_r
    , sm__rounded_r_full
    , sm__rounded_r_lg
    , sm__rounded_r_md
    , sm__rounded_r_none
    , sm__rounded_r_sm
    , sm__rounded_sm
    , sm__rounded_t
    , sm__rounded_t_full
    , sm__rounded_t_lg
    , sm__rounded_t_md
    , sm__rounded_t_none
    , sm__rounded_t_sm
    , sm__rounded_tl
    , sm__rounded_tl_full
    , sm__rounded_tl_lg
    , sm__rounded_tl_md
    , sm__rounded_tl_none
    , sm__rounded_tl_sm
    , sm__rounded_tr
    , sm__rounded_tr_full
    , sm__rounded_tr_lg
    , sm__rounded_tr_md
    , sm__rounded_tr_none
    , sm__rounded_tr_sm
    , sm__row_auto
    , sm__row_end_1
    , sm__row_end_2
    , sm__row_end_3
    , sm__row_end_4
    , sm__row_end_5
    , sm__row_end_6
    , sm__row_end_7
    , sm__row_end_auto
    , sm__row_gap_0
    , sm__row_gap_1
    , sm__row_gap_10
    , sm__row_gap_12
    , sm__row_gap_16
    , sm__row_gap_2
    , sm__row_gap_20
    , sm__row_gap_24
    , sm__row_gap_3
    , sm__row_gap_32
    , sm__row_gap_4
    , sm__row_gap_40
    , sm__row_gap_48
    , sm__row_gap_5
    , sm__row_gap_56
    , sm__row_gap_6
    , sm__row_gap_64
    , sm__row_gap_8
    , sm__row_gap_px
    , sm__row_span_1
    , sm__row_span_2
    , sm__row_span_3
    , sm__row_span_4
    , sm__row_span_5
    , sm__row_span_6
    , sm__row_start_1
    , sm__row_start_2
    , sm__row_start_3
    , sm__row_start_4
    , sm__row_start_5
    , sm__row_start_6
    , sm__row_start_7
    , sm__row_start_auto
    , sm__scale_0
    , sm__scale_100
    , sm__scale_105
    , sm__scale_110
    , sm__scale_125
    , sm__scale_150
    , sm__scale_50
    , sm__scale_75
    , sm__scale_90
    , sm__scale_95
    , sm__scale_x_0
    , sm__scale_x_100
    , sm__scale_x_105
    , sm__scale_x_110
    , sm__scale_x_125
    , sm__scale_x_150
    , sm__scale_x_50
    , sm__scale_x_75
    , sm__scale_x_90
    , sm__scale_x_95
    , sm__scale_y_0
    , sm__scale_y_100
    , sm__scale_y_105
    , sm__scale_y_110
    , sm__scale_y_125
    , sm__scale_y_150
    , sm__scale_y_50
    , sm__scale_y_75
    , sm__scale_y_90
    , sm__scale_y_95
    , sm__scrolling_auto
    , sm__scrolling_touch
    , sm__select_all
    , sm__select_auto
    , sm__select_none
    , sm__select_text
    , sm__self_auto
    , sm__self_center
    , sm__self_end
    , sm__self_start
    , sm__self_stretch
    , sm__shadow
    , sm__shadow_2xl
    , sm__shadow_inner
    , sm__shadow_lg
    , sm__shadow_md
    , sm__shadow_none
    , sm__shadow_outline
    , sm__shadow_sm
    , sm__shadow_xl
    , sm__shadow_xs
    , sm__skew_x_0
    , sm__skew_x_12
    , sm__skew_x_3
    , sm__skew_x_6
    , sm__skew_y_0
    , sm__skew_y_12
    , sm__skew_y_3
    , sm__skew_y_6
    , sm__sr_only
    , sm__static
    , sm__sticky
    , sm__stroke_0
    , sm__stroke_1
    , sm__stroke_2
    , sm__stroke_current
    , sm__subpixel_antialiased
    , sm__table
    , sm__table_auto
    , sm__table_caption
    , sm__table_cell
    , sm__table_column
    , sm__table_column_group
    , sm__table_fixed
    , sm__table_footer_group
    , sm__table_header_group
    , sm__table_row
    , sm__table_row_group
    , sm__text_2xl
    , sm__text_3xl
    , sm__text_4xl
    , sm__text_5xl
    , sm__text_6xl
    , sm__text_base
    , sm__text_black
    , sm__text_blue_100
    , sm__text_blue_200
    , sm__text_blue_300
    , sm__text_blue_400
    , sm__text_blue_500
    , sm__text_blue_600
    , sm__text_blue_700
    , sm__text_blue_800
    , sm__text_blue_900
    , sm__text_center
    , sm__text_gray_100
    , sm__text_gray_200
    , sm__text_gray_300
    , sm__text_gray_400
    , sm__text_gray_500
    , sm__text_gray_600
    , sm__text_gray_700
    , sm__text_gray_800
    , sm__text_gray_900
    , sm__text_green_100
    , sm__text_green_200
    , sm__text_green_300
    , sm__text_green_400
    , sm__text_green_500
    , sm__text_green_600
    , sm__text_green_700
    , sm__text_green_800
    , sm__text_green_900
    , sm__text_indigo_100
    , sm__text_indigo_200
    , sm__text_indigo_300
    , sm__text_indigo_400
    , sm__text_indigo_500
    , sm__text_indigo_600
    , sm__text_indigo_700
    , sm__text_indigo_800
    , sm__text_indigo_900
    , sm__text_justify
    , sm__text_left
    , sm__text_lg
    , sm__text_orange_100
    , sm__text_orange_200
    , sm__text_orange_300
    , sm__text_orange_400
    , sm__text_orange_500
    , sm__text_orange_600
    , sm__text_orange_700
    , sm__text_orange_800
    , sm__text_orange_900
    , sm__text_pink_100
    , sm__text_pink_200
    , sm__text_pink_300
    , sm__text_pink_400
    , sm__text_pink_500
    , sm__text_pink_600
    , sm__text_pink_700
    , sm__text_pink_800
    , sm__text_pink_900
    , sm__text_purple_100
    , sm__text_purple_200
    , sm__text_purple_300
    , sm__text_purple_400
    , sm__text_purple_500
    , sm__text_purple_600
    , sm__text_purple_700
    , sm__text_purple_800
    , sm__text_purple_900
    , sm__text_red_100
    , sm__text_red_200
    , sm__text_red_300
    , sm__text_red_400
    , sm__text_red_500
    , sm__text_red_600
    , sm__text_red_700
    , sm__text_red_800
    , sm__text_red_900
    , sm__text_right
    , sm__text_sm
    , sm__text_teal_100
    , sm__text_teal_200
    , sm__text_teal_300
    , sm__text_teal_400
    , sm__text_teal_500
    , sm__text_teal_600
    , sm__text_teal_700
    , sm__text_teal_800
    , sm__text_teal_900
    , sm__text_transparent
    , sm__text_white
    , sm__text_xl
    , sm__text_xs
    , sm__text_yellow_100
    , sm__text_yellow_200
    , sm__text_yellow_300
    , sm__text_yellow_400
    , sm__text_yellow_500
    , sm__text_yellow_600
    , sm__text_yellow_700
    , sm__text_yellow_800
    , sm__text_yellow_900
    , sm__top_0
    , sm__top_auto
    , sm__tracking_normal
    , sm__tracking_tight
    , sm__tracking_tighter
    , sm__tracking_wide
    , sm__tracking_wider
    , sm__tracking_widest
    , sm__transform
    , sm__transform_none
    , sm__transition
    , sm__transition_all
    , sm__transition_colors
    , sm__transition_none
    , sm__transition_opacity
    , sm__transition_shadow
    , sm__transition_transform
    , sm__translate_x_0
    , sm__translate_x_1
    , sm__translate_x_10
    , sm__translate_x_12
    , sm__translate_x_16
    , sm__translate_x_1over2
    , sm__translate_x_2
    , sm__translate_x_20
    , sm__translate_x_24
    , sm__translate_x_3
    , sm__translate_x_32
    , sm__translate_x_4
    , sm__translate_x_40
    , sm__translate_x_48
    , sm__translate_x_5
    , sm__translate_x_56
    , sm__translate_x_6
    , sm__translate_x_64
    , sm__translate_x_8
    , sm__translate_x_full
    , sm__translate_x_px
    , sm__translate_y_0
    , sm__translate_y_1
    , sm__translate_y_10
    , sm__translate_y_12
    , sm__translate_y_16
    , sm__translate_y_1over2
    , sm__translate_y_2
    , sm__translate_y_20
    , sm__translate_y_24
    , sm__translate_y_3
    , sm__translate_y_32
    , sm__translate_y_4
    , sm__translate_y_40
    , sm__translate_y_48
    , sm__translate_y_5
    , sm__translate_y_56
    , sm__translate_y_6
    , sm__translate_y_64
    , sm__translate_y_8
    , sm__translate_y_full
    , sm__translate_y_px
    , sm__truncate
    , sm__underline
    , sm__uppercase
    , sm__visible
    , sm__w_0
    , sm__w_1
    , sm__w_10
    , sm__w_10over12
    , sm__w_11over12
    , sm__w_12
    , sm__w_16
    , sm__w_1over12
    , sm__w_1over2
    , sm__w_1over3
    , sm__w_1over4
    , sm__w_1over5
    , sm__w_1over6
    , sm__w_2
    , sm__w_20
    , sm__w_24
    , sm__w_2over12
    , sm__w_2over3
    , sm__w_2over4
    , sm__w_2over5
    , sm__w_2over6
    , sm__w_3
    , sm__w_32
    , sm__w_3over12
    , sm__w_3over4
    , sm__w_3over5
    , sm__w_3over6
    , sm__w_4
    , sm__w_40
    , sm__w_48
    , sm__w_4over12
    , sm__w_4over5
    , sm__w_4over6
    , sm__w_5
    , sm__w_56
    , sm__w_5over12
    , sm__w_5over6
    , sm__w_6
    , sm__w_64
    , sm__w_6over12
    , sm__w_7over12
    , sm__w_8
    , sm__w_8over12
    , sm__w_9over12
    , sm__w_auto
    , sm__w_full
    , sm__w_px
    , sm__w_screen
    , sm__whitespace_no_wrap
    , sm__whitespace_normal
    , sm__whitespace_pre
    , sm__whitespace_pre_line
    , sm__whitespace_pre_wrap
    , sm__z_0
    , sm__z_10
    , sm__z_20
    , sm__z_30
    , sm__z_40
    , sm__z_50
    , sm__z_auto
    , sr_only
    , static
    , sticky
    , stroke_0
    , stroke_1
    , stroke_2
    , stroke_current
    , subpixel_antialiased
    , table
    , table_auto
    , table_caption
    , table_cell
    , table_column
    , table_column_group
    , table_fixed
    , table_footer_group
    , table_header_group
    , table_row
    , table_row_group
    , text_2xl
    , text_3xl
    , text_4xl
    , text_5xl
    , text_6xl
    , text_base
    , text_black
    , text_blue_100
    , text_blue_200
    , text_blue_300
    , text_blue_400
    , text_blue_500
    , text_blue_600
    , text_blue_700
    , text_blue_800
    , text_blue_900
    , text_center
    , text_gray_100
    , text_gray_200
    , text_gray_300
    , text_gray_400
    , text_gray_500
    , text_gray_600
    , text_gray_700
    , text_gray_800
    , text_gray_900
    , text_green_100
    , text_green_200
    , text_green_300
    , text_green_400
    , text_green_500
    , text_green_600
    , text_green_700
    , text_green_800
    , text_green_900
    , text_indigo_100
    , text_indigo_200
    , text_indigo_300
    , text_indigo_400
    , text_indigo_500
    , text_indigo_600
    , text_indigo_700
    , text_indigo_800
    , text_indigo_900
    , text_justify
    , text_left
    , text_lg
    , text_orange_100
    , text_orange_200
    , text_orange_300
    , text_orange_400
    , text_orange_500
    , text_orange_600
    , text_orange_700
    , text_orange_800
    , text_orange_900
    , text_pink_100
    , text_pink_200
    , text_pink_300
    , text_pink_400
    , text_pink_500
    , text_pink_600
    , text_pink_700
    , text_pink_800
    , text_pink_900
    , text_purple_100
    , text_purple_200
    , text_purple_300
    , text_purple_400
    , text_purple_500
    , text_purple_600
    , text_purple_700
    , text_purple_800
    , text_purple_900
    , text_red_100
    , text_red_200
    , text_red_300
    , text_red_400
    , text_red_500
    , text_red_600
    , text_red_700
    , text_red_800
    , text_red_900
    , text_right
    , text_sm
    , text_teal_100
    , text_teal_200
    , text_teal_300
    , text_teal_400
    , text_teal_500
    , text_teal_600
    , text_teal_700
    , text_teal_800
    , text_teal_900
    , text_transparent
    , text_white
    , text_xl
    , text_xs
    , text_yellow_100
    , text_yellow_200
    , text_yellow_300
    , text_yellow_400
    , text_yellow_500
    , text_yellow_600
    , text_yellow_700
    , text_yellow_800
    , text_yellow_900
    , top_0
    , top_auto
    , tracking_normal
    , tracking_tight
    , tracking_tighter
    , tracking_wide
    , tracking_wider
    , tracking_widest
    , transform
    , transform_none
    , transition
    , transition_all
    , transition_colors
    , transition_none
    , transition_opacity
    , transition_shadow
    , transition_transform
    , translate_x_0
    , translate_x_1
    , translate_x_10
    , translate_x_12
    , translate_x_16
    , translate_x_1over2
    , translate_x_2
    , translate_x_20
    , translate_x_24
    , translate_x_3
    , translate_x_32
    , translate_x_4
    , translate_x_40
    , translate_x_48
    , translate_x_5
    , translate_x_56
    , translate_x_6
    , translate_x_64
    , translate_x_8
    , translate_x_full
    , translate_x_px
    , translate_y_0
    , translate_y_1
    , translate_y_10
    , translate_y_12
    , translate_y_16
    , translate_y_1over2
    , translate_y_2
    , translate_y_20
    , translate_y_24
    , translate_y_3
    , translate_y_32
    , translate_y_4
    , translate_y_40
    , translate_y_48
    , translate_y_5
    , translate_y_56
    , translate_y_6
    , translate_y_64
    , translate_y_8
    , translate_y_full
    , translate_y_px
    , truncate
    , underline
    , uppercase
    , visible
    , w_0
    , w_1
    , w_10
    , w_10over12
    , w_11over12
    , w_12
    , w_16
    , w_1over12
    , w_1over2
    , w_1over3
    , w_1over4
    , w_1over5
    , w_1over6
    , w_2
    , w_20
    , w_24
    , w_2over12
    , w_2over3
    , w_2over4
    , w_2over5
    , w_2over6
    , w_3
    , w_32
    , w_3over12
    , w_3over4
    , w_3over5
    , w_3over6
    , w_4
    , w_40
    , w_48
    , w_4over12
    , w_4over5
    , w_4over6
    , w_5
    , w_56
    , w_5over12
    , w_5over6
    , w_6
    , w_64
    , w_6over12
    , w_7over12
    , w_8
    , w_8over12
    , w_9over12
    , w_auto
    , w_full
    , w_px
    , w_screen
    , whitespace_no_wrap
    , whitespace_normal
    , whitespace_pre
    , whitespace_pre_line
    , whitespace_pre_wrap
    , xl__absolute
    , xl__align_baseline
    , xl__align_bottom
    , xl__align_middle
    , xl__align_text_bottom
    , xl__align_text_top
    , xl__align_top
    , xl__antialiased
    , xl__appearance_none
    , xl__bg_auto
    , xl__bg_black
    , xl__bg_blue_100
    , xl__bg_blue_200
    , xl__bg_blue_300
    , xl__bg_blue_400
    , xl__bg_blue_500
    , xl__bg_blue_600
    , xl__bg_blue_700
    , xl__bg_blue_800
    , xl__bg_blue_900
    , xl__bg_bottom
    , xl__bg_center
    , xl__bg_contain
    , xl__bg_cover
    , xl__bg_fixed
    , xl__bg_gray_100
    , xl__bg_gray_200
    , xl__bg_gray_300
    , xl__bg_gray_400
    , xl__bg_gray_500
    , xl__bg_gray_600
    , xl__bg_gray_700
    , xl__bg_gray_800
    , xl__bg_gray_900
    , xl__bg_green_100
    , xl__bg_green_200
    , xl__bg_green_300
    , xl__bg_green_400
    , xl__bg_green_500
    , xl__bg_green_600
    , xl__bg_green_700
    , xl__bg_green_800
    , xl__bg_green_900
    , xl__bg_indigo_100
    , xl__bg_indigo_200
    , xl__bg_indigo_300
    , xl__bg_indigo_400
    , xl__bg_indigo_500
    , xl__bg_indigo_600
    , xl__bg_indigo_700
    , xl__bg_indigo_800
    , xl__bg_indigo_900
    , xl__bg_left
    , xl__bg_left_bottom
    , xl__bg_left_top
    , xl__bg_local
    , xl__bg_no_repeat
    , xl__bg_orange_100
    , xl__bg_orange_200
    , xl__bg_orange_300
    , xl__bg_orange_400
    , xl__bg_orange_500
    , xl__bg_orange_600
    , xl__bg_orange_700
    , xl__bg_orange_800
    , xl__bg_orange_900
    , xl__bg_pink_100
    , xl__bg_pink_200
    , xl__bg_pink_300
    , xl__bg_pink_400
    , xl__bg_pink_500
    , xl__bg_pink_600
    , xl__bg_pink_700
    , xl__bg_pink_800
    , xl__bg_pink_900
    , xl__bg_purple_100
    , xl__bg_purple_200
    , xl__bg_purple_300
    , xl__bg_purple_400
    , xl__bg_purple_500
    , xl__bg_purple_600
    , xl__bg_purple_700
    , xl__bg_purple_800
    , xl__bg_purple_900
    , xl__bg_red_100
    , xl__bg_red_200
    , xl__bg_red_300
    , xl__bg_red_400
    , xl__bg_red_500
    , xl__bg_red_600
    , xl__bg_red_700
    , xl__bg_red_800
    , xl__bg_red_900
    , xl__bg_repeat
    , xl__bg_repeat_round
    , xl__bg_repeat_space
    , xl__bg_repeat_x
    , xl__bg_repeat_y
    , xl__bg_right
    , xl__bg_right_bottom
    , xl__bg_right_top
    , xl__bg_scroll
    , xl__bg_teal_100
    , xl__bg_teal_200
    , xl__bg_teal_300
    , xl__bg_teal_400
    , xl__bg_teal_500
    , xl__bg_teal_600
    , xl__bg_teal_700
    , xl__bg_teal_800
    , xl__bg_teal_900
    , xl__bg_top
    , xl__bg_transparent
    , xl__bg_white
    , xl__bg_yellow_100
    , xl__bg_yellow_200
    , xl__bg_yellow_300
    , xl__bg_yellow_400
    , xl__bg_yellow_500
    , xl__bg_yellow_600
    , xl__bg_yellow_700
    , xl__bg_yellow_800
    , xl__bg_yellow_900
    , xl__block
    , xl__border
    , xl__border_0
    , xl__border_2
    , xl__border_4
    , xl__border_8
    , xl__border_b
    , xl__border_b_0
    , xl__border_b_2
    , xl__border_b_4
    , xl__border_b_8
    , xl__border_black
    , xl__border_blue_100
    , xl__border_blue_200
    , xl__border_blue_300
    , xl__border_blue_400
    , xl__border_blue_500
    , xl__border_blue_600
    , xl__border_blue_700
    , xl__border_blue_800
    , xl__border_blue_900
    , xl__border_collapse
    , xl__border_dashed
    , xl__border_dotted
    , xl__border_double
    , xl__border_gray_100
    , xl__border_gray_200
    , xl__border_gray_300
    , xl__border_gray_400
    , xl__border_gray_500
    , xl__border_gray_600
    , xl__border_gray_700
    , xl__border_gray_800
    , xl__border_gray_900
    , xl__border_green_100
    , xl__border_green_200
    , xl__border_green_300
    , xl__border_green_400
    , xl__border_green_500
    , xl__border_green_600
    , xl__border_green_700
    , xl__border_green_800
    , xl__border_green_900
    , xl__border_indigo_100
    , xl__border_indigo_200
    , xl__border_indigo_300
    , xl__border_indigo_400
    , xl__border_indigo_500
    , xl__border_indigo_600
    , xl__border_indigo_700
    , xl__border_indigo_800
    , xl__border_indigo_900
    , xl__border_l
    , xl__border_l_0
    , xl__border_l_2
    , xl__border_l_4
    , xl__border_l_8
    , xl__border_none
    , xl__border_orange_100
    , xl__border_orange_200
    , xl__border_orange_300
    , xl__border_orange_400
    , xl__border_orange_500
    , xl__border_orange_600
    , xl__border_orange_700
    , xl__border_orange_800
    , xl__border_orange_900
    , xl__border_pink_100
    , xl__border_pink_200
    , xl__border_pink_300
    , xl__border_pink_400
    , xl__border_pink_500
    , xl__border_pink_600
    , xl__border_pink_700
    , xl__border_pink_800
    , xl__border_pink_900
    , xl__border_purple_100
    , xl__border_purple_200
    , xl__border_purple_300
    , xl__border_purple_400
    , xl__border_purple_500
    , xl__border_purple_600
    , xl__border_purple_700
    , xl__border_purple_800
    , xl__border_purple_900
    , xl__border_r
    , xl__border_r_0
    , xl__border_r_2
    , xl__border_r_4
    , xl__border_r_8
    , xl__border_red_100
    , xl__border_red_200
    , xl__border_red_300
    , xl__border_red_400
    , xl__border_red_500
    , xl__border_red_600
    , xl__border_red_700
    , xl__border_red_800
    , xl__border_red_900
    , xl__border_separate
    , xl__border_solid
    , xl__border_t
    , xl__border_t_0
    , xl__border_t_2
    , xl__border_t_4
    , xl__border_t_8
    , xl__border_teal_100
    , xl__border_teal_200
    , xl__border_teal_300
    , xl__border_teal_400
    , xl__border_teal_500
    , xl__border_teal_600
    , xl__border_teal_700
    , xl__border_teal_800
    , xl__border_teal_900
    , xl__border_transparent
    , xl__border_white
    , xl__border_yellow_100
    , xl__border_yellow_200
    , xl__border_yellow_300
    , xl__border_yellow_400
    , xl__border_yellow_500
    , xl__border_yellow_600
    , xl__border_yellow_700
    , xl__border_yellow_800
    , xl__border_yellow_900
    , xl__bottom_0
    , xl__bottom_auto
    , xl__box_border
    , xl__box_content
    , xl__break_all
    , xl__break_normal
    , xl__break_words
    , xl__capitalize
    , xl__clear_both
    , xl__clear_left
    , xl__clear_right
    , xl__clearfix__after
    , xl__col_auto
    , xl__col_end_1
    , xl__col_end_10
    , xl__col_end_11
    , xl__col_end_12
    , xl__col_end_13
    , xl__col_end_2
    , xl__col_end_3
    , xl__col_end_4
    , xl__col_end_5
    , xl__col_end_6
    , xl__col_end_7
    , xl__col_end_8
    , xl__col_end_9
    , xl__col_end_auto
    , xl__col_gap_0
    , xl__col_gap_1
    , xl__col_gap_10
    , xl__col_gap_12
    , xl__col_gap_16
    , xl__col_gap_2
    , xl__col_gap_20
    , xl__col_gap_24
    , xl__col_gap_3
    , xl__col_gap_32
    , xl__col_gap_4
    , xl__col_gap_40
    , xl__col_gap_48
    , xl__col_gap_5
    , xl__col_gap_56
    , xl__col_gap_6
    , xl__col_gap_64
    , xl__col_gap_8
    , xl__col_gap_px
    , xl__col_span_1
    , xl__col_span_10
    , xl__col_span_11
    , xl__col_span_12
    , xl__col_span_2
    , xl__col_span_3
    , xl__col_span_4
    , xl__col_span_5
    , xl__col_span_6
    , xl__col_span_7
    , xl__col_span_8
    , xl__col_span_9
    , xl__col_start_1
    , xl__col_start_10
    , xl__col_start_11
    , xl__col_start_12
    , xl__col_start_13
    , xl__col_start_2
    , xl__col_start_3
    , xl__col_start_4
    , xl__col_start_5
    , xl__col_start_6
    , xl__col_start_7
    , xl__col_start_8
    , xl__col_start_9
    , xl__col_start_auto
    , xl__content_around
    , xl__content_between
    , xl__content_center
    , xl__content_end
    , xl__content_start
    , xl__cursor_auto
    , xl__cursor_default
    , xl__cursor_move
    , xl__cursor_not_allowed
    , xl__cursor_pointer
    , xl__cursor_text
    , xl__cursor_wait
    , xl__duration_100
    , xl__duration_1000
    , xl__duration_150
    , xl__duration_200
    , xl__duration_300
    , xl__duration_500
    , xl__duration_700
    , xl__duration_75
    , xl__ease_in
    , xl__ease_in_out
    , xl__ease_linear
    , xl__ease_out
    , xl__fill_current
    , xl__fixed
    , xl__flex
    , xl__flex_1
    , xl__flex_auto
    , xl__flex_col
    , xl__flex_col_reverse
    , xl__flex_grow
    , xl__flex_grow_0
    , xl__flex_initial
    , xl__flex_no_wrap
    , xl__flex_none
    , xl__flex_row
    , xl__flex_row_reverse
    , xl__flex_shrink
    , xl__flex_shrink_0
    , xl__flex_wrap
    , xl__flex_wrap_reverse
    , xl__float_left
    , xl__float_none
    , xl__float_right
    , xl__focus__bg_black
    , xl__focus__bg_blue_100
    , xl__focus__bg_blue_200
    , xl__focus__bg_blue_300
    , xl__focus__bg_blue_400
    , xl__focus__bg_blue_500
    , xl__focus__bg_blue_600
    , xl__focus__bg_blue_700
    , xl__focus__bg_blue_800
    , xl__focus__bg_blue_900
    , xl__focus__bg_gray_100
    , xl__focus__bg_gray_200
    , xl__focus__bg_gray_300
    , xl__focus__bg_gray_400
    , xl__focus__bg_gray_500
    , xl__focus__bg_gray_600
    , xl__focus__bg_gray_700
    , xl__focus__bg_gray_800
    , xl__focus__bg_gray_900
    , xl__focus__bg_green_100
    , xl__focus__bg_green_200
    , xl__focus__bg_green_300
    , xl__focus__bg_green_400
    , xl__focus__bg_green_500
    , xl__focus__bg_green_600
    , xl__focus__bg_green_700
    , xl__focus__bg_green_800
    , xl__focus__bg_green_900
    , xl__focus__bg_indigo_100
    , xl__focus__bg_indigo_200
    , xl__focus__bg_indigo_300
    , xl__focus__bg_indigo_400
    , xl__focus__bg_indigo_500
    , xl__focus__bg_indigo_600
    , xl__focus__bg_indigo_700
    , xl__focus__bg_indigo_800
    , xl__focus__bg_indigo_900
    , xl__focus__bg_orange_100
    , xl__focus__bg_orange_200
    , xl__focus__bg_orange_300
    , xl__focus__bg_orange_400
    , xl__focus__bg_orange_500
    , xl__focus__bg_orange_600
    , xl__focus__bg_orange_700
    , xl__focus__bg_orange_800
    , xl__focus__bg_orange_900
    , xl__focus__bg_pink_100
    , xl__focus__bg_pink_200
    , xl__focus__bg_pink_300
    , xl__focus__bg_pink_400
    , xl__focus__bg_pink_500
    , xl__focus__bg_pink_600
    , xl__focus__bg_pink_700
    , xl__focus__bg_pink_800
    , xl__focus__bg_pink_900
    , xl__focus__bg_purple_100
    , xl__focus__bg_purple_200
    , xl__focus__bg_purple_300
    , xl__focus__bg_purple_400
    , xl__focus__bg_purple_500
    , xl__focus__bg_purple_600
    , xl__focus__bg_purple_700
    , xl__focus__bg_purple_800
    , xl__focus__bg_purple_900
    , xl__focus__bg_red_100
    , xl__focus__bg_red_200
    , xl__focus__bg_red_300
    , xl__focus__bg_red_400
    , xl__focus__bg_red_500
    , xl__focus__bg_red_600
    , xl__focus__bg_red_700
    , xl__focus__bg_red_800
    , xl__focus__bg_red_900
    , xl__focus__bg_teal_100
    , xl__focus__bg_teal_200
    , xl__focus__bg_teal_300
    , xl__focus__bg_teal_400
    , xl__focus__bg_teal_500
    , xl__focus__bg_teal_600
    , xl__focus__bg_teal_700
    , xl__focus__bg_teal_800
    , xl__focus__bg_teal_900
    , xl__focus__bg_transparent
    , xl__focus__bg_white
    , xl__focus__bg_yellow_100
    , xl__focus__bg_yellow_200
    , xl__focus__bg_yellow_300
    , xl__focus__bg_yellow_400
    , xl__focus__bg_yellow_500
    , xl__focus__bg_yellow_600
    , xl__focus__bg_yellow_700
    , xl__focus__bg_yellow_800
    , xl__focus__bg_yellow_900
    , xl__focus__border_black
    , xl__focus__border_blue_100
    , xl__focus__border_blue_200
    , xl__focus__border_blue_300
    , xl__focus__border_blue_400
    , xl__focus__border_blue_500
    , xl__focus__border_blue_600
    , xl__focus__border_blue_700
    , xl__focus__border_blue_800
    , xl__focus__border_blue_900
    , xl__focus__border_gray_100
    , xl__focus__border_gray_200
    , xl__focus__border_gray_300
    , xl__focus__border_gray_400
    , xl__focus__border_gray_500
    , xl__focus__border_gray_600
    , xl__focus__border_gray_700
    , xl__focus__border_gray_800
    , xl__focus__border_gray_900
    , xl__focus__border_green_100
    , xl__focus__border_green_200
    , xl__focus__border_green_300
    , xl__focus__border_green_400
    , xl__focus__border_green_500
    , xl__focus__border_green_600
    , xl__focus__border_green_700
    , xl__focus__border_green_800
    , xl__focus__border_green_900
    , xl__focus__border_indigo_100
    , xl__focus__border_indigo_200
    , xl__focus__border_indigo_300
    , xl__focus__border_indigo_400
    , xl__focus__border_indigo_500
    , xl__focus__border_indigo_600
    , xl__focus__border_indigo_700
    , xl__focus__border_indigo_800
    , xl__focus__border_indigo_900
    , xl__focus__border_orange_100
    , xl__focus__border_orange_200
    , xl__focus__border_orange_300
    , xl__focus__border_orange_400
    , xl__focus__border_orange_500
    , xl__focus__border_orange_600
    , xl__focus__border_orange_700
    , xl__focus__border_orange_800
    , xl__focus__border_orange_900
    , xl__focus__border_pink_100
    , xl__focus__border_pink_200
    , xl__focus__border_pink_300
    , xl__focus__border_pink_400
    , xl__focus__border_pink_500
    , xl__focus__border_pink_600
    , xl__focus__border_pink_700
    , xl__focus__border_pink_800
    , xl__focus__border_pink_900
    , xl__focus__border_purple_100
    , xl__focus__border_purple_200
    , xl__focus__border_purple_300
    , xl__focus__border_purple_400
    , xl__focus__border_purple_500
    , xl__focus__border_purple_600
    , xl__focus__border_purple_700
    , xl__focus__border_purple_800
    , xl__focus__border_purple_900
    , xl__focus__border_red_100
    , xl__focus__border_red_200
    , xl__focus__border_red_300
    , xl__focus__border_red_400
    , xl__focus__border_red_500
    , xl__focus__border_red_600
    , xl__focus__border_red_700
    , xl__focus__border_red_800
    , xl__focus__border_red_900
    , xl__focus__border_teal_100
    , xl__focus__border_teal_200
    , xl__focus__border_teal_300
    , xl__focus__border_teal_400
    , xl__focus__border_teal_500
    , xl__focus__border_teal_600
    , xl__focus__border_teal_700
    , xl__focus__border_teal_800
    , xl__focus__border_teal_900
    , xl__focus__border_transparent
    , xl__focus__border_white
    , xl__focus__border_yellow_100
    , xl__focus__border_yellow_200
    , xl__focus__border_yellow_300
    , xl__focus__border_yellow_400
    , xl__focus__border_yellow_500
    , xl__focus__border_yellow_600
    , xl__focus__border_yellow_700
    , xl__focus__border_yellow_800
    , xl__focus__border_yellow_900
    , xl__focus__font_black
    , xl__focus__font_bold
    , xl__focus__font_extrabold
    , xl__focus__font_hairline
    , xl__focus__font_light
    , xl__focus__font_medium
    , xl__focus__font_normal
    , xl__focus__font_semibold
    , xl__focus__font_thin
    , xl__focus__line_through
    , xl__focus__neg_rotate_180
    , xl__focus__neg_rotate_45
    , xl__focus__neg_rotate_90
    , xl__focus__neg_skew_x_12
    , xl__focus__neg_skew_x_3
    , xl__focus__neg_skew_x_6
    , xl__focus__neg_skew_y_12
    , xl__focus__neg_skew_y_3
    , xl__focus__neg_skew_y_6
    , xl__focus__neg_translate_x_1
    , xl__focus__neg_translate_x_10
    , xl__focus__neg_translate_x_12
    , xl__focus__neg_translate_x_16
    , xl__focus__neg_translate_x_1over2
    , xl__focus__neg_translate_x_2
    , xl__focus__neg_translate_x_20
    , xl__focus__neg_translate_x_24
    , xl__focus__neg_translate_x_3
    , xl__focus__neg_translate_x_32
    , xl__focus__neg_translate_x_4
    , xl__focus__neg_translate_x_40
    , xl__focus__neg_translate_x_48
    , xl__focus__neg_translate_x_5
    , xl__focus__neg_translate_x_56
    , xl__focus__neg_translate_x_6
    , xl__focus__neg_translate_x_64
    , xl__focus__neg_translate_x_8
    , xl__focus__neg_translate_x_full
    , xl__focus__neg_translate_x_px
    , xl__focus__neg_translate_y_1
    , xl__focus__neg_translate_y_10
    , xl__focus__neg_translate_y_12
    , xl__focus__neg_translate_y_16
    , xl__focus__neg_translate_y_1over2
    , xl__focus__neg_translate_y_2
    , xl__focus__neg_translate_y_20
    , xl__focus__neg_translate_y_24
    , xl__focus__neg_translate_y_3
    , xl__focus__neg_translate_y_32
    , xl__focus__neg_translate_y_4
    , xl__focus__neg_translate_y_40
    , xl__focus__neg_translate_y_48
    , xl__focus__neg_translate_y_5
    , xl__focus__neg_translate_y_56
    , xl__focus__neg_translate_y_6
    , xl__focus__neg_translate_y_64
    , xl__focus__neg_translate_y_8
    , xl__focus__neg_translate_y_full
    , xl__focus__neg_translate_y_px
    , xl__focus__no_underline
    , xl__focus__not_sr_only
    , xl__focus__opacity_0
    , xl__focus__opacity_100
    , xl__focus__opacity_25
    , xl__focus__opacity_50
    , xl__focus__opacity_75
    , xl__focus__outline_none
    , xl__focus__placeholder_black__focus
    , xl__focus__placeholder_blue_100__focus
    , xl__focus__placeholder_blue_200__focus
    , xl__focus__placeholder_blue_300__focus
    , xl__focus__placeholder_blue_400__focus
    , xl__focus__placeholder_blue_500__focus
    , xl__focus__placeholder_blue_600__focus
    , xl__focus__placeholder_blue_700__focus
    , xl__focus__placeholder_blue_800__focus
    , xl__focus__placeholder_blue_900__focus
    , xl__focus__placeholder_gray_100__focus
    , xl__focus__placeholder_gray_200__focus
    , xl__focus__placeholder_gray_300__focus
    , xl__focus__placeholder_gray_400__focus
    , xl__focus__placeholder_gray_500__focus
    , xl__focus__placeholder_gray_600__focus
    , xl__focus__placeholder_gray_700__focus
    , xl__focus__placeholder_gray_800__focus
    , xl__focus__placeholder_gray_900__focus
    , xl__focus__placeholder_green_100__focus
    , xl__focus__placeholder_green_200__focus
    , xl__focus__placeholder_green_300__focus
    , xl__focus__placeholder_green_400__focus
    , xl__focus__placeholder_green_500__focus
    , xl__focus__placeholder_green_600__focus
    , xl__focus__placeholder_green_700__focus
    , xl__focus__placeholder_green_800__focus
    , xl__focus__placeholder_green_900__focus
    , xl__focus__placeholder_indigo_100__focus
    , xl__focus__placeholder_indigo_200__focus
    , xl__focus__placeholder_indigo_300__focus
    , xl__focus__placeholder_indigo_400__focus
    , xl__focus__placeholder_indigo_500__focus
    , xl__focus__placeholder_indigo_600__focus
    , xl__focus__placeholder_indigo_700__focus
    , xl__focus__placeholder_indigo_800__focus
    , xl__focus__placeholder_indigo_900__focus
    , xl__focus__placeholder_orange_100__focus
    , xl__focus__placeholder_orange_200__focus
    , xl__focus__placeholder_orange_300__focus
    , xl__focus__placeholder_orange_400__focus
    , xl__focus__placeholder_orange_500__focus
    , xl__focus__placeholder_orange_600__focus
    , xl__focus__placeholder_orange_700__focus
    , xl__focus__placeholder_orange_800__focus
    , xl__focus__placeholder_orange_900__focus
    , xl__focus__placeholder_pink_100__focus
    , xl__focus__placeholder_pink_200__focus
    , xl__focus__placeholder_pink_300__focus
    , xl__focus__placeholder_pink_400__focus
    , xl__focus__placeholder_pink_500__focus
    , xl__focus__placeholder_pink_600__focus
    , xl__focus__placeholder_pink_700__focus
    , xl__focus__placeholder_pink_800__focus
    , xl__focus__placeholder_pink_900__focus
    , xl__focus__placeholder_purple_100__focus
    , xl__focus__placeholder_purple_200__focus
    , xl__focus__placeholder_purple_300__focus
    , xl__focus__placeholder_purple_400__focus
    , xl__focus__placeholder_purple_500__focus
    , xl__focus__placeholder_purple_600__focus
    , xl__focus__placeholder_purple_700__focus
    , xl__focus__placeholder_purple_800__focus
    , xl__focus__placeholder_purple_900__focus
    , xl__focus__placeholder_red_100__focus
    , xl__focus__placeholder_red_200__focus
    , xl__focus__placeholder_red_300__focus
    , xl__focus__placeholder_red_400__focus
    , xl__focus__placeholder_red_500__focus
    , xl__focus__placeholder_red_600__focus
    , xl__focus__placeholder_red_700__focus
    , xl__focus__placeholder_red_800__focus
    , xl__focus__placeholder_red_900__focus
    , xl__focus__placeholder_teal_100__focus
    , xl__focus__placeholder_teal_200__focus
    , xl__focus__placeholder_teal_300__focus
    , xl__focus__placeholder_teal_400__focus
    , xl__focus__placeholder_teal_500__focus
    , xl__focus__placeholder_teal_600__focus
    , xl__focus__placeholder_teal_700__focus
    , xl__focus__placeholder_teal_800__focus
    , xl__focus__placeholder_teal_900__focus
    , xl__focus__placeholder_transparent__focus
    , xl__focus__placeholder_white__focus
    , xl__focus__placeholder_yellow_100__focus
    , xl__focus__placeholder_yellow_200__focus
    , xl__focus__placeholder_yellow_300__focus
    , xl__focus__placeholder_yellow_400__focus
    , xl__focus__placeholder_yellow_500__focus
    , xl__focus__placeholder_yellow_600__focus
    , xl__focus__placeholder_yellow_700__focus
    , xl__focus__placeholder_yellow_800__focus
    , xl__focus__placeholder_yellow_900__focus
    , xl__focus__rotate_0
    , xl__focus__rotate_180
    , xl__focus__rotate_45
    , xl__focus__rotate_90
    , xl__focus__scale_0
    , xl__focus__scale_100
    , xl__focus__scale_105
    , xl__focus__scale_110
    , xl__focus__scale_125
    , xl__focus__scale_150
    , xl__focus__scale_50
    , xl__focus__scale_75
    , xl__focus__scale_90
    , xl__focus__scale_95
    , xl__focus__scale_x_0
    , xl__focus__scale_x_100
    , xl__focus__scale_x_105
    , xl__focus__scale_x_110
    , xl__focus__scale_x_125
    , xl__focus__scale_x_150
    , xl__focus__scale_x_50
    , xl__focus__scale_x_75
    , xl__focus__scale_x_90
    , xl__focus__scale_x_95
    , xl__focus__scale_y_0
    , xl__focus__scale_y_100
    , xl__focus__scale_y_105
    , xl__focus__scale_y_110
    , xl__focus__scale_y_125
    , xl__focus__scale_y_150
    , xl__focus__scale_y_50
    , xl__focus__scale_y_75
    , xl__focus__scale_y_90
    , xl__focus__scale_y_95
    , xl__focus__shadow
    , xl__focus__shadow_2xl
    , xl__focus__shadow_inner
    , xl__focus__shadow_lg
    , xl__focus__shadow_md
    , xl__focus__shadow_none
    , xl__focus__shadow_outline
    , xl__focus__shadow_sm
    , xl__focus__shadow_xl
    , xl__focus__shadow_xs
    , xl__focus__skew_x_0
    , xl__focus__skew_x_12
    , xl__focus__skew_x_3
    , xl__focus__skew_x_6
    , xl__focus__skew_y_0
    , xl__focus__skew_y_12
    , xl__focus__skew_y_3
    , xl__focus__skew_y_6
    , xl__focus__sr_only
    , xl__focus__text_black
    , xl__focus__text_blue_100
    , xl__focus__text_blue_200
    , xl__focus__text_blue_300
    , xl__focus__text_blue_400
    , xl__focus__text_blue_500
    , xl__focus__text_blue_600
    , xl__focus__text_blue_700
    , xl__focus__text_blue_800
    , xl__focus__text_blue_900
    , xl__focus__text_gray_100
    , xl__focus__text_gray_200
    , xl__focus__text_gray_300
    , xl__focus__text_gray_400
    , xl__focus__text_gray_500
    , xl__focus__text_gray_600
    , xl__focus__text_gray_700
    , xl__focus__text_gray_800
    , xl__focus__text_gray_900
    , xl__focus__text_green_100
    , xl__focus__text_green_200
    , xl__focus__text_green_300
    , xl__focus__text_green_400
    , xl__focus__text_green_500
    , xl__focus__text_green_600
    , xl__focus__text_green_700
    , xl__focus__text_green_800
    , xl__focus__text_green_900
    , xl__focus__text_indigo_100
    , xl__focus__text_indigo_200
    , xl__focus__text_indigo_300
    , xl__focus__text_indigo_400
    , xl__focus__text_indigo_500
    , xl__focus__text_indigo_600
    , xl__focus__text_indigo_700
    , xl__focus__text_indigo_800
    , xl__focus__text_indigo_900
    , xl__focus__text_orange_100
    , xl__focus__text_orange_200
    , xl__focus__text_orange_300
    , xl__focus__text_orange_400
    , xl__focus__text_orange_500
    , xl__focus__text_orange_600
    , xl__focus__text_orange_700
    , xl__focus__text_orange_800
    , xl__focus__text_orange_900
    , xl__focus__text_pink_100
    , xl__focus__text_pink_200
    , xl__focus__text_pink_300
    , xl__focus__text_pink_400
    , xl__focus__text_pink_500
    , xl__focus__text_pink_600
    , xl__focus__text_pink_700
    , xl__focus__text_pink_800
    , xl__focus__text_pink_900
    , xl__focus__text_purple_100
    , xl__focus__text_purple_200
    , xl__focus__text_purple_300
    , xl__focus__text_purple_400
    , xl__focus__text_purple_500
    , xl__focus__text_purple_600
    , xl__focus__text_purple_700
    , xl__focus__text_purple_800
    , xl__focus__text_purple_900
    , xl__focus__text_red_100
    , xl__focus__text_red_200
    , xl__focus__text_red_300
    , xl__focus__text_red_400
    , xl__focus__text_red_500
    , xl__focus__text_red_600
    , xl__focus__text_red_700
    , xl__focus__text_red_800
    , xl__focus__text_red_900
    , xl__focus__text_teal_100
    , xl__focus__text_teal_200
    , xl__focus__text_teal_300
    , xl__focus__text_teal_400
    , xl__focus__text_teal_500
    , xl__focus__text_teal_600
    , xl__focus__text_teal_700
    , xl__focus__text_teal_800
    , xl__focus__text_teal_900
    , xl__focus__text_transparent
    , xl__focus__text_white
    , xl__focus__text_yellow_100
    , xl__focus__text_yellow_200
    , xl__focus__text_yellow_300
    , xl__focus__text_yellow_400
    , xl__focus__text_yellow_500
    , xl__focus__text_yellow_600
    , xl__focus__text_yellow_700
    , xl__focus__text_yellow_800
    , xl__focus__text_yellow_900
    , xl__focus__translate_x_0
    , xl__focus__translate_x_1
    , xl__focus__translate_x_10
    , xl__focus__translate_x_12
    , xl__focus__translate_x_16
    , xl__focus__translate_x_1over2
    , xl__focus__translate_x_2
    , xl__focus__translate_x_20
    , xl__focus__translate_x_24
    , xl__focus__translate_x_3
    , xl__focus__translate_x_32
    , xl__focus__translate_x_4
    , xl__focus__translate_x_40
    , xl__focus__translate_x_48
    , xl__focus__translate_x_5
    , xl__focus__translate_x_56
    , xl__focus__translate_x_6
    , xl__focus__translate_x_64
    , xl__focus__translate_x_8
    , xl__focus__translate_x_full
    , xl__focus__translate_x_px
    , xl__focus__translate_y_0
    , xl__focus__translate_y_1
    , xl__focus__translate_y_10
    , xl__focus__translate_y_12
    , xl__focus__translate_y_16
    , xl__focus__translate_y_1over2
    , xl__focus__translate_y_2
    , xl__focus__translate_y_20
    , xl__focus__translate_y_24
    , xl__focus__translate_y_3
    , xl__focus__translate_y_32
    , xl__focus__translate_y_4
    , xl__focus__translate_y_40
    , xl__focus__translate_y_48
    , xl__focus__translate_y_5
    , xl__focus__translate_y_56
    , xl__focus__translate_y_6
    , xl__focus__translate_y_64
    , xl__focus__translate_y_8
    , xl__focus__translate_y_full
    , xl__focus__translate_y_px
    , xl__focus__underline
    , xl__font_black
    , xl__font_bold
    , xl__font_extrabold
    , xl__font_hairline
    , xl__font_light
    , xl__font_medium
    , xl__font_mono
    , xl__font_normal
    , xl__font_sans
    , xl__font_semibold
    , xl__font_serif
    , xl__font_thin
    , xl__gap_0
    , xl__gap_1
    , xl__gap_10
    , xl__gap_12
    , xl__gap_16
    , xl__gap_2
    , xl__gap_20
    , xl__gap_24
    , xl__gap_3
    , xl__gap_32
    , xl__gap_4
    , xl__gap_40
    , xl__gap_48
    , xl__gap_5
    , xl__gap_56
    , xl__gap_6
    , xl__gap_64
    , xl__gap_8
    , xl__gap_px
    , xl__grid
    , xl__grid_cols_1
    , xl__grid_cols_10
    , xl__grid_cols_11
    , xl__grid_cols_12
    , xl__grid_cols_2
    , xl__grid_cols_3
    , xl__grid_cols_4
    , xl__grid_cols_5
    , xl__grid_cols_6
    , xl__grid_cols_7
    , xl__grid_cols_8
    , xl__grid_cols_9
    , xl__grid_cols_none
    , xl__grid_flow_col
    , xl__grid_flow_col_dense
    , xl__grid_flow_row
    , xl__grid_flow_row_dense
    , xl__grid_rows_1
    , xl__grid_rows_2
    , xl__grid_rows_3
    , xl__grid_rows_4
    , xl__grid_rows_5
    , xl__grid_rows_6
    , xl__grid_rows_none
    , xl__h_0
    , xl__h_1
    , xl__h_10
    , xl__h_12
    , xl__h_16
    , xl__h_2
    , xl__h_20
    , xl__h_24
    , xl__h_3
    , xl__h_32
    , xl__h_4
    , xl__h_40
    , xl__h_48
    , xl__h_5
    , xl__h_56
    , xl__h_6
    , xl__h_64
    , xl__h_8
    , xl__h_auto
    , xl__h_full
    , xl__h_px
    , xl__h_screen
    , xl__hidden
    , xl__hover__bg_black
    , xl__hover__bg_blue_100
    , xl__hover__bg_blue_200
    , xl__hover__bg_blue_300
    , xl__hover__bg_blue_400
    , xl__hover__bg_blue_500
    , xl__hover__bg_blue_600
    , xl__hover__bg_blue_700
    , xl__hover__bg_blue_800
    , xl__hover__bg_blue_900
    , xl__hover__bg_gray_100
    , xl__hover__bg_gray_200
    , xl__hover__bg_gray_300
    , xl__hover__bg_gray_400
    , xl__hover__bg_gray_500
    , xl__hover__bg_gray_600
    , xl__hover__bg_gray_700
    , xl__hover__bg_gray_800
    , xl__hover__bg_gray_900
    , xl__hover__bg_green_100
    , xl__hover__bg_green_200
    , xl__hover__bg_green_300
    , xl__hover__bg_green_400
    , xl__hover__bg_green_500
    , xl__hover__bg_green_600
    , xl__hover__bg_green_700
    , xl__hover__bg_green_800
    , xl__hover__bg_green_900
    , xl__hover__bg_indigo_100
    , xl__hover__bg_indigo_200
    , xl__hover__bg_indigo_300
    , xl__hover__bg_indigo_400
    , xl__hover__bg_indigo_500
    , xl__hover__bg_indigo_600
    , xl__hover__bg_indigo_700
    , xl__hover__bg_indigo_800
    , xl__hover__bg_indigo_900
    , xl__hover__bg_orange_100
    , xl__hover__bg_orange_200
    , xl__hover__bg_orange_300
    , xl__hover__bg_orange_400
    , xl__hover__bg_orange_500
    , xl__hover__bg_orange_600
    , xl__hover__bg_orange_700
    , xl__hover__bg_orange_800
    , xl__hover__bg_orange_900
    , xl__hover__bg_pink_100
    , xl__hover__bg_pink_200
    , xl__hover__bg_pink_300
    , xl__hover__bg_pink_400
    , xl__hover__bg_pink_500
    , xl__hover__bg_pink_600
    , xl__hover__bg_pink_700
    , xl__hover__bg_pink_800
    , xl__hover__bg_pink_900
    , xl__hover__bg_purple_100
    , xl__hover__bg_purple_200
    , xl__hover__bg_purple_300
    , xl__hover__bg_purple_400
    , xl__hover__bg_purple_500
    , xl__hover__bg_purple_600
    , xl__hover__bg_purple_700
    , xl__hover__bg_purple_800
    , xl__hover__bg_purple_900
    , xl__hover__bg_red_100
    , xl__hover__bg_red_200
    , xl__hover__bg_red_300
    , xl__hover__bg_red_400
    , xl__hover__bg_red_500
    , xl__hover__bg_red_600
    , xl__hover__bg_red_700
    , xl__hover__bg_red_800
    , xl__hover__bg_red_900
    , xl__hover__bg_teal_100
    , xl__hover__bg_teal_200
    , xl__hover__bg_teal_300
    , xl__hover__bg_teal_400
    , xl__hover__bg_teal_500
    , xl__hover__bg_teal_600
    , xl__hover__bg_teal_700
    , xl__hover__bg_teal_800
    , xl__hover__bg_teal_900
    , xl__hover__bg_transparent
    , xl__hover__bg_white
    , xl__hover__bg_yellow_100
    , xl__hover__bg_yellow_200
    , xl__hover__bg_yellow_300
    , xl__hover__bg_yellow_400
    , xl__hover__bg_yellow_500
    , xl__hover__bg_yellow_600
    , xl__hover__bg_yellow_700
    , xl__hover__bg_yellow_800
    , xl__hover__bg_yellow_900
    , xl__hover__border_black
    , xl__hover__border_blue_100
    , xl__hover__border_blue_200
    , xl__hover__border_blue_300
    , xl__hover__border_blue_400
    , xl__hover__border_blue_500
    , xl__hover__border_blue_600
    , xl__hover__border_blue_700
    , xl__hover__border_blue_800
    , xl__hover__border_blue_900
    , xl__hover__border_gray_100
    , xl__hover__border_gray_200
    , xl__hover__border_gray_300
    , xl__hover__border_gray_400
    , xl__hover__border_gray_500
    , xl__hover__border_gray_600
    , xl__hover__border_gray_700
    , xl__hover__border_gray_800
    , xl__hover__border_gray_900
    , xl__hover__border_green_100
    , xl__hover__border_green_200
    , xl__hover__border_green_300
    , xl__hover__border_green_400
    , xl__hover__border_green_500
    , xl__hover__border_green_600
    , xl__hover__border_green_700
    , xl__hover__border_green_800
    , xl__hover__border_green_900
    , xl__hover__border_indigo_100
    , xl__hover__border_indigo_200
    , xl__hover__border_indigo_300
    , xl__hover__border_indigo_400
    , xl__hover__border_indigo_500
    , xl__hover__border_indigo_600
    , xl__hover__border_indigo_700
    , xl__hover__border_indigo_800
    , xl__hover__border_indigo_900
    , xl__hover__border_orange_100
    , xl__hover__border_orange_200
    , xl__hover__border_orange_300
    , xl__hover__border_orange_400
    , xl__hover__border_orange_500
    , xl__hover__border_orange_600
    , xl__hover__border_orange_700
    , xl__hover__border_orange_800
    , xl__hover__border_orange_900
    , xl__hover__border_pink_100
    , xl__hover__border_pink_200
    , xl__hover__border_pink_300
    , xl__hover__border_pink_400
    , xl__hover__border_pink_500
    , xl__hover__border_pink_600
    , xl__hover__border_pink_700
    , xl__hover__border_pink_800
    , xl__hover__border_pink_900
    , xl__hover__border_purple_100
    , xl__hover__border_purple_200
    , xl__hover__border_purple_300
    , xl__hover__border_purple_400
    , xl__hover__border_purple_500
    , xl__hover__border_purple_600
    , xl__hover__border_purple_700
    , xl__hover__border_purple_800
    , xl__hover__border_purple_900
    , xl__hover__border_red_100
    , xl__hover__border_red_200
    , xl__hover__border_red_300
    , xl__hover__border_red_400
    , xl__hover__border_red_500
    , xl__hover__border_red_600
    , xl__hover__border_red_700
    , xl__hover__border_red_800
    , xl__hover__border_red_900
    , xl__hover__border_teal_100
    , xl__hover__border_teal_200
    , xl__hover__border_teal_300
    , xl__hover__border_teal_400
    , xl__hover__border_teal_500
    , xl__hover__border_teal_600
    , xl__hover__border_teal_700
    , xl__hover__border_teal_800
    , xl__hover__border_teal_900
    , xl__hover__border_transparent
    , xl__hover__border_white
    , xl__hover__border_yellow_100
    , xl__hover__border_yellow_200
    , xl__hover__border_yellow_300
    , xl__hover__border_yellow_400
    , xl__hover__border_yellow_500
    , xl__hover__border_yellow_600
    , xl__hover__border_yellow_700
    , xl__hover__border_yellow_800
    , xl__hover__border_yellow_900
    , xl__hover__font_black
    , xl__hover__font_bold
    , xl__hover__font_extrabold
    , xl__hover__font_hairline
    , xl__hover__font_light
    , xl__hover__font_medium
    , xl__hover__font_normal
    , xl__hover__font_semibold
    , xl__hover__font_thin
    , xl__hover__line_through
    , xl__hover__neg_rotate_180
    , xl__hover__neg_rotate_45
    , xl__hover__neg_rotate_90
    , xl__hover__neg_skew_x_12
    , xl__hover__neg_skew_x_3
    , xl__hover__neg_skew_x_6
    , xl__hover__neg_skew_y_12
    , xl__hover__neg_skew_y_3
    , xl__hover__neg_skew_y_6
    , xl__hover__neg_translate_x_1
    , xl__hover__neg_translate_x_10
    , xl__hover__neg_translate_x_12
    , xl__hover__neg_translate_x_16
    , xl__hover__neg_translate_x_1over2
    , xl__hover__neg_translate_x_2
    , xl__hover__neg_translate_x_20
    , xl__hover__neg_translate_x_24
    , xl__hover__neg_translate_x_3
    , xl__hover__neg_translate_x_32
    , xl__hover__neg_translate_x_4
    , xl__hover__neg_translate_x_40
    , xl__hover__neg_translate_x_48
    , xl__hover__neg_translate_x_5
    , xl__hover__neg_translate_x_56
    , xl__hover__neg_translate_x_6
    , xl__hover__neg_translate_x_64
    , xl__hover__neg_translate_x_8
    , xl__hover__neg_translate_x_full
    , xl__hover__neg_translate_x_px
    , xl__hover__neg_translate_y_1
    , xl__hover__neg_translate_y_10
    , xl__hover__neg_translate_y_12
    , xl__hover__neg_translate_y_16
    , xl__hover__neg_translate_y_1over2
    , xl__hover__neg_translate_y_2
    , xl__hover__neg_translate_y_20
    , xl__hover__neg_translate_y_24
    , xl__hover__neg_translate_y_3
    , xl__hover__neg_translate_y_32
    , xl__hover__neg_translate_y_4
    , xl__hover__neg_translate_y_40
    , xl__hover__neg_translate_y_48
    , xl__hover__neg_translate_y_5
    , xl__hover__neg_translate_y_56
    , xl__hover__neg_translate_y_6
    , xl__hover__neg_translate_y_64
    , xl__hover__neg_translate_y_8
    , xl__hover__neg_translate_y_full
    , xl__hover__neg_translate_y_px
    , xl__hover__no_underline
    , xl__hover__opacity_0
    , xl__hover__opacity_100
    , xl__hover__opacity_25
    , xl__hover__opacity_50
    , xl__hover__opacity_75
    , xl__hover__rotate_0
    , xl__hover__rotate_180
    , xl__hover__rotate_45
    , xl__hover__rotate_90
    , xl__hover__scale_0
    , xl__hover__scale_100
    , xl__hover__scale_105
    , xl__hover__scale_110
    , xl__hover__scale_125
    , xl__hover__scale_150
    , xl__hover__scale_50
    , xl__hover__scale_75
    , xl__hover__scale_90
    , xl__hover__scale_95
    , xl__hover__scale_x_0
    , xl__hover__scale_x_100
    , xl__hover__scale_x_105
    , xl__hover__scale_x_110
    , xl__hover__scale_x_125
    , xl__hover__scale_x_150
    , xl__hover__scale_x_50
    , xl__hover__scale_x_75
    , xl__hover__scale_x_90
    , xl__hover__scale_x_95
    , xl__hover__scale_y_0
    , xl__hover__scale_y_100
    , xl__hover__scale_y_105
    , xl__hover__scale_y_110
    , xl__hover__scale_y_125
    , xl__hover__scale_y_150
    , xl__hover__scale_y_50
    , xl__hover__scale_y_75
    , xl__hover__scale_y_90
    , xl__hover__scale_y_95
    , xl__hover__shadow
    , xl__hover__shadow_2xl
    , xl__hover__shadow_inner
    , xl__hover__shadow_lg
    , xl__hover__shadow_md
    , xl__hover__shadow_none
    , xl__hover__shadow_outline
    , xl__hover__shadow_sm
    , xl__hover__shadow_xl
    , xl__hover__shadow_xs
    , xl__hover__skew_x_0
    , xl__hover__skew_x_12
    , xl__hover__skew_x_3
    , xl__hover__skew_x_6
    , xl__hover__skew_y_0
    , xl__hover__skew_y_12
    , xl__hover__skew_y_3
    , xl__hover__skew_y_6
    , xl__hover__text_black
    , xl__hover__text_blue_100
    , xl__hover__text_blue_200
    , xl__hover__text_blue_300
    , xl__hover__text_blue_400
    , xl__hover__text_blue_500
    , xl__hover__text_blue_600
    , xl__hover__text_blue_700
    , xl__hover__text_blue_800
    , xl__hover__text_blue_900
    , xl__hover__text_gray_100
    , xl__hover__text_gray_200
    , xl__hover__text_gray_300
    , xl__hover__text_gray_400
    , xl__hover__text_gray_500
    , xl__hover__text_gray_600
    , xl__hover__text_gray_700
    , xl__hover__text_gray_800
    , xl__hover__text_gray_900
    , xl__hover__text_green_100
    , xl__hover__text_green_200
    , xl__hover__text_green_300
    , xl__hover__text_green_400
    , xl__hover__text_green_500
    , xl__hover__text_green_600
    , xl__hover__text_green_700
    , xl__hover__text_green_800
    , xl__hover__text_green_900
    , xl__hover__text_indigo_100
    , xl__hover__text_indigo_200
    , xl__hover__text_indigo_300
    , xl__hover__text_indigo_400
    , xl__hover__text_indigo_500
    , xl__hover__text_indigo_600
    , xl__hover__text_indigo_700
    , xl__hover__text_indigo_800
    , xl__hover__text_indigo_900
    , xl__hover__text_orange_100
    , xl__hover__text_orange_200
    , xl__hover__text_orange_300
    , xl__hover__text_orange_400
    , xl__hover__text_orange_500
    , xl__hover__text_orange_600
    , xl__hover__text_orange_700
    , xl__hover__text_orange_800
    , xl__hover__text_orange_900
    , xl__hover__text_pink_100
    , xl__hover__text_pink_200
    , xl__hover__text_pink_300
    , xl__hover__text_pink_400
    , xl__hover__text_pink_500
    , xl__hover__text_pink_600
    , xl__hover__text_pink_700
    , xl__hover__text_pink_800
    , xl__hover__text_pink_900
    , xl__hover__text_purple_100
    , xl__hover__text_purple_200
    , xl__hover__text_purple_300
    , xl__hover__text_purple_400
    , xl__hover__text_purple_500
    , xl__hover__text_purple_600
    , xl__hover__text_purple_700
    , xl__hover__text_purple_800
    , xl__hover__text_purple_900
    , xl__hover__text_red_100
    , xl__hover__text_red_200
    , xl__hover__text_red_300
    , xl__hover__text_red_400
    , xl__hover__text_red_500
    , xl__hover__text_red_600
    , xl__hover__text_red_700
    , xl__hover__text_red_800
    , xl__hover__text_red_900
    , xl__hover__text_teal_100
    , xl__hover__text_teal_200
    , xl__hover__text_teal_300
    , xl__hover__text_teal_400
    , xl__hover__text_teal_500
    , xl__hover__text_teal_600
    , xl__hover__text_teal_700
    , xl__hover__text_teal_800
    , xl__hover__text_teal_900
    , xl__hover__text_transparent
    , xl__hover__text_white
    , xl__hover__text_yellow_100
    , xl__hover__text_yellow_200
    , xl__hover__text_yellow_300
    , xl__hover__text_yellow_400
    , xl__hover__text_yellow_500
    , xl__hover__text_yellow_600
    , xl__hover__text_yellow_700
    , xl__hover__text_yellow_800
    , xl__hover__text_yellow_900
    , xl__hover__translate_x_0
    , xl__hover__translate_x_1
    , xl__hover__translate_x_10
    , xl__hover__translate_x_12
    , xl__hover__translate_x_16
    , xl__hover__translate_x_1over2
    , xl__hover__translate_x_2
    , xl__hover__translate_x_20
    , xl__hover__translate_x_24
    , xl__hover__translate_x_3
    , xl__hover__translate_x_32
    , xl__hover__translate_x_4
    , xl__hover__translate_x_40
    , xl__hover__translate_x_48
    , xl__hover__translate_x_5
    , xl__hover__translate_x_56
    , xl__hover__translate_x_6
    , xl__hover__translate_x_64
    , xl__hover__translate_x_8
    , xl__hover__translate_x_full
    , xl__hover__translate_x_px
    , xl__hover__translate_y_0
    , xl__hover__translate_y_1
    , xl__hover__translate_y_10
    , xl__hover__translate_y_12
    , xl__hover__translate_y_16
    , xl__hover__translate_y_1over2
    , xl__hover__translate_y_2
    , xl__hover__translate_y_20
    , xl__hover__translate_y_24
    , xl__hover__translate_y_3
    , xl__hover__translate_y_32
    , xl__hover__translate_y_4
    , xl__hover__translate_y_40
    , xl__hover__translate_y_48
    , xl__hover__translate_y_5
    , xl__hover__translate_y_56
    , xl__hover__translate_y_6
    , xl__hover__translate_y_64
    , xl__hover__translate_y_8
    , xl__hover__translate_y_full
    , xl__hover__translate_y_px
    , xl__hover__underline
    , xl__inline
    , xl__inline_block
    , xl__inline_flex
    , xl__inset_0
    , xl__inset_auto
    , xl__inset_x_0
    , xl__inset_x_auto
    , xl__inset_y_0
    , xl__inset_y_auto
    , xl__invisible
    , xl__italic
    , xl__items_baseline
    , xl__items_center
    , xl__items_end
    , xl__items_start
    , xl__items_stretch
    , xl__justify_around
    , xl__justify_between
    , xl__justify_center
    , xl__justify_end
    , xl__justify_evenly
    , xl__justify_start
    , xl__leading_10
    , xl__leading_3
    , xl__leading_4
    , xl__leading_5
    , xl__leading_6
    , xl__leading_7
    , xl__leading_8
    , xl__leading_9
    , xl__leading_loose
    , xl__leading_none
    , xl__leading_normal
    , xl__leading_relaxed
    , xl__leading_snug
    , xl__leading_tight
    , xl__left_0
    , xl__left_auto
    , xl__line_through
    , xl__list_decimal
    , xl__list_disc
    , xl__list_inside
    , xl__list_none
    , xl__list_outside
    , xl__lowercase
    , xl__m_0
    , xl__m_1
    , xl__m_10
    , xl__m_12
    , xl__m_16
    , xl__m_2
    , xl__m_20
    , xl__m_24
    , xl__m_3
    , xl__m_32
    , xl__m_4
    , xl__m_40
    , xl__m_48
    , xl__m_5
    , xl__m_56
    , xl__m_6
    , xl__m_64
    , xl__m_8
    , xl__m_auto
    , xl__m_px
    , xl__max_h_full
    , xl__max_h_screen
    , xl__max_w_2xl
    , xl__max_w_3xl
    , xl__max_w_4xl
    , xl__max_w_5xl
    , xl__max_w_6xl
    , xl__max_w_full
    , xl__max_w_lg
    , xl__max_w_md
    , xl__max_w_none
    , xl__max_w_screen_lg
    , xl__max_w_screen_md
    , xl__max_w_screen_sm
    , xl__max_w_screen_xl
    , xl__max_w_sm
    , xl__max_w_xl
    , xl__max_w_xs
    , xl__mb_0
    , xl__mb_1
    , xl__mb_10
    , xl__mb_12
    , xl__mb_16
    , xl__mb_2
    , xl__mb_20
    , xl__mb_24
    , xl__mb_3
    , xl__mb_32
    , xl__mb_4
    , xl__mb_40
    , xl__mb_48
    , xl__mb_5
    , xl__mb_56
    , xl__mb_6
    , xl__mb_64
    , xl__mb_8
    , xl__mb_auto
    , xl__mb_px
    , xl__min_h_0
    , xl__min_h_full
    , xl__min_h_screen
    , xl__min_w_0
    , xl__min_w_full
    , xl__ml_0
    , xl__ml_1
    , xl__ml_10
    , xl__ml_12
    , xl__ml_16
    , xl__ml_2
    , xl__ml_20
    , xl__ml_24
    , xl__ml_3
    , xl__ml_32
    , xl__ml_4
    , xl__ml_40
    , xl__ml_48
    , xl__ml_5
    , xl__ml_56
    , xl__ml_6
    , xl__ml_64
    , xl__ml_8
    , xl__ml_auto
    , xl__ml_px
    , xl__mr_0
    , xl__mr_1
    , xl__mr_10
    , xl__mr_12
    , xl__mr_16
    , xl__mr_2
    , xl__mr_20
    , xl__mr_24
    , xl__mr_3
    , xl__mr_32
    , xl__mr_4
    , xl__mr_40
    , xl__mr_48
    , xl__mr_5
    , xl__mr_56
    , xl__mr_6
    , xl__mr_64
    , xl__mr_8
    , xl__mr_auto
    , xl__mr_px
    , xl__mt_0
    , xl__mt_1
    , xl__mt_10
    , xl__mt_12
    , xl__mt_16
    , xl__mt_2
    , xl__mt_20
    , xl__mt_24
    , xl__mt_3
    , xl__mt_32
    , xl__mt_4
    , xl__mt_40
    , xl__mt_48
    , xl__mt_5
    , xl__mt_56
    , xl__mt_6
    , xl__mt_64
    , xl__mt_8
    , xl__mt_auto
    , xl__mt_px
    , xl__mx_0
    , xl__mx_1
    , xl__mx_10
    , xl__mx_12
    , xl__mx_16
    , xl__mx_2
    , xl__mx_20
    , xl__mx_24
    , xl__mx_3
    , xl__mx_32
    , xl__mx_4
    , xl__mx_40
    , xl__mx_48
    , xl__mx_5
    , xl__mx_56
    , xl__mx_6
    , xl__mx_64
    , xl__mx_8
    , xl__mx_auto
    , xl__mx_px
    , xl__my_0
    , xl__my_1
    , xl__my_10
    , xl__my_12
    , xl__my_16
    , xl__my_2
    , xl__my_20
    , xl__my_24
    , xl__my_3
    , xl__my_32
    , xl__my_4
    , xl__my_40
    , xl__my_48
    , xl__my_5
    , xl__my_56
    , xl__my_6
    , xl__my_64
    , xl__my_8
    , xl__my_auto
    , xl__my_px
    , xl__neg_m_1
    , xl__neg_m_10
    , xl__neg_m_12
    , xl__neg_m_16
    , xl__neg_m_2
    , xl__neg_m_20
    , xl__neg_m_24
    , xl__neg_m_3
    , xl__neg_m_32
    , xl__neg_m_4
    , xl__neg_m_40
    , xl__neg_m_48
    , xl__neg_m_5
    , xl__neg_m_56
    , xl__neg_m_6
    , xl__neg_m_64
    , xl__neg_m_8
    , xl__neg_m_px
    , xl__neg_mb_1
    , xl__neg_mb_10
    , xl__neg_mb_12
    , xl__neg_mb_16
    , xl__neg_mb_2
    , xl__neg_mb_20
    , xl__neg_mb_24
    , xl__neg_mb_3
    , xl__neg_mb_32
    , xl__neg_mb_4
    , xl__neg_mb_40
    , xl__neg_mb_48
    , xl__neg_mb_5
    , xl__neg_mb_56
    , xl__neg_mb_6
    , xl__neg_mb_64
    , xl__neg_mb_8
    , xl__neg_mb_px
    , xl__neg_ml_1
    , xl__neg_ml_10
    , xl__neg_ml_12
    , xl__neg_ml_16
    , xl__neg_ml_2
    , xl__neg_ml_20
    , xl__neg_ml_24
    , xl__neg_ml_3
    , xl__neg_ml_32
    , xl__neg_ml_4
    , xl__neg_ml_40
    , xl__neg_ml_48
    , xl__neg_ml_5
    , xl__neg_ml_56
    , xl__neg_ml_6
    , xl__neg_ml_64
    , xl__neg_ml_8
    , xl__neg_ml_px
    , xl__neg_mr_1
    , xl__neg_mr_10
    , xl__neg_mr_12
    , xl__neg_mr_16
    , xl__neg_mr_2
    , xl__neg_mr_20
    , xl__neg_mr_24
    , xl__neg_mr_3
    , xl__neg_mr_32
    , xl__neg_mr_4
    , xl__neg_mr_40
    , xl__neg_mr_48
    , xl__neg_mr_5
    , xl__neg_mr_56
    , xl__neg_mr_6
    , xl__neg_mr_64
    , xl__neg_mr_8
    , xl__neg_mr_px
    , xl__neg_mt_1
    , xl__neg_mt_10
    , xl__neg_mt_12
    , xl__neg_mt_16
    , xl__neg_mt_2
    , xl__neg_mt_20
    , xl__neg_mt_24
    , xl__neg_mt_3
    , xl__neg_mt_32
    , xl__neg_mt_4
    , xl__neg_mt_40
    , xl__neg_mt_48
    , xl__neg_mt_5
    , xl__neg_mt_56
    , xl__neg_mt_6
    , xl__neg_mt_64
    , xl__neg_mt_8
    , xl__neg_mt_px
    , xl__neg_mx_1
    , xl__neg_mx_10
    , xl__neg_mx_12
    , xl__neg_mx_16
    , xl__neg_mx_2
    , xl__neg_mx_20
    , xl__neg_mx_24
    , xl__neg_mx_3
    , xl__neg_mx_32
    , xl__neg_mx_4
    , xl__neg_mx_40
    , xl__neg_mx_48
    , xl__neg_mx_5
    , xl__neg_mx_56
    , xl__neg_mx_6
    , xl__neg_mx_64
    , xl__neg_mx_8
    , xl__neg_mx_px
    , xl__neg_my_1
    , xl__neg_my_10
    , xl__neg_my_12
    , xl__neg_my_16
    , xl__neg_my_2
    , xl__neg_my_20
    , xl__neg_my_24
    , xl__neg_my_3
    , xl__neg_my_32
    , xl__neg_my_4
    , xl__neg_my_40
    , xl__neg_my_48
    , xl__neg_my_5
    , xl__neg_my_56
    , xl__neg_my_6
    , xl__neg_my_64
    , xl__neg_my_8
    , xl__neg_my_px
    , xl__neg_rotate_180
    , xl__neg_rotate_45
    , xl__neg_rotate_90
    , xl__neg_skew_x_12
    , xl__neg_skew_x_3
    , xl__neg_skew_x_6
    , xl__neg_skew_y_12
    , xl__neg_skew_y_3
    , xl__neg_skew_y_6
    , xl__neg_translate_x_1
    , xl__neg_translate_x_10
    , xl__neg_translate_x_12
    , xl__neg_translate_x_16
    , xl__neg_translate_x_1over2
    , xl__neg_translate_x_2
    , xl__neg_translate_x_20
    , xl__neg_translate_x_24
    , xl__neg_translate_x_3
    , xl__neg_translate_x_32
    , xl__neg_translate_x_4
    , xl__neg_translate_x_40
    , xl__neg_translate_x_48
    , xl__neg_translate_x_5
    , xl__neg_translate_x_56
    , xl__neg_translate_x_6
    , xl__neg_translate_x_64
    , xl__neg_translate_x_8
    , xl__neg_translate_x_full
    , xl__neg_translate_x_px
    , xl__neg_translate_y_1
    , xl__neg_translate_y_10
    , xl__neg_translate_y_12
    , xl__neg_translate_y_16
    , xl__neg_translate_y_1over2
    , xl__neg_translate_y_2
    , xl__neg_translate_y_20
    , xl__neg_translate_y_24
    , xl__neg_translate_y_3
    , xl__neg_translate_y_32
    , xl__neg_translate_y_4
    , xl__neg_translate_y_40
    , xl__neg_translate_y_48
    , xl__neg_translate_y_5
    , xl__neg_translate_y_56
    , xl__neg_translate_y_6
    , xl__neg_translate_y_64
    , xl__neg_translate_y_8
    , xl__neg_translate_y_full
    , xl__neg_translate_y_px
    , xl__no_underline
    , xl__normal_case
    , xl__not_italic
    , xl__not_sr_only
    , xl__object_bottom
    , xl__object_center
    , xl__object_contain
    , xl__object_cover
    , xl__object_fill
    , xl__object_left
    , xl__object_left_bottom
    , xl__object_left_top
    , xl__object_none
    , xl__object_right
    , xl__object_right_bottom
    , xl__object_right_top
    , xl__object_scale_down
    , xl__object_top
    , xl__opacity_0
    , xl__opacity_100
    , xl__opacity_25
    , xl__opacity_50
    , xl__opacity_75
    , xl__order_1
    , xl__order_10
    , xl__order_11
    , xl__order_12
    , xl__order_2
    , xl__order_3
    , xl__order_4
    , xl__order_5
    , xl__order_6
    , xl__order_7
    , xl__order_8
    , xl__order_9
    , xl__order_first
    , xl__order_last
    , xl__order_none
    , xl__origin_bottom
    , xl__origin_bottom_left
    , xl__origin_bottom_right
    , xl__origin_center
    , xl__origin_left
    , xl__origin_right
    , xl__origin_top
    , xl__origin_top_left
    , xl__origin_top_right
    , xl__outline_none
    , xl__overflow_auto
    , xl__overflow_hidden
    , xl__overflow_scroll
    , xl__overflow_visible
    , xl__overflow_x_auto
    , xl__overflow_x_hidden
    , xl__overflow_x_scroll
    , xl__overflow_x_visible
    , xl__overflow_y_auto
    , xl__overflow_y_hidden
    , xl__overflow_y_scroll
    , xl__overflow_y_visible
    , xl__p_0
    , xl__p_1
    , xl__p_10
    , xl__p_12
    , xl__p_16
    , xl__p_2
    , xl__p_20
    , xl__p_24
    , xl__p_3
    , xl__p_32
    , xl__p_4
    , xl__p_40
    , xl__p_48
    , xl__p_5
    , xl__p_56
    , xl__p_6
    , xl__p_64
    , xl__p_8
    , xl__p_px
    , xl__pb_0
    , xl__pb_1
    , xl__pb_10
    , xl__pb_12
    , xl__pb_16
    , xl__pb_2
    , xl__pb_20
    , xl__pb_24
    , xl__pb_3
    , xl__pb_32
    , xl__pb_4
    , xl__pb_40
    , xl__pb_48
    , xl__pb_5
    , xl__pb_56
    , xl__pb_6
    , xl__pb_64
    , xl__pb_8
    , xl__pb_px
    , xl__pl_0
    , xl__pl_1
    , xl__pl_10
    , xl__pl_12
    , xl__pl_16
    , xl__pl_2
    , xl__pl_20
    , xl__pl_24
    , xl__pl_3
    , xl__pl_32
    , xl__pl_4
    , xl__pl_40
    , xl__pl_48
    , xl__pl_5
    , xl__pl_56
    , xl__pl_6
    , xl__pl_64
    , xl__pl_8
    , xl__pl_px
    , xl__placeholder_black
    , xl__placeholder_blue_100
    , xl__placeholder_blue_200
    , xl__placeholder_blue_300
    , xl__placeholder_blue_400
    , xl__placeholder_blue_500
    , xl__placeholder_blue_600
    , xl__placeholder_blue_700
    , xl__placeholder_blue_800
    , xl__placeholder_blue_900
    , xl__placeholder_gray_100
    , xl__placeholder_gray_200
    , xl__placeholder_gray_300
    , xl__placeholder_gray_400
    , xl__placeholder_gray_500
    , xl__placeholder_gray_600
    , xl__placeholder_gray_700
    , xl__placeholder_gray_800
    , xl__placeholder_gray_900
    , xl__placeholder_green_100
    , xl__placeholder_green_200
    , xl__placeholder_green_300
    , xl__placeholder_green_400
    , xl__placeholder_green_500
    , xl__placeholder_green_600
    , xl__placeholder_green_700
    , xl__placeholder_green_800
    , xl__placeholder_green_900
    , xl__placeholder_indigo_100
    , xl__placeholder_indigo_200
    , xl__placeholder_indigo_300
    , xl__placeholder_indigo_400
    , xl__placeholder_indigo_500
    , xl__placeholder_indigo_600
    , xl__placeholder_indigo_700
    , xl__placeholder_indigo_800
    , xl__placeholder_indigo_900
    , xl__placeholder_orange_100
    , xl__placeholder_orange_200
    , xl__placeholder_orange_300
    , xl__placeholder_orange_400
    , xl__placeholder_orange_500
    , xl__placeholder_orange_600
    , xl__placeholder_orange_700
    , xl__placeholder_orange_800
    , xl__placeholder_orange_900
    , xl__placeholder_pink_100
    , xl__placeholder_pink_200
    , xl__placeholder_pink_300
    , xl__placeholder_pink_400
    , xl__placeholder_pink_500
    , xl__placeholder_pink_600
    , xl__placeholder_pink_700
    , xl__placeholder_pink_800
    , xl__placeholder_pink_900
    , xl__placeholder_purple_100
    , xl__placeholder_purple_200
    , xl__placeholder_purple_300
    , xl__placeholder_purple_400
    , xl__placeholder_purple_500
    , xl__placeholder_purple_600
    , xl__placeholder_purple_700
    , xl__placeholder_purple_800
    , xl__placeholder_purple_900
    , xl__placeholder_red_100
    , xl__placeholder_red_200
    , xl__placeholder_red_300
    , xl__placeholder_red_400
    , xl__placeholder_red_500
    , xl__placeholder_red_600
    , xl__placeholder_red_700
    , xl__placeholder_red_800
    , xl__placeholder_red_900
    , xl__placeholder_teal_100
    , xl__placeholder_teal_200
    , xl__placeholder_teal_300
    , xl__placeholder_teal_400
    , xl__placeholder_teal_500
    , xl__placeholder_teal_600
    , xl__placeholder_teal_700
    , xl__placeholder_teal_800
    , xl__placeholder_teal_900
    , xl__placeholder_transparent
    , xl__placeholder_white
    , xl__placeholder_yellow_100
    , xl__placeholder_yellow_200
    , xl__placeholder_yellow_300
    , xl__placeholder_yellow_400
    , xl__placeholder_yellow_500
    , xl__placeholder_yellow_600
    , xl__placeholder_yellow_700
    , xl__placeholder_yellow_800
    , xl__placeholder_yellow_900
    , xl__pointer_events_auto
    , xl__pointer_events_none
    , xl__pr_0
    , xl__pr_1
    , xl__pr_10
    , xl__pr_12
    , xl__pr_16
    , xl__pr_2
    , xl__pr_20
    , xl__pr_24
    , xl__pr_3
    , xl__pr_32
    , xl__pr_4
    , xl__pr_40
    , xl__pr_48
    , xl__pr_5
    , xl__pr_56
    , xl__pr_6
    , xl__pr_64
    , xl__pr_8
    , xl__pr_px
    , xl__pt_0
    , xl__pt_1
    , xl__pt_10
    , xl__pt_12
    , xl__pt_16
    , xl__pt_2
    , xl__pt_20
    , xl__pt_24
    , xl__pt_3
    , xl__pt_32
    , xl__pt_4
    , xl__pt_40
    , xl__pt_48
    , xl__pt_5
    , xl__pt_56
    , xl__pt_6
    , xl__pt_64
    , xl__pt_8
    , xl__pt_px
    , xl__px_0
    , xl__px_1
    , xl__px_10
    , xl__px_12
    , xl__px_16
    , xl__px_2
    , xl__px_20
    , xl__px_24
    , xl__px_3
    , xl__px_32
    , xl__px_4
    , xl__px_40
    , xl__px_48
    , xl__px_5
    , xl__px_56
    , xl__px_6
    , xl__px_64
    , xl__px_8
    , xl__px_px
    , xl__py_0
    , xl__py_1
    , xl__py_10
    , xl__py_12
    , xl__py_16
    , xl__py_2
    , xl__py_20
    , xl__py_24
    , xl__py_3
    , xl__py_32
    , xl__py_4
    , xl__py_40
    , xl__py_48
    , xl__py_5
    , xl__py_56
    , xl__py_6
    , xl__py_64
    , xl__py_8
    , xl__py_px
    , xl__relative
    , xl__resize
    , xl__resize_none
    , xl__resize_x
    , xl__resize_y
    , xl__right_0
    , xl__right_auto
    , xl__rotate_0
    , xl__rotate_180
    , xl__rotate_45
    , xl__rotate_90
    , xl__rounded
    , xl__rounded_b
    , xl__rounded_b_full
    , xl__rounded_b_lg
    , xl__rounded_b_md
    , xl__rounded_b_none
    , xl__rounded_b_sm
    , xl__rounded_bl
    , xl__rounded_bl_full
    , xl__rounded_bl_lg
    , xl__rounded_bl_md
    , xl__rounded_bl_none
    , xl__rounded_bl_sm
    , xl__rounded_br
    , xl__rounded_br_full
    , xl__rounded_br_lg
    , xl__rounded_br_md
    , xl__rounded_br_none
    , xl__rounded_br_sm
    , xl__rounded_full
    , xl__rounded_l
    , xl__rounded_l_full
    , xl__rounded_l_lg
    , xl__rounded_l_md
    , xl__rounded_l_none
    , xl__rounded_l_sm
    , xl__rounded_lg
    , xl__rounded_md
    , xl__rounded_none
    , xl__rounded_r
    , xl__rounded_r_full
    , xl__rounded_r_lg
    , xl__rounded_r_md
    , xl__rounded_r_none
    , xl__rounded_r_sm
    , xl__rounded_sm
    , xl__rounded_t
    , xl__rounded_t_full
    , xl__rounded_t_lg
    , xl__rounded_t_md
    , xl__rounded_t_none
    , xl__rounded_t_sm
    , xl__rounded_tl
    , xl__rounded_tl_full
    , xl__rounded_tl_lg
    , xl__rounded_tl_md
    , xl__rounded_tl_none
    , xl__rounded_tl_sm
    , xl__rounded_tr
    , xl__rounded_tr_full
    , xl__rounded_tr_lg
    , xl__rounded_tr_md
    , xl__rounded_tr_none
    , xl__rounded_tr_sm
    , xl__row_auto
    , xl__row_end_1
    , xl__row_end_2
    , xl__row_end_3
    , xl__row_end_4
    , xl__row_end_5
    , xl__row_end_6
    , xl__row_end_7
    , xl__row_end_auto
    , xl__row_gap_0
    , xl__row_gap_1
    , xl__row_gap_10
    , xl__row_gap_12
    , xl__row_gap_16
    , xl__row_gap_2
    , xl__row_gap_20
    , xl__row_gap_24
    , xl__row_gap_3
    , xl__row_gap_32
    , xl__row_gap_4
    , xl__row_gap_40
    , xl__row_gap_48
    , xl__row_gap_5
    , xl__row_gap_56
    , xl__row_gap_6
    , xl__row_gap_64
    , xl__row_gap_8
    , xl__row_gap_px
    , xl__row_span_1
    , xl__row_span_2
    , xl__row_span_3
    , xl__row_span_4
    , xl__row_span_5
    , xl__row_span_6
    , xl__row_start_1
    , xl__row_start_2
    , xl__row_start_3
    , xl__row_start_4
    , xl__row_start_5
    , xl__row_start_6
    , xl__row_start_7
    , xl__row_start_auto
    , xl__scale_0
    , xl__scale_100
    , xl__scale_105
    , xl__scale_110
    , xl__scale_125
    , xl__scale_150
    , xl__scale_50
    , xl__scale_75
    , xl__scale_90
    , xl__scale_95
    , xl__scale_x_0
    , xl__scale_x_100
    , xl__scale_x_105
    , xl__scale_x_110
    , xl__scale_x_125
    , xl__scale_x_150
    , xl__scale_x_50
    , xl__scale_x_75
    , xl__scale_x_90
    , xl__scale_x_95
    , xl__scale_y_0
    , xl__scale_y_100
    , xl__scale_y_105
    , xl__scale_y_110
    , xl__scale_y_125
    , xl__scale_y_150
    , xl__scale_y_50
    , xl__scale_y_75
    , xl__scale_y_90
    , xl__scale_y_95
    , xl__scrolling_auto
    , xl__scrolling_touch
    , xl__select_all
    , xl__select_auto
    , xl__select_none
    , xl__select_text
    , xl__self_auto
    , xl__self_center
    , xl__self_end
    , xl__self_start
    , xl__self_stretch
    , xl__shadow
    , xl__shadow_2xl
    , xl__shadow_inner
    , xl__shadow_lg
    , xl__shadow_md
    , xl__shadow_none
    , xl__shadow_outline
    , xl__shadow_sm
    , xl__shadow_xl
    , xl__shadow_xs
    , xl__skew_x_0
    , xl__skew_x_12
    , xl__skew_x_3
    , xl__skew_x_6
    , xl__skew_y_0
    , xl__skew_y_12
    , xl__skew_y_3
    , xl__skew_y_6
    , xl__sr_only
    , xl__static
    , xl__sticky
    , xl__stroke_0
    , xl__stroke_1
    , xl__stroke_2
    , xl__stroke_current
    , xl__subpixel_antialiased
    , xl__table
    , xl__table_auto
    , xl__table_caption
    , xl__table_cell
    , xl__table_column
    , xl__table_column_group
    , xl__table_fixed
    , xl__table_footer_group
    , xl__table_header_group
    , xl__table_row
    , xl__table_row_group
    , xl__text_2xl
    , xl__text_3xl
    , xl__text_4xl
    , xl__text_5xl
    , xl__text_6xl
    , xl__text_base
    , xl__text_black
    , xl__text_blue_100
    , xl__text_blue_200
    , xl__text_blue_300
    , xl__text_blue_400
    , xl__text_blue_500
    , xl__text_blue_600
    , xl__text_blue_700
    , xl__text_blue_800
    , xl__text_blue_900
    , xl__text_center
    , xl__text_gray_100
    , xl__text_gray_200
    , xl__text_gray_300
    , xl__text_gray_400
    , xl__text_gray_500
    , xl__text_gray_600
    , xl__text_gray_700
    , xl__text_gray_800
    , xl__text_gray_900
    , xl__text_green_100
    , xl__text_green_200
    , xl__text_green_300
    , xl__text_green_400
    , xl__text_green_500
    , xl__text_green_600
    , xl__text_green_700
    , xl__text_green_800
    , xl__text_green_900
    , xl__text_indigo_100
    , xl__text_indigo_200
    , xl__text_indigo_300
    , xl__text_indigo_400
    , xl__text_indigo_500
    , xl__text_indigo_600
    , xl__text_indigo_700
    , xl__text_indigo_800
    , xl__text_indigo_900
    , xl__text_justify
    , xl__text_left
    , xl__text_lg
    , xl__text_orange_100
    , xl__text_orange_200
    , xl__text_orange_300
    , xl__text_orange_400
    , xl__text_orange_500
    , xl__text_orange_600
    , xl__text_orange_700
    , xl__text_orange_800
    , xl__text_orange_900
    , xl__text_pink_100
    , xl__text_pink_200
    , xl__text_pink_300
    , xl__text_pink_400
    , xl__text_pink_500
    , xl__text_pink_600
    , xl__text_pink_700
    , xl__text_pink_800
    , xl__text_pink_900
    , xl__text_purple_100
    , xl__text_purple_200
    , xl__text_purple_300
    , xl__text_purple_400
    , xl__text_purple_500
    , xl__text_purple_600
    , xl__text_purple_700
    , xl__text_purple_800
    , xl__text_purple_900
    , xl__text_red_100
    , xl__text_red_200
    , xl__text_red_300
    , xl__text_red_400
    , xl__text_red_500
    , xl__text_red_600
    , xl__text_red_700
    , xl__text_red_800
    , xl__text_red_900
    , xl__text_right
    , xl__text_sm
    , xl__text_teal_100
    , xl__text_teal_200
    , xl__text_teal_300
    , xl__text_teal_400
    , xl__text_teal_500
    , xl__text_teal_600
    , xl__text_teal_700
    , xl__text_teal_800
    , xl__text_teal_900
    , xl__text_transparent
    , xl__text_white
    , xl__text_xl
    , xl__text_xs
    , xl__text_yellow_100
    , xl__text_yellow_200
    , xl__text_yellow_300
    , xl__text_yellow_400
    , xl__text_yellow_500
    , xl__text_yellow_600
    , xl__text_yellow_700
    , xl__text_yellow_800
    , xl__text_yellow_900
    , xl__top_0
    , xl__top_auto
    , xl__tracking_normal
    , xl__tracking_tight
    , xl__tracking_tighter
    , xl__tracking_wide
    , xl__tracking_wider
    , xl__tracking_widest
    , xl__transform
    , xl__transform_none
    , xl__transition
    , xl__transition_all
    , xl__transition_colors
    , xl__transition_none
    , xl__transition_opacity
    , xl__transition_shadow
    , xl__transition_transform
    , xl__translate_x_0
    , xl__translate_x_1
    , xl__translate_x_10
    , xl__translate_x_12
    , xl__translate_x_16
    , xl__translate_x_1over2
    , xl__translate_x_2
    , xl__translate_x_20
    , xl__translate_x_24
    , xl__translate_x_3
    , xl__translate_x_32
    , xl__translate_x_4
    , xl__translate_x_40
    , xl__translate_x_48
    , xl__translate_x_5
    , xl__translate_x_56
    , xl__translate_x_6
    , xl__translate_x_64
    , xl__translate_x_8
    , xl__translate_x_full
    , xl__translate_x_px
    , xl__translate_y_0
    , xl__translate_y_1
    , xl__translate_y_10
    , xl__translate_y_12
    , xl__translate_y_16
    , xl__translate_y_1over2
    , xl__translate_y_2
    , xl__translate_y_20
    , xl__translate_y_24
    , xl__translate_y_3
    , xl__translate_y_32
    , xl__translate_y_4
    , xl__translate_y_40
    , xl__translate_y_48
    , xl__translate_y_5
    , xl__translate_y_56
    , xl__translate_y_6
    , xl__translate_y_64
    , xl__translate_y_8
    , xl__translate_y_full
    , xl__translate_y_px
    , xl__truncate
    , xl__underline
    , xl__uppercase
    , xl__visible
    , xl__w_0
    , xl__w_1
    , xl__w_10
    , xl__w_10over12
    , xl__w_11over12
    , xl__w_12
    , xl__w_16
    , xl__w_1over12
    , xl__w_1over2
    , xl__w_1over3
    , xl__w_1over4
    , xl__w_1over5
    , xl__w_1over6
    , xl__w_2
    , xl__w_20
    , xl__w_24
    , xl__w_2over12
    , xl__w_2over3
    , xl__w_2over4
    , xl__w_2over5
    , xl__w_2over6
    , xl__w_3
    , xl__w_32
    , xl__w_3over12
    , xl__w_3over4
    , xl__w_3over5
    , xl__w_3over6
    , xl__w_4
    , xl__w_40
    , xl__w_48
    , xl__w_4over12
    , xl__w_4over5
    , xl__w_4over6
    , xl__w_5
    , xl__w_56
    , xl__w_5over12
    , xl__w_5over6
    , xl__w_6
    , xl__w_64
    , xl__w_6over12
    , xl__w_7over12
    , xl__w_8
    , xl__w_8over12
    , xl__w_9over12
    , xl__w_auto
    , xl__w_full
    , xl__w_px
    , xl__w_screen
    , xl__whitespace_no_wrap
    , xl__whitespace_normal
    , xl__whitespace_pre
    , xl__whitespace_pre_line
    , xl__whitespace_pre_wrap
    , xl__z_0
    , xl__z_10
    , xl__z_20
    , xl__z_30
    , xl__z_40
    , xl__z_50
    , xl__z_auto
    , z_0
    , z_10
    , z_20
    , z_30
    , z_40
    , z_50
    , z_auto
    )

import Html
import Html.Attributes as A


classList : List ( Html.Attribute msg, Bool ) -> List (Html.Attribute msg)
classList classes =
    List.map Tuple.first <| List.filter Tuple.second classes


container : Html.Attribute msg
container =
    A.class "container"


sr_only : Html.Attribute msg
sr_only =
    A.class "sr-only"


not_sr_only : Html.Attribute msg
not_sr_only =
    A.class "not-sr-only"


focus__sr_only : Html.Attribute msg
focus__sr_only =
    A.class "focus:sr-only"


focus__not_sr_only : Html.Attribute msg
focus__not_sr_only =
    A.class "focus:not-sr-only"


appearance_none : Html.Attribute msg
appearance_none =
    A.class "appearance-none"


bg_fixed : Html.Attribute msg
bg_fixed =
    A.class "bg-fixed"


bg_local : Html.Attribute msg
bg_local =
    A.class "bg-local"


bg_scroll : Html.Attribute msg
bg_scroll =
    A.class "bg-scroll"


bg_transparent : Html.Attribute msg
bg_transparent =
    A.class "bg-transparent"


bg_black : Html.Attribute msg
bg_black =
    A.class "bg-black"


bg_white : Html.Attribute msg
bg_white =
    A.class "bg-white"


bg_gray_100 : Html.Attribute msg
bg_gray_100 =
    A.class "bg-gray-100"


bg_gray_200 : Html.Attribute msg
bg_gray_200 =
    A.class "bg-gray-200"


bg_gray_300 : Html.Attribute msg
bg_gray_300 =
    A.class "bg-gray-300"


bg_gray_400 : Html.Attribute msg
bg_gray_400 =
    A.class "bg-gray-400"


bg_gray_500 : Html.Attribute msg
bg_gray_500 =
    A.class "bg-gray-500"


bg_gray_600 : Html.Attribute msg
bg_gray_600 =
    A.class "bg-gray-600"


bg_gray_700 : Html.Attribute msg
bg_gray_700 =
    A.class "bg-gray-700"


bg_gray_800 : Html.Attribute msg
bg_gray_800 =
    A.class "bg-gray-800"


bg_gray_900 : Html.Attribute msg
bg_gray_900 =
    A.class "bg-gray-900"


bg_red_100 : Html.Attribute msg
bg_red_100 =
    A.class "bg-red-100"


bg_red_200 : Html.Attribute msg
bg_red_200 =
    A.class "bg-red-200"


bg_red_300 : Html.Attribute msg
bg_red_300 =
    A.class "bg-red-300"


bg_red_400 : Html.Attribute msg
bg_red_400 =
    A.class "bg-red-400"


bg_red_500 : Html.Attribute msg
bg_red_500 =
    A.class "bg-red-500"


bg_red_600 : Html.Attribute msg
bg_red_600 =
    A.class "bg-red-600"


bg_red_700 : Html.Attribute msg
bg_red_700 =
    A.class "bg-red-700"


bg_red_800 : Html.Attribute msg
bg_red_800 =
    A.class "bg-red-800"


bg_red_900 : Html.Attribute msg
bg_red_900 =
    A.class "bg-red-900"


bg_orange_100 : Html.Attribute msg
bg_orange_100 =
    A.class "bg-orange-100"


bg_orange_200 : Html.Attribute msg
bg_orange_200 =
    A.class "bg-orange-200"


bg_orange_300 : Html.Attribute msg
bg_orange_300 =
    A.class "bg-orange-300"


bg_orange_400 : Html.Attribute msg
bg_orange_400 =
    A.class "bg-orange-400"


bg_orange_500 : Html.Attribute msg
bg_orange_500 =
    A.class "bg-orange-500"


bg_orange_600 : Html.Attribute msg
bg_orange_600 =
    A.class "bg-orange-600"


bg_orange_700 : Html.Attribute msg
bg_orange_700 =
    A.class "bg-orange-700"


bg_orange_800 : Html.Attribute msg
bg_orange_800 =
    A.class "bg-orange-800"


bg_orange_900 : Html.Attribute msg
bg_orange_900 =
    A.class "bg-orange-900"


bg_yellow_100 : Html.Attribute msg
bg_yellow_100 =
    A.class "bg-yellow-100"


bg_yellow_200 : Html.Attribute msg
bg_yellow_200 =
    A.class "bg-yellow-200"


bg_yellow_300 : Html.Attribute msg
bg_yellow_300 =
    A.class "bg-yellow-300"


bg_yellow_400 : Html.Attribute msg
bg_yellow_400 =
    A.class "bg-yellow-400"


bg_yellow_500 : Html.Attribute msg
bg_yellow_500 =
    A.class "bg-yellow-500"


bg_yellow_600 : Html.Attribute msg
bg_yellow_600 =
    A.class "bg-yellow-600"


bg_yellow_700 : Html.Attribute msg
bg_yellow_700 =
    A.class "bg-yellow-700"


bg_yellow_800 : Html.Attribute msg
bg_yellow_800 =
    A.class "bg-yellow-800"


bg_yellow_900 : Html.Attribute msg
bg_yellow_900 =
    A.class "bg-yellow-900"


bg_green_100 : Html.Attribute msg
bg_green_100 =
    A.class "bg-green-100"


bg_green_200 : Html.Attribute msg
bg_green_200 =
    A.class "bg-green-200"


bg_green_300 : Html.Attribute msg
bg_green_300 =
    A.class "bg-green-300"


bg_green_400 : Html.Attribute msg
bg_green_400 =
    A.class "bg-green-400"


bg_green_500 : Html.Attribute msg
bg_green_500 =
    A.class "bg-green-500"


bg_green_600 : Html.Attribute msg
bg_green_600 =
    A.class "bg-green-600"


bg_green_700 : Html.Attribute msg
bg_green_700 =
    A.class "bg-green-700"


bg_green_800 : Html.Attribute msg
bg_green_800 =
    A.class "bg-green-800"


bg_green_900 : Html.Attribute msg
bg_green_900 =
    A.class "bg-green-900"


bg_teal_100 : Html.Attribute msg
bg_teal_100 =
    A.class "bg-teal-100"


bg_teal_200 : Html.Attribute msg
bg_teal_200 =
    A.class "bg-teal-200"


bg_teal_300 : Html.Attribute msg
bg_teal_300 =
    A.class "bg-teal-300"


bg_teal_400 : Html.Attribute msg
bg_teal_400 =
    A.class "bg-teal-400"


bg_teal_500 : Html.Attribute msg
bg_teal_500 =
    A.class "bg-teal-500"


bg_teal_600 : Html.Attribute msg
bg_teal_600 =
    A.class "bg-teal-600"


bg_teal_700 : Html.Attribute msg
bg_teal_700 =
    A.class "bg-teal-700"


bg_teal_800 : Html.Attribute msg
bg_teal_800 =
    A.class "bg-teal-800"


bg_teal_900 : Html.Attribute msg
bg_teal_900 =
    A.class "bg-teal-900"


bg_blue_100 : Html.Attribute msg
bg_blue_100 =
    A.class "bg-blue-100"


bg_blue_200 : Html.Attribute msg
bg_blue_200 =
    A.class "bg-blue-200"


bg_blue_300 : Html.Attribute msg
bg_blue_300 =
    A.class "bg-blue-300"


bg_blue_400 : Html.Attribute msg
bg_blue_400 =
    A.class "bg-blue-400"


bg_blue_500 : Html.Attribute msg
bg_blue_500 =
    A.class "bg-blue-500"


bg_blue_600 : Html.Attribute msg
bg_blue_600 =
    A.class "bg-blue-600"


bg_blue_700 : Html.Attribute msg
bg_blue_700 =
    A.class "bg-blue-700"


bg_blue_800 : Html.Attribute msg
bg_blue_800 =
    A.class "bg-blue-800"


bg_blue_900 : Html.Attribute msg
bg_blue_900 =
    A.class "bg-blue-900"


bg_indigo_100 : Html.Attribute msg
bg_indigo_100 =
    A.class "bg-indigo-100"


bg_indigo_200 : Html.Attribute msg
bg_indigo_200 =
    A.class "bg-indigo-200"


bg_indigo_300 : Html.Attribute msg
bg_indigo_300 =
    A.class "bg-indigo-300"


bg_indigo_400 : Html.Attribute msg
bg_indigo_400 =
    A.class "bg-indigo-400"


bg_indigo_500 : Html.Attribute msg
bg_indigo_500 =
    A.class "bg-indigo-500"


bg_indigo_600 : Html.Attribute msg
bg_indigo_600 =
    A.class "bg-indigo-600"


bg_indigo_700 : Html.Attribute msg
bg_indigo_700 =
    A.class "bg-indigo-700"


bg_indigo_800 : Html.Attribute msg
bg_indigo_800 =
    A.class "bg-indigo-800"


bg_indigo_900 : Html.Attribute msg
bg_indigo_900 =
    A.class "bg-indigo-900"


bg_purple_100 : Html.Attribute msg
bg_purple_100 =
    A.class "bg-purple-100"


bg_purple_200 : Html.Attribute msg
bg_purple_200 =
    A.class "bg-purple-200"


bg_purple_300 : Html.Attribute msg
bg_purple_300 =
    A.class "bg-purple-300"


bg_purple_400 : Html.Attribute msg
bg_purple_400 =
    A.class "bg-purple-400"


bg_purple_500 : Html.Attribute msg
bg_purple_500 =
    A.class "bg-purple-500"


bg_purple_600 : Html.Attribute msg
bg_purple_600 =
    A.class "bg-purple-600"


bg_purple_700 : Html.Attribute msg
bg_purple_700 =
    A.class "bg-purple-700"


bg_purple_800 : Html.Attribute msg
bg_purple_800 =
    A.class "bg-purple-800"


bg_purple_900 : Html.Attribute msg
bg_purple_900 =
    A.class "bg-purple-900"


bg_pink_100 : Html.Attribute msg
bg_pink_100 =
    A.class "bg-pink-100"


bg_pink_200 : Html.Attribute msg
bg_pink_200 =
    A.class "bg-pink-200"


bg_pink_300 : Html.Attribute msg
bg_pink_300 =
    A.class "bg-pink-300"


bg_pink_400 : Html.Attribute msg
bg_pink_400 =
    A.class "bg-pink-400"


bg_pink_500 : Html.Attribute msg
bg_pink_500 =
    A.class "bg-pink-500"


bg_pink_600 : Html.Attribute msg
bg_pink_600 =
    A.class "bg-pink-600"


bg_pink_700 : Html.Attribute msg
bg_pink_700 =
    A.class "bg-pink-700"


bg_pink_800 : Html.Attribute msg
bg_pink_800 =
    A.class "bg-pink-800"


bg_pink_900 : Html.Attribute msg
bg_pink_900 =
    A.class "bg-pink-900"


hover__bg_transparent : Html.Attribute msg
hover__bg_transparent =
    A.class "hover:bg-transparent"


hover__bg_black : Html.Attribute msg
hover__bg_black =
    A.class "hover:bg-black"


hover__bg_white : Html.Attribute msg
hover__bg_white =
    A.class "hover:bg-white"


hover__bg_gray_100 : Html.Attribute msg
hover__bg_gray_100 =
    A.class "hover:bg-gray-100"


hover__bg_gray_200 : Html.Attribute msg
hover__bg_gray_200 =
    A.class "hover:bg-gray-200"


hover__bg_gray_300 : Html.Attribute msg
hover__bg_gray_300 =
    A.class "hover:bg-gray-300"


hover__bg_gray_400 : Html.Attribute msg
hover__bg_gray_400 =
    A.class "hover:bg-gray-400"


hover__bg_gray_500 : Html.Attribute msg
hover__bg_gray_500 =
    A.class "hover:bg-gray-500"


hover__bg_gray_600 : Html.Attribute msg
hover__bg_gray_600 =
    A.class "hover:bg-gray-600"


hover__bg_gray_700 : Html.Attribute msg
hover__bg_gray_700 =
    A.class "hover:bg-gray-700"


hover__bg_gray_800 : Html.Attribute msg
hover__bg_gray_800 =
    A.class "hover:bg-gray-800"


hover__bg_gray_900 : Html.Attribute msg
hover__bg_gray_900 =
    A.class "hover:bg-gray-900"


hover__bg_red_100 : Html.Attribute msg
hover__bg_red_100 =
    A.class "hover:bg-red-100"


hover__bg_red_200 : Html.Attribute msg
hover__bg_red_200 =
    A.class "hover:bg-red-200"


hover__bg_red_300 : Html.Attribute msg
hover__bg_red_300 =
    A.class "hover:bg-red-300"


hover__bg_red_400 : Html.Attribute msg
hover__bg_red_400 =
    A.class "hover:bg-red-400"


hover__bg_red_500 : Html.Attribute msg
hover__bg_red_500 =
    A.class "hover:bg-red-500"


hover__bg_red_600 : Html.Attribute msg
hover__bg_red_600 =
    A.class "hover:bg-red-600"


hover__bg_red_700 : Html.Attribute msg
hover__bg_red_700 =
    A.class "hover:bg-red-700"


hover__bg_red_800 : Html.Attribute msg
hover__bg_red_800 =
    A.class "hover:bg-red-800"


hover__bg_red_900 : Html.Attribute msg
hover__bg_red_900 =
    A.class "hover:bg-red-900"


hover__bg_orange_100 : Html.Attribute msg
hover__bg_orange_100 =
    A.class "hover:bg-orange-100"


hover__bg_orange_200 : Html.Attribute msg
hover__bg_orange_200 =
    A.class "hover:bg-orange-200"


hover__bg_orange_300 : Html.Attribute msg
hover__bg_orange_300 =
    A.class "hover:bg-orange-300"


hover__bg_orange_400 : Html.Attribute msg
hover__bg_orange_400 =
    A.class "hover:bg-orange-400"


hover__bg_orange_500 : Html.Attribute msg
hover__bg_orange_500 =
    A.class "hover:bg-orange-500"


hover__bg_orange_600 : Html.Attribute msg
hover__bg_orange_600 =
    A.class "hover:bg-orange-600"


hover__bg_orange_700 : Html.Attribute msg
hover__bg_orange_700 =
    A.class "hover:bg-orange-700"


hover__bg_orange_800 : Html.Attribute msg
hover__bg_orange_800 =
    A.class "hover:bg-orange-800"


hover__bg_orange_900 : Html.Attribute msg
hover__bg_orange_900 =
    A.class "hover:bg-orange-900"


hover__bg_yellow_100 : Html.Attribute msg
hover__bg_yellow_100 =
    A.class "hover:bg-yellow-100"


hover__bg_yellow_200 : Html.Attribute msg
hover__bg_yellow_200 =
    A.class "hover:bg-yellow-200"


hover__bg_yellow_300 : Html.Attribute msg
hover__bg_yellow_300 =
    A.class "hover:bg-yellow-300"


hover__bg_yellow_400 : Html.Attribute msg
hover__bg_yellow_400 =
    A.class "hover:bg-yellow-400"


hover__bg_yellow_500 : Html.Attribute msg
hover__bg_yellow_500 =
    A.class "hover:bg-yellow-500"


hover__bg_yellow_600 : Html.Attribute msg
hover__bg_yellow_600 =
    A.class "hover:bg-yellow-600"


hover__bg_yellow_700 : Html.Attribute msg
hover__bg_yellow_700 =
    A.class "hover:bg-yellow-700"


hover__bg_yellow_800 : Html.Attribute msg
hover__bg_yellow_800 =
    A.class "hover:bg-yellow-800"


hover__bg_yellow_900 : Html.Attribute msg
hover__bg_yellow_900 =
    A.class "hover:bg-yellow-900"


hover__bg_green_100 : Html.Attribute msg
hover__bg_green_100 =
    A.class "hover:bg-green-100"


hover__bg_green_200 : Html.Attribute msg
hover__bg_green_200 =
    A.class "hover:bg-green-200"


hover__bg_green_300 : Html.Attribute msg
hover__bg_green_300 =
    A.class "hover:bg-green-300"


hover__bg_green_400 : Html.Attribute msg
hover__bg_green_400 =
    A.class "hover:bg-green-400"


hover__bg_green_500 : Html.Attribute msg
hover__bg_green_500 =
    A.class "hover:bg-green-500"


hover__bg_green_600 : Html.Attribute msg
hover__bg_green_600 =
    A.class "hover:bg-green-600"


hover__bg_green_700 : Html.Attribute msg
hover__bg_green_700 =
    A.class "hover:bg-green-700"


hover__bg_green_800 : Html.Attribute msg
hover__bg_green_800 =
    A.class "hover:bg-green-800"


hover__bg_green_900 : Html.Attribute msg
hover__bg_green_900 =
    A.class "hover:bg-green-900"


hover__bg_teal_100 : Html.Attribute msg
hover__bg_teal_100 =
    A.class "hover:bg-teal-100"


hover__bg_teal_200 : Html.Attribute msg
hover__bg_teal_200 =
    A.class "hover:bg-teal-200"


hover__bg_teal_300 : Html.Attribute msg
hover__bg_teal_300 =
    A.class "hover:bg-teal-300"


hover__bg_teal_400 : Html.Attribute msg
hover__bg_teal_400 =
    A.class "hover:bg-teal-400"


hover__bg_teal_500 : Html.Attribute msg
hover__bg_teal_500 =
    A.class "hover:bg-teal-500"


hover__bg_teal_600 : Html.Attribute msg
hover__bg_teal_600 =
    A.class "hover:bg-teal-600"


hover__bg_teal_700 : Html.Attribute msg
hover__bg_teal_700 =
    A.class "hover:bg-teal-700"


hover__bg_teal_800 : Html.Attribute msg
hover__bg_teal_800 =
    A.class "hover:bg-teal-800"


hover__bg_teal_900 : Html.Attribute msg
hover__bg_teal_900 =
    A.class "hover:bg-teal-900"


hover__bg_blue_100 : Html.Attribute msg
hover__bg_blue_100 =
    A.class "hover:bg-blue-100"


hover__bg_blue_200 : Html.Attribute msg
hover__bg_blue_200 =
    A.class "hover:bg-blue-200"


hover__bg_blue_300 : Html.Attribute msg
hover__bg_blue_300 =
    A.class "hover:bg-blue-300"


hover__bg_blue_400 : Html.Attribute msg
hover__bg_blue_400 =
    A.class "hover:bg-blue-400"


hover__bg_blue_500 : Html.Attribute msg
hover__bg_blue_500 =
    A.class "hover:bg-blue-500"


hover__bg_blue_600 : Html.Attribute msg
hover__bg_blue_600 =
    A.class "hover:bg-blue-600"


hover__bg_blue_700 : Html.Attribute msg
hover__bg_blue_700 =
    A.class "hover:bg-blue-700"


hover__bg_blue_800 : Html.Attribute msg
hover__bg_blue_800 =
    A.class "hover:bg-blue-800"


hover__bg_blue_900 : Html.Attribute msg
hover__bg_blue_900 =
    A.class "hover:bg-blue-900"


hover__bg_indigo_100 : Html.Attribute msg
hover__bg_indigo_100 =
    A.class "hover:bg-indigo-100"


hover__bg_indigo_200 : Html.Attribute msg
hover__bg_indigo_200 =
    A.class "hover:bg-indigo-200"


hover__bg_indigo_300 : Html.Attribute msg
hover__bg_indigo_300 =
    A.class "hover:bg-indigo-300"


hover__bg_indigo_400 : Html.Attribute msg
hover__bg_indigo_400 =
    A.class "hover:bg-indigo-400"


hover__bg_indigo_500 : Html.Attribute msg
hover__bg_indigo_500 =
    A.class "hover:bg-indigo-500"


hover__bg_indigo_600 : Html.Attribute msg
hover__bg_indigo_600 =
    A.class "hover:bg-indigo-600"


hover__bg_indigo_700 : Html.Attribute msg
hover__bg_indigo_700 =
    A.class "hover:bg-indigo-700"


hover__bg_indigo_800 : Html.Attribute msg
hover__bg_indigo_800 =
    A.class "hover:bg-indigo-800"


hover__bg_indigo_900 : Html.Attribute msg
hover__bg_indigo_900 =
    A.class "hover:bg-indigo-900"


hover__bg_purple_100 : Html.Attribute msg
hover__bg_purple_100 =
    A.class "hover:bg-purple-100"


hover__bg_purple_200 : Html.Attribute msg
hover__bg_purple_200 =
    A.class "hover:bg-purple-200"


hover__bg_purple_300 : Html.Attribute msg
hover__bg_purple_300 =
    A.class "hover:bg-purple-300"


hover__bg_purple_400 : Html.Attribute msg
hover__bg_purple_400 =
    A.class "hover:bg-purple-400"


hover__bg_purple_500 : Html.Attribute msg
hover__bg_purple_500 =
    A.class "hover:bg-purple-500"


hover__bg_purple_600 : Html.Attribute msg
hover__bg_purple_600 =
    A.class "hover:bg-purple-600"


hover__bg_purple_700 : Html.Attribute msg
hover__bg_purple_700 =
    A.class "hover:bg-purple-700"


hover__bg_purple_800 : Html.Attribute msg
hover__bg_purple_800 =
    A.class "hover:bg-purple-800"


hover__bg_purple_900 : Html.Attribute msg
hover__bg_purple_900 =
    A.class "hover:bg-purple-900"


hover__bg_pink_100 : Html.Attribute msg
hover__bg_pink_100 =
    A.class "hover:bg-pink-100"


hover__bg_pink_200 : Html.Attribute msg
hover__bg_pink_200 =
    A.class "hover:bg-pink-200"


hover__bg_pink_300 : Html.Attribute msg
hover__bg_pink_300 =
    A.class "hover:bg-pink-300"


hover__bg_pink_400 : Html.Attribute msg
hover__bg_pink_400 =
    A.class "hover:bg-pink-400"


hover__bg_pink_500 : Html.Attribute msg
hover__bg_pink_500 =
    A.class "hover:bg-pink-500"


hover__bg_pink_600 : Html.Attribute msg
hover__bg_pink_600 =
    A.class "hover:bg-pink-600"


hover__bg_pink_700 : Html.Attribute msg
hover__bg_pink_700 =
    A.class "hover:bg-pink-700"


hover__bg_pink_800 : Html.Attribute msg
hover__bg_pink_800 =
    A.class "hover:bg-pink-800"


hover__bg_pink_900 : Html.Attribute msg
hover__bg_pink_900 =
    A.class "hover:bg-pink-900"


focus__bg_transparent : Html.Attribute msg
focus__bg_transparent =
    A.class "focus:bg-transparent"


focus__bg_black : Html.Attribute msg
focus__bg_black =
    A.class "focus:bg-black"


focus__bg_white : Html.Attribute msg
focus__bg_white =
    A.class "focus:bg-white"


focus__bg_gray_100 : Html.Attribute msg
focus__bg_gray_100 =
    A.class "focus:bg-gray-100"


focus__bg_gray_200 : Html.Attribute msg
focus__bg_gray_200 =
    A.class "focus:bg-gray-200"


focus__bg_gray_300 : Html.Attribute msg
focus__bg_gray_300 =
    A.class "focus:bg-gray-300"


focus__bg_gray_400 : Html.Attribute msg
focus__bg_gray_400 =
    A.class "focus:bg-gray-400"


focus__bg_gray_500 : Html.Attribute msg
focus__bg_gray_500 =
    A.class "focus:bg-gray-500"


focus__bg_gray_600 : Html.Attribute msg
focus__bg_gray_600 =
    A.class "focus:bg-gray-600"


focus__bg_gray_700 : Html.Attribute msg
focus__bg_gray_700 =
    A.class "focus:bg-gray-700"


focus__bg_gray_800 : Html.Attribute msg
focus__bg_gray_800 =
    A.class "focus:bg-gray-800"


focus__bg_gray_900 : Html.Attribute msg
focus__bg_gray_900 =
    A.class "focus:bg-gray-900"


focus__bg_red_100 : Html.Attribute msg
focus__bg_red_100 =
    A.class "focus:bg-red-100"


focus__bg_red_200 : Html.Attribute msg
focus__bg_red_200 =
    A.class "focus:bg-red-200"


focus__bg_red_300 : Html.Attribute msg
focus__bg_red_300 =
    A.class "focus:bg-red-300"


focus__bg_red_400 : Html.Attribute msg
focus__bg_red_400 =
    A.class "focus:bg-red-400"


focus__bg_red_500 : Html.Attribute msg
focus__bg_red_500 =
    A.class "focus:bg-red-500"


focus__bg_red_600 : Html.Attribute msg
focus__bg_red_600 =
    A.class "focus:bg-red-600"


focus__bg_red_700 : Html.Attribute msg
focus__bg_red_700 =
    A.class "focus:bg-red-700"


focus__bg_red_800 : Html.Attribute msg
focus__bg_red_800 =
    A.class "focus:bg-red-800"


focus__bg_red_900 : Html.Attribute msg
focus__bg_red_900 =
    A.class "focus:bg-red-900"


focus__bg_orange_100 : Html.Attribute msg
focus__bg_orange_100 =
    A.class "focus:bg-orange-100"


focus__bg_orange_200 : Html.Attribute msg
focus__bg_orange_200 =
    A.class "focus:bg-orange-200"


focus__bg_orange_300 : Html.Attribute msg
focus__bg_orange_300 =
    A.class "focus:bg-orange-300"


focus__bg_orange_400 : Html.Attribute msg
focus__bg_orange_400 =
    A.class "focus:bg-orange-400"


focus__bg_orange_500 : Html.Attribute msg
focus__bg_orange_500 =
    A.class "focus:bg-orange-500"


focus__bg_orange_600 : Html.Attribute msg
focus__bg_orange_600 =
    A.class "focus:bg-orange-600"


focus__bg_orange_700 : Html.Attribute msg
focus__bg_orange_700 =
    A.class "focus:bg-orange-700"


focus__bg_orange_800 : Html.Attribute msg
focus__bg_orange_800 =
    A.class "focus:bg-orange-800"


focus__bg_orange_900 : Html.Attribute msg
focus__bg_orange_900 =
    A.class "focus:bg-orange-900"


focus__bg_yellow_100 : Html.Attribute msg
focus__bg_yellow_100 =
    A.class "focus:bg-yellow-100"


focus__bg_yellow_200 : Html.Attribute msg
focus__bg_yellow_200 =
    A.class "focus:bg-yellow-200"


focus__bg_yellow_300 : Html.Attribute msg
focus__bg_yellow_300 =
    A.class "focus:bg-yellow-300"


focus__bg_yellow_400 : Html.Attribute msg
focus__bg_yellow_400 =
    A.class "focus:bg-yellow-400"


focus__bg_yellow_500 : Html.Attribute msg
focus__bg_yellow_500 =
    A.class "focus:bg-yellow-500"


focus__bg_yellow_600 : Html.Attribute msg
focus__bg_yellow_600 =
    A.class "focus:bg-yellow-600"


focus__bg_yellow_700 : Html.Attribute msg
focus__bg_yellow_700 =
    A.class "focus:bg-yellow-700"


focus__bg_yellow_800 : Html.Attribute msg
focus__bg_yellow_800 =
    A.class "focus:bg-yellow-800"


focus__bg_yellow_900 : Html.Attribute msg
focus__bg_yellow_900 =
    A.class "focus:bg-yellow-900"


focus__bg_green_100 : Html.Attribute msg
focus__bg_green_100 =
    A.class "focus:bg-green-100"


focus__bg_green_200 : Html.Attribute msg
focus__bg_green_200 =
    A.class "focus:bg-green-200"


focus__bg_green_300 : Html.Attribute msg
focus__bg_green_300 =
    A.class "focus:bg-green-300"


focus__bg_green_400 : Html.Attribute msg
focus__bg_green_400 =
    A.class "focus:bg-green-400"


focus__bg_green_500 : Html.Attribute msg
focus__bg_green_500 =
    A.class "focus:bg-green-500"


focus__bg_green_600 : Html.Attribute msg
focus__bg_green_600 =
    A.class "focus:bg-green-600"


focus__bg_green_700 : Html.Attribute msg
focus__bg_green_700 =
    A.class "focus:bg-green-700"


focus__bg_green_800 : Html.Attribute msg
focus__bg_green_800 =
    A.class "focus:bg-green-800"


focus__bg_green_900 : Html.Attribute msg
focus__bg_green_900 =
    A.class "focus:bg-green-900"


focus__bg_teal_100 : Html.Attribute msg
focus__bg_teal_100 =
    A.class "focus:bg-teal-100"


focus__bg_teal_200 : Html.Attribute msg
focus__bg_teal_200 =
    A.class "focus:bg-teal-200"


focus__bg_teal_300 : Html.Attribute msg
focus__bg_teal_300 =
    A.class "focus:bg-teal-300"


focus__bg_teal_400 : Html.Attribute msg
focus__bg_teal_400 =
    A.class "focus:bg-teal-400"


focus__bg_teal_500 : Html.Attribute msg
focus__bg_teal_500 =
    A.class "focus:bg-teal-500"


focus__bg_teal_600 : Html.Attribute msg
focus__bg_teal_600 =
    A.class "focus:bg-teal-600"


focus__bg_teal_700 : Html.Attribute msg
focus__bg_teal_700 =
    A.class "focus:bg-teal-700"


focus__bg_teal_800 : Html.Attribute msg
focus__bg_teal_800 =
    A.class "focus:bg-teal-800"


focus__bg_teal_900 : Html.Attribute msg
focus__bg_teal_900 =
    A.class "focus:bg-teal-900"


focus__bg_blue_100 : Html.Attribute msg
focus__bg_blue_100 =
    A.class "focus:bg-blue-100"


focus__bg_blue_200 : Html.Attribute msg
focus__bg_blue_200 =
    A.class "focus:bg-blue-200"


focus__bg_blue_300 : Html.Attribute msg
focus__bg_blue_300 =
    A.class "focus:bg-blue-300"


focus__bg_blue_400 : Html.Attribute msg
focus__bg_blue_400 =
    A.class "focus:bg-blue-400"


focus__bg_blue_500 : Html.Attribute msg
focus__bg_blue_500 =
    A.class "focus:bg-blue-500"


focus__bg_blue_600 : Html.Attribute msg
focus__bg_blue_600 =
    A.class "focus:bg-blue-600"


focus__bg_blue_700 : Html.Attribute msg
focus__bg_blue_700 =
    A.class "focus:bg-blue-700"


focus__bg_blue_800 : Html.Attribute msg
focus__bg_blue_800 =
    A.class "focus:bg-blue-800"


focus__bg_blue_900 : Html.Attribute msg
focus__bg_blue_900 =
    A.class "focus:bg-blue-900"


focus__bg_indigo_100 : Html.Attribute msg
focus__bg_indigo_100 =
    A.class "focus:bg-indigo-100"


focus__bg_indigo_200 : Html.Attribute msg
focus__bg_indigo_200 =
    A.class "focus:bg-indigo-200"


focus__bg_indigo_300 : Html.Attribute msg
focus__bg_indigo_300 =
    A.class "focus:bg-indigo-300"


focus__bg_indigo_400 : Html.Attribute msg
focus__bg_indigo_400 =
    A.class "focus:bg-indigo-400"


focus__bg_indigo_500 : Html.Attribute msg
focus__bg_indigo_500 =
    A.class "focus:bg-indigo-500"


focus__bg_indigo_600 : Html.Attribute msg
focus__bg_indigo_600 =
    A.class "focus:bg-indigo-600"


focus__bg_indigo_700 : Html.Attribute msg
focus__bg_indigo_700 =
    A.class "focus:bg-indigo-700"


focus__bg_indigo_800 : Html.Attribute msg
focus__bg_indigo_800 =
    A.class "focus:bg-indigo-800"


focus__bg_indigo_900 : Html.Attribute msg
focus__bg_indigo_900 =
    A.class "focus:bg-indigo-900"


focus__bg_purple_100 : Html.Attribute msg
focus__bg_purple_100 =
    A.class "focus:bg-purple-100"


focus__bg_purple_200 : Html.Attribute msg
focus__bg_purple_200 =
    A.class "focus:bg-purple-200"


focus__bg_purple_300 : Html.Attribute msg
focus__bg_purple_300 =
    A.class "focus:bg-purple-300"


focus__bg_purple_400 : Html.Attribute msg
focus__bg_purple_400 =
    A.class "focus:bg-purple-400"


focus__bg_purple_500 : Html.Attribute msg
focus__bg_purple_500 =
    A.class "focus:bg-purple-500"


focus__bg_purple_600 : Html.Attribute msg
focus__bg_purple_600 =
    A.class "focus:bg-purple-600"


focus__bg_purple_700 : Html.Attribute msg
focus__bg_purple_700 =
    A.class "focus:bg-purple-700"


focus__bg_purple_800 : Html.Attribute msg
focus__bg_purple_800 =
    A.class "focus:bg-purple-800"


focus__bg_purple_900 : Html.Attribute msg
focus__bg_purple_900 =
    A.class "focus:bg-purple-900"


focus__bg_pink_100 : Html.Attribute msg
focus__bg_pink_100 =
    A.class "focus:bg-pink-100"


focus__bg_pink_200 : Html.Attribute msg
focus__bg_pink_200 =
    A.class "focus:bg-pink-200"


focus__bg_pink_300 : Html.Attribute msg
focus__bg_pink_300 =
    A.class "focus:bg-pink-300"


focus__bg_pink_400 : Html.Attribute msg
focus__bg_pink_400 =
    A.class "focus:bg-pink-400"


focus__bg_pink_500 : Html.Attribute msg
focus__bg_pink_500 =
    A.class "focus:bg-pink-500"


focus__bg_pink_600 : Html.Attribute msg
focus__bg_pink_600 =
    A.class "focus:bg-pink-600"


focus__bg_pink_700 : Html.Attribute msg
focus__bg_pink_700 =
    A.class "focus:bg-pink-700"


focus__bg_pink_800 : Html.Attribute msg
focus__bg_pink_800 =
    A.class "focus:bg-pink-800"


focus__bg_pink_900 : Html.Attribute msg
focus__bg_pink_900 =
    A.class "focus:bg-pink-900"


bg_bottom : Html.Attribute msg
bg_bottom =
    A.class "bg-bottom"


bg_center : Html.Attribute msg
bg_center =
    A.class "bg-center"


bg_left : Html.Attribute msg
bg_left =
    A.class "bg-left"


bg_left_bottom : Html.Attribute msg
bg_left_bottom =
    A.class "bg-left-bottom"


bg_left_top : Html.Attribute msg
bg_left_top =
    A.class "bg-left-top"


bg_right : Html.Attribute msg
bg_right =
    A.class "bg-right"


bg_right_bottom : Html.Attribute msg
bg_right_bottom =
    A.class "bg-right-bottom"


bg_right_top : Html.Attribute msg
bg_right_top =
    A.class "bg-right-top"


bg_top : Html.Attribute msg
bg_top =
    A.class "bg-top"


bg_repeat : Html.Attribute msg
bg_repeat =
    A.class "bg-repeat"


bg_no_repeat : Html.Attribute msg
bg_no_repeat =
    A.class "bg-no-repeat"


bg_repeat_x : Html.Attribute msg
bg_repeat_x =
    A.class "bg-repeat-x"


bg_repeat_y : Html.Attribute msg
bg_repeat_y =
    A.class "bg-repeat-y"


bg_repeat_round : Html.Attribute msg
bg_repeat_round =
    A.class "bg-repeat-round"


bg_repeat_space : Html.Attribute msg
bg_repeat_space =
    A.class "bg-repeat-space"


bg_auto : Html.Attribute msg
bg_auto =
    A.class "bg-auto"


bg_cover : Html.Attribute msg
bg_cover =
    A.class "bg-cover"


bg_contain : Html.Attribute msg
bg_contain =
    A.class "bg-contain"


border_collapse : Html.Attribute msg
border_collapse =
    A.class "border-collapse"


border_separate : Html.Attribute msg
border_separate =
    A.class "border-separate"


border_transparent : Html.Attribute msg
border_transparent =
    A.class "border-transparent"


border_black : Html.Attribute msg
border_black =
    A.class "border-black"


border_white : Html.Attribute msg
border_white =
    A.class "border-white"


border_gray_100 : Html.Attribute msg
border_gray_100 =
    A.class "border-gray-100"


border_gray_200 : Html.Attribute msg
border_gray_200 =
    A.class "border-gray-200"


border_gray_300 : Html.Attribute msg
border_gray_300 =
    A.class "border-gray-300"


border_gray_400 : Html.Attribute msg
border_gray_400 =
    A.class "border-gray-400"


border_gray_500 : Html.Attribute msg
border_gray_500 =
    A.class "border-gray-500"


border_gray_600 : Html.Attribute msg
border_gray_600 =
    A.class "border-gray-600"


border_gray_700 : Html.Attribute msg
border_gray_700 =
    A.class "border-gray-700"


border_gray_800 : Html.Attribute msg
border_gray_800 =
    A.class "border-gray-800"


border_gray_900 : Html.Attribute msg
border_gray_900 =
    A.class "border-gray-900"


border_red_100 : Html.Attribute msg
border_red_100 =
    A.class "border-red-100"


border_red_200 : Html.Attribute msg
border_red_200 =
    A.class "border-red-200"


border_red_300 : Html.Attribute msg
border_red_300 =
    A.class "border-red-300"


border_red_400 : Html.Attribute msg
border_red_400 =
    A.class "border-red-400"


border_red_500 : Html.Attribute msg
border_red_500 =
    A.class "border-red-500"


border_red_600 : Html.Attribute msg
border_red_600 =
    A.class "border-red-600"


border_red_700 : Html.Attribute msg
border_red_700 =
    A.class "border-red-700"


border_red_800 : Html.Attribute msg
border_red_800 =
    A.class "border-red-800"


border_red_900 : Html.Attribute msg
border_red_900 =
    A.class "border-red-900"


border_orange_100 : Html.Attribute msg
border_orange_100 =
    A.class "border-orange-100"


border_orange_200 : Html.Attribute msg
border_orange_200 =
    A.class "border-orange-200"


border_orange_300 : Html.Attribute msg
border_orange_300 =
    A.class "border-orange-300"


border_orange_400 : Html.Attribute msg
border_orange_400 =
    A.class "border-orange-400"


border_orange_500 : Html.Attribute msg
border_orange_500 =
    A.class "border-orange-500"


border_orange_600 : Html.Attribute msg
border_orange_600 =
    A.class "border-orange-600"


border_orange_700 : Html.Attribute msg
border_orange_700 =
    A.class "border-orange-700"


border_orange_800 : Html.Attribute msg
border_orange_800 =
    A.class "border-orange-800"


border_orange_900 : Html.Attribute msg
border_orange_900 =
    A.class "border-orange-900"


border_yellow_100 : Html.Attribute msg
border_yellow_100 =
    A.class "border-yellow-100"


border_yellow_200 : Html.Attribute msg
border_yellow_200 =
    A.class "border-yellow-200"


border_yellow_300 : Html.Attribute msg
border_yellow_300 =
    A.class "border-yellow-300"


border_yellow_400 : Html.Attribute msg
border_yellow_400 =
    A.class "border-yellow-400"


border_yellow_500 : Html.Attribute msg
border_yellow_500 =
    A.class "border-yellow-500"


border_yellow_600 : Html.Attribute msg
border_yellow_600 =
    A.class "border-yellow-600"


border_yellow_700 : Html.Attribute msg
border_yellow_700 =
    A.class "border-yellow-700"


border_yellow_800 : Html.Attribute msg
border_yellow_800 =
    A.class "border-yellow-800"


border_yellow_900 : Html.Attribute msg
border_yellow_900 =
    A.class "border-yellow-900"


border_green_100 : Html.Attribute msg
border_green_100 =
    A.class "border-green-100"


border_green_200 : Html.Attribute msg
border_green_200 =
    A.class "border-green-200"


border_green_300 : Html.Attribute msg
border_green_300 =
    A.class "border-green-300"


border_green_400 : Html.Attribute msg
border_green_400 =
    A.class "border-green-400"


border_green_500 : Html.Attribute msg
border_green_500 =
    A.class "border-green-500"


border_green_600 : Html.Attribute msg
border_green_600 =
    A.class "border-green-600"


border_green_700 : Html.Attribute msg
border_green_700 =
    A.class "border-green-700"


border_green_800 : Html.Attribute msg
border_green_800 =
    A.class "border-green-800"


border_green_900 : Html.Attribute msg
border_green_900 =
    A.class "border-green-900"


border_teal_100 : Html.Attribute msg
border_teal_100 =
    A.class "border-teal-100"


border_teal_200 : Html.Attribute msg
border_teal_200 =
    A.class "border-teal-200"


border_teal_300 : Html.Attribute msg
border_teal_300 =
    A.class "border-teal-300"


border_teal_400 : Html.Attribute msg
border_teal_400 =
    A.class "border-teal-400"


border_teal_500 : Html.Attribute msg
border_teal_500 =
    A.class "border-teal-500"


border_teal_600 : Html.Attribute msg
border_teal_600 =
    A.class "border-teal-600"


border_teal_700 : Html.Attribute msg
border_teal_700 =
    A.class "border-teal-700"


border_teal_800 : Html.Attribute msg
border_teal_800 =
    A.class "border-teal-800"


border_teal_900 : Html.Attribute msg
border_teal_900 =
    A.class "border-teal-900"


border_blue_100 : Html.Attribute msg
border_blue_100 =
    A.class "border-blue-100"


border_blue_200 : Html.Attribute msg
border_blue_200 =
    A.class "border-blue-200"


border_blue_300 : Html.Attribute msg
border_blue_300 =
    A.class "border-blue-300"


border_blue_400 : Html.Attribute msg
border_blue_400 =
    A.class "border-blue-400"


border_blue_500 : Html.Attribute msg
border_blue_500 =
    A.class "border-blue-500"


border_blue_600 : Html.Attribute msg
border_blue_600 =
    A.class "border-blue-600"


border_blue_700 : Html.Attribute msg
border_blue_700 =
    A.class "border-blue-700"


border_blue_800 : Html.Attribute msg
border_blue_800 =
    A.class "border-blue-800"


border_blue_900 : Html.Attribute msg
border_blue_900 =
    A.class "border-blue-900"


border_indigo_100 : Html.Attribute msg
border_indigo_100 =
    A.class "border-indigo-100"


border_indigo_200 : Html.Attribute msg
border_indigo_200 =
    A.class "border-indigo-200"


border_indigo_300 : Html.Attribute msg
border_indigo_300 =
    A.class "border-indigo-300"


border_indigo_400 : Html.Attribute msg
border_indigo_400 =
    A.class "border-indigo-400"


border_indigo_500 : Html.Attribute msg
border_indigo_500 =
    A.class "border-indigo-500"


border_indigo_600 : Html.Attribute msg
border_indigo_600 =
    A.class "border-indigo-600"


border_indigo_700 : Html.Attribute msg
border_indigo_700 =
    A.class "border-indigo-700"


border_indigo_800 : Html.Attribute msg
border_indigo_800 =
    A.class "border-indigo-800"


border_indigo_900 : Html.Attribute msg
border_indigo_900 =
    A.class "border-indigo-900"


border_purple_100 : Html.Attribute msg
border_purple_100 =
    A.class "border-purple-100"


border_purple_200 : Html.Attribute msg
border_purple_200 =
    A.class "border-purple-200"


border_purple_300 : Html.Attribute msg
border_purple_300 =
    A.class "border-purple-300"


border_purple_400 : Html.Attribute msg
border_purple_400 =
    A.class "border-purple-400"


border_purple_500 : Html.Attribute msg
border_purple_500 =
    A.class "border-purple-500"


border_purple_600 : Html.Attribute msg
border_purple_600 =
    A.class "border-purple-600"


border_purple_700 : Html.Attribute msg
border_purple_700 =
    A.class "border-purple-700"


border_purple_800 : Html.Attribute msg
border_purple_800 =
    A.class "border-purple-800"


border_purple_900 : Html.Attribute msg
border_purple_900 =
    A.class "border-purple-900"


border_pink_100 : Html.Attribute msg
border_pink_100 =
    A.class "border-pink-100"


border_pink_200 : Html.Attribute msg
border_pink_200 =
    A.class "border-pink-200"


border_pink_300 : Html.Attribute msg
border_pink_300 =
    A.class "border-pink-300"


border_pink_400 : Html.Attribute msg
border_pink_400 =
    A.class "border-pink-400"


border_pink_500 : Html.Attribute msg
border_pink_500 =
    A.class "border-pink-500"


border_pink_600 : Html.Attribute msg
border_pink_600 =
    A.class "border-pink-600"


border_pink_700 : Html.Attribute msg
border_pink_700 =
    A.class "border-pink-700"


border_pink_800 : Html.Attribute msg
border_pink_800 =
    A.class "border-pink-800"


border_pink_900 : Html.Attribute msg
border_pink_900 =
    A.class "border-pink-900"


hover__border_transparent : Html.Attribute msg
hover__border_transparent =
    A.class "hover:border-transparent"


hover__border_black : Html.Attribute msg
hover__border_black =
    A.class "hover:border-black"


hover__border_white : Html.Attribute msg
hover__border_white =
    A.class "hover:border-white"


hover__border_gray_100 : Html.Attribute msg
hover__border_gray_100 =
    A.class "hover:border-gray-100"


hover__border_gray_200 : Html.Attribute msg
hover__border_gray_200 =
    A.class "hover:border-gray-200"


hover__border_gray_300 : Html.Attribute msg
hover__border_gray_300 =
    A.class "hover:border-gray-300"


hover__border_gray_400 : Html.Attribute msg
hover__border_gray_400 =
    A.class "hover:border-gray-400"


hover__border_gray_500 : Html.Attribute msg
hover__border_gray_500 =
    A.class "hover:border-gray-500"


hover__border_gray_600 : Html.Attribute msg
hover__border_gray_600 =
    A.class "hover:border-gray-600"


hover__border_gray_700 : Html.Attribute msg
hover__border_gray_700 =
    A.class "hover:border-gray-700"


hover__border_gray_800 : Html.Attribute msg
hover__border_gray_800 =
    A.class "hover:border-gray-800"


hover__border_gray_900 : Html.Attribute msg
hover__border_gray_900 =
    A.class "hover:border-gray-900"


hover__border_red_100 : Html.Attribute msg
hover__border_red_100 =
    A.class "hover:border-red-100"


hover__border_red_200 : Html.Attribute msg
hover__border_red_200 =
    A.class "hover:border-red-200"


hover__border_red_300 : Html.Attribute msg
hover__border_red_300 =
    A.class "hover:border-red-300"


hover__border_red_400 : Html.Attribute msg
hover__border_red_400 =
    A.class "hover:border-red-400"


hover__border_red_500 : Html.Attribute msg
hover__border_red_500 =
    A.class "hover:border-red-500"


hover__border_red_600 : Html.Attribute msg
hover__border_red_600 =
    A.class "hover:border-red-600"


hover__border_red_700 : Html.Attribute msg
hover__border_red_700 =
    A.class "hover:border-red-700"


hover__border_red_800 : Html.Attribute msg
hover__border_red_800 =
    A.class "hover:border-red-800"


hover__border_red_900 : Html.Attribute msg
hover__border_red_900 =
    A.class "hover:border-red-900"


hover__border_orange_100 : Html.Attribute msg
hover__border_orange_100 =
    A.class "hover:border-orange-100"


hover__border_orange_200 : Html.Attribute msg
hover__border_orange_200 =
    A.class "hover:border-orange-200"


hover__border_orange_300 : Html.Attribute msg
hover__border_orange_300 =
    A.class "hover:border-orange-300"


hover__border_orange_400 : Html.Attribute msg
hover__border_orange_400 =
    A.class "hover:border-orange-400"


hover__border_orange_500 : Html.Attribute msg
hover__border_orange_500 =
    A.class "hover:border-orange-500"


hover__border_orange_600 : Html.Attribute msg
hover__border_orange_600 =
    A.class "hover:border-orange-600"


hover__border_orange_700 : Html.Attribute msg
hover__border_orange_700 =
    A.class "hover:border-orange-700"


hover__border_orange_800 : Html.Attribute msg
hover__border_orange_800 =
    A.class "hover:border-orange-800"


hover__border_orange_900 : Html.Attribute msg
hover__border_orange_900 =
    A.class "hover:border-orange-900"


hover__border_yellow_100 : Html.Attribute msg
hover__border_yellow_100 =
    A.class "hover:border-yellow-100"


hover__border_yellow_200 : Html.Attribute msg
hover__border_yellow_200 =
    A.class "hover:border-yellow-200"


hover__border_yellow_300 : Html.Attribute msg
hover__border_yellow_300 =
    A.class "hover:border-yellow-300"


hover__border_yellow_400 : Html.Attribute msg
hover__border_yellow_400 =
    A.class "hover:border-yellow-400"


hover__border_yellow_500 : Html.Attribute msg
hover__border_yellow_500 =
    A.class "hover:border-yellow-500"


hover__border_yellow_600 : Html.Attribute msg
hover__border_yellow_600 =
    A.class "hover:border-yellow-600"


hover__border_yellow_700 : Html.Attribute msg
hover__border_yellow_700 =
    A.class "hover:border-yellow-700"


hover__border_yellow_800 : Html.Attribute msg
hover__border_yellow_800 =
    A.class "hover:border-yellow-800"


hover__border_yellow_900 : Html.Attribute msg
hover__border_yellow_900 =
    A.class "hover:border-yellow-900"


hover__border_green_100 : Html.Attribute msg
hover__border_green_100 =
    A.class "hover:border-green-100"


hover__border_green_200 : Html.Attribute msg
hover__border_green_200 =
    A.class "hover:border-green-200"


hover__border_green_300 : Html.Attribute msg
hover__border_green_300 =
    A.class "hover:border-green-300"


hover__border_green_400 : Html.Attribute msg
hover__border_green_400 =
    A.class "hover:border-green-400"


hover__border_green_500 : Html.Attribute msg
hover__border_green_500 =
    A.class "hover:border-green-500"


hover__border_green_600 : Html.Attribute msg
hover__border_green_600 =
    A.class "hover:border-green-600"


hover__border_green_700 : Html.Attribute msg
hover__border_green_700 =
    A.class "hover:border-green-700"


hover__border_green_800 : Html.Attribute msg
hover__border_green_800 =
    A.class "hover:border-green-800"


hover__border_green_900 : Html.Attribute msg
hover__border_green_900 =
    A.class "hover:border-green-900"


hover__border_teal_100 : Html.Attribute msg
hover__border_teal_100 =
    A.class "hover:border-teal-100"


hover__border_teal_200 : Html.Attribute msg
hover__border_teal_200 =
    A.class "hover:border-teal-200"


hover__border_teal_300 : Html.Attribute msg
hover__border_teal_300 =
    A.class "hover:border-teal-300"


hover__border_teal_400 : Html.Attribute msg
hover__border_teal_400 =
    A.class "hover:border-teal-400"


hover__border_teal_500 : Html.Attribute msg
hover__border_teal_500 =
    A.class "hover:border-teal-500"


hover__border_teal_600 : Html.Attribute msg
hover__border_teal_600 =
    A.class "hover:border-teal-600"


hover__border_teal_700 : Html.Attribute msg
hover__border_teal_700 =
    A.class "hover:border-teal-700"


hover__border_teal_800 : Html.Attribute msg
hover__border_teal_800 =
    A.class "hover:border-teal-800"


hover__border_teal_900 : Html.Attribute msg
hover__border_teal_900 =
    A.class "hover:border-teal-900"


hover__border_blue_100 : Html.Attribute msg
hover__border_blue_100 =
    A.class "hover:border-blue-100"


hover__border_blue_200 : Html.Attribute msg
hover__border_blue_200 =
    A.class "hover:border-blue-200"


hover__border_blue_300 : Html.Attribute msg
hover__border_blue_300 =
    A.class "hover:border-blue-300"


hover__border_blue_400 : Html.Attribute msg
hover__border_blue_400 =
    A.class "hover:border-blue-400"


hover__border_blue_500 : Html.Attribute msg
hover__border_blue_500 =
    A.class "hover:border-blue-500"


hover__border_blue_600 : Html.Attribute msg
hover__border_blue_600 =
    A.class "hover:border-blue-600"


hover__border_blue_700 : Html.Attribute msg
hover__border_blue_700 =
    A.class "hover:border-blue-700"


hover__border_blue_800 : Html.Attribute msg
hover__border_blue_800 =
    A.class "hover:border-blue-800"


hover__border_blue_900 : Html.Attribute msg
hover__border_blue_900 =
    A.class "hover:border-blue-900"


hover__border_indigo_100 : Html.Attribute msg
hover__border_indigo_100 =
    A.class "hover:border-indigo-100"


hover__border_indigo_200 : Html.Attribute msg
hover__border_indigo_200 =
    A.class "hover:border-indigo-200"


hover__border_indigo_300 : Html.Attribute msg
hover__border_indigo_300 =
    A.class "hover:border-indigo-300"


hover__border_indigo_400 : Html.Attribute msg
hover__border_indigo_400 =
    A.class "hover:border-indigo-400"


hover__border_indigo_500 : Html.Attribute msg
hover__border_indigo_500 =
    A.class "hover:border-indigo-500"


hover__border_indigo_600 : Html.Attribute msg
hover__border_indigo_600 =
    A.class "hover:border-indigo-600"


hover__border_indigo_700 : Html.Attribute msg
hover__border_indigo_700 =
    A.class "hover:border-indigo-700"


hover__border_indigo_800 : Html.Attribute msg
hover__border_indigo_800 =
    A.class "hover:border-indigo-800"


hover__border_indigo_900 : Html.Attribute msg
hover__border_indigo_900 =
    A.class "hover:border-indigo-900"


hover__border_purple_100 : Html.Attribute msg
hover__border_purple_100 =
    A.class "hover:border-purple-100"


hover__border_purple_200 : Html.Attribute msg
hover__border_purple_200 =
    A.class "hover:border-purple-200"


hover__border_purple_300 : Html.Attribute msg
hover__border_purple_300 =
    A.class "hover:border-purple-300"


hover__border_purple_400 : Html.Attribute msg
hover__border_purple_400 =
    A.class "hover:border-purple-400"


hover__border_purple_500 : Html.Attribute msg
hover__border_purple_500 =
    A.class "hover:border-purple-500"


hover__border_purple_600 : Html.Attribute msg
hover__border_purple_600 =
    A.class "hover:border-purple-600"


hover__border_purple_700 : Html.Attribute msg
hover__border_purple_700 =
    A.class "hover:border-purple-700"


hover__border_purple_800 : Html.Attribute msg
hover__border_purple_800 =
    A.class "hover:border-purple-800"


hover__border_purple_900 : Html.Attribute msg
hover__border_purple_900 =
    A.class "hover:border-purple-900"


hover__border_pink_100 : Html.Attribute msg
hover__border_pink_100 =
    A.class "hover:border-pink-100"


hover__border_pink_200 : Html.Attribute msg
hover__border_pink_200 =
    A.class "hover:border-pink-200"


hover__border_pink_300 : Html.Attribute msg
hover__border_pink_300 =
    A.class "hover:border-pink-300"


hover__border_pink_400 : Html.Attribute msg
hover__border_pink_400 =
    A.class "hover:border-pink-400"


hover__border_pink_500 : Html.Attribute msg
hover__border_pink_500 =
    A.class "hover:border-pink-500"


hover__border_pink_600 : Html.Attribute msg
hover__border_pink_600 =
    A.class "hover:border-pink-600"


hover__border_pink_700 : Html.Attribute msg
hover__border_pink_700 =
    A.class "hover:border-pink-700"


hover__border_pink_800 : Html.Attribute msg
hover__border_pink_800 =
    A.class "hover:border-pink-800"


hover__border_pink_900 : Html.Attribute msg
hover__border_pink_900 =
    A.class "hover:border-pink-900"


focus__border_transparent : Html.Attribute msg
focus__border_transparent =
    A.class "focus:border-transparent"


focus__border_black : Html.Attribute msg
focus__border_black =
    A.class "focus:border-black"


focus__border_white : Html.Attribute msg
focus__border_white =
    A.class "focus:border-white"


focus__border_gray_100 : Html.Attribute msg
focus__border_gray_100 =
    A.class "focus:border-gray-100"


focus__border_gray_200 : Html.Attribute msg
focus__border_gray_200 =
    A.class "focus:border-gray-200"


focus__border_gray_300 : Html.Attribute msg
focus__border_gray_300 =
    A.class "focus:border-gray-300"


focus__border_gray_400 : Html.Attribute msg
focus__border_gray_400 =
    A.class "focus:border-gray-400"


focus__border_gray_500 : Html.Attribute msg
focus__border_gray_500 =
    A.class "focus:border-gray-500"


focus__border_gray_600 : Html.Attribute msg
focus__border_gray_600 =
    A.class "focus:border-gray-600"


focus__border_gray_700 : Html.Attribute msg
focus__border_gray_700 =
    A.class "focus:border-gray-700"


focus__border_gray_800 : Html.Attribute msg
focus__border_gray_800 =
    A.class "focus:border-gray-800"


focus__border_gray_900 : Html.Attribute msg
focus__border_gray_900 =
    A.class "focus:border-gray-900"


focus__border_red_100 : Html.Attribute msg
focus__border_red_100 =
    A.class "focus:border-red-100"


focus__border_red_200 : Html.Attribute msg
focus__border_red_200 =
    A.class "focus:border-red-200"


focus__border_red_300 : Html.Attribute msg
focus__border_red_300 =
    A.class "focus:border-red-300"


focus__border_red_400 : Html.Attribute msg
focus__border_red_400 =
    A.class "focus:border-red-400"


focus__border_red_500 : Html.Attribute msg
focus__border_red_500 =
    A.class "focus:border-red-500"


focus__border_red_600 : Html.Attribute msg
focus__border_red_600 =
    A.class "focus:border-red-600"


focus__border_red_700 : Html.Attribute msg
focus__border_red_700 =
    A.class "focus:border-red-700"


focus__border_red_800 : Html.Attribute msg
focus__border_red_800 =
    A.class "focus:border-red-800"


focus__border_red_900 : Html.Attribute msg
focus__border_red_900 =
    A.class "focus:border-red-900"


focus__border_orange_100 : Html.Attribute msg
focus__border_orange_100 =
    A.class "focus:border-orange-100"


focus__border_orange_200 : Html.Attribute msg
focus__border_orange_200 =
    A.class "focus:border-orange-200"


focus__border_orange_300 : Html.Attribute msg
focus__border_orange_300 =
    A.class "focus:border-orange-300"


focus__border_orange_400 : Html.Attribute msg
focus__border_orange_400 =
    A.class "focus:border-orange-400"


focus__border_orange_500 : Html.Attribute msg
focus__border_orange_500 =
    A.class "focus:border-orange-500"


focus__border_orange_600 : Html.Attribute msg
focus__border_orange_600 =
    A.class "focus:border-orange-600"


focus__border_orange_700 : Html.Attribute msg
focus__border_orange_700 =
    A.class "focus:border-orange-700"


focus__border_orange_800 : Html.Attribute msg
focus__border_orange_800 =
    A.class "focus:border-orange-800"


focus__border_orange_900 : Html.Attribute msg
focus__border_orange_900 =
    A.class "focus:border-orange-900"


focus__border_yellow_100 : Html.Attribute msg
focus__border_yellow_100 =
    A.class "focus:border-yellow-100"


focus__border_yellow_200 : Html.Attribute msg
focus__border_yellow_200 =
    A.class "focus:border-yellow-200"


focus__border_yellow_300 : Html.Attribute msg
focus__border_yellow_300 =
    A.class "focus:border-yellow-300"


focus__border_yellow_400 : Html.Attribute msg
focus__border_yellow_400 =
    A.class "focus:border-yellow-400"


focus__border_yellow_500 : Html.Attribute msg
focus__border_yellow_500 =
    A.class "focus:border-yellow-500"


focus__border_yellow_600 : Html.Attribute msg
focus__border_yellow_600 =
    A.class "focus:border-yellow-600"


focus__border_yellow_700 : Html.Attribute msg
focus__border_yellow_700 =
    A.class "focus:border-yellow-700"


focus__border_yellow_800 : Html.Attribute msg
focus__border_yellow_800 =
    A.class "focus:border-yellow-800"


focus__border_yellow_900 : Html.Attribute msg
focus__border_yellow_900 =
    A.class "focus:border-yellow-900"


focus__border_green_100 : Html.Attribute msg
focus__border_green_100 =
    A.class "focus:border-green-100"


focus__border_green_200 : Html.Attribute msg
focus__border_green_200 =
    A.class "focus:border-green-200"


focus__border_green_300 : Html.Attribute msg
focus__border_green_300 =
    A.class "focus:border-green-300"


focus__border_green_400 : Html.Attribute msg
focus__border_green_400 =
    A.class "focus:border-green-400"


focus__border_green_500 : Html.Attribute msg
focus__border_green_500 =
    A.class "focus:border-green-500"


focus__border_green_600 : Html.Attribute msg
focus__border_green_600 =
    A.class "focus:border-green-600"


focus__border_green_700 : Html.Attribute msg
focus__border_green_700 =
    A.class "focus:border-green-700"


focus__border_green_800 : Html.Attribute msg
focus__border_green_800 =
    A.class "focus:border-green-800"


focus__border_green_900 : Html.Attribute msg
focus__border_green_900 =
    A.class "focus:border-green-900"


focus__border_teal_100 : Html.Attribute msg
focus__border_teal_100 =
    A.class "focus:border-teal-100"


focus__border_teal_200 : Html.Attribute msg
focus__border_teal_200 =
    A.class "focus:border-teal-200"


focus__border_teal_300 : Html.Attribute msg
focus__border_teal_300 =
    A.class "focus:border-teal-300"


focus__border_teal_400 : Html.Attribute msg
focus__border_teal_400 =
    A.class "focus:border-teal-400"


focus__border_teal_500 : Html.Attribute msg
focus__border_teal_500 =
    A.class "focus:border-teal-500"


focus__border_teal_600 : Html.Attribute msg
focus__border_teal_600 =
    A.class "focus:border-teal-600"


focus__border_teal_700 : Html.Attribute msg
focus__border_teal_700 =
    A.class "focus:border-teal-700"


focus__border_teal_800 : Html.Attribute msg
focus__border_teal_800 =
    A.class "focus:border-teal-800"


focus__border_teal_900 : Html.Attribute msg
focus__border_teal_900 =
    A.class "focus:border-teal-900"


focus__border_blue_100 : Html.Attribute msg
focus__border_blue_100 =
    A.class "focus:border-blue-100"


focus__border_blue_200 : Html.Attribute msg
focus__border_blue_200 =
    A.class "focus:border-blue-200"


focus__border_blue_300 : Html.Attribute msg
focus__border_blue_300 =
    A.class "focus:border-blue-300"


focus__border_blue_400 : Html.Attribute msg
focus__border_blue_400 =
    A.class "focus:border-blue-400"


focus__border_blue_500 : Html.Attribute msg
focus__border_blue_500 =
    A.class "focus:border-blue-500"


focus__border_blue_600 : Html.Attribute msg
focus__border_blue_600 =
    A.class "focus:border-blue-600"


focus__border_blue_700 : Html.Attribute msg
focus__border_blue_700 =
    A.class "focus:border-blue-700"


focus__border_blue_800 : Html.Attribute msg
focus__border_blue_800 =
    A.class "focus:border-blue-800"


focus__border_blue_900 : Html.Attribute msg
focus__border_blue_900 =
    A.class "focus:border-blue-900"


focus__border_indigo_100 : Html.Attribute msg
focus__border_indigo_100 =
    A.class "focus:border-indigo-100"


focus__border_indigo_200 : Html.Attribute msg
focus__border_indigo_200 =
    A.class "focus:border-indigo-200"


focus__border_indigo_300 : Html.Attribute msg
focus__border_indigo_300 =
    A.class "focus:border-indigo-300"


focus__border_indigo_400 : Html.Attribute msg
focus__border_indigo_400 =
    A.class "focus:border-indigo-400"


focus__border_indigo_500 : Html.Attribute msg
focus__border_indigo_500 =
    A.class "focus:border-indigo-500"


focus__border_indigo_600 : Html.Attribute msg
focus__border_indigo_600 =
    A.class "focus:border-indigo-600"


focus__border_indigo_700 : Html.Attribute msg
focus__border_indigo_700 =
    A.class "focus:border-indigo-700"


focus__border_indigo_800 : Html.Attribute msg
focus__border_indigo_800 =
    A.class "focus:border-indigo-800"


focus__border_indigo_900 : Html.Attribute msg
focus__border_indigo_900 =
    A.class "focus:border-indigo-900"


focus__border_purple_100 : Html.Attribute msg
focus__border_purple_100 =
    A.class "focus:border-purple-100"


focus__border_purple_200 : Html.Attribute msg
focus__border_purple_200 =
    A.class "focus:border-purple-200"


focus__border_purple_300 : Html.Attribute msg
focus__border_purple_300 =
    A.class "focus:border-purple-300"


focus__border_purple_400 : Html.Attribute msg
focus__border_purple_400 =
    A.class "focus:border-purple-400"


focus__border_purple_500 : Html.Attribute msg
focus__border_purple_500 =
    A.class "focus:border-purple-500"


focus__border_purple_600 : Html.Attribute msg
focus__border_purple_600 =
    A.class "focus:border-purple-600"


focus__border_purple_700 : Html.Attribute msg
focus__border_purple_700 =
    A.class "focus:border-purple-700"


focus__border_purple_800 : Html.Attribute msg
focus__border_purple_800 =
    A.class "focus:border-purple-800"


focus__border_purple_900 : Html.Attribute msg
focus__border_purple_900 =
    A.class "focus:border-purple-900"


focus__border_pink_100 : Html.Attribute msg
focus__border_pink_100 =
    A.class "focus:border-pink-100"


focus__border_pink_200 : Html.Attribute msg
focus__border_pink_200 =
    A.class "focus:border-pink-200"


focus__border_pink_300 : Html.Attribute msg
focus__border_pink_300 =
    A.class "focus:border-pink-300"


focus__border_pink_400 : Html.Attribute msg
focus__border_pink_400 =
    A.class "focus:border-pink-400"


focus__border_pink_500 : Html.Attribute msg
focus__border_pink_500 =
    A.class "focus:border-pink-500"


focus__border_pink_600 : Html.Attribute msg
focus__border_pink_600 =
    A.class "focus:border-pink-600"


focus__border_pink_700 : Html.Attribute msg
focus__border_pink_700 =
    A.class "focus:border-pink-700"


focus__border_pink_800 : Html.Attribute msg
focus__border_pink_800 =
    A.class "focus:border-pink-800"


focus__border_pink_900 : Html.Attribute msg
focus__border_pink_900 =
    A.class "focus:border-pink-900"


rounded_none : Html.Attribute msg
rounded_none =
    A.class "rounded-none"


rounded_sm : Html.Attribute msg
rounded_sm =
    A.class "rounded-sm"


rounded : Html.Attribute msg
rounded =
    A.class "rounded"


rounded_md : Html.Attribute msg
rounded_md =
    A.class "rounded-md"


rounded_lg : Html.Attribute msg
rounded_lg =
    A.class "rounded-lg"


rounded_full : Html.Attribute msg
rounded_full =
    A.class "rounded-full"


rounded_t_none : Html.Attribute msg
rounded_t_none =
    A.class "rounded-t-none"


rounded_r_none : Html.Attribute msg
rounded_r_none =
    A.class "rounded-r-none"


rounded_b_none : Html.Attribute msg
rounded_b_none =
    A.class "rounded-b-none"


rounded_l_none : Html.Attribute msg
rounded_l_none =
    A.class "rounded-l-none"


rounded_t_sm : Html.Attribute msg
rounded_t_sm =
    A.class "rounded-t-sm"


rounded_r_sm : Html.Attribute msg
rounded_r_sm =
    A.class "rounded-r-sm"


rounded_b_sm : Html.Attribute msg
rounded_b_sm =
    A.class "rounded-b-sm"


rounded_l_sm : Html.Attribute msg
rounded_l_sm =
    A.class "rounded-l-sm"


rounded_t : Html.Attribute msg
rounded_t =
    A.class "rounded-t"


rounded_r : Html.Attribute msg
rounded_r =
    A.class "rounded-r"


rounded_b : Html.Attribute msg
rounded_b =
    A.class "rounded-b"


rounded_l : Html.Attribute msg
rounded_l =
    A.class "rounded-l"


rounded_t_md : Html.Attribute msg
rounded_t_md =
    A.class "rounded-t-md"


rounded_r_md : Html.Attribute msg
rounded_r_md =
    A.class "rounded-r-md"


rounded_b_md : Html.Attribute msg
rounded_b_md =
    A.class "rounded-b-md"


rounded_l_md : Html.Attribute msg
rounded_l_md =
    A.class "rounded-l-md"


rounded_t_lg : Html.Attribute msg
rounded_t_lg =
    A.class "rounded-t-lg"


rounded_r_lg : Html.Attribute msg
rounded_r_lg =
    A.class "rounded-r-lg"


rounded_b_lg : Html.Attribute msg
rounded_b_lg =
    A.class "rounded-b-lg"


rounded_l_lg : Html.Attribute msg
rounded_l_lg =
    A.class "rounded-l-lg"


rounded_t_full : Html.Attribute msg
rounded_t_full =
    A.class "rounded-t-full"


rounded_r_full : Html.Attribute msg
rounded_r_full =
    A.class "rounded-r-full"


rounded_b_full : Html.Attribute msg
rounded_b_full =
    A.class "rounded-b-full"


rounded_l_full : Html.Attribute msg
rounded_l_full =
    A.class "rounded-l-full"


rounded_tl_none : Html.Attribute msg
rounded_tl_none =
    A.class "rounded-tl-none"


rounded_tr_none : Html.Attribute msg
rounded_tr_none =
    A.class "rounded-tr-none"


rounded_br_none : Html.Attribute msg
rounded_br_none =
    A.class "rounded-br-none"


rounded_bl_none : Html.Attribute msg
rounded_bl_none =
    A.class "rounded-bl-none"


rounded_tl_sm : Html.Attribute msg
rounded_tl_sm =
    A.class "rounded-tl-sm"


rounded_tr_sm : Html.Attribute msg
rounded_tr_sm =
    A.class "rounded-tr-sm"


rounded_br_sm : Html.Attribute msg
rounded_br_sm =
    A.class "rounded-br-sm"


rounded_bl_sm : Html.Attribute msg
rounded_bl_sm =
    A.class "rounded-bl-sm"


rounded_tl : Html.Attribute msg
rounded_tl =
    A.class "rounded-tl"


rounded_tr : Html.Attribute msg
rounded_tr =
    A.class "rounded-tr"


rounded_br : Html.Attribute msg
rounded_br =
    A.class "rounded-br"


rounded_bl : Html.Attribute msg
rounded_bl =
    A.class "rounded-bl"


rounded_tl_md : Html.Attribute msg
rounded_tl_md =
    A.class "rounded-tl-md"


rounded_tr_md : Html.Attribute msg
rounded_tr_md =
    A.class "rounded-tr-md"


rounded_br_md : Html.Attribute msg
rounded_br_md =
    A.class "rounded-br-md"


rounded_bl_md : Html.Attribute msg
rounded_bl_md =
    A.class "rounded-bl-md"


rounded_tl_lg : Html.Attribute msg
rounded_tl_lg =
    A.class "rounded-tl-lg"


rounded_tr_lg : Html.Attribute msg
rounded_tr_lg =
    A.class "rounded-tr-lg"


rounded_br_lg : Html.Attribute msg
rounded_br_lg =
    A.class "rounded-br-lg"


rounded_bl_lg : Html.Attribute msg
rounded_bl_lg =
    A.class "rounded-bl-lg"


rounded_tl_full : Html.Attribute msg
rounded_tl_full =
    A.class "rounded-tl-full"


rounded_tr_full : Html.Attribute msg
rounded_tr_full =
    A.class "rounded-tr-full"


rounded_br_full : Html.Attribute msg
rounded_br_full =
    A.class "rounded-br-full"


rounded_bl_full : Html.Attribute msg
rounded_bl_full =
    A.class "rounded-bl-full"


border_solid : Html.Attribute msg
border_solid =
    A.class "border-solid"


border_dashed : Html.Attribute msg
border_dashed =
    A.class "border-dashed"


border_dotted : Html.Attribute msg
border_dotted =
    A.class "border-dotted"


border_double : Html.Attribute msg
border_double =
    A.class "border-double"


border_none : Html.Attribute msg
border_none =
    A.class "border-none"


border_0 : Html.Attribute msg
border_0 =
    A.class "border-0"


border_2 : Html.Attribute msg
border_2 =
    A.class "border-2"


border_4 : Html.Attribute msg
border_4 =
    A.class "border-4"


border_8 : Html.Attribute msg
border_8 =
    A.class "border-8"


border : Html.Attribute msg
border =
    A.class "border"


border_t_0 : Html.Attribute msg
border_t_0 =
    A.class "border-t-0"


border_r_0 : Html.Attribute msg
border_r_0 =
    A.class "border-r-0"


border_b_0 : Html.Attribute msg
border_b_0 =
    A.class "border-b-0"


border_l_0 : Html.Attribute msg
border_l_0 =
    A.class "border-l-0"


border_t_2 : Html.Attribute msg
border_t_2 =
    A.class "border-t-2"


border_r_2 : Html.Attribute msg
border_r_2 =
    A.class "border-r-2"


border_b_2 : Html.Attribute msg
border_b_2 =
    A.class "border-b-2"


border_l_2 : Html.Attribute msg
border_l_2 =
    A.class "border-l-2"


border_t_4 : Html.Attribute msg
border_t_4 =
    A.class "border-t-4"


border_r_4 : Html.Attribute msg
border_r_4 =
    A.class "border-r-4"


border_b_4 : Html.Attribute msg
border_b_4 =
    A.class "border-b-4"


border_l_4 : Html.Attribute msg
border_l_4 =
    A.class "border-l-4"


border_t_8 : Html.Attribute msg
border_t_8 =
    A.class "border-t-8"


border_r_8 : Html.Attribute msg
border_r_8 =
    A.class "border-r-8"


border_b_8 : Html.Attribute msg
border_b_8 =
    A.class "border-b-8"


border_l_8 : Html.Attribute msg
border_l_8 =
    A.class "border-l-8"


border_t : Html.Attribute msg
border_t =
    A.class "border-t"


border_r : Html.Attribute msg
border_r =
    A.class "border-r"


border_b : Html.Attribute msg
border_b =
    A.class "border-b"


border_l : Html.Attribute msg
border_l =
    A.class "border-l"


box_border : Html.Attribute msg
box_border =
    A.class "box-border"


box_content : Html.Attribute msg
box_content =
    A.class "box-content"


cursor_auto : Html.Attribute msg
cursor_auto =
    A.class "cursor-auto"


cursor_default : Html.Attribute msg
cursor_default =
    A.class "cursor-default"


cursor_pointer : Html.Attribute msg
cursor_pointer =
    A.class "cursor-pointer"


cursor_wait : Html.Attribute msg
cursor_wait =
    A.class "cursor-wait"


cursor_text : Html.Attribute msg
cursor_text =
    A.class "cursor-text"


cursor_move : Html.Attribute msg
cursor_move =
    A.class "cursor-move"


cursor_not_allowed : Html.Attribute msg
cursor_not_allowed =
    A.class "cursor-not-allowed"


block : Html.Attribute msg
block =
    A.class "block"


inline_block : Html.Attribute msg
inline_block =
    A.class "inline-block"


inline : Html.Attribute msg
inline =
    A.class "inline"


flex : Html.Attribute msg
flex =
    A.class "flex"


inline_flex : Html.Attribute msg
inline_flex =
    A.class "inline-flex"


grid : Html.Attribute msg
grid =
    A.class "grid"


table : Html.Attribute msg
table =
    A.class "table"


table_caption : Html.Attribute msg
table_caption =
    A.class "table-caption"


table_cell : Html.Attribute msg
table_cell =
    A.class "table-cell"


table_column : Html.Attribute msg
table_column =
    A.class "table-column"


table_column_group : Html.Attribute msg
table_column_group =
    A.class "table-column-group"


table_footer_group : Html.Attribute msg
table_footer_group =
    A.class "table-footer-group"


table_header_group : Html.Attribute msg
table_header_group =
    A.class "table-header-group"


table_row_group : Html.Attribute msg
table_row_group =
    A.class "table-row-group"


table_row : Html.Attribute msg
table_row =
    A.class "table-row"


hidden : Html.Attribute msg
hidden =
    A.class "hidden"


flex_row : Html.Attribute msg
flex_row =
    A.class "flex-row"


flex_row_reverse : Html.Attribute msg
flex_row_reverse =
    A.class "flex-row-reverse"


flex_col : Html.Attribute msg
flex_col =
    A.class "flex-col"


flex_col_reverse : Html.Attribute msg
flex_col_reverse =
    A.class "flex-col-reverse"


flex_wrap : Html.Attribute msg
flex_wrap =
    A.class "flex-wrap"


flex_wrap_reverse : Html.Attribute msg
flex_wrap_reverse =
    A.class "flex-wrap-reverse"


flex_no_wrap : Html.Attribute msg
flex_no_wrap =
    A.class "flex-no-wrap"


items_start : Html.Attribute msg
items_start =
    A.class "items-start"


items_end : Html.Attribute msg
items_end =
    A.class "items-end"


items_center : Html.Attribute msg
items_center =
    A.class "items-center"


items_baseline : Html.Attribute msg
items_baseline =
    A.class "items-baseline"


items_stretch : Html.Attribute msg
items_stretch =
    A.class "items-stretch"


self_auto : Html.Attribute msg
self_auto =
    A.class "self-auto"


self_start : Html.Attribute msg
self_start =
    A.class "self-start"


self_end : Html.Attribute msg
self_end =
    A.class "self-end"


self_center : Html.Attribute msg
self_center =
    A.class "self-center"


self_stretch : Html.Attribute msg
self_stretch =
    A.class "self-stretch"


justify_start : Html.Attribute msg
justify_start =
    A.class "justify-start"


justify_end : Html.Attribute msg
justify_end =
    A.class "justify-end"


justify_center : Html.Attribute msg
justify_center =
    A.class "justify-center"


justify_between : Html.Attribute msg
justify_between =
    A.class "justify-between"


justify_around : Html.Attribute msg
justify_around =
    A.class "justify-around"


justify_evenly : Html.Attribute msg
justify_evenly =
    A.class "justify-evenly"


content_center : Html.Attribute msg
content_center =
    A.class "content-center"


content_start : Html.Attribute msg
content_start =
    A.class "content-start"


content_end : Html.Attribute msg
content_end =
    A.class "content-end"


content_between : Html.Attribute msg
content_between =
    A.class "content-between"


content_around : Html.Attribute msg
content_around =
    A.class "content-around"


flex_1 : Html.Attribute msg
flex_1 =
    A.class "flex-1"


flex_auto : Html.Attribute msg
flex_auto =
    A.class "flex-auto"


flex_initial : Html.Attribute msg
flex_initial =
    A.class "flex-initial"


flex_none : Html.Attribute msg
flex_none =
    A.class "flex-none"


flex_grow_0 : Html.Attribute msg
flex_grow_0 =
    A.class "flex-grow-0"


flex_grow : Html.Attribute msg
flex_grow =
    A.class "flex-grow"


flex_shrink_0 : Html.Attribute msg
flex_shrink_0 =
    A.class "flex-shrink-0"


flex_shrink : Html.Attribute msg
flex_shrink =
    A.class "flex-shrink"


order_1 : Html.Attribute msg
order_1 =
    A.class "order-1"


order_2 : Html.Attribute msg
order_2 =
    A.class "order-2"


order_3 : Html.Attribute msg
order_3 =
    A.class "order-3"


order_4 : Html.Attribute msg
order_4 =
    A.class "order-4"


order_5 : Html.Attribute msg
order_5 =
    A.class "order-5"


order_6 : Html.Attribute msg
order_6 =
    A.class "order-6"


order_7 : Html.Attribute msg
order_7 =
    A.class "order-7"


order_8 : Html.Attribute msg
order_8 =
    A.class "order-8"


order_9 : Html.Attribute msg
order_9 =
    A.class "order-9"


order_10 : Html.Attribute msg
order_10 =
    A.class "order-10"


order_11 : Html.Attribute msg
order_11 =
    A.class "order-11"


order_12 : Html.Attribute msg
order_12 =
    A.class "order-12"


order_first : Html.Attribute msg
order_first =
    A.class "order-first"


order_last : Html.Attribute msg
order_last =
    A.class "order-last"


order_none : Html.Attribute msg
order_none =
    A.class "order-none"


float_right : Html.Attribute msg
float_right =
    A.class "float-right"


float_left : Html.Attribute msg
float_left =
    A.class "float-left"


float_none : Html.Attribute msg
float_none =
    A.class "float-none"


clearfix__after : Html.Attribute msg
clearfix__after =
    A.class "clearfix:after"


clear_left : Html.Attribute msg
clear_left =
    A.class "clear-left"


clear_right : Html.Attribute msg
clear_right =
    A.class "clear-right"


clear_both : Html.Attribute msg
clear_both =
    A.class "clear-both"


font_sans : Html.Attribute msg
font_sans =
    A.class "font-sans"


font_serif : Html.Attribute msg
font_serif =
    A.class "font-serif"


font_mono : Html.Attribute msg
font_mono =
    A.class "font-mono"


font_hairline : Html.Attribute msg
font_hairline =
    A.class "font-hairline"


font_thin : Html.Attribute msg
font_thin =
    A.class "font-thin"


font_light : Html.Attribute msg
font_light =
    A.class "font-light"


font_normal : Html.Attribute msg
font_normal =
    A.class "font-normal"


font_medium : Html.Attribute msg
font_medium =
    A.class "font-medium"


font_semibold : Html.Attribute msg
font_semibold =
    A.class "font-semibold"


font_bold : Html.Attribute msg
font_bold =
    A.class "font-bold"


font_extrabold : Html.Attribute msg
font_extrabold =
    A.class "font-extrabold"


font_black : Html.Attribute msg
font_black =
    A.class "font-black"


hover__font_hairline : Html.Attribute msg
hover__font_hairline =
    A.class "hover:font-hairline"


hover__font_thin : Html.Attribute msg
hover__font_thin =
    A.class "hover:font-thin"


hover__font_light : Html.Attribute msg
hover__font_light =
    A.class "hover:font-light"


hover__font_normal : Html.Attribute msg
hover__font_normal =
    A.class "hover:font-normal"


hover__font_medium : Html.Attribute msg
hover__font_medium =
    A.class "hover:font-medium"


hover__font_semibold : Html.Attribute msg
hover__font_semibold =
    A.class "hover:font-semibold"


hover__font_bold : Html.Attribute msg
hover__font_bold =
    A.class "hover:font-bold"


hover__font_extrabold : Html.Attribute msg
hover__font_extrabold =
    A.class "hover:font-extrabold"


hover__font_black : Html.Attribute msg
hover__font_black =
    A.class "hover:font-black"


focus__font_hairline : Html.Attribute msg
focus__font_hairline =
    A.class "focus:font-hairline"


focus__font_thin : Html.Attribute msg
focus__font_thin =
    A.class "focus:font-thin"


focus__font_light : Html.Attribute msg
focus__font_light =
    A.class "focus:font-light"


focus__font_normal : Html.Attribute msg
focus__font_normal =
    A.class "focus:font-normal"


focus__font_medium : Html.Attribute msg
focus__font_medium =
    A.class "focus:font-medium"


focus__font_semibold : Html.Attribute msg
focus__font_semibold =
    A.class "focus:font-semibold"


focus__font_bold : Html.Attribute msg
focus__font_bold =
    A.class "focus:font-bold"


focus__font_extrabold : Html.Attribute msg
focus__font_extrabold =
    A.class "focus:font-extrabold"


focus__font_black : Html.Attribute msg
focus__font_black =
    A.class "focus:font-black"


h_0 : Html.Attribute msg
h_0 =
    A.class "h-0"


h_1 : Html.Attribute msg
h_1 =
    A.class "h-1"


h_2 : Html.Attribute msg
h_2 =
    A.class "h-2"


h_3 : Html.Attribute msg
h_3 =
    A.class "h-3"


h_4 : Html.Attribute msg
h_4 =
    A.class "h-4"


h_5 : Html.Attribute msg
h_5 =
    A.class "h-5"


h_6 : Html.Attribute msg
h_6 =
    A.class "h-6"


h_8 : Html.Attribute msg
h_8 =
    A.class "h-8"


h_10 : Html.Attribute msg
h_10 =
    A.class "h-10"


h_12 : Html.Attribute msg
h_12 =
    A.class "h-12"


h_16 : Html.Attribute msg
h_16 =
    A.class "h-16"


h_20 : Html.Attribute msg
h_20 =
    A.class "h-20"


h_24 : Html.Attribute msg
h_24 =
    A.class "h-24"


h_32 : Html.Attribute msg
h_32 =
    A.class "h-32"


h_40 : Html.Attribute msg
h_40 =
    A.class "h-40"


h_48 : Html.Attribute msg
h_48 =
    A.class "h-48"


h_56 : Html.Attribute msg
h_56 =
    A.class "h-56"


h_64 : Html.Attribute msg
h_64 =
    A.class "h-64"


h_auto : Html.Attribute msg
h_auto =
    A.class "h-auto"


h_px : Html.Attribute msg
h_px =
    A.class "h-px"


h_full : Html.Attribute msg
h_full =
    A.class "h-full"


h_screen : Html.Attribute msg
h_screen =
    A.class "h-screen"


leading_3 : Html.Attribute msg
leading_3 =
    A.class "leading-3"


leading_4 : Html.Attribute msg
leading_4 =
    A.class "leading-4"


leading_5 : Html.Attribute msg
leading_5 =
    A.class "leading-5"


leading_6 : Html.Attribute msg
leading_6 =
    A.class "leading-6"


leading_7 : Html.Attribute msg
leading_7 =
    A.class "leading-7"


leading_8 : Html.Attribute msg
leading_8 =
    A.class "leading-8"


leading_9 : Html.Attribute msg
leading_9 =
    A.class "leading-9"


leading_10 : Html.Attribute msg
leading_10 =
    A.class "leading-10"


leading_none : Html.Attribute msg
leading_none =
    A.class "leading-none"


leading_tight : Html.Attribute msg
leading_tight =
    A.class "leading-tight"


leading_snug : Html.Attribute msg
leading_snug =
    A.class "leading-snug"


leading_normal : Html.Attribute msg
leading_normal =
    A.class "leading-normal"


leading_relaxed : Html.Attribute msg
leading_relaxed =
    A.class "leading-relaxed"


leading_loose : Html.Attribute msg
leading_loose =
    A.class "leading-loose"


list_inside : Html.Attribute msg
list_inside =
    A.class "list-inside"


list_outside : Html.Attribute msg
list_outside =
    A.class "list-outside"


list_none : Html.Attribute msg
list_none =
    A.class "list-none"


list_disc : Html.Attribute msg
list_disc =
    A.class "list-disc"


list_decimal : Html.Attribute msg
list_decimal =
    A.class "list-decimal"


m_0 : Html.Attribute msg
m_0 =
    A.class "m-0"


m_1 : Html.Attribute msg
m_1 =
    A.class "m-1"


m_2 : Html.Attribute msg
m_2 =
    A.class "m-2"


m_3 : Html.Attribute msg
m_3 =
    A.class "m-3"


m_4 : Html.Attribute msg
m_4 =
    A.class "m-4"


m_5 : Html.Attribute msg
m_5 =
    A.class "m-5"


m_6 : Html.Attribute msg
m_6 =
    A.class "m-6"


m_8 : Html.Attribute msg
m_8 =
    A.class "m-8"


m_10 : Html.Attribute msg
m_10 =
    A.class "m-10"


m_12 : Html.Attribute msg
m_12 =
    A.class "m-12"


m_16 : Html.Attribute msg
m_16 =
    A.class "m-16"


m_20 : Html.Attribute msg
m_20 =
    A.class "m-20"


m_24 : Html.Attribute msg
m_24 =
    A.class "m-24"


m_32 : Html.Attribute msg
m_32 =
    A.class "m-32"


m_40 : Html.Attribute msg
m_40 =
    A.class "m-40"


m_48 : Html.Attribute msg
m_48 =
    A.class "m-48"


m_56 : Html.Attribute msg
m_56 =
    A.class "m-56"


m_64 : Html.Attribute msg
m_64 =
    A.class "m-64"


m_auto : Html.Attribute msg
m_auto =
    A.class "m-auto"


m_px : Html.Attribute msg
m_px =
    A.class "m-px"


neg_m_1 : Html.Attribute msg
neg_m_1 =
    A.class "-m-1"


neg_m_2 : Html.Attribute msg
neg_m_2 =
    A.class "-m-2"


neg_m_3 : Html.Attribute msg
neg_m_3 =
    A.class "-m-3"


neg_m_4 : Html.Attribute msg
neg_m_4 =
    A.class "-m-4"


neg_m_5 : Html.Attribute msg
neg_m_5 =
    A.class "-m-5"


neg_m_6 : Html.Attribute msg
neg_m_6 =
    A.class "-m-6"


neg_m_8 : Html.Attribute msg
neg_m_8 =
    A.class "-m-8"


neg_m_10 : Html.Attribute msg
neg_m_10 =
    A.class "-m-10"


neg_m_12 : Html.Attribute msg
neg_m_12 =
    A.class "-m-12"


neg_m_16 : Html.Attribute msg
neg_m_16 =
    A.class "-m-16"


neg_m_20 : Html.Attribute msg
neg_m_20 =
    A.class "-m-20"


neg_m_24 : Html.Attribute msg
neg_m_24 =
    A.class "-m-24"


neg_m_32 : Html.Attribute msg
neg_m_32 =
    A.class "-m-32"


neg_m_40 : Html.Attribute msg
neg_m_40 =
    A.class "-m-40"


neg_m_48 : Html.Attribute msg
neg_m_48 =
    A.class "-m-48"


neg_m_56 : Html.Attribute msg
neg_m_56 =
    A.class "-m-56"


neg_m_64 : Html.Attribute msg
neg_m_64 =
    A.class "-m-64"


neg_m_px : Html.Attribute msg
neg_m_px =
    A.class "-m-px"


my_0 : Html.Attribute msg
my_0 =
    A.class "my-0"


mx_0 : Html.Attribute msg
mx_0 =
    A.class "mx-0"


my_1 : Html.Attribute msg
my_1 =
    A.class "my-1"


mx_1 : Html.Attribute msg
mx_1 =
    A.class "mx-1"


my_2 : Html.Attribute msg
my_2 =
    A.class "my-2"


mx_2 : Html.Attribute msg
mx_2 =
    A.class "mx-2"


my_3 : Html.Attribute msg
my_3 =
    A.class "my-3"


mx_3 : Html.Attribute msg
mx_3 =
    A.class "mx-3"


my_4 : Html.Attribute msg
my_4 =
    A.class "my-4"


mx_4 : Html.Attribute msg
mx_4 =
    A.class "mx-4"


my_5 : Html.Attribute msg
my_5 =
    A.class "my-5"


mx_5 : Html.Attribute msg
mx_5 =
    A.class "mx-5"


my_6 : Html.Attribute msg
my_6 =
    A.class "my-6"


mx_6 : Html.Attribute msg
mx_6 =
    A.class "mx-6"


my_8 : Html.Attribute msg
my_8 =
    A.class "my-8"


mx_8 : Html.Attribute msg
mx_8 =
    A.class "mx-8"


my_10 : Html.Attribute msg
my_10 =
    A.class "my-10"


mx_10 : Html.Attribute msg
mx_10 =
    A.class "mx-10"


my_12 : Html.Attribute msg
my_12 =
    A.class "my-12"


mx_12 : Html.Attribute msg
mx_12 =
    A.class "mx-12"


my_16 : Html.Attribute msg
my_16 =
    A.class "my-16"


mx_16 : Html.Attribute msg
mx_16 =
    A.class "mx-16"


my_20 : Html.Attribute msg
my_20 =
    A.class "my-20"


mx_20 : Html.Attribute msg
mx_20 =
    A.class "mx-20"


my_24 : Html.Attribute msg
my_24 =
    A.class "my-24"


mx_24 : Html.Attribute msg
mx_24 =
    A.class "mx-24"


my_32 : Html.Attribute msg
my_32 =
    A.class "my-32"


mx_32 : Html.Attribute msg
mx_32 =
    A.class "mx-32"


my_40 : Html.Attribute msg
my_40 =
    A.class "my-40"


mx_40 : Html.Attribute msg
mx_40 =
    A.class "mx-40"


my_48 : Html.Attribute msg
my_48 =
    A.class "my-48"


mx_48 : Html.Attribute msg
mx_48 =
    A.class "mx-48"


my_56 : Html.Attribute msg
my_56 =
    A.class "my-56"


mx_56 : Html.Attribute msg
mx_56 =
    A.class "mx-56"


my_64 : Html.Attribute msg
my_64 =
    A.class "my-64"


mx_64 : Html.Attribute msg
mx_64 =
    A.class "mx-64"


my_auto : Html.Attribute msg
my_auto =
    A.class "my-auto"


mx_auto : Html.Attribute msg
mx_auto =
    A.class "mx-auto"


my_px : Html.Attribute msg
my_px =
    A.class "my-px"


mx_px : Html.Attribute msg
mx_px =
    A.class "mx-px"


neg_my_1 : Html.Attribute msg
neg_my_1 =
    A.class "-my-1"


neg_mx_1 : Html.Attribute msg
neg_mx_1 =
    A.class "-mx-1"


neg_my_2 : Html.Attribute msg
neg_my_2 =
    A.class "-my-2"


neg_mx_2 : Html.Attribute msg
neg_mx_2 =
    A.class "-mx-2"


neg_my_3 : Html.Attribute msg
neg_my_3 =
    A.class "-my-3"


neg_mx_3 : Html.Attribute msg
neg_mx_3 =
    A.class "-mx-3"


neg_my_4 : Html.Attribute msg
neg_my_4 =
    A.class "-my-4"


neg_mx_4 : Html.Attribute msg
neg_mx_4 =
    A.class "-mx-4"


neg_my_5 : Html.Attribute msg
neg_my_5 =
    A.class "-my-5"


neg_mx_5 : Html.Attribute msg
neg_mx_5 =
    A.class "-mx-5"


neg_my_6 : Html.Attribute msg
neg_my_6 =
    A.class "-my-6"


neg_mx_6 : Html.Attribute msg
neg_mx_6 =
    A.class "-mx-6"


neg_my_8 : Html.Attribute msg
neg_my_8 =
    A.class "-my-8"


neg_mx_8 : Html.Attribute msg
neg_mx_8 =
    A.class "-mx-8"


neg_my_10 : Html.Attribute msg
neg_my_10 =
    A.class "-my-10"


neg_mx_10 : Html.Attribute msg
neg_mx_10 =
    A.class "-mx-10"


neg_my_12 : Html.Attribute msg
neg_my_12 =
    A.class "-my-12"


neg_mx_12 : Html.Attribute msg
neg_mx_12 =
    A.class "-mx-12"


neg_my_16 : Html.Attribute msg
neg_my_16 =
    A.class "-my-16"


neg_mx_16 : Html.Attribute msg
neg_mx_16 =
    A.class "-mx-16"


neg_my_20 : Html.Attribute msg
neg_my_20 =
    A.class "-my-20"


neg_mx_20 : Html.Attribute msg
neg_mx_20 =
    A.class "-mx-20"


neg_my_24 : Html.Attribute msg
neg_my_24 =
    A.class "-my-24"


neg_mx_24 : Html.Attribute msg
neg_mx_24 =
    A.class "-mx-24"


neg_my_32 : Html.Attribute msg
neg_my_32 =
    A.class "-my-32"


neg_mx_32 : Html.Attribute msg
neg_mx_32 =
    A.class "-mx-32"


neg_my_40 : Html.Attribute msg
neg_my_40 =
    A.class "-my-40"


neg_mx_40 : Html.Attribute msg
neg_mx_40 =
    A.class "-mx-40"


neg_my_48 : Html.Attribute msg
neg_my_48 =
    A.class "-my-48"


neg_mx_48 : Html.Attribute msg
neg_mx_48 =
    A.class "-mx-48"


neg_my_56 : Html.Attribute msg
neg_my_56 =
    A.class "-my-56"


neg_mx_56 : Html.Attribute msg
neg_mx_56 =
    A.class "-mx-56"


neg_my_64 : Html.Attribute msg
neg_my_64 =
    A.class "-my-64"


neg_mx_64 : Html.Attribute msg
neg_mx_64 =
    A.class "-mx-64"


neg_my_px : Html.Attribute msg
neg_my_px =
    A.class "-my-px"


neg_mx_px : Html.Attribute msg
neg_mx_px =
    A.class "-mx-px"


mt_0 : Html.Attribute msg
mt_0 =
    A.class "mt-0"


mr_0 : Html.Attribute msg
mr_0 =
    A.class "mr-0"


mb_0 : Html.Attribute msg
mb_0 =
    A.class "mb-0"


ml_0 : Html.Attribute msg
ml_0 =
    A.class "ml-0"


mt_1 : Html.Attribute msg
mt_1 =
    A.class "mt-1"


mr_1 : Html.Attribute msg
mr_1 =
    A.class "mr-1"


mb_1 : Html.Attribute msg
mb_1 =
    A.class "mb-1"


ml_1 : Html.Attribute msg
ml_1 =
    A.class "ml-1"


mt_2 : Html.Attribute msg
mt_2 =
    A.class "mt-2"


mr_2 : Html.Attribute msg
mr_2 =
    A.class "mr-2"


mb_2 : Html.Attribute msg
mb_2 =
    A.class "mb-2"


ml_2 : Html.Attribute msg
ml_2 =
    A.class "ml-2"


mt_3 : Html.Attribute msg
mt_3 =
    A.class "mt-3"


mr_3 : Html.Attribute msg
mr_3 =
    A.class "mr-3"


mb_3 : Html.Attribute msg
mb_3 =
    A.class "mb-3"


ml_3 : Html.Attribute msg
ml_3 =
    A.class "ml-3"


mt_4 : Html.Attribute msg
mt_4 =
    A.class "mt-4"


mr_4 : Html.Attribute msg
mr_4 =
    A.class "mr-4"


mb_4 : Html.Attribute msg
mb_4 =
    A.class "mb-4"


ml_4 : Html.Attribute msg
ml_4 =
    A.class "ml-4"


mt_5 : Html.Attribute msg
mt_5 =
    A.class "mt-5"


mr_5 : Html.Attribute msg
mr_5 =
    A.class "mr-5"


mb_5 : Html.Attribute msg
mb_5 =
    A.class "mb-5"


ml_5 : Html.Attribute msg
ml_5 =
    A.class "ml-5"


mt_6 : Html.Attribute msg
mt_6 =
    A.class "mt-6"


mr_6 : Html.Attribute msg
mr_6 =
    A.class "mr-6"


mb_6 : Html.Attribute msg
mb_6 =
    A.class "mb-6"


ml_6 : Html.Attribute msg
ml_6 =
    A.class "ml-6"


mt_8 : Html.Attribute msg
mt_8 =
    A.class "mt-8"


mr_8 : Html.Attribute msg
mr_8 =
    A.class "mr-8"


mb_8 : Html.Attribute msg
mb_8 =
    A.class "mb-8"


ml_8 : Html.Attribute msg
ml_8 =
    A.class "ml-8"


mt_10 : Html.Attribute msg
mt_10 =
    A.class "mt-10"


mr_10 : Html.Attribute msg
mr_10 =
    A.class "mr-10"


mb_10 : Html.Attribute msg
mb_10 =
    A.class "mb-10"


ml_10 : Html.Attribute msg
ml_10 =
    A.class "ml-10"


mt_12 : Html.Attribute msg
mt_12 =
    A.class "mt-12"


mr_12 : Html.Attribute msg
mr_12 =
    A.class "mr-12"


mb_12 : Html.Attribute msg
mb_12 =
    A.class "mb-12"


ml_12 : Html.Attribute msg
ml_12 =
    A.class "ml-12"


mt_16 : Html.Attribute msg
mt_16 =
    A.class "mt-16"


mr_16 : Html.Attribute msg
mr_16 =
    A.class "mr-16"


mb_16 : Html.Attribute msg
mb_16 =
    A.class "mb-16"


ml_16 : Html.Attribute msg
ml_16 =
    A.class "ml-16"


mt_20 : Html.Attribute msg
mt_20 =
    A.class "mt-20"


mr_20 : Html.Attribute msg
mr_20 =
    A.class "mr-20"


mb_20 : Html.Attribute msg
mb_20 =
    A.class "mb-20"


ml_20 : Html.Attribute msg
ml_20 =
    A.class "ml-20"


mt_24 : Html.Attribute msg
mt_24 =
    A.class "mt-24"


mr_24 : Html.Attribute msg
mr_24 =
    A.class "mr-24"


mb_24 : Html.Attribute msg
mb_24 =
    A.class "mb-24"


ml_24 : Html.Attribute msg
ml_24 =
    A.class "ml-24"


mt_32 : Html.Attribute msg
mt_32 =
    A.class "mt-32"


mr_32 : Html.Attribute msg
mr_32 =
    A.class "mr-32"


mb_32 : Html.Attribute msg
mb_32 =
    A.class "mb-32"


ml_32 : Html.Attribute msg
ml_32 =
    A.class "ml-32"


mt_40 : Html.Attribute msg
mt_40 =
    A.class "mt-40"


mr_40 : Html.Attribute msg
mr_40 =
    A.class "mr-40"


mb_40 : Html.Attribute msg
mb_40 =
    A.class "mb-40"


ml_40 : Html.Attribute msg
ml_40 =
    A.class "ml-40"


mt_48 : Html.Attribute msg
mt_48 =
    A.class "mt-48"


mr_48 : Html.Attribute msg
mr_48 =
    A.class "mr-48"


mb_48 : Html.Attribute msg
mb_48 =
    A.class "mb-48"


ml_48 : Html.Attribute msg
ml_48 =
    A.class "ml-48"


mt_56 : Html.Attribute msg
mt_56 =
    A.class "mt-56"


mr_56 : Html.Attribute msg
mr_56 =
    A.class "mr-56"


mb_56 : Html.Attribute msg
mb_56 =
    A.class "mb-56"


ml_56 : Html.Attribute msg
ml_56 =
    A.class "ml-56"


mt_64 : Html.Attribute msg
mt_64 =
    A.class "mt-64"


mr_64 : Html.Attribute msg
mr_64 =
    A.class "mr-64"


mb_64 : Html.Attribute msg
mb_64 =
    A.class "mb-64"


ml_64 : Html.Attribute msg
ml_64 =
    A.class "ml-64"


mt_auto : Html.Attribute msg
mt_auto =
    A.class "mt-auto"


mr_auto : Html.Attribute msg
mr_auto =
    A.class "mr-auto"


mb_auto : Html.Attribute msg
mb_auto =
    A.class "mb-auto"


ml_auto : Html.Attribute msg
ml_auto =
    A.class "ml-auto"


mt_px : Html.Attribute msg
mt_px =
    A.class "mt-px"


mr_px : Html.Attribute msg
mr_px =
    A.class "mr-px"


mb_px : Html.Attribute msg
mb_px =
    A.class "mb-px"


ml_px : Html.Attribute msg
ml_px =
    A.class "ml-px"


neg_mt_1 : Html.Attribute msg
neg_mt_1 =
    A.class "-mt-1"


neg_mr_1 : Html.Attribute msg
neg_mr_1 =
    A.class "-mr-1"


neg_mb_1 : Html.Attribute msg
neg_mb_1 =
    A.class "-mb-1"


neg_ml_1 : Html.Attribute msg
neg_ml_1 =
    A.class "-ml-1"


neg_mt_2 : Html.Attribute msg
neg_mt_2 =
    A.class "-mt-2"


neg_mr_2 : Html.Attribute msg
neg_mr_2 =
    A.class "-mr-2"


neg_mb_2 : Html.Attribute msg
neg_mb_2 =
    A.class "-mb-2"


neg_ml_2 : Html.Attribute msg
neg_ml_2 =
    A.class "-ml-2"


neg_mt_3 : Html.Attribute msg
neg_mt_3 =
    A.class "-mt-3"


neg_mr_3 : Html.Attribute msg
neg_mr_3 =
    A.class "-mr-3"


neg_mb_3 : Html.Attribute msg
neg_mb_3 =
    A.class "-mb-3"


neg_ml_3 : Html.Attribute msg
neg_ml_3 =
    A.class "-ml-3"


neg_mt_4 : Html.Attribute msg
neg_mt_4 =
    A.class "-mt-4"


neg_mr_4 : Html.Attribute msg
neg_mr_4 =
    A.class "-mr-4"


neg_mb_4 : Html.Attribute msg
neg_mb_4 =
    A.class "-mb-4"


neg_ml_4 : Html.Attribute msg
neg_ml_4 =
    A.class "-ml-4"


neg_mt_5 : Html.Attribute msg
neg_mt_5 =
    A.class "-mt-5"


neg_mr_5 : Html.Attribute msg
neg_mr_5 =
    A.class "-mr-5"


neg_mb_5 : Html.Attribute msg
neg_mb_5 =
    A.class "-mb-5"


neg_ml_5 : Html.Attribute msg
neg_ml_5 =
    A.class "-ml-5"


neg_mt_6 : Html.Attribute msg
neg_mt_6 =
    A.class "-mt-6"


neg_mr_6 : Html.Attribute msg
neg_mr_6 =
    A.class "-mr-6"


neg_mb_6 : Html.Attribute msg
neg_mb_6 =
    A.class "-mb-6"


neg_ml_6 : Html.Attribute msg
neg_ml_6 =
    A.class "-ml-6"


neg_mt_8 : Html.Attribute msg
neg_mt_8 =
    A.class "-mt-8"


neg_mr_8 : Html.Attribute msg
neg_mr_8 =
    A.class "-mr-8"


neg_mb_8 : Html.Attribute msg
neg_mb_8 =
    A.class "-mb-8"


neg_ml_8 : Html.Attribute msg
neg_ml_8 =
    A.class "-ml-8"


neg_mt_10 : Html.Attribute msg
neg_mt_10 =
    A.class "-mt-10"


neg_mr_10 : Html.Attribute msg
neg_mr_10 =
    A.class "-mr-10"


neg_mb_10 : Html.Attribute msg
neg_mb_10 =
    A.class "-mb-10"


neg_ml_10 : Html.Attribute msg
neg_ml_10 =
    A.class "-ml-10"


neg_mt_12 : Html.Attribute msg
neg_mt_12 =
    A.class "-mt-12"


neg_mr_12 : Html.Attribute msg
neg_mr_12 =
    A.class "-mr-12"


neg_mb_12 : Html.Attribute msg
neg_mb_12 =
    A.class "-mb-12"


neg_ml_12 : Html.Attribute msg
neg_ml_12 =
    A.class "-ml-12"


neg_mt_16 : Html.Attribute msg
neg_mt_16 =
    A.class "-mt-16"


neg_mr_16 : Html.Attribute msg
neg_mr_16 =
    A.class "-mr-16"


neg_mb_16 : Html.Attribute msg
neg_mb_16 =
    A.class "-mb-16"


neg_ml_16 : Html.Attribute msg
neg_ml_16 =
    A.class "-ml-16"


neg_mt_20 : Html.Attribute msg
neg_mt_20 =
    A.class "-mt-20"


neg_mr_20 : Html.Attribute msg
neg_mr_20 =
    A.class "-mr-20"


neg_mb_20 : Html.Attribute msg
neg_mb_20 =
    A.class "-mb-20"


neg_ml_20 : Html.Attribute msg
neg_ml_20 =
    A.class "-ml-20"


neg_mt_24 : Html.Attribute msg
neg_mt_24 =
    A.class "-mt-24"


neg_mr_24 : Html.Attribute msg
neg_mr_24 =
    A.class "-mr-24"


neg_mb_24 : Html.Attribute msg
neg_mb_24 =
    A.class "-mb-24"


neg_ml_24 : Html.Attribute msg
neg_ml_24 =
    A.class "-ml-24"


neg_mt_32 : Html.Attribute msg
neg_mt_32 =
    A.class "-mt-32"


neg_mr_32 : Html.Attribute msg
neg_mr_32 =
    A.class "-mr-32"


neg_mb_32 : Html.Attribute msg
neg_mb_32 =
    A.class "-mb-32"


neg_ml_32 : Html.Attribute msg
neg_ml_32 =
    A.class "-ml-32"


neg_mt_40 : Html.Attribute msg
neg_mt_40 =
    A.class "-mt-40"


neg_mr_40 : Html.Attribute msg
neg_mr_40 =
    A.class "-mr-40"


neg_mb_40 : Html.Attribute msg
neg_mb_40 =
    A.class "-mb-40"


neg_ml_40 : Html.Attribute msg
neg_ml_40 =
    A.class "-ml-40"


neg_mt_48 : Html.Attribute msg
neg_mt_48 =
    A.class "-mt-48"


neg_mr_48 : Html.Attribute msg
neg_mr_48 =
    A.class "-mr-48"


neg_mb_48 : Html.Attribute msg
neg_mb_48 =
    A.class "-mb-48"


neg_ml_48 : Html.Attribute msg
neg_ml_48 =
    A.class "-ml-48"


neg_mt_56 : Html.Attribute msg
neg_mt_56 =
    A.class "-mt-56"


neg_mr_56 : Html.Attribute msg
neg_mr_56 =
    A.class "-mr-56"


neg_mb_56 : Html.Attribute msg
neg_mb_56 =
    A.class "-mb-56"


neg_ml_56 : Html.Attribute msg
neg_ml_56 =
    A.class "-ml-56"


neg_mt_64 : Html.Attribute msg
neg_mt_64 =
    A.class "-mt-64"


neg_mr_64 : Html.Attribute msg
neg_mr_64 =
    A.class "-mr-64"


neg_mb_64 : Html.Attribute msg
neg_mb_64 =
    A.class "-mb-64"


neg_ml_64 : Html.Attribute msg
neg_ml_64 =
    A.class "-ml-64"


neg_mt_px : Html.Attribute msg
neg_mt_px =
    A.class "-mt-px"


neg_mr_px : Html.Attribute msg
neg_mr_px =
    A.class "-mr-px"


neg_mb_px : Html.Attribute msg
neg_mb_px =
    A.class "-mb-px"


neg_ml_px : Html.Attribute msg
neg_ml_px =
    A.class "-ml-px"


max_h_full : Html.Attribute msg
max_h_full =
    A.class "max-h-full"


max_h_screen : Html.Attribute msg
max_h_screen =
    A.class "max-h-screen"


max_w_none : Html.Attribute msg
max_w_none =
    A.class "max-w-none"


max_w_xs : Html.Attribute msg
max_w_xs =
    A.class "max-w-xs"


max_w_sm : Html.Attribute msg
max_w_sm =
    A.class "max-w-sm"


max_w_md : Html.Attribute msg
max_w_md =
    A.class "max-w-md"


max_w_lg : Html.Attribute msg
max_w_lg =
    A.class "max-w-lg"


max_w_xl : Html.Attribute msg
max_w_xl =
    A.class "max-w-xl"


max_w_2xl : Html.Attribute msg
max_w_2xl =
    A.class "max-w-2xl"


max_w_3xl : Html.Attribute msg
max_w_3xl =
    A.class "max-w-3xl"


max_w_4xl : Html.Attribute msg
max_w_4xl =
    A.class "max-w-4xl"


max_w_5xl : Html.Attribute msg
max_w_5xl =
    A.class "max-w-5xl"


max_w_6xl : Html.Attribute msg
max_w_6xl =
    A.class "max-w-6xl"


max_w_full : Html.Attribute msg
max_w_full =
    A.class "max-w-full"


max_w_screen_sm : Html.Attribute msg
max_w_screen_sm =
    A.class "max-w-screen-sm"


max_w_screen_md : Html.Attribute msg
max_w_screen_md =
    A.class "max-w-screen-md"


max_w_screen_lg : Html.Attribute msg
max_w_screen_lg =
    A.class "max-w-screen-lg"


max_w_screen_xl : Html.Attribute msg
max_w_screen_xl =
    A.class "max-w-screen-xl"


min_h_0 : Html.Attribute msg
min_h_0 =
    A.class "min-h-0"


min_h_full : Html.Attribute msg
min_h_full =
    A.class "min-h-full"


min_h_screen : Html.Attribute msg
min_h_screen =
    A.class "min-h-screen"


min_w_0 : Html.Attribute msg
min_w_0 =
    A.class "min-w-0"


min_w_full : Html.Attribute msg
min_w_full =
    A.class "min-w-full"


object_contain : Html.Attribute msg
object_contain =
    A.class "object-contain"


object_cover : Html.Attribute msg
object_cover =
    A.class "object-cover"


object_fill : Html.Attribute msg
object_fill =
    A.class "object-fill"


object_none : Html.Attribute msg
object_none =
    A.class "object-none"


object_scale_down : Html.Attribute msg
object_scale_down =
    A.class "object-scale-down"


object_bottom : Html.Attribute msg
object_bottom =
    A.class "object-bottom"


object_center : Html.Attribute msg
object_center =
    A.class "object-center"


object_left : Html.Attribute msg
object_left =
    A.class "object-left"


object_left_bottom : Html.Attribute msg
object_left_bottom =
    A.class "object-left-bottom"


object_left_top : Html.Attribute msg
object_left_top =
    A.class "object-left-top"


object_right : Html.Attribute msg
object_right =
    A.class "object-right"


object_right_bottom : Html.Attribute msg
object_right_bottom =
    A.class "object-right-bottom"


object_right_top : Html.Attribute msg
object_right_top =
    A.class "object-right-top"


object_top : Html.Attribute msg
object_top =
    A.class "object-top"


opacity_0 : Html.Attribute msg
opacity_0 =
    A.class "opacity-0"


opacity_25 : Html.Attribute msg
opacity_25 =
    A.class "opacity-25"


opacity_50 : Html.Attribute msg
opacity_50 =
    A.class "opacity-50"


opacity_75 : Html.Attribute msg
opacity_75 =
    A.class "opacity-75"


opacity_100 : Html.Attribute msg
opacity_100 =
    A.class "opacity-100"


hover__opacity_0 : Html.Attribute msg
hover__opacity_0 =
    A.class "hover:opacity-0"


hover__opacity_25 : Html.Attribute msg
hover__opacity_25 =
    A.class "hover:opacity-25"


hover__opacity_50 : Html.Attribute msg
hover__opacity_50 =
    A.class "hover:opacity-50"


hover__opacity_75 : Html.Attribute msg
hover__opacity_75 =
    A.class "hover:opacity-75"


hover__opacity_100 : Html.Attribute msg
hover__opacity_100 =
    A.class "hover:opacity-100"


focus__opacity_0 : Html.Attribute msg
focus__opacity_0 =
    A.class "focus:opacity-0"


focus__opacity_25 : Html.Attribute msg
focus__opacity_25 =
    A.class "focus:opacity-25"


focus__opacity_50 : Html.Attribute msg
focus__opacity_50 =
    A.class "focus:opacity-50"


focus__opacity_75 : Html.Attribute msg
focus__opacity_75 =
    A.class "focus:opacity-75"


focus__opacity_100 : Html.Attribute msg
focus__opacity_100 =
    A.class "focus:opacity-100"


outline_none : Html.Attribute msg
outline_none =
    A.class "outline-none"


focus__outline_none : Html.Attribute msg
focus__outline_none =
    A.class "focus:outline-none"


overflow_auto : Html.Attribute msg
overflow_auto =
    A.class "overflow-auto"


overflow_hidden : Html.Attribute msg
overflow_hidden =
    A.class "overflow-hidden"


overflow_visible : Html.Attribute msg
overflow_visible =
    A.class "overflow-visible"


overflow_scroll : Html.Attribute msg
overflow_scroll =
    A.class "overflow-scroll"


overflow_x_auto : Html.Attribute msg
overflow_x_auto =
    A.class "overflow-x-auto"


overflow_y_auto : Html.Attribute msg
overflow_y_auto =
    A.class "overflow-y-auto"


overflow_x_hidden : Html.Attribute msg
overflow_x_hidden =
    A.class "overflow-x-hidden"


overflow_y_hidden : Html.Attribute msg
overflow_y_hidden =
    A.class "overflow-y-hidden"


overflow_x_visible : Html.Attribute msg
overflow_x_visible =
    A.class "overflow-x-visible"


overflow_y_visible : Html.Attribute msg
overflow_y_visible =
    A.class "overflow-y-visible"


overflow_x_scroll : Html.Attribute msg
overflow_x_scroll =
    A.class "overflow-x-scroll"


overflow_y_scroll : Html.Attribute msg
overflow_y_scroll =
    A.class "overflow-y-scroll"


scrolling_touch : Html.Attribute msg
scrolling_touch =
    A.class "scrolling-touch"


scrolling_auto : Html.Attribute msg
scrolling_auto =
    A.class "scrolling-auto"


p_0 : Html.Attribute msg
p_0 =
    A.class "p-0"


p_1 : Html.Attribute msg
p_1 =
    A.class "p-1"


p_2 : Html.Attribute msg
p_2 =
    A.class "p-2"


p_3 : Html.Attribute msg
p_3 =
    A.class "p-3"


p_4 : Html.Attribute msg
p_4 =
    A.class "p-4"


p_5 : Html.Attribute msg
p_5 =
    A.class "p-5"


p_6 : Html.Attribute msg
p_6 =
    A.class "p-6"


p_8 : Html.Attribute msg
p_8 =
    A.class "p-8"


p_10 : Html.Attribute msg
p_10 =
    A.class "p-10"


p_12 : Html.Attribute msg
p_12 =
    A.class "p-12"


p_16 : Html.Attribute msg
p_16 =
    A.class "p-16"


p_20 : Html.Attribute msg
p_20 =
    A.class "p-20"


p_24 : Html.Attribute msg
p_24 =
    A.class "p-24"


p_32 : Html.Attribute msg
p_32 =
    A.class "p-32"


p_40 : Html.Attribute msg
p_40 =
    A.class "p-40"


p_48 : Html.Attribute msg
p_48 =
    A.class "p-48"


p_56 : Html.Attribute msg
p_56 =
    A.class "p-56"


p_64 : Html.Attribute msg
p_64 =
    A.class "p-64"


p_px : Html.Attribute msg
p_px =
    A.class "p-px"


py_0 : Html.Attribute msg
py_0 =
    A.class "py-0"


px_0 : Html.Attribute msg
px_0 =
    A.class "px-0"


py_1 : Html.Attribute msg
py_1 =
    A.class "py-1"


px_1 : Html.Attribute msg
px_1 =
    A.class "px-1"


py_2 : Html.Attribute msg
py_2 =
    A.class "py-2"


px_2 : Html.Attribute msg
px_2 =
    A.class "px-2"


py_3 : Html.Attribute msg
py_3 =
    A.class "py-3"


px_3 : Html.Attribute msg
px_3 =
    A.class "px-3"


py_4 : Html.Attribute msg
py_4 =
    A.class "py-4"


px_4 : Html.Attribute msg
px_4 =
    A.class "px-4"


py_5 : Html.Attribute msg
py_5 =
    A.class "py-5"


px_5 : Html.Attribute msg
px_5 =
    A.class "px-5"


py_6 : Html.Attribute msg
py_6 =
    A.class "py-6"


px_6 : Html.Attribute msg
px_6 =
    A.class "px-6"


py_8 : Html.Attribute msg
py_8 =
    A.class "py-8"


px_8 : Html.Attribute msg
px_8 =
    A.class "px-8"


py_10 : Html.Attribute msg
py_10 =
    A.class "py-10"


px_10 : Html.Attribute msg
px_10 =
    A.class "px-10"


py_12 : Html.Attribute msg
py_12 =
    A.class "py-12"


px_12 : Html.Attribute msg
px_12 =
    A.class "px-12"


py_16 : Html.Attribute msg
py_16 =
    A.class "py-16"


px_16 : Html.Attribute msg
px_16 =
    A.class "px-16"


py_20 : Html.Attribute msg
py_20 =
    A.class "py-20"


px_20 : Html.Attribute msg
px_20 =
    A.class "px-20"


py_24 : Html.Attribute msg
py_24 =
    A.class "py-24"


px_24 : Html.Attribute msg
px_24 =
    A.class "px-24"


py_32 : Html.Attribute msg
py_32 =
    A.class "py-32"


px_32 : Html.Attribute msg
px_32 =
    A.class "px-32"


py_40 : Html.Attribute msg
py_40 =
    A.class "py-40"


px_40 : Html.Attribute msg
px_40 =
    A.class "px-40"


py_48 : Html.Attribute msg
py_48 =
    A.class "py-48"


px_48 : Html.Attribute msg
px_48 =
    A.class "px-48"


py_56 : Html.Attribute msg
py_56 =
    A.class "py-56"


px_56 : Html.Attribute msg
px_56 =
    A.class "px-56"


py_64 : Html.Attribute msg
py_64 =
    A.class "py-64"


px_64 : Html.Attribute msg
px_64 =
    A.class "px-64"


py_px : Html.Attribute msg
py_px =
    A.class "py-px"


px_px : Html.Attribute msg
px_px =
    A.class "px-px"


pt_0 : Html.Attribute msg
pt_0 =
    A.class "pt-0"


pr_0 : Html.Attribute msg
pr_0 =
    A.class "pr-0"


pb_0 : Html.Attribute msg
pb_0 =
    A.class "pb-0"


pl_0 : Html.Attribute msg
pl_0 =
    A.class "pl-0"


pt_1 : Html.Attribute msg
pt_1 =
    A.class "pt-1"


pr_1 : Html.Attribute msg
pr_1 =
    A.class "pr-1"


pb_1 : Html.Attribute msg
pb_1 =
    A.class "pb-1"


pl_1 : Html.Attribute msg
pl_1 =
    A.class "pl-1"


pt_2 : Html.Attribute msg
pt_2 =
    A.class "pt-2"


pr_2 : Html.Attribute msg
pr_2 =
    A.class "pr-2"


pb_2 : Html.Attribute msg
pb_2 =
    A.class "pb-2"


pl_2 : Html.Attribute msg
pl_2 =
    A.class "pl-2"


pt_3 : Html.Attribute msg
pt_3 =
    A.class "pt-3"


pr_3 : Html.Attribute msg
pr_3 =
    A.class "pr-3"


pb_3 : Html.Attribute msg
pb_3 =
    A.class "pb-3"


pl_3 : Html.Attribute msg
pl_3 =
    A.class "pl-3"


pt_4 : Html.Attribute msg
pt_4 =
    A.class "pt-4"


pr_4 : Html.Attribute msg
pr_4 =
    A.class "pr-4"


pb_4 : Html.Attribute msg
pb_4 =
    A.class "pb-4"


pl_4 : Html.Attribute msg
pl_4 =
    A.class "pl-4"


pt_5 : Html.Attribute msg
pt_5 =
    A.class "pt-5"


pr_5 : Html.Attribute msg
pr_5 =
    A.class "pr-5"


pb_5 : Html.Attribute msg
pb_5 =
    A.class "pb-5"


pl_5 : Html.Attribute msg
pl_5 =
    A.class "pl-5"


pt_6 : Html.Attribute msg
pt_6 =
    A.class "pt-6"


pr_6 : Html.Attribute msg
pr_6 =
    A.class "pr-6"


pb_6 : Html.Attribute msg
pb_6 =
    A.class "pb-6"


pl_6 : Html.Attribute msg
pl_6 =
    A.class "pl-6"


pt_8 : Html.Attribute msg
pt_8 =
    A.class "pt-8"


pr_8 : Html.Attribute msg
pr_8 =
    A.class "pr-8"


pb_8 : Html.Attribute msg
pb_8 =
    A.class "pb-8"


pl_8 : Html.Attribute msg
pl_8 =
    A.class "pl-8"


pt_10 : Html.Attribute msg
pt_10 =
    A.class "pt-10"


pr_10 : Html.Attribute msg
pr_10 =
    A.class "pr-10"


pb_10 : Html.Attribute msg
pb_10 =
    A.class "pb-10"


pl_10 : Html.Attribute msg
pl_10 =
    A.class "pl-10"


pt_12 : Html.Attribute msg
pt_12 =
    A.class "pt-12"


pr_12 : Html.Attribute msg
pr_12 =
    A.class "pr-12"


pb_12 : Html.Attribute msg
pb_12 =
    A.class "pb-12"


pl_12 : Html.Attribute msg
pl_12 =
    A.class "pl-12"


pt_16 : Html.Attribute msg
pt_16 =
    A.class "pt-16"


pr_16 : Html.Attribute msg
pr_16 =
    A.class "pr-16"


pb_16 : Html.Attribute msg
pb_16 =
    A.class "pb-16"


pl_16 : Html.Attribute msg
pl_16 =
    A.class "pl-16"


pt_20 : Html.Attribute msg
pt_20 =
    A.class "pt-20"


pr_20 : Html.Attribute msg
pr_20 =
    A.class "pr-20"


pb_20 : Html.Attribute msg
pb_20 =
    A.class "pb-20"


pl_20 : Html.Attribute msg
pl_20 =
    A.class "pl-20"


pt_24 : Html.Attribute msg
pt_24 =
    A.class "pt-24"


pr_24 : Html.Attribute msg
pr_24 =
    A.class "pr-24"


pb_24 : Html.Attribute msg
pb_24 =
    A.class "pb-24"


pl_24 : Html.Attribute msg
pl_24 =
    A.class "pl-24"


pt_32 : Html.Attribute msg
pt_32 =
    A.class "pt-32"


pr_32 : Html.Attribute msg
pr_32 =
    A.class "pr-32"


pb_32 : Html.Attribute msg
pb_32 =
    A.class "pb-32"


pl_32 : Html.Attribute msg
pl_32 =
    A.class "pl-32"


pt_40 : Html.Attribute msg
pt_40 =
    A.class "pt-40"


pr_40 : Html.Attribute msg
pr_40 =
    A.class "pr-40"


pb_40 : Html.Attribute msg
pb_40 =
    A.class "pb-40"


pl_40 : Html.Attribute msg
pl_40 =
    A.class "pl-40"


pt_48 : Html.Attribute msg
pt_48 =
    A.class "pt-48"


pr_48 : Html.Attribute msg
pr_48 =
    A.class "pr-48"


pb_48 : Html.Attribute msg
pb_48 =
    A.class "pb-48"


pl_48 : Html.Attribute msg
pl_48 =
    A.class "pl-48"


pt_56 : Html.Attribute msg
pt_56 =
    A.class "pt-56"


pr_56 : Html.Attribute msg
pr_56 =
    A.class "pr-56"


pb_56 : Html.Attribute msg
pb_56 =
    A.class "pb-56"


pl_56 : Html.Attribute msg
pl_56 =
    A.class "pl-56"


pt_64 : Html.Attribute msg
pt_64 =
    A.class "pt-64"


pr_64 : Html.Attribute msg
pr_64 =
    A.class "pr-64"


pb_64 : Html.Attribute msg
pb_64 =
    A.class "pb-64"


pl_64 : Html.Attribute msg
pl_64 =
    A.class "pl-64"


pt_px : Html.Attribute msg
pt_px =
    A.class "pt-px"


pr_px : Html.Attribute msg
pr_px =
    A.class "pr-px"


pb_px : Html.Attribute msg
pb_px =
    A.class "pb-px"


pl_px : Html.Attribute msg
pl_px =
    A.class "pl-px"


placeholder_transparent : Html.Attribute msg
placeholder_transparent =
    A.class "placeholder-transparent"


placeholder_black : Html.Attribute msg
placeholder_black =
    A.class "placeholder-black"


placeholder_white : Html.Attribute msg
placeholder_white =
    A.class "placeholder-white"


placeholder_gray_100 : Html.Attribute msg
placeholder_gray_100 =
    A.class "placeholder-gray-100"


placeholder_gray_200 : Html.Attribute msg
placeholder_gray_200 =
    A.class "placeholder-gray-200"


placeholder_gray_300 : Html.Attribute msg
placeholder_gray_300 =
    A.class "placeholder-gray-300"


placeholder_gray_400 : Html.Attribute msg
placeholder_gray_400 =
    A.class "placeholder-gray-400"


placeholder_gray_500 : Html.Attribute msg
placeholder_gray_500 =
    A.class "placeholder-gray-500"


placeholder_gray_600 : Html.Attribute msg
placeholder_gray_600 =
    A.class "placeholder-gray-600"


placeholder_gray_700 : Html.Attribute msg
placeholder_gray_700 =
    A.class "placeholder-gray-700"


placeholder_gray_800 : Html.Attribute msg
placeholder_gray_800 =
    A.class "placeholder-gray-800"


placeholder_gray_900 : Html.Attribute msg
placeholder_gray_900 =
    A.class "placeholder-gray-900"


placeholder_red_100 : Html.Attribute msg
placeholder_red_100 =
    A.class "placeholder-red-100"


placeholder_red_200 : Html.Attribute msg
placeholder_red_200 =
    A.class "placeholder-red-200"


placeholder_red_300 : Html.Attribute msg
placeholder_red_300 =
    A.class "placeholder-red-300"


placeholder_red_400 : Html.Attribute msg
placeholder_red_400 =
    A.class "placeholder-red-400"


placeholder_red_500 : Html.Attribute msg
placeholder_red_500 =
    A.class "placeholder-red-500"


placeholder_red_600 : Html.Attribute msg
placeholder_red_600 =
    A.class "placeholder-red-600"


placeholder_red_700 : Html.Attribute msg
placeholder_red_700 =
    A.class "placeholder-red-700"


placeholder_red_800 : Html.Attribute msg
placeholder_red_800 =
    A.class "placeholder-red-800"


placeholder_red_900 : Html.Attribute msg
placeholder_red_900 =
    A.class "placeholder-red-900"


placeholder_orange_100 : Html.Attribute msg
placeholder_orange_100 =
    A.class "placeholder-orange-100"


placeholder_orange_200 : Html.Attribute msg
placeholder_orange_200 =
    A.class "placeholder-orange-200"


placeholder_orange_300 : Html.Attribute msg
placeholder_orange_300 =
    A.class "placeholder-orange-300"


placeholder_orange_400 : Html.Attribute msg
placeholder_orange_400 =
    A.class "placeholder-orange-400"


placeholder_orange_500 : Html.Attribute msg
placeholder_orange_500 =
    A.class "placeholder-orange-500"


placeholder_orange_600 : Html.Attribute msg
placeholder_orange_600 =
    A.class "placeholder-orange-600"


placeholder_orange_700 : Html.Attribute msg
placeholder_orange_700 =
    A.class "placeholder-orange-700"


placeholder_orange_800 : Html.Attribute msg
placeholder_orange_800 =
    A.class "placeholder-orange-800"


placeholder_orange_900 : Html.Attribute msg
placeholder_orange_900 =
    A.class "placeholder-orange-900"


placeholder_yellow_100 : Html.Attribute msg
placeholder_yellow_100 =
    A.class "placeholder-yellow-100"


placeholder_yellow_200 : Html.Attribute msg
placeholder_yellow_200 =
    A.class "placeholder-yellow-200"


placeholder_yellow_300 : Html.Attribute msg
placeholder_yellow_300 =
    A.class "placeholder-yellow-300"


placeholder_yellow_400 : Html.Attribute msg
placeholder_yellow_400 =
    A.class "placeholder-yellow-400"


placeholder_yellow_500 : Html.Attribute msg
placeholder_yellow_500 =
    A.class "placeholder-yellow-500"


placeholder_yellow_600 : Html.Attribute msg
placeholder_yellow_600 =
    A.class "placeholder-yellow-600"


placeholder_yellow_700 : Html.Attribute msg
placeholder_yellow_700 =
    A.class "placeholder-yellow-700"


placeholder_yellow_800 : Html.Attribute msg
placeholder_yellow_800 =
    A.class "placeholder-yellow-800"


placeholder_yellow_900 : Html.Attribute msg
placeholder_yellow_900 =
    A.class "placeholder-yellow-900"


placeholder_green_100 : Html.Attribute msg
placeholder_green_100 =
    A.class "placeholder-green-100"


placeholder_green_200 : Html.Attribute msg
placeholder_green_200 =
    A.class "placeholder-green-200"


placeholder_green_300 : Html.Attribute msg
placeholder_green_300 =
    A.class "placeholder-green-300"


placeholder_green_400 : Html.Attribute msg
placeholder_green_400 =
    A.class "placeholder-green-400"


placeholder_green_500 : Html.Attribute msg
placeholder_green_500 =
    A.class "placeholder-green-500"


placeholder_green_600 : Html.Attribute msg
placeholder_green_600 =
    A.class "placeholder-green-600"


placeholder_green_700 : Html.Attribute msg
placeholder_green_700 =
    A.class "placeholder-green-700"


placeholder_green_800 : Html.Attribute msg
placeholder_green_800 =
    A.class "placeholder-green-800"


placeholder_green_900 : Html.Attribute msg
placeholder_green_900 =
    A.class "placeholder-green-900"


placeholder_teal_100 : Html.Attribute msg
placeholder_teal_100 =
    A.class "placeholder-teal-100"


placeholder_teal_200 : Html.Attribute msg
placeholder_teal_200 =
    A.class "placeholder-teal-200"


placeholder_teal_300 : Html.Attribute msg
placeholder_teal_300 =
    A.class "placeholder-teal-300"


placeholder_teal_400 : Html.Attribute msg
placeholder_teal_400 =
    A.class "placeholder-teal-400"


placeholder_teal_500 : Html.Attribute msg
placeholder_teal_500 =
    A.class "placeholder-teal-500"


placeholder_teal_600 : Html.Attribute msg
placeholder_teal_600 =
    A.class "placeholder-teal-600"


placeholder_teal_700 : Html.Attribute msg
placeholder_teal_700 =
    A.class "placeholder-teal-700"


placeholder_teal_800 : Html.Attribute msg
placeholder_teal_800 =
    A.class "placeholder-teal-800"


placeholder_teal_900 : Html.Attribute msg
placeholder_teal_900 =
    A.class "placeholder-teal-900"


placeholder_blue_100 : Html.Attribute msg
placeholder_blue_100 =
    A.class "placeholder-blue-100"


placeholder_blue_200 : Html.Attribute msg
placeholder_blue_200 =
    A.class "placeholder-blue-200"


placeholder_blue_300 : Html.Attribute msg
placeholder_blue_300 =
    A.class "placeholder-blue-300"


placeholder_blue_400 : Html.Attribute msg
placeholder_blue_400 =
    A.class "placeholder-blue-400"


placeholder_blue_500 : Html.Attribute msg
placeholder_blue_500 =
    A.class "placeholder-blue-500"


placeholder_blue_600 : Html.Attribute msg
placeholder_blue_600 =
    A.class "placeholder-blue-600"


placeholder_blue_700 : Html.Attribute msg
placeholder_blue_700 =
    A.class "placeholder-blue-700"


placeholder_blue_800 : Html.Attribute msg
placeholder_blue_800 =
    A.class "placeholder-blue-800"


placeholder_blue_900 : Html.Attribute msg
placeholder_blue_900 =
    A.class "placeholder-blue-900"


placeholder_indigo_100 : Html.Attribute msg
placeholder_indigo_100 =
    A.class "placeholder-indigo-100"


placeholder_indigo_200 : Html.Attribute msg
placeholder_indigo_200 =
    A.class "placeholder-indigo-200"


placeholder_indigo_300 : Html.Attribute msg
placeholder_indigo_300 =
    A.class "placeholder-indigo-300"


placeholder_indigo_400 : Html.Attribute msg
placeholder_indigo_400 =
    A.class "placeholder-indigo-400"


placeholder_indigo_500 : Html.Attribute msg
placeholder_indigo_500 =
    A.class "placeholder-indigo-500"


placeholder_indigo_600 : Html.Attribute msg
placeholder_indigo_600 =
    A.class "placeholder-indigo-600"


placeholder_indigo_700 : Html.Attribute msg
placeholder_indigo_700 =
    A.class "placeholder-indigo-700"


placeholder_indigo_800 : Html.Attribute msg
placeholder_indigo_800 =
    A.class "placeholder-indigo-800"


placeholder_indigo_900 : Html.Attribute msg
placeholder_indigo_900 =
    A.class "placeholder-indigo-900"


placeholder_purple_100 : Html.Attribute msg
placeholder_purple_100 =
    A.class "placeholder-purple-100"


placeholder_purple_200 : Html.Attribute msg
placeholder_purple_200 =
    A.class "placeholder-purple-200"


placeholder_purple_300 : Html.Attribute msg
placeholder_purple_300 =
    A.class "placeholder-purple-300"


placeholder_purple_400 : Html.Attribute msg
placeholder_purple_400 =
    A.class "placeholder-purple-400"


placeholder_purple_500 : Html.Attribute msg
placeholder_purple_500 =
    A.class "placeholder-purple-500"


placeholder_purple_600 : Html.Attribute msg
placeholder_purple_600 =
    A.class "placeholder-purple-600"


placeholder_purple_700 : Html.Attribute msg
placeholder_purple_700 =
    A.class "placeholder-purple-700"


placeholder_purple_800 : Html.Attribute msg
placeholder_purple_800 =
    A.class "placeholder-purple-800"


placeholder_purple_900 : Html.Attribute msg
placeholder_purple_900 =
    A.class "placeholder-purple-900"


placeholder_pink_100 : Html.Attribute msg
placeholder_pink_100 =
    A.class "placeholder-pink-100"


placeholder_pink_200 : Html.Attribute msg
placeholder_pink_200 =
    A.class "placeholder-pink-200"


placeholder_pink_300 : Html.Attribute msg
placeholder_pink_300 =
    A.class "placeholder-pink-300"


placeholder_pink_400 : Html.Attribute msg
placeholder_pink_400 =
    A.class "placeholder-pink-400"


placeholder_pink_500 : Html.Attribute msg
placeholder_pink_500 =
    A.class "placeholder-pink-500"


placeholder_pink_600 : Html.Attribute msg
placeholder_pink_600 =
    A.class "placeholder-pink-600"


placeholder_pink_700 : Html.Attribute msg
placeholder_pink_700 =
    A.class "placeholder-pink-700"


placeholder_pink_800 : Html.Attribute msg
placeholder_pink_800 =
    A.class "placeholder-pink-800"


placeholder_pink_900 : Html.Attribute msg
placeholder_pink_900 =
    A.class "placeholder-pink-900"


focus__placeholder_transparent__focus : Html.Attribute msg
focus__placeholder_transparent__focus =
    A.class "focus:placeholder-transparent:focus"


focus__placeholder_black__focus : Html.Attribute msg
focus__placeholder_black__focus =
    A.class "focus:placeholder-black:focus"


focus__placeholder_white__focus : Html.Attribute msg
focus__placeholder_white__focus =
    A.class "focus:placeholder-white:focus"


focus__placeholder_gray_100__focus : Html.Attribute msg
focus__placeholder_gray_100__focus =
    A.class "focus:placeholder-gray-100:focus"


focus__placeholder_gray_200__focus : Html.Attribute msg
focus__placeholder_gray_200__focus =
    A.class "focus:placeholder-gray-200:focus"


focus__placeholder_gray_300__focus : Html.Attribute msg
focus__placeholder_gray_300__focus =
    A.class "focus:placeholder-gray-300:focus"


focus__placeholder_gray_400__focus : Html.Attribute msg
focus__placeholder_gray_400__focus =
    A.class "focus:placeholder-gray-400:focus"


focus__placeholder_gray_500__focus : Html.Attribute msg
focus__placeholder_gray_500__focus =
    A.class "focus:placeholder-gray-500:focus"


focus__placeholder_gray_600__focus : Html.Attribute msg
focus__placeholder_gray_600__focus =
    A.class "focus:placeholder-gray-600:focus"


focus__placeholder_gray_700__focus : Html.Attribute msg
focus__placeholder_gray_700__focus =
    A.class "focus:placeholder-gray-700:focus"


focus__placeholder_gray_800__focus : Html.Attribute msg
focus__placeholder_gray_800__focus =
    A.class "focus:placeholder-gray-800:focus"


focus__placeholder_gray_900__focus : Html.Attribute msg
focus__placeholder_gray_900__focus =
    A.class "focus:placeholder-gray-900:focus"


focus__placeholder_red_100__focus : Html.Attribute msg
focus__placeholder_red_100__focus =
    A.class "focus:placeholder-red-100:focus"


focus__placeholder_red_200__focus : Html.Attribute msg
focus__placeholder_red_200__focus =
    A.class "focus:placeholder-red-200:focus"


focus__placeholder_red_300__focus : Html.Attribute msg
focus__placeholder_red_300__focus =
    A.class "focus:placeholder-red-300:focus"


focus__placeholder_red_400__focus : Html.Attribute msg
focus__placeholder_red_400__focus =
    A.class "focus:placeholder-red-400:focus"


focus__placeholder_red_500__focus : Html.Attribute msg
focus__placeholder_red_500__focus =
    A.class "focus:placeholder-red-500:focus"


focus__placeholder_red_600__focus : Html.Attribute msg
focus__placeholder_red_600__focus =
    A.class "focus:placeholder-red-600:focus"


focus__placeholder_red_700__focus : Html.Attribute msg
focus__placeholder_red_700__focus =
    A.class "focus:placeholder-red-700:focus"


focus__placeholder_red_800__focus : Html.Attribute msg
focus__placeholder_red_800__focus =
    A.class "focus:placeholder-red-800:focus"


focus__placeholder_red_900__focus : Html.Attribute msg
focus__placeholder_red_900__focus =
    A.class "focus:placeholder-red-900:focus"


focus__placeholder_orange_100__focus : Html.Attribute msg
focus__placeholder_orange_100__focus =
    A.class "focus:placeholder-orange-100:focus"


focus__placeholder_orange_200__focus : Html.Attribute msg
focus__placeholder_orange_200__focus =
    A.class "focus:placeholder-orange-200:focus"


focus__placeholder_orange_300__focus : Html.Attribute msg
focus__placeholder_orange_300__focus =
    A.class "focus:placeholder-orange-300:focus"


focus__placeholder_orange_400__focus : Html.Attribute msg
focus__placeholder_orange_400__focus =
    A.class "focus:placeholder-orange-400:focus"


focus__placeholder_orange_500__focus : Html.Attribute msg
focus__placeholder_orange_500__focus =
    A.class "focus:placeholder-orange-500:focus"


focus__placeholder_orange_600__focus : Html.Attribute msg
focus__placeholder_orange_600__focus =
    A.class "focus:placeholder-orange-600:focus"


focus__placeholder_orange_700__focus : Html.Attribute msg
focus__placeholder_orange_700__focus =
    A.class "focus:placeholder-orange-700:focus"


focus__placeholder_orange_800__focus : Html.Attribute msg
focus__placeholder_orange_800__focus =
    A.class "focus:placeholder-orange-800:focus"


focus__placeholder_orange_900__focus : Html.Attribute msg
focus__placeholder_orange_900__focus =
    A.class "focus:placeholder-orange-900:focus"


focus__placeholder_yellow_100__focus : Html.Attribute msg
focus__placeholder_yellow_100__focus =
    A.class "focus:placeholder-yellow-100:focus"


focus__placeholder_yellow_200__focus : Html.Attribute msg
focus__placeholder_yellow_200__focus =
    A.class "focus:placeholder-yellow-200:focus"


focus__placeholder_yellow_300__focus : Html.Attribute msg
focus__placeholder_yellow_300__focus =
    A.class "focus:placeholder-yellow-300:focus"


focus__placeholder_yellow_400__focus : Html.Attribute msg
focus__placeholder_yellow_400__focus =
    A.class "focus:placeholder-yellow-400:focus"


focus__placeholder_yellow_500__focus : Html.Attribute msg
focus__placeholder_yellow_500__focus =
    A.class "focus:placeholder-yellow-500:focus"


focus__placeholder_yellow_600__focus : Html.Attribute msg
focus__placeholder_yellow_600__focus =
    A.class "focus:placeholder-yellow-600:focus"


focus__placeholder_yellow_700__focus : Html.Attribute msg
focus__placeholder_yellow_700__focus =
    A.class "focus:placeholder-yellow-700:focus"


focus__placeholder_yellow_800__focus : Html.Attribute msg
focus__placeholder_yellow_800__focus =
    A.class "focus:placeholder-yellow-800:focus"


focus__placeholder_yellow_900__focus : Html.Attribute msg
focus__placeholder_yellow_900__focus =
    A.class "focus:placeholder-yellow-900:focus"


focus__placeholder_green_100__focus : Html.Attribute msg
focus__placeholder_green_100__focus =
    A.class "focus:placeholder-green-100:focus"


focus__placeholder_green_200__focus : Html.Attribute msg
focus__placeholder_green_200__focus =
    A.class "focus:placeholder-green-200:focus"


focus__placeholder_green_300__focus : Html.Attribute msg
focus__placeholder_green_300__focus =
    A.class "focus:placeholder-green-300:focus"


focus__placeholder_green_400__focus : Html.Attribute msg
focus__placeholder_green_400__focus =
    A.class "focus:placeholder-green-400:focus"


focus__placeholder_green_500__focus : Html.Attribute msg
focus__placeholder_green_500__focus =
    A.class "focus:placeholder-green-500:focus"


focus__placeholder_green_600__focus : Html.Attribute msg
focus__placeholder_green_600__focus =
    A.class "focus:placeholder-green-600:focus"


focus__placeholder_green_700__focus : Html.Attribute msg
focus__placeholder_green_700__focus =
    A.class "focus:placeholder-green-700:focus"


focus__placeholder_green_800__focus : Html.Attribute msg
focus__placeholder_green_800__focus =
    A.class "focus:placeholder-green-800:focus"


focus__placeholder_green_900__focus : Html.Attribute msg
focus__placeholder_green_900__focus =
    A.class "focus:placeholder-green-900:focus"


focus__placeholder_teal_100__focus : Html.Attribute msg
focus__placeholder_teal_100__focus =
    A.class "focus:placeholder-teal-100:focus"


focus__placeholder_teal_200__focus : Html.Attribute msg
focus__placeholder_teal_200__focus =
    A.class "focus:placeholder-teal-200:focus"


focus__placeholder_teal_300__focus : Html.Attribute msg
focus__placeholder_teal_300__focus =
    A.class "focus:placeholder-teal-300:focus"


focus__placeholder_teal_400__focus : Html.Attribute msg
focus__placeholder_teal_400__focus =
    A.class "focus:placeholder-teal-400:focus"


focus__placeholder_teal_500__focus : Html.Attribute msg
focus__placeholder_teal_500__focus =
    A.class "focus:placeholder-teal-500:focus"


focus__placeholder_teal_600__focus : Html.Attribute msg
focus__placeholder_teal_600__focus =
    A.class "focus:placeholder-teal-600:focus"


focus__placeholder_teal_700__focus : Html.Attribute msg
focus__placeholder_teal_700__focus =
    A.class "focus:placeholder-teal-700:focus"


focus__placeholder_teal_800__focus : Html.Attribute msg
focus__placeholder_teal_800__focus =
    A.class "focus:placeholder-teal-800:focus"


focus__placeholder_teal_900__focus : Html.Attribute msg
focus__placeholder_teal_900__focus =
    A.class "focus:placeholder-teal-900:focus"


focus__placeholder_blue_100__focus : Html.Attribute msg
focus__placeholder_blue_100__focus =
    A.class "focus:placeholder-blue-100:focus"


focus__placeholder_blue_200__focus : Html.Attribute msg
focus__placeholder_blue_200__focus =
    A.class "focus:placeholder-blue-200:focus"


focus__placeholder_blue_300__focus : Html.Attribute msg
focus__placeholder_blue_300__focus =
    A.class "focus:placeholder-blue-300:focus"


focus__placeholder_blue_400__focus : Html.Attribute msg
focus__placeholder_blue_400__focus =
    A.class "focus:placeholder-blue-400:focus"


focus__placeholder_blue_500__focus : Html.Attribute msg
focus__placeholder_blue_500__focus =
    A.class "focus:placeholder-blue-500:focus"


focus__placeholder_blue_600__focus : Html.Attribute msg
focus__placeholder_blue_600__focus =
    A.class "focus:placeholder-blue-600:focus"


focus__placeholder_blue_700__focus : Html.Attribute msg
focus__placeholder_blue_700__focus =
    A.class "focus:placeholder-blue-700:focus"


focus__placeholder_blue_800__focus : Html.Attribute msg
focus__placeholder_blue_800__focus =
    A.class "focus:placeholder-blue-800:focus"


focus__placeholder_blue_900__focus : Html.Attribute msg
focus__placeholder_blue_900__focus =
    A.class "focus:placeholder-blue-900:focus"


focus__placeholder_indigo_100__focus : Html.Attribute msg
focus__placeholder_indigo_100__focus =
    A.class "focus:placeholder-indigo-100:focus"


focus__placeholder_indigo_200__focus : Html.Attribute msg
focus__placeholder_indigo_200__focus =
    A.class "focus:placeholder-indigo-200:focus"


focus__placeholder_indigo_300__focus : Html.Attribute msg
focus__placeholder_indigo_300__focus =
    A.class "focus:placeholder-indigo-300:focus"


focus__placeholder_indigo_400__focus : Html.Attribute msg
focus__placeholder_indigo_400__focus =
    A.class "focus:placeholder-indigo-400:focus"


focus__placeholder_indigo_500__focus : Html.Attribute msg
focus__placeholder_indigo_500__focus =
    A.class "focus:placeholder-indigo-500:focus"


focus__placeholder_indigo_600__focus : Html.Attribute msg
focus__placeholder_indigo_600__focus =
    A.class "focus:placeholder-indigo-600:focus"


focus__placeholder_indigo_700__focus : Html.Attribute msg
focus__placeholder_indigo_700__focus =
    A.class "focus:placeholder-indigo-700:focus"


focus__placeholder_indigo_800__focus : Html.Attribute msg
focus__placeholder_indigo_800__focus =
    A.class "focus:placeholder-indigo-800:focus"


focus__placeholder_indigo_900__focus : Html.Attribute msg
focus__placeholder_indigo_900__focus =
    A.class "focus:placeholder-indigo-900:focus"


focus__placeholder_purple_100__focus : Html.Attribute msg
focus__placeholder_purple_100__focus =
    A.class "focus:placeholder-purple-100:focus"


focus__placeholder_purple_200__focus : Html.Attribute msg
focus__placeholder_purple_200__focus =
    A.class "focus:placeholder-purple-200:focus"


focus__placeholder_purple_300__focus : Html.Attribute msg
focus__placeholder_purple_300__focus =
    A.class "focus:placeholder-purple-300:focus"


focus__placeholder_purple_400__focus : Html.Attribute msg
focus__placeholder_purple_400__focus =
    A.class "focus:placeholder-purple-400:focus"


focus__placeholder_purple_500__focus : Html.Attribute msg
focus__placeholder_purple_500__focus =
    A.class "focus:placeholder-purple-500:focus"


focus__placeholder_purple_600__focus : Html.Attribute msg
focus__placeholder_purple_600__focus =
    A.class "focus:placeholder-purple-600:focus"


focus__placeholder_purple_700__focus : Html.Attribute msg
focus__placeholder_purple_700__focus =
    A.class "focus:placeholder-purple-700:focus"


focus__placeholder_purple_800__focus : Html.Attribute msg
focus__placeholder_purple_800__focus =
    A.class "focus:placeholder-purple-800:focus"


focus__placeholder_purple_900__focus : Html.Attribute msg
focus__placeholder_purple_900__focus =
    A.class "focus:placeholder-purple-900:focus"


focus__placeholder_pink_100__focus : Html.Attribute msg
focus__placeholder_pink_100__focus =
    A.class "focus:placeholder-pink-100:focus"


focus__placeholder_pink_200__focus : Html.Attribute msg
focus__placeholder_pink_200__focus =
    A.class "focus:placeholder-pink-200:focus"


focus__placeholder_pink_300__focus : Html.Attribute msg
focus__placeholder_pink_300__focus =
    A.class "focus:placeholder-pink-300:focus"


focus__placeholder_pink_400__focus : Html.Attribute msg
focus__placeholder_pink_400__focus =
    A.class "focus:placeholder-pink-400:focus"


focus__placeholder_pink_500__focus : Html.Attribute msg
focus__placeholder_pink_500__focus =
    A.class "focus:placeholder-pink-500:focus"


focus__placeholder_pink_600__focus : Html.Attribute msg
focus__placeholder_pink_600__focus =
    A.class "focus:placeholder-pink-600:focus"


focus__placeholder_pink_700__focus : Html.Attribute msg
focus__placeholder_pink_700__focus =
    A.class "focus:placeholder-pink-700:focus"


focus__placeholder_pink_800__focus : Html.Attribute msg
focus__placeholder_pink_800__focus =
    A.class "focus:placeholder-pink-800:focus"


focus__placeholder_pink_900__focus : Html.Attribute msg
focus__placeholder_pink_900__focus =
    A.class "focus:placeholder-pink-900:focus"


pointer_events_none : Html.Attribute msg
pointer_events_none =
    A.class "pointer-events-none"


pointer_events_auto : Html.Attribute msg
pointer_events_auto =
    A.class "pointer-events-auto"


static : Html.Attribute msg
static =
    A.class "static"


fixed : Html.Attribute msg
fixed =
    A.class "fixed"


absolute : Html.Attribute msg
absolute =
    A.class "absolute"


relative : Html.Attribute msg
relative =
    A.class "relative"


sticky : Html.Attribute msg
sticky =
    A.class "sticky"


inset_0 : Html.Attribute msg
inset_0 =
    A.class "inset-0"


inset_auto : Html.Attribute msg
inset_auto =
    A.class "inset-auto"


inset_y_0 : Html.Attribute msg
inset_y_0 =
    A.class "inset-y-0"


inset_x_0 : Html.Attribute msg
inset_x_0 =
    A.class "inset-x-0"


inset_y_auto : Html.Attribute msg
inset_y_auto =
    A.class "inset-y-auto"


inset_x_auto : Html.Attribute msg
inset_x_auto =
    A.class "inset-x-auto"


top_0 : Html.Attribute msg
top_0 =
    A.class "top-0"


right_0 : Html.Attribute msg
right_0 =
    A.class "right-0"


bottom_0 : Html.Attribute msg
bottom_0 =
    A.class "bottom-0"


left_0 : Html.Attribute msg
left_0 =
    A.class "left-0"


top_auto : Html.Attribute msg
top_auto =
    A.class "top-auto"


right_auto : Html.Attribute msg
right_auto =
    A.class "right-auto"


bottom_auto : Html.Attribute msg
bottom_auto =
    A.class "bottom-auto"


left_auto : Html.Attribute msg
left_auto =
    A.class "left-auto"


resize_none : Html.Attribute msg
resize_none =
    A.class "resize-none"


resize_y : Html.Attribute msg
resize_y =
    A.class "resize-y"


resize_x : Html.Attribute msg
resize_x =
    A.class "resize-x"


resize : Html.Attribute msg
resize =
    A.class "resize"


shadow_xs : Html.Attribute msg
shadow_xs =
    A.class "shadow-xs"


shadow_sm : Html.Attribute msg
shadow_sm =
    A.class "shadow-sm"


shadow : Html.Attribute msg
shadow =
    A.class "shadow"


shadow_md : Html.Attribute msg
shadow_md =
    A.class "shadow-md"


shadow_lg : Html.Attribute msg
shadow_lg =
    A.class "shadow-lg"


shadow_xl : Html.Attribute msg
shadow_xl =
    A.class "shadow-xl"


shadow_2xl : Html.Attribute msg
shadow_2xl =
    A.class "shadow-2xl"


shadow_inner : Html.Attribute msg
shadow_inner =
    A.class "shadow-inner"


shadow_outline : Html.Attribute msg
shadow_outline =
    A.class "shadow-outline"


shadow_none : Html.Attribute msg
shadow_none =
    A.class "shadow-none"


hover__shadow_xs : Html.Attribute msg
hover__shadow_xs =
    A.class "hover:shadow-xs"


hover__shadow_sm : Html.Attribute msg
hover__shadow_sm =
    A.class "hover:shadow-sm"


hover__shadow : Html.Attribute msg
hover__shadow =
    A.class "hover:shadow"


hover__shadow_md : Html.Attribute msg
hover__shadow_md =
    A.class "hover:shadow-md"


hover__shadow_lg : Html.Attribute msg
hover__shadow_lg =
    A.class "hover:shadow-lg"


hover__shadow_xl : Html.Attribute msg
hover__shadow_xl =
    A.class "hover:shadow-xl"


hover__shadow_2xl : Html.Attribute msg
hover__shadow_2xl =
    A.class "hover:shadow-2xl"


hover__shadow_inner : Html.Attribute msg
hover__shadow_inner =
    A.class "hover:shadow-inner"


hover__shadow_outline : Html.Attribute msg
hover__shadow_outline =
    A.class "hover:shadow-outline"


hover__shadow_none : Html.Attribute msg
hover__shadow_none =
    A.class "hover:shadow-none"


focus__shadow_xs : Html.Attribute msg
focus__shadow_xs =
    A.class "focus:shadow-xs"


focus__shadow_sm : Html.Attribute msg
focus__shadow_sm =
    A.class "focus:shadow-sm"


focus__shadow : Html.Attribute msg
focus__shadow =
    A.class "focus:shadow"


focus__shadow_md : Html.Attribute msg
focus__shadow_md =
    A.class "focus:shadow-md"


focus__shadow_lg : Html.Attribute msg
focus__shadow_lg =
    A.class "focus:shadow-lg"


focus__shadow_xl : Html.Attribute msg
focus__shadow_xl =
    A.class "focus:shadow-xl"


focus__shadow_2xl : Html.Attribute msg
focus__shadow_2xl =
    A.class "focus:shadow-2xl"


focus__shadow_inner : Html.Attribute msg
focus__shadow_inner =
    A.class "focus:shadow-inner"


focus__shadow_outline : Html.Attribute msg
focus__shadow_outline =
    A.class "focus:shadow-outline"


focus__shadow_none : Html.Attribute msg
focus__shadow_none =
    A.class "focus:shadow-none"


fill_current : Html.Attribute msg
fill_current =
    A.class "fill-current"


stroke_current : Html.Attribute msg
stroke_current =
    A.class "stroke-current"


stroke_0 : Html.Attribute msg
stroke_0 =
    A.class "stroke-0"


stroke_1 : Html.Attribute msg
stroke_1 =
    A.class "stroke-1"


stroke_2 : Html.Attribute msg
stroke_2 =
    A.class "stroke-2"


table_auto : Html.Attribute msg
table_auto =
    A.class "table-auto"


table_fixed : Html.Attribute msg
table_fixed =
    A.class "table-fixed"


text_left : Html.Attribute msg
text_left =
    A.class "text-left"


text_center : Html.Attribute msg
text_center =
    A.class "text-center"


text_right : Html.Attribute msg
text_right =
    A.class "text-right"


text_justify : Html.Attribute msg
text_justify =
    A.class "text-justify"


text_transparent : Html.Attribute msg
text_transparent =
    A.class "text-transparent"


text_black : Html.Attribute msg
text_black =
    A.class "text-black"


text_white : Html.Attribute msg
text_white =
    A.class "text-white"


text_gray_100 : Html.Attribute msg
text_gray_100 =
    A.class "text-gray-100"


text_gray_200 : Html.Attribute msg
text_gray_200 =
    A.class "text-gray-200"


text_gray_300 : Html.Attribute msg
text_gray_300 =
    A.class "text-gray-300"


text_gray_400 : Html.Attribute msg
text_gray_400 =
    A.class "text-gray-400"


text_gray_500 : Html.Attribute msg
text_gray_500 =
    A.class "text-gray-500"


text_gray_600 : Html.Attribute msg
text_gray_600 =
    A.class "text-gray-600"


text_gray_700 : Html.Attribute msg
text_gray_700 =
    A.class "text-gray-700"


text_gray_800 : Html.Attribute msg
text_gray_800 =
    A.class "text-gray-800"


text_gray_900 : Html.Attribute msg
text_gray_900 =
    A.class "text-gray-900"


text_red_100 : Html.Attribute msg
text_red_100 =
    A.class "text-red-100"


text_red_200 : Html.Attribute msg
text_red_200 =
    A.class "text-red-200"


text_red_300 : Html.Attribute msg
text_red_300 =
    A.class "text-red-300"


text_red_400 : Html.Attribute msg
text_red_400 =
    A.class "text-red-400"


text_red_500 : Html.Attribute msg
text_red_500 =
    A.class "text-red-500"


text_red_600 : Html.Attribute msg
text_red_600 =
    A.class "text-red-600"


text_red_700 : Html.Attribute msg
text_red_700 =
    A.class "text-red-700"


text_red_800 : Html.Attribute msg
text_red_800 =
    A.class "text-red-800"


text_red_900 : Html.Attribute msg
text_red_900 =
    A.class "text-red-900"


text_orange_100 : Html.Attribute msg
text_orange_100 =
    A.class "text-orange-100"


text_orange_200 : Html.Attribute msg
text_orange_200 =
    A.class "text-orange-200"


text_orange_300 : Html.Attribute msg
text_orange_300 =
    A.class "text-orange-300"


text_orange_400 : Html.Attribute msg
text_orange_400 =
    A.class "text-orange-400"


text_orange_500 : Html.Attribute msg
text_orange_500 =
    A.class "text-orange-500"


text_orange_600 : Html.Attribute msg
text_orange_600 =
    A.class "text-orange-600"


text_orange_700 : Html.Attribute msg
text_orange_700 =
    A.class "text-orange-700"


text_orange_800 : Html.Attribute msg
text_orange_800 =
    A.class "text-orange-800"


text_orange_900 : Html.Attribute msg
text_orange_900 =
    A.class "text-orange-900"


text_yellow_100 : Html.Attribute msg
text_yellow_100 =
    A.class "text-yellow-100"


text_yellow_200 : Html.Attribute msg
text_yellow_200 =
    A.class "text-yellow-200"


text_yellow_300 : Html.Attribute msg
text_yellow_300 =
    A.class "text-yellow-300"


text_yellow_400 : Html.Attribute msg
text_yellow_400 =
    A.class "text-yellow-400"


text_yellow_500 : Html.Attribute msg
text_yellow_500 =
    A.class "text-yellow-500"


text_yellow_600 : Html.Attribute msg
text_yellow_600 =
    A.class "text-yellow-600"


text_yellow_700 : Html.Attribute msg
text_yellow_700 =
    A.class "text-yellow-700"


text_yellow_800 : Html.Attribute msg
text_yellow_800 =
    A.class "text-yellow-800"


text_yellow_900 : Html.Attribute msg
text_yellow_900 =
    A.class "text-yellow-900"


text_green_100 : Html.Attribute msg
text_green_100 =
    A.class "text-green-100"


text_green_200 : Html.Attribute msg
text_green_200 =
    A.class "text-green-200"


text_green_300 : Html.Attribute msg
text_green_300 =
    A.class "text-green-300"


text_green_400 : Html.Attribute msg
text_green_400 =
    A.class "text-green-400"


text_green_500 : Html.Attribute msg
text_green_500 =
    A.class "text-green-500"


text_green_600 : Html.Attribute msg
text_green_600 =
    A.class "text-green-600"


text_green_700 : Html.Attribute msg
text_green_700 =
    A.class "text-green-700"


text_green_800 : Html.Attribute msg
text_green_800 =
    A.class "text-green-800"


text_green_900 : Html.Attribute msg
text_green_900 =
    A.class "text-green-900"


text_teal_100 : Html.Attribute msg
text_teal_100 =
    A.class "text-teal-100"


text_teal_200 : Html.Attribute msg
text_teal_200 =
    A.class "text-teal-200"


text_teal_300 : Html.Attribute msg
text_teal_300 =
    A.class "text-teal-300"


text_teal_400 : Html.Attribute msg
text_teal_400 =
    A.class "text-teal-400"


text_teal_500 : Html.Attribute msg
text_teal_500 =
    A.class "text-teal-500"


text_teal_600 : Html.Attribute msg
text_teal_600 =
    A.class "text-teal-600"


text_teal_700 : Html.Attribute msg
text_teal_700 =
    A.class "text-teal-700"


text_teal_800 : Html.Attribute msg
text_teal_800 =
    A.class "text-teal-800"


text_teal_900 : Html.Attribute msg
text_teal_900 =
    A.class "text-teal-900"


text_blue_100 : Html.Attribute msg
text_blue_100 =
    A.class "text-blue-100"


text_blue_200 : Html.Attribute msg
text_blue_200 =
    A.class "text-blue-200"


text_blue_300 : Html.Attribute msg
text_blue_300 =
    A.class "text-blue-300"


text_blue_400 : Html.Attribute msg
text_blue_400 =
    A.class "text-blue-400"


text_blue_500 : Html.Attribute msg
text_blue_500 =
    A.class "text-blue-500"


text_blue_600 : Html.Attribute msg
text_blue_600 =
    A.class "text-blue-600"


text_blue_700 : Html.Attribute msg
text_blue_700 =
    A.class "text-blue-700"


text_blue_800 : Html.Attribute msg
text_blue_800 =
    A.class "text-blue-800"


text_blue_900 : Html.Attribute msg
text_blue_900 =
    A.class "text-blue-900"


text_indigo_100 : Html.Attribute msg
text_indigo_100 =
    A.class "text-indigo-100"


text_indigo_200 : Html.Attribute msg
text_indigo_200 =
    A.class "text-indigo-200"


text_indigo_300 : Html.Attribute msg
text_indigo_300 =
    A.class "text-indigo-300"


text_indigo_400 : Html.Attribute msg
text_indigo_400 =
    A.class "text-indigo-400"


text_indigo_500 : Html.Attribute msg
text_indigo_500 =
    A.class "text-indigo-500"


text_indigo_600 : Html.Attribute msg
text_indigo_600 =
    A.class "text-indigo-600"


text_indigo_700 : Html.Attribute msg
text_indigo_700 =
    A.class "text-indigo-700"


text_indigo_800 : Html.Attribute msg
text_indigo_800 =
    A.class "text-indigo-800"


text_indigo_900 : Html.Attribute msg
text_indigo_900 =
    A.class "text-indigo-900"


text_purple_100 : Html.Attribute msg
text_purple_100 =
    A.class "text-purple-100"


text_purple_200 : Html.Attribute msg
text_purple_200 =
    A.class "text-purple-200"


text_purple_300 : Html.Attribute msg
text_purple_300 =
    A.class "text-purple-300"


text_purple_400 : Html.Attribute msg
text_purple_400 =
    A.class "text-purple-400"


text_purple_500 : Html.Attribute msg
text_purple_500 =
    A.class "text-purple-500"


text_purple_600 : Html.Attribute msg
text_purple_600 =
    A.class "text-purple-600"


text_purple_700 : Html.Attribute msg
text_purple_700 =
    A.class "text-purple-700"


text_purple_800 : Html.Attribute msg
text_purple_800 =
    A.class "text-purple-800"


text_purple_900 : Html.Attribute msg
text_purple_900 =
    A.class "text-purple-900"


text_pink_100 : Html.Attribute msg
text_pink_100 =
    A.class "text-pink-100"


text_pink_200 : Html.Attribute msg
text_pink_200 =
    A.class "text-pink-200"


text_pink_300 : Html.Attribute msg
text_pink_300 =
    A.class "text-pink-300"


text_pink_400 : Html.Attribute msg
text_pink_400 =
    A.class "text-pink-400"


text_pink_500 : Html.Attribute msg
text_pink_500 =
    A.class "text-pink-500"


text_pink_600 : Html.Attribute msg
text_pink_600 =
    A.class "text-pink-600"


text_pink_700 : Html.Attribute msg
text_pink_700 =
    A.class "text-pink-700"


text_pink_800 : Html.Attribute msg
text_pink_800 =
    A.class "text-pink-800"


text_pink_900 : Html.Attribute msg
text_pink_900 =
    A.class "text-pink-900"


hover__text_transparent : Html.Attribute msg
hover__text_transparent =
    A.class "hover:text-transparent"


hover__text_black : Html.Attribute msg
hover__text_black =
    A.class "hover:text-black"


hover__text_white : Html.Attribute msg
hover__text_white =
    A.class "hover:text-white"


hover__text_gray_100 : Html.Attribute msg
hover__text_gray_100 =
    A.class "hover:text-gray-100"


hover__text_gray_200 : Html.Attribute msg
hover__text_gray_200 =
    A.class "hover:text-gray-200"


hover__text_gray_300 : Html.Attribute msg
hover__text_gray_300 =
    A.class "hover:text-gray-300"


hover__text_gray_400 : Html.Attribute msg
hover__text_gray_400 =
    A.class "hover:text-gray-400"


hover__text_gray_500 : Html.Attribute msg
hover__text_gray_500 =
    A.class "hover:text-gray-500"


hover__text_gray_600 : Html.Attribute msg
hover__text_gray_600 =
    A.class "hover:text-gray-600"


hover__text_gray_700 : Html.Attribute msg
hover__text_gray_700 =
    A.class "hover:text-gray-700"


hover__text_gray_800 : Html.Attribute msg
hover__text_gray_800 =
    A.class "hover:text-gray-800"


hover__text_gray_900 : Html.Attribute msg
hover__text_gray_900 =
    A.class "hover:text-gray-900"


hover__text_red_100 : Html.Attribute msg
hover__text_red_100 =
    A.class "hover:text-red-100"


hover__text_red_200 : Html.Attribute msg
hover__text_red_200 =
    A.class "hover:text-red-200"


hover__text_red_300 : Html.Attribute msg
hover__text_red_300 =
    A.class "hover:text-red-300"


hover__text_red_400 : Html.Attribute msg
hover__text_red_400 =
    A.class "hover:text-red-400"


hover__text_red_500 : Html.Attribute msg
hover__text_red_500 =
    A.class "hover:text-red-500"


hover__text_red_600 : Html.Attribute msg
hover__text_red_600 =
    A.class "hover:text-red-600"


hover__text_red_700 : Html.Attribute msg
hover__text_red_700 =
    A.class "hover:text-red-700"


hover__text_red_800 : Html.Attribute msg
hover__text_red_800 =
    A.class "hover:text-red-800"


hover__text_red_900 : Html.Attribute msg
hover__text_red_900 =
    A.class "hover:text-red-900"


hover__text_orange_100 : Html.Attribute msg
hover__text_orange_100 =
    A.class "hover:text-orange-100"


hover__text_orange_200 : Html.Attribute msg
hover__text_orange_200 =
    A.class "hover:text-orange-200"


hover__text_orange_300 : Html.Attribute msg
hover__text_orange_300 =
    A.class "hover:text-orange-300"


hover__text_orange_400 : Html.Attribute msg
hover__text_orange_400 =
    A.class "hover:text-orange-400"


hover__text_orange_500 : Html.Attribute msg
hover__text_orange_500 =
    A.class "hover:text-orange-500"


hover__text_orange_600 : Html.Attribute msg
hover__text_orange_600 =
    A.class "hover:text-orange-600"


hover__text_orange_700 : Html.Attribute msg
hover__text_orange_700 =
    A.class "hover:text-orange-700"


hover__text_orange_800 : Html.Attribute msg
hover__text_orange_800 =
    A.class "hover:text-orange-800"


hover__text_orange_900 : Html.Attribute msg
hover__text_orange_900 =
    A.class "hover:text-orange-900"


hover__text_yellow_100 : Html.Attribute msg
hover__text_yellow_100 =
    A.class "hover:text-yellow-100"


hover__text_yellow_200 : Html.Attribute msg
hover__text_yellow_200 =
    A.class "hover:text-yellow-200"


hover__text_yellow_300 : Html.Attribute msg
hover__text_yellow_300 =
    A.class "hover:text-yellow-300"


hover__text_yellow_400 : Html.Attribute msg
hover__text_yellow_400 =
    A.class "hover:text-yellow-400"


hover__text_yellow_500 : Html.Attribute msg
hover__text_yellow_500 =
    A.class "hover:text-yellow-500"


hover__text_yellow_600 : Html.Attribute msg
hover__text_yellow_600 =
    A.class "hover:text-yellow-600"


hover__text_yellow_700 : Html.Attribute msg
hover__text_yellow_700 =
    A.class "hover:text-yellow-700"


hover__text_yellow_800 : Html.Attribute msg
hover__text_yellow_800 =
    A.class "hover:text-yellow-800"


hover__text_yellow_900 : Html.Attribute msg
hover__text_yellow_900 =
    A.class "hover:text-yellow-900"


hover__text_green_100 : Html.Attribute msg
hover__text_green_100 =
    A.class "hover:text-green-100"


hover__text_green_200 : Html.Attribute msg
hover__text_green_200 =
    A.class "hover:text-green-200"


hover__text_green_300 : Html.Attribute msg
hover__text_green_300 =
    A.class "hover:text-green-300"


hover__text_green_400 : Html.Attribute msg
hover__text_green_400 =
    A.class "hover:text-green-400"


hover__text_green_500 : Html.Attribute msg
hover__text_green_500 =
    A.class "hover:text-green-500"


hover__text_green_600 : Html.Attribute msg
hover__text_green_600 =
    A.class "hover:text-green-600"


hover__text_green_700 : Html.Attribute msg
hover__text_green_700 =
    A.class "hover:text-green-700"


hover__text_green_800 : Html.Attribute msg
hover__text_green_800 =
    A.class "hover:text-green-800"


hover__text_green_900 : Html.Attribute msg
hover__text_green_900 =
    A.class "hover:text-green-900"


hover__text_teal_100 : Html.Attribute msg
hover__text_teal_100 =
    A.class "hover:text-teal-100"


hover__text_teal_200 : Html.Attribute msg
hover__text_teal_200 =
    A.class "hover:text-teal-200"


hover__text_teal_300 : Html.Attribute msg
hover__text_teal_300 =
    A.class "hover:text-teal-300"


hover__text_teal_400 : Html.Attribute msg
hover__text_teal_400 =
    A.class "hover:text-teal-400"


hover__text_teal_500 : Html.Attribute msg
hover__text_teal_500 =
    A.class "hover:text-teal-500"


hover__text_teal_600 : Html.Attribute msg
hover__text_teal_600 =
    A.class "hover:text-teal-600"


hover__text_teal_700 : Html.Attribute msg
hover__text_teal_700 =
    A.class "hover:text-teal-700"


hover__text_teal_800 : Html.Attribute msg
hover__text_teal_800 =
    A.class "hover:text-teal-800"


hover__text_teal_900 : Html.Attribute msg
hover__text_teal_900 =
    A.class "hover:text-teal-900"


hover__text_blue_100 : Html.Attribute msg
hover__text_blue_100 =
    A.class "hover:text-blue-100"


hover__text_blue_200 : Html.Attribute msg
hover__text_blue_200 =
    A.class "hover:text-blue-200"


hover__text_blue_300 : Html.Attribute msg
hover__text_blue_300 =
    A.class "hover:text-blue-300"


hover__text_blue_400 : Html.Attribute msg
hover__text_blue_400 =
    A.class "hover:text-blue-400"


hover__text_blue_500 : Html.Attribute msg
hover__text_blue_500 =
    A.class "hover:text-blue-500"


hover__text_blue_600 : Html.Attribute msg
hover__text_blue_600 =
    A.class "hover:text-blue-600"


hover__text_blue_700 : Html.Attribute msg
hover__text_blue_700 =
    A.class "hover:text-blue-700"


hover__text_blue_800 : Html.Attribute msg
hover__text_blue_800 =
    A.class "hover:text-blue-800"


hover__text_blue_900 : Html.Attribute msg
hover__text_blue_900 =
    A.class "hover:text-blue-900"


hover__text_indigo_100 : Html.Attribute msg
hover__text_indigo_100 =
    A.class "hover:text-indigo-100"


hover__text_indigo_200 : Html.Attribute msg
hover__text_indigo_200 =
    A.class "hover:text-indigo-200"


hover__text_indigo_300 : Html.Attribute msg
hover__text_indigo_300 =
    A.class "hover:text-indigo-300"


hover__text_indigo_400 : Html.Attribute msg
hover__text_indigo_400 =
    A.class "hover:text-indigo-400"


hover__text_indigo_500 : Html.Attribute msg
hover__text_indigo_500 =
    A.class "hover:text-indigo-500"


hover__text_indigo_600 : Html.Attribute msg
hover__text_indigo_600 =
    A.class "hover:text-indigo-600"


hover__text_indigo_700 : Html.Attribute msg
hover__text_indigo_700 =
    A.class "hover:text-indigo-700"


hover__text_indigo_800 : Html.Attribute msg
hover__text_indigo_800 =
    A.class "hover:text-indigo-800"


hover__text_indigo_900 : Html.Attribute msg
hover__text_indigo_900 =
    A.class "hover:text-indigo-900"


hover__text_purple_100 : Html.Attribute msg
hover__text_purple_100 =
    A.class "hover:text-purple-100"


hover__text_purple_200 : Html.Attribute msg
hover__text_purple_200 =
    A.class "hover:text-purple-200"


hover__text_purple_300 : Html.Attribute msg
hover__text_purple_300 =
    A.class "hover:text-purple-300"


hover__text_purple_400 : Html.Attribute msg
hover__text_purple_400 =
    A.class "hover:text-purple-400"


hover__text_purple_500 : Html.Attribute msg
hover__text_purple_500 =
    A.class "hover:text-purple-500"


hover__text_purple_600 : Html.Attribute msg
hover__text_purple_600 =
    A.class "hover:text-purple-600"


hover__text_purple_700 : Html.Attribute msg
hover__text_purple_700 =
    A.class "hover:text-purple-700"


hover__text_purple_800 : Html.Attribute msg
hover__text_purple_800 =
    A.class "hover:text-purple-800"


hover__text_purple_900 : Html.Attribute msg
hover__text_purple_900 =
    A.class "hover:text-purple-900"


hover__text_pink_100 : Html.Attribute msg
hover__text_pink_100 =
    A.class "hover:text-pink-100"


hover__text_pink_200 : Html.Attribute msg
hover__text_pink_200 =
    A.class "hover:text-pink-200"


hover__text_pink_300 : Html.Attribute msg
hover__text_pink_300 =
    A.class "hover:text-pink-300"


hover__text_pink_400 : Html.Attribute msg
hover__text_pink_400 =
    A.class "hover:text-pink-400"


hover__text_pink_500 : Html.Attribute msg
hover__text_pink_500 =
    A.class "hover:text-pink-500"


hover__text_pink_600 : Html.Attribute msg
hover__text_pink_600 =
    A.class "hover:text-pink-600"


hover__text_pink_700 : Html.Attribute msg
hover__text_pink_700 =
    A.class "hover:text-pink-700"


hover__text_pink_800 : Html.Attribute msg
hover__text_pink_800 =
    A.class "hover:text-pink-800"


hover__text_pink_900 : Html.Attribute msg
hover__text_pink_900 =
    A.class "hover:text-pink-900"


focus__text_transparent : Html.Attribute msg
focus__text_transparent =
    A.class "focus:text-transparent"


focus__text_black : Html.Attribute msg
focus__text_black =
    A.class "focus:text-black"


focus__text_white : Html.Attribute msg
focus__text_white =
    A.class "focus:text-white"


focus__text_gray_100 : Html.Attribute msg
focus__text_gray_100 =
    A.class "focus:text-gray-100"


focus__text_gray_200 : Html.Attribute msg
focus__text_gray_200 =
    A.class "focus:text-gray-200"


focus__text_gray_300 : Html.Attribute msg
focus__text_gray_300 =
    A.class "focus:text-gray-300"


focus__text_gray_400 : Html.Attribute msg
focus__text_gray_400 =
    A.class "focus:text-gray-400"


focus__text_gray_500 : Html.Attribute msg
focus__text_gray_500 =
    A.class "focus:text-gray-500"


focus__text_gray_600 : Html.Attribute msg
focus__text_gray_600 =
    A.class "focus:text-gray-600"


focus__text_gray_700 : Html.Attribute msg
focus__text_gray_700 =
    A.class "focus:text-gray-700"


focus__text_gray_800 : Html.Attribute msg
focus__text_gray_800 =
    A.class "focus:text-gray-800"


focus__text_gray_900 : Html.Attribute msg
focus__text_gray_900 =
    A.class "focus:text-gray-900"


focus__text_red_100 : Html.Attribute msg
focus__text_red_100 =
    A.class "focus:text-red-100"


focus__text_red_200 : Html.Attribute msg
focus__text_red_200 =
    A.class "focus:text-red-200"


focus__text_red_300 : Html.Attribute msg
focus__text_red_300 =
    A.class "focus:text-red-300"


focus__text_red_400 : Html.Attribute msg
focus__text_red_400 =
    A.class "focus:text-red-400"


focus__text_red_500 : Html.Attribute msg
focus__text_red_500 =
    A.class "focus:text-red-500"


focus__text_red_600 : Html.Attribute msg
focus__text_red_600 =
    A.class "focus:text-red-600"


focus__text_red_700 : Html.Attribute msg
focus__text_red_700 =
    A.class "focus:text-red-700"


focus__text_red_800 : Html.Attribute msg
focus__text_red_800 =
    A.class "focus:text-red-800"


focus__text_red_900 : Html.Attribute msg
focus__text_red_900 =
    A.class "focus:text-red-900"


focus__text_orange_100 : Html.Attribute msg
focus__text_orange_100 =
    A.class "focus:text-orange-100"


focus__text_orange_200 : Html.Attribute msg
focus__text_orange_200 =
    A.class "focus:text-orange-200"


focus__text_orange_300 : Html.Attribute msg
focus__text_orange_300 =
    A.class "focus:text-orange-300"


focus__text_orange_400 : Html.Attribute msg
focus__text_orange_400 =
    A.class "focus:text-orange-400"


focus__text_orange_500 : Html.Attribute msg
focus__text_orange_500 =
    A.class "focus:text-orange-500"


focus__text_orange_600 : Html.Attribute msg
focus__text_orange_600 =
    A.class "focus:text-orange-600"


focus__text_orange_700 : Html.Attribute msg
focus__text_orange_700 =
    A.class "focus:text-orange-700"


focus__text_orange_800 : Html.Attribute msg
focus__text_orange_800 =
    A.class "focus:text-orange-800"


focus__text_orange_900 : Html.Attribute msg
focus__text_orange_900 =
    A.class "focus:text-orange-900"


focus__text_yellow_100 : Html.Attribute msg
focus__text_yellow_100 =
    A.class "focus:text-yellow-100"


focus__text_yellow_200 : Html.Attribute msg
focus__text_yellow_200 =
    A.class "focus:text-yellow-200"


focus__text_yellow_300 : Html.Attribute msg
focus__text_yellow_300 =
    A.class "focus:text-yellow-300"


focus__text_yellow_400 : Html.Attribute msg
focus__text_yellow_400 =
    A.class "focus:text-yellow-400"


focus__text_yellow_500 : Html.Attribute msg
focus__text_yellow_500 =
    A.class "focus:text-yellow-500"


focus__text_yellow_600 : Html.Attribute msg
focus__text_yellow_600 =
    A.class "focus:text-yellow-600"


focus__text_yellow_700 : Html.Attribute msg
focus__text_yellow_700 =
    A.class "focus:text-yellow-700"


focus__text_yellow_800 : Html.Attribute msg
focus__text_yellow_800 =
    A.class "focus:text-yellow-800"


focus__text_yellow_900 : Html.Attribute msg
focus__text_yellow_900 =
    A.class "focus:text-yellow-900"


focus__text_green_100 : Html.Attribute msg
focus__text_green_100 =
    A.class "focus:text-green-100"


focus__text_green_200 : Html.Attribute msg
focus__text_green_200 =
    A.class "focus:text-green-200"


focus__text_green_300 : Html.Attribute msg
focus__text_green_300 =
    A.class "focus:text-green-300"


focus__text_green_400 : Html.Attribute msg
focus__text_green_400 =
    A.class "focus:text-green-400"


focus__text_green_500 : Html.Attribute msg
focus__text_green_500 =
    A.class "focus:text-green-500"


focus__text_green_600 : Html.Attribute msg
focus__text_green_600 =
    A.class "focus:text-green-600"


focus__text_green_700 : Html.Attribute msg
focus__text_green_700 =
    A.class "focus:text-green-700"


focus__text_green_800 : Html.Attribute msg
focus__text_green_800 =
    A.class "focus:text-green-800"


focus__text_green_900 : Html.Attribute msg
focus__text_green_900 =
    A.class "focus:text-green-900"


focus__text_teal_100 : Html.Attribute msg
focus__text_teal_100 =
    A.class "focus:text-teal-100"


focus__text_teal_200 : Html.Attribute msg
focus__text_teal_200 =
    A.class "focus:text-teal-200"


focus__text_teal_300 : Html.Attribute msg
focus__text_teal_300 =
    A.class "focus:text-teal-300"


focus__text_teal_400 : Html.Attribute msg
focus__text_teal_400 =
    A.class "focus:text-teal-400"


focus__text_teal_500 : Html.Attribute msg
focus__text_teal_500 =
    A.class "focus:text-teal-500"


focus__text_teal_600 : Html.Attribute msg
focus__text_teal_600 =
    A.class "focus:text-teal-600"


focus__text_teal_700 : Html.Attribute msg
focus__text_teal_700 =
    A.class "focus:text-teal-700"


focus__text_teal_800 : Html.Attribute msg
focus__text_teal_800 =
    A.class "focus:text-teal-800"


focus__text_teal_900 : Html.Attribute msg
focus__text_teal_900 =
    A.class "focus:text-teal-900"


focus__text_blue_100 : Html.Attribute msg
focus__text_blue_100 =
    A.class "focus:text-blue-100"


focus__text_blue_200 : Html.Attribute msg
focus__text_blue_200 =
    A.class "focus:text-blue-200"


focus__text_blue_300 : Html.Attribute msg
focus__text_blue_300 =
    A.class "focus:text-blue-300"


focus__text_blue_400 : Html.Attribute msg
focus__text_blue_400 =
    A.class "focus:text-blue-400"


focus__text_blue_500 : Html.Attribute msg
focus__text_blue_500 =
    A.class "focus:text-blue-500"


focus__text_blue_600 : Html.Attribute msg
focus__text_blue_600 =
    A.class "focus:text-blue-600"


focus__text_blue_700 : Html.Attribute msg
focus__text_blue_700 =
    A.class "focus:text-blue-700"


focus__text_blue_800 : Html.Attribute msg
focus__text_blue_800 =
    A.class "focus:text-blue-800"


focus__text_blue_900 : Html.Attribute msg
focus__text_blue_900 =
    A.class "focus:text-blue-900"


focus__text_indigo_100 : Html.Attribute msg
focus__text_indigo_100 =
    A.class "focus:text-indigo-100"


focus__text_indigo_200 : Html.Attribute msg
focus__text_indigo_200 =
    A.class "focus:text-indigo-200"


focus__text_indigo_300 : Html.Attribute msg
focus__text_indigo_300 =
    A.class "focus:text-indigo-300"


focus__text_indigo_400 : Html.Attribute msg
focus__text_indigo_400 =
    A.class "focus:text-indigo-400"


focus__text_indigo_500 : Html.Attribute msg
focus__text_indigo_500 =
    A.class "focus:text-indigo-500"


focus__text_indigo_600 : Html.Attribute msg
focus__text_indigo_600 =
    A.class "focus:text-indigo-600"


focus__text_indigo_700 : Html.Attribute msg
focus__text_indigo_700 =
    A.class "focus:text-indigo-700"


focus__text_indigo_800 : Html.Attribute msg
focus__text_indigo_800 =
    A.class "focus:text-indigo-800"


focus__text_indigo_900 : Html.Attribute msg
focus__text_indigo_900 =
    A.class "focus:text-indigo-900"


focus__text_purple_100 : Html.Attribute msg
focus__text_purple_100 =
    A.class "focus:text-purple-100"


focus__text_purple_200 : Html.Attribute msg
focus__text_purple_200 =
    A.class "focus:text-purple-200"


focus__text_purple_300 : Html.Attribute msg
focus__text_purple_300 =
    A.class "focus:text-purple-300"


focus__text_purple_400 : Html.Attribute msg
focus__text_purple_400 =
    A.class "focus:text-purple-400"


focus__text_purple_500 : Html.Attribute msg
focus__text_purple_500 =
    A.class "focus:text-purple-500"


focus__text_purple_600 : Html.Attribute msg
focus__text_purple_600 =
    A.class "focus:text-purple-600"


focus__text_purple_700 : Html.Attribute msg
focus__text_purple_700 =
    A.class "focus:text-purple-700"


focus__text_purple_800 : Html.Attribute msg
focus__text_purple_800 =
    A.class "focus:text-purple-800"


focus__text_purple_900 : Html.Attribute msg
focus__text_purple_900 =
    A.class "focus:text-purple-900"


focus__text_pink_100 : Html.Attribute msg
focus__text_pink_100 =
    A.class "focus:text-pink-100"


focus__text_pink_200 : Html.Attribute msg
focus__text_pink_200 =
    A.class "focus:text-pink-200"


focus__text_pink_300 : Html.Attribute msg
focus__text_pink_300 =
    A.class "focus:text-pink-300"


focus__text_pink_400 : Html.Attribute msg
focus__text_pink_400 =
    A.class "focus:text-pink-400"


focus__text_pink_500 : Html.Attribute msg
focus__text_pink_500 =
    A.class "focus:text-pink-500"


focus__text_pink_600 : Html.Attribute msg
focus__text_pink_600 =
    A.class "focus:text-pink-600"


focus__text_pink_700 : Html.Attribute msg
focus__text_pink_700 =
    A.class "focus:text-pink-700"


focus__text_pink_800 : Html.Attribute msg
focus__text_pink_800 =
    A.class "focus:text-pink-800"


focus__text_pink_900 : Html.Attribute msg
focus__text_pink_900 =
    A.class "focus:text-pink-900"


text_xs : Html.Attribute msg
text_xs =
    A.class "text-xs"


text_sm : Html.Attribute msg
text_sm =
    A.class "text-sm"


text_base : Html.Attribute msg
text_base =
    A.class "text-base"


text_lg : Html.Attribute msg
text_lg =
    A.class "text-lg"


text_xl : Html.Attribute msg
text_xl =
    A.class "text-xl"


text_2xl : Html.Attribute msg
text_2xl =
    A.class "text-2xl"


text_3xl : Html.Attribute msg
text_3xl =
    A.class "text-3xl"


text_4xl : Html.Attribute msg
text_4xl =
    A.class "text-4xl"


text_5xl : Html.Attribute msg
text_5xl =
    A.class "text-5xl"


text_6xl : Html.Attribute msg
text_6xl =
    A.class "text-6xl"


italic : Html.Attribute msg
italic =
    A.class "italic"


not_italic : Html.Attribute msg
not_italic =
    A.class "not-italic"


uppercase : Html.Attribute msg
uppercase =
    A.class "uppercase"


lowercase : Html.Attribute msg
lowercase =
    A.class "lowercase"


capitalize : Html.Attribute msg
capitalize =
    A.class "capitalize"


normal_case : Html.Attribute msg
normal_case =
    A.class "normal-case"


underline : Html.Attribute msg
underline =
    A.class "underline"


line_through : Html.Attribute msg
line_through =
    A.class "line-through"


no_underline : Html.Attribute msg
no_underline =
    A.class "no-underline"


hover__underline : Html.Attribute msg
hover__underline =
    A.class "hover:underline"


hover__line_through : Html.Attribute msg
hover__line_through =
    A.class "hover:line-through"


hover__no_underline : Html.Attribute msg
hover__no_underline =
    A.class "hover:no-underline"


focus__underline : Html.Attribute msg
focus__underline =
    A.class "focus:underline"


focus__line_through : Html.Attribute msg
focus__line_through =
    A.class "focus:line-through"


focus__no_underline : Html.Attribute msg
focus__no_underline =
    A.class "focus:no-underline"


antialiased : Html.Attribute msg
antialiased =
    A.class "antialiased"


subpixel_antialiased : Html.Attribute msg
subpixel_antialiased =
    A.class "subpixel-antialiased"


tracking_tighter : Html.Attribute msg
tracking_tighter =
    A.class "tracking-tighter"


tracking_tight : Html.Attribute msg
tracking_tight =
    A.class "tracking-tight"


tracking_normal : Html.Attribute msg
tracking_normal =
    A.class "tracking-normal"


tracking_wide : Html.Attribute msg
tracking_wide =
    A.class "tracking-wide"


tracking_wider : Html.Attribute msg
tracking_wider =
    A.class "tracking-wider"


tracking_widest : Html.Attribute msg
tracking_widest =
    A.class "tracking-widest"


select_none : Html.Attribute msg
select_none =
    A.class "select-none"


select_text : Html.Attribute msg
select_text =
    A.class "select-text"


select_all : Html.Attribute msg
select_all =
    A.class "select-all"


select_auto : Html.Attribute msg
select_auto =
    A.class "select-auto"


align_baseline : Html.Attribute msg
align_baseline =
    A.class "align-baseline"


align_top : Html.Attribute msg
align_top =
    A.class "align-top"


align_middle : Html.Attribute msg
align_middle =
    A.class "align-middle"


align_bottom : Html.Attribute msg
align_bottom =
    A.class "align-bottom"


align_text_top : Html.Attribute msg
align_text_top =
    A.class "align-text-top"


align_text_bottom : Html.Attribute msg
align_text_bottom =
    A.class "align-text-bottom"


visible : Html.Attribute msg
visible =
    A.class "visible"


invisible : Html.Attribute msg
invisible =
    A.class "invisible"


whitespace_normal : Html.Attribute msg
whitespace_normal =
    A.class "whitespace-normal"


whitespace_no_wrap : Html.Attribute msg
whitespace_no_wrap =
    A.class "whitespace-no-wrap"


whitespace_pre : Html.Attribute msg
whitespace_pre =
    A.class "whitespace-pre"


whitespace_pre_line : Html.Attribute msg
whitespace_pre_line =
    A.class "whitespace-pre-line"


whitespace_pre_wrap : Html.Attribute msg
whitespace_pre_wrap =
    A.class "whitespace-pre-wrap"


break_normal : Html.Attribute msg
break_normal =
    A.class "break-normal"


break_words : Html.Attribute msg
break_words =
    A.class "break-words"


break_all : Html.Attribute msg
break_all =
    A.class "break-all"


truncate : Html.Attribute msg
truncate =
    A.class "truncate"


w_0 : Html.Attribute msg
w_0 =
    A.class "w-0"


w_1 : Html.Attribute msg
w_1 =
    A.class "w-1"


w_2 : Html.Attribute msg
w_2 =
    A.class "w-2"


w_3 : Html.Attribute msg
w_3 =
    A.class "w-3"


w_4 : Html.Attribute msg
w_4 =
    A.class "w-4"


w_5 : Html.Attribute msg
w_5 =
    A.class "w-5"


w_6 : Html.Attribute msg
w_6 =
    A.class "w-6"


w_8 : Html.Attribute msg
w_8 =
    A.class "w-8"


w_10 : Html.Attribute msg
w_10 =
    A.class "w-10"


w_12 : Html.Attribute msg
w_12 =
    A.class "w-12"


w_16 : Html.Attribute msg
w_16 =
    A.class "w-16"


w_20 : Html.Attribute msg
w_20 =
    A.class "w-20"


w_24 : Html.Attribute msg
w_24 =
    A.class "w-24"


w_32 : Html.Attribute msg
w_32 =
    A.class "w-32"


w_40 : Html.Attribute msg
w_40 =
    A.class "w-40"


w_48 : Html.Attribute msg
w_48 =
    A.class "w-48"


w_56 : Html.Attribute msg
w_56 =
    A.class "w-56"


w_64 : Html.Attribute msg
w_64 =
    A.class "w-64"


w_auto : Html.Attribute msg
w_auto =
    A.class "w-auto"


w_px : Html.Attribute msg
w_px =
    A.class "w-px"


w_1over2 : Html.Attribute msg
w_1over2 =
    A.class "w-1/2"


w_1over3 : Html.Attribute msg
w_1over3 =
    A.class "w-1/3"


w_2over3 : Html.Attribute msg
w_2over3 =
    A.class "w-2/3"


w_1over4 : Html.Attribute msg
w_1over4 =
    A.class "w-1/4"


w_2over4 : Html.Attribute msg
w_2over4 =
    A.class "w-2/4"


w_3over4 : Html.Attribute msg
w_3over4 =
    A.class "w-3/4"


w_1over5 : Html.Attribute msg
w_1over5 =
    A.class "w-1/5"


w_2over5 : Html.Attribute msg
w_2over5 =
    A.class "w-2/5"


w_3over5 : Html.Attribute msg
w_3over5 =
    A.class "w-3/5"


w_4over5 : Html.Attribute msg
w_4over5 =
    A.class "w-4/5"


w_1over6 : Html.Attribute msg
w_1over6 =
    A.class "w-1/6"


w_2over6 : Html.Attribute msg
w_2over6 =
    A.class "w-2/6"


w_3over6 : Html.Attribute msg
w_3over6 =
    A.class "w-3/6"


w_4over6 : Html.Attribute msg
w_4over6 =
    A.class "w-4/6"


w_5over6 : Html.Attribute msg
w_5over6 =
    A.class "w-5/6"


w_1over12 : Html.Attribute msg
w_1over12 =
    A.class "w-1/12"


w_2over12 : Html.Attribute msg
w_2over12 =
    A.class "w-2/12"


w_3over12 : Html.Attribute msg
w_3over12 =
    A.class "w-3/12"


w_4over12 : Html.Attribute msg
w_4over12 =
    A.class "w-4/12"


w_5over12 : Html.Attribute msg
w_5over12 =
    A.class "w-5/12"


w_6over12 : Html.Attribute msg
w_6over12 =
    A.class "w-6/12"


w_7over12 : Html.Attribute msg
w_7over12 =
    A.class "w-7/12"


w_8over12 : Html.Attribute msg
w_8over12 =
    A.class "w-8/12"


w_9over12 : Html.Attribute msg
w_9over12 =
    A.class "w-9/12"


w_10over12 : Html.Attribute msg
w_10over12 =
    A.class "w-10/12"


w_11over12 : Html.Attribute msg
w_11over12 =
    A.class "w-11/12"


w_full : Html.Attribute msg
w_full =
    A.class "w-full"


w_screen : Html.Attribute msg
w_screen =
    A.class "w-screen"


z_0 : Html.Attribute msg
z_0 =
    A.class "z-0"


z_10 : Html.Attribute msg
z_10 =
    A.class "z-10"


z_20 : Html.Attribute msg
z_20 =
    A.class "z-20"


z_30 : Html.Attribute msg
z_30 =
    A.class "z-30"


z_40 : Html.Attribute msg
z_40 =
    A.class "z-40"


z_50 : Html.Attribute msg
z_50 =
    A.class "z-50"


z_auto : Html.Attribute msg
z_auto =
    A.class "z-auto"


gap_0 : Html.Attribute msg
gap_0 =
    A.class "gap-0"


gap_1 : Html.Attribute msg
gap_1 =
    A.class "gap-1"


gap_2 : Html.Attribute msg
gap_2 =
    A.class "gap-2"


gap_3 : Html.Attribute msg
gap_3 =
    A.class "gap-3"


gap_4 : Html.Attribute msg
gap_4 =
    A.class "gap-4"


gap_5 : Html.Attribute msg
gap_5 =
    A.class "gap-5"


gap_6 : Html.Attribute msg
gap_6 =
    A.class "gap-6"


gap_8 : Html.Attribute msg
gap_8 =
    A.class "gap-8"


gap_10 : Html.Attribute msg
gap_10 =
    A.class "gap-10"


gap_12 : Html.Attribute msg
gap_12 =
    A.class "gap-12"


gap_16 : Html.Attribute msg
gap_16 =
    A.class "gap-16"


gap_20 : Html.Attribute msg
gap_20 =
    A.class "gap-20"


gap_24 : Html.Attribute msg
gap_24 =
    A.class "gap-24"


gap_32 : Html.Attribute msg
gap_32 =
    A.class "gap-32"


gap_40 : Html.Attribute msg
gap_40 =
    A.class "gap-40"


gap_48 : Html.Attribute msg
gap_48 =
    A.class "gap-48"


gap_56 : Html.Attribute msg
gap_56 =
    A.class "gap-56"


gap_64 : Html.Attribute msg
gap_64 =
    A.class "gap-64"


gap_px : Html.Attribute msg
gap_px =
    A.class "gap-px"


col_gap_0 : Html.Attribute msg
col_gap_0 =
    A.class "col-gap-0"


col_gap_1 : Html.Attribute msg
col_gap_1 =
    A.class "col-gap-1"


col_gap_2 : Html.Attribute msg
col_gap_2 =
    A.class "col-gap-2"


col_gap_3 : Html.Attribute msg
col_gap_3 =
    A.class "col-gap-3"


col_gap_4 : Html.Attribute msg
col_gap_4 =
    A.class "col-gap-4"


col_gap_5 : Html.Attribute msg
col_gap_5 =
    A.class "col-gap-5"


col_gap_6 : Html.Attribute msg
col_gap_6 =
    A.class "col-gap-6"


col_gap_8 : Html.Attribute msg
col_gap_8 =
    A.class "col-gap-8"


col_gap_10 : Html.Attribute msg
col_gap_10 =
    A.class "col-gap-10"


col_gap_12 : Html.Attribute msg
col_gap_12 =
    A.class "col-gap-12"


col_gap_16 : Html.Attribute msg
col_gap_16 =
    A.class "col-gap-16"


col_gap_20 : Html.Attribute msg
col_gap_20 =
    A.class "col-gap-20"


col_gap_24 : Html.Attribute msg
col_gap_24 =
    A.class "col-gap-24"


col_gap_32 : Html.Attribute msg
col_gap_32 =
    A.class "col-gap-32"


col_gap_40 : Html.Attribute msg
col_gap_40 =
    A.class "col-gap-40"


col_gap_48 : Html.Attribute msg
col_gap_48 =
    A.class "col-gap-48"


col_gap_56 : Html.Attribute msg
col_gap_56 =
    A.class "col-gap-56"


col_gap_64 : Html.Attribute msg
col_gap_64 =
    A.class "col-gap-64"


col_gap_px : Html.Attribute msg
col_gap_px =
    A.class "col-gap-px"


row_gap_0 : Html.Attribute msg
row_gap_0 =
    A.class "row-gap-0"


row_gap_1 : Html.Attribute msg
row_gap_1 =
    A.class "row-gap-1"


row_gap_2 : Html.Attribute msg
row_gap_2 =
    A.class "row-gap-2"


row_gap_3 : Html.Attribute msg
row_gap_3 =
    A.class "row-gap-3"


row_gap_4 : Html.Attribute msg
row_gap_4 =
    A.class "row-gap-4"


row_gap_5 : Html.Attribute msg
row_gap_5 =
    A.class "row-gap-5"


row_gap_6 : Html.Attribute msg
row_gap_6 =
    A.class "row-gap-6"


row_gap_8 : Html.Attribute msg
row_gap_8 =
    A.class "row-gap-8"


row_gap_10 : Html.Attribute msg
row_gap_10 =
    A.class "row-gap-10"


row_gap_12 : Html.Attribute msg
row_gap_12 =
    A.class "row-gap-12"


row_gap_16 : Html.Attribute msg
row_gap_16 =
    A.class "row-gap-16"


row_gap_20 : Html.Attribute msg
row_gap_20 =
    A.class "row-gap-20"


row_gap_24 : Html.Attribute msg
row_gap_24 =
    A.class "row-gap-24"


row_gap_32 : Html.Attribute msg
row_gap_32 =
    A.class "row-gap-32"


row_gap_40 : Html.Attribute msg
row_gap_40 =
    A.class "row-gap-40"


row_gap_48 : Html.Attribute msg
row_gap_48 =
    A.class "row-gap-48"


row_gap_56 : Html.Attribute msg
row_gap_56 =
    A.class "row-gap-56"


row_gap_64 : Html.Attribute msg
row_gap_64 =
    A.class "row-gap-64"


row_gap_px : Html.Attribute msg
row_gap_px =
    A.class "row-gap-px"


grid_flow_row : Html.Attribute msg
grid_flow_row =
    A.class "grid-flow-row"


grid_flow_col : Html.Attribute msg
grid_flow_col =
    A.class "grid-flow-col"


grid_flow_row_dense : Html.Attribute msg
grid_flow_row_dense =
    A.class "grid-flow-row-dense"


grid_flow_col_dense : Html.Attribute msg
grid_flow_col_dense =
    A.class "grid-flow-col-dense"


grid_cols_1 : Html.Attribute msg
grid_cols_1 =
    A.class "grid-cols-1"


grid_cols_2 : Html.Attribute msg
grid_cols_2 =
    A.class "grid-cols-2"


grid_cols_3 : Html.Attribute msg
grid_cols_3 =
    A.class "grid-cols-3"


grid_cols_4 : Html.Attribute msg
grid_cols_4 =
    A.class "grid-cols-4"


grid_cols_5 : Html.Attribute msg
grid_cols_5 =
    A.class "grid-cols-5"


grid_cols_6 : Html.Attribute msg
grid_cols_6 =
    A.class "grid-cols-6"


grid_cols_7 : Html.Attribute msg
grid_cols_7 =
    A.class "grid-cols-7"


grid_cols_8 : Html.Attribute msg
grid_cols_8 =
    A.class "grid-cols-8"


grid_cols_9 : Html.Attribute msg
grid_cols_9 =
    A.class "grid-cols-9"


grid_cols_10 : Html.Attribute msg
grid_cols_10 =
    A.class "grid-cols-10"


grid_cols_11 : Html.Attribute msg
grid_cols_11 =
    A.class "grid-cols-11"


grid_cols_12 : Html.Attribute msg
grid_cols_12 =
    A.class "grid-cols-12"


grid_cols_none : Html.Attribute msg
grid_cols_none =
    A.class "grid-cols-none"


col_auto : Html.Attribute msg
col_auto =
    A.class "col-auto"


col_span_1 : Html.Attribute msg
col_span_1 =
    A.class "col-span-1"


col_span_2 : Html.Attribute msg
col_span_2 =
    A.class "col-span-2"


col_span_3 : Html.Attribute msg
col_span_3 =
    A.class "col-span-3"


col_span_4 : Html.Attribute msg
col_span_4 =
    A.class "col-span-4"


col_span_5 : Html.Attribute msg
col_span_5 =
    A.class "col-span-5"


col_span_6 : Html.Attribute msg
col_span_6 =
    A.class "col-span-6"


col_span_7 : Html.Attribute msg
col_span_7 =
    A.class "col-span-7"


col_span_8 : Html.Attribute msg
col_span_8 =
    A.class "col-span-8"


col_span_9 : Html.Attribute msg
col_span_9 =
    A.class "col-span-9"


col_span_10 : Html.Attribute msg
col_span_10 =
    A.class "col-span-10"


col_span_11 : Html.Attribute msg
col_span_11 =
    A.class "col-span-11"


col_span_12 : Html.Attribute msg
col_span_12 =
    A.class "col-span-12"


col_start_1 : Html.Attribute msg
col_start_1 =
    A.class "col-start-1"


col_start_2 : Html.Attribute msg
col_start_2 =
    A.class "col-start-2"


col_start_3 : Html.Attribute msg
col_start_3 =
    A.class "col-start-3"


col_start_4 : Html.Attribute msg
col_start_4 =
    A.class "col-start-4"


col_start_5 : Html.Attribute msg
col_start_5 =
    A.class "col-start-5"


col_start_6 : Html.Attribute msg
col_start_6 =
    A.class "col-start-6"


col_start_7 : Html.Attribute msg
col_start_7 =
    A.class "col-start-7"


col_start_8 : Html.Attribute msg
col_start_8 =
    A.class "col-start-8"


col_start_9 : Html.Attribute msg
col_start_9 =
    A.class "col-start-9"


col_start_10 : Html.Attribute msg
col_start_10 =
    A.class "col-start-10"


col_start_11 : Html.Attribute msg
col_start_11 =
    A.class "col-start-11"


col_start_12 : Html.Attribute msg
col_start_12 =
    A.class "col-start-12"


col_start_13 : Html.Attribute msg
col_start_13 =
    A.class "col-start-13"


col_start_auto : Html.Attribute msg
col_start_auto =
    A.class "col-start-auto"


col_end_1 : Html.Attribute msg
col_end_1 =
    A.class "col-end-1"


col_end_2 : Html.Attribute msg
col_end_2 =
    A.class "col-end-2"


col_end_3 : Html.Attribute msg
col_end_3 =
    A.class "col-end-3"


col_end_4 : Html.Attribute msg
col_end_4 =
    A.class "col-end-4"


col_end_5 : Html.Attribute msg
col_end_5 =
    A.class "col-end-5"


col_end_6 : Html.Attribute msg
col_end_6 =
    A.class "col-end-6"


col_end_7 : Html.Attribute msg
col_end_7 =
    A.class "col-end-7"


col_end_8 : Html.Attribute msg
col_end_8 =
    A.class "col-end-8"


col_end_9 : Html.Attribute msg
col_end_9 =
    A.class "col-end-9"


col_end_10 : Html.Attribute msg
col_end_10 =
    A.class "col-end-10"


col_end_11 : Html.Attribute msg
col_end_11 =
    A.class "col-end-11"


col_end_12 : Html.Attribute msg
col_end_12 =
    A.class "col-end-12"


col_end_13 : Html.Attribute msg
col_end_13 =
    A.class "col-end-13"


col_end_auto : Html.Attribute msg
col_end_auto =
    A.class "col-end-auto"


grid_rows_1 : Html.Attribute msg
grid_rows_1 =
    A.class "grid-rows-1"


grid_rows_2 : Html.Attribute msg
grid_rows_2 =
    A.class "grid-rows-2"


grid_rows_3 : Html.Attribute msg
grid_rows_3 =
    A.class "grid-rows-3"


grid_rows_4 : Html.Attribute msg
grid_rows_4 =
    A.class "grid-rows-4"


grid_rows_5 : Html.Attribute msg
grid_rows_5 =
    A.class "grid-rows-5"


grid_rows_6 : Html.Attribute msg
grid_rows_6 =
    A.class "grid-rows-6"


grid_rows_none : Html.Attribute msg
grid_rows_none =
    A.class "grid-rows-none"


row_auto : Html.Attribute msg
row_auto =
    A.class "row-auto"


row_span_1 : Html.Attribute msg
row_span_1 =
    A.class "row-span-1"


row_span_2 : Html.Attribute msg
row_span_2 =
    A.class "row-span-2"


row_span_3 : Html.Attribute msg
row_span_3 =
    A.class "row-span-3"


row_span_4 : Html.Attribute msg
row_span_4 =
    A.class "row-span-4"


row_span_5 : Html.Attribute msg
row_span_5 =
    A.class "row-span-5"


row_span_6 : Html.Attribute msg
row_span_6 =
    A.class "row-span-6"


row_start_1 : Html.Attribute msg
row_start_1 =
    A.class "row-start-1"


row_start_2 : Html.Attribute msg
row_start_2 =
    A.class "row-start-2"


row_start_3 : Html.Attribute msg
row_start_3 =
    A.class "row-start-3"


row_start_4 : Html.Attribute msg
row_start_4 =
    A.class "row-start-4"


row_start_5 : Html.Attribute msg
row_start_5 =
    A.class "row-start-5"


row_start_6 : Html.Attribute msg
row_start_6 =
    A.class "row-start-6"


row_start_7 : Html.Attribute msg
row_start_7 =
    A.class "row-start-7"


row_start_auto : Html.Attribute msg
row_start_auto =
    A.class "row-start-auto"


row_end_1 : Html.Attribute msg
row_end_1 =
    A.class "row-end-1"


row_end_2 : Html.Attribute msg
row_end_2 =
    A.class "row-end-2"


row_end_3 : Html.Attribute msg
row_end_3 =
    A.class "row-end-3"


row_end_4 : Html.Attribute msg
row_end_4 =
    A.class "row-end-4"


row_end_5 : Html.Attribute msg
row_end_5 =
    A.class "row-end-5"


row_end_6 : Html.Attribute msg
row_end_6 =
    A.class "row-end-6"


row_end_7 : Html.Attribute msg
row_end_7 =
    A.class "row-end-7"


row_end_auto : Html.Attribute msg
row_end_auto =
    A.class "row-end-auto"


transform : Html.Attribute msg
transform =
    A.class "transform"


transform_none : Html.Attribute msg
transform_none =
    A.class "transform-none"


origin_center : Html.Attribute msg
origin_center =
    A.class "origin-center"


origin_top : Html.Attribute msg
origin_top =
    A.class "origin-top"


origin_top_right : Html.Attribute msg
origin_top_right =
    A.class "origin-top-right"


origin_right : Html.Attribute msg
origin_right =
    A.class "origin-right"


origin_bottom_right : Html.Attribute msg
origin_bottom_right =
    A.class "origin-bottom-right"


origin_bottom : Html.Attribute msg
origin_bottom =
    A.class "origin-bottom"


origin_bottom_left : Html.Attribute msg
origin_bottom_left =
    A.class "origin-bottom-left"


origin_left : Html.Attribute msg
origin_left =
    A.class "origin-left"


origin_top_left : Html.Attribute msg
origin_top_left =
    A.class "origin-top-left"


scale_0 : Html.Attribute msg
scale_0 =
    A.class "scale-0"


scale_50 : Html.Attribute msg
scale_50 =
    A.class "scale-50"


scale_75 : Html.Attribute msg
scale_75 =
    A.class "scale-75"


scale_90 : Html.Attribute msg
scale_90 =
    A.class "scale-90"


scale_95 : Html.Attribute msg
scale_95 =
    A.class "scale-95"


scale_100 : Html.Attribute msg
scale_100 =
    A.class "scale-100"


scale_105 : Html.Attribute msg
scale_105 =
    A.class "scale-105"


scale_110 : Html.Attribute msg
scale_110 =
    A.class "scale-110"


scale_125 : Html.Attribute msg
scale_125 =
    A.class "scale-125"


scale_150 : Html.Attribute msg
scale_150 =
    A.class "scale-150"


scale_x_0 : Html.Attribute msg
scale_x_0 =
    A.class "scale-x-0"


scale_x_50 : Html.Attribute msg
scale_x_50 =
    A.class "scale-x-50"


scale_x_75 : Html.Attribute msg
scale_x_75 =
    A.class "scale-x-75"


scale_x_90 : Html.Attribute msg
scale_x_90 =
    A.class "scale-x-90"


scale_x_95 : Html.Attribute msg
scale_x_95 =
    A.class "scale-x-95"


scale_x_100 : Html.Attribute msg
scale_x_100 =
    A.class "scale-x-100"


scale_x_105 : Html.Attribute msg
scale_x_105 =
    A.class "scale-x-105"


scale_x_110 : Html.Attribute msg
scale_x_110 =
    A.class "scale-x-110"


scale_x_125 : Html.Attribute msg
scale_x_125 =
    A.class "scale-x-125"


scale_x_150 : Html.Attribute msg
scale_x_150 =
    A.class "scale-x-150"


scale_y_0 : Html.Attribute msg
scale_y_0 =
    A.class "scale-y-0"


scale_y_50 : Html.Attribute msg
scale_y_50 =
    A.class "scale-y-50"


scale_y_75 : Html.Attribute msg
scale_y_75 =
    A.class "scale-y-75"


scale_y_90 : Html.Attribute msg
scale_y_90 =
    A.class "scale-y-90"


scale_y_95 : Html.Attribute msg
scale_y_95 =
    A.class "scale-y-95"


scale_y_100 : Html.Attribute msg
scale_y_100 =
    A.class "scale-y-100"


scale_y_105 : Html.Attribute msg
scale_y_105 =
    A.class "scale-y-105"


scale_y_110 : Html.Attribute msg
scale_y_110 =
    A.class "scale-y-110"


scale_y_125 : Html.Attribute msg
scale_y_125 =
    A.class "scale-y-125"


scale_y_150 : Html.Attribute msg
scale_y_150 =
    A.class "scale-y-150"


hover__scale_0 : Html.Attribute msg
hover__scale_0 =
    A.class "hover:scale-0"


hover__scale_50 : Html.Attribute msg
hover__scale_50 =
    A.class "hover:scale-50"


hover__scale_75 : Html.Attribute msg
hover__scale_75 =
    A.class "hover:scale-75"


hover__scale_90 : Html.Attribute msg
hover__scale_90 =
    A.class "hover:scale-90"


hover__scale_95 : Html.Attribute msg
hover__scale_95 =
    A.class "hover:scale-95"


hover__scale_100 : Html.Attribute msg
hover__scale_100 =
    A.class "hover:scale-100"


hover__scale_105 : Html.Attribute msg
hover__scale_105 =
    A.class "hover:scale-105"


hover__scale_110 : Html.Attribute msg
hover__scale_110 =
    A.class "hover:scale-110"


hover__scale_125 : Html.Attribute msg
hover__scale_125 =
    A.class "hover:scale-125"


hover__scale_150 : Html.Attribute msg
hover__scale_150 =
    A.class "hover:scale-150"


hover__scale_x_0 : Html.Attribute msg
hover__scale_x_0 =
    A.class "hover:scale-x-0"


hover__scale_x_50 : Html.Attribute msg
hover__scale_x_50 =
    A.class "hover:scale-x-50"


hover__scale_x_75 : Html.Attribute msg
hover__scale_x_75 =
    A.class "hover:scale-x-75"


hover__scale_x_90 : Html.Attribute msg
hover__scale_x_90 =
    A.class "hover:scale-x-90"


hover__scale_x_95 : Html.Attribute msg
hover__scale_x_95 =
    A.class "hover:scale-x-95"


hover__scale_x_100 : Html.Attribute msg
hover__scale_x_100 =
    A.class "hover:scale-x-100"


hover__scale_x_105 : Html.Attribute msg
hover__scale_x_105 =
    A.class "hover:scale-x-105"


hover__scale_x_110 : Html.Attribute msg
hover__scale_x_110 =
    A.class "hover:scale-x-110"


hover__scale_x_125 : Html.Attribute msg
hover__scale_x_125 =
    A.class "hover:scale-x-125"


hover__scale_x_150 : Html.Attribute msg
hover__scale_x_150 =
    A.class "hover:scale-x-150"


hover__scale_y_0 : Html.Attribute msg
hover__scale_y_0 =
    A.class "hover:scale-y-0"


hover__scale_y_50 : Html.Attribute msg
hover__scale_y_50 =
    A.class "hover:scale-y-50"


hover__scale_y_75 : Html.Attribute msg
hover__scale_y_75 =
    A.class "hover:scale-y-75"


hover__scale_y_90 : Html.Attribute msg
hover__scale_y_90 =
    A.class "hover:scale-y-90"


hover__scale_y_95 : Html.Attribute msg
hover__scale_y_95 =
    A.class "hover:scale-y-95"


hover__scale_y_100 : Html.Attribute msg
hover__scale_y_100 =
    A.class "hover:scale-y-100"


hover__scale_y_105 : Html.Attribute msg
hover__scale_y_105 =
    A.class "hover:scale-y-105"


hover__scale_y_110 : Html.Attribute msg
hover__scale_y_110 =
    A.class "hover:scale-y-110"


hover__scale_y_125 : Html.Attribute msg
hover__scale_y_125 =
    A.class "hover:scale-y-125"


hover__scale_y_150 : Html.Attribute msg
hover__scale_y_150 =
    A.class "hover:scale-y-150"


focus__scale_0 : Html.Attribute msg
focus__scale_0 =
    A.class "focus:scale-0"


focus__scale_50 : Html.Attribute msg
focus__scale_50 =
    A.class "focus:scale-50"


focus__scale_75 : Html.Attribute msg
focus__scale_75 =
    A.class "focus:scale-75"


focus__scale_90 : Html.Attribute msg
focus__scale_90 =
    A.class "focus:scale-90"


focus__scale_95 : Html.Attribute msg
focus__scale_95 =
    A.class "focus:scale-95"


focus__scale_100 : Html.Attribute msg
focus__scale_100 =
    A.class "focus:scale-100"


focus__scale_105 : Html.Attribute msg
focus__scale_105 =
    A.class "focus:scale-105"


focus__scale_110 : Html.Attribute msg
focus__scale_110 =
    A.class "focus:scale-110"


focus__scale_125 : Html.Attribute msg
focus__scale_125 =
    A.class "focus:scale-125"


focus__scale_150 : Html.Attribute msg
focus__scale_150 =
    A.class "focus:scale-150"


focus__scale_x_0 : Html.Attribute msg
focus__scale_x_0 =
    A.class "focus:scale-x-0"


focus__scale_x_50 : Html.Attribute msg
focus__scale_x_50 =
    A.class "focus:scale-x-50"


focus__scale_x_75 : Html.Attribute msg
focus__scale_x_75 =
    A.class "focus:scale-x-75"


focus__scale_x_90 : Html.Attribute msg
focus__scale_x_90 =
    A.class "focus:scale-x-90"


focus__scale_x_95 : Html.Attribute msg
focus__scale_x_95 =
    A.class "focus:scale-x-95"


focus__scale_x_100 : Html.Attribute msg
focus__scale_x_100 =
    A.class "focus:scale-x-100"


focus__scale_x_105 : Html.Attribute msg
focus__scale_x_105 =
    A.class "focus:scale-x-105"


focus__scale_x_110 : Html.Attribute msg
focus__scale_x_110 =
    A.class "focus:scale-x-110"


focus__scale_x_125 : Html.Attribute msg
focus__scale_x_125 =
    A.class "focus:scale-x-125"


focus__scale_x_150 : Html.Attribute msg
focus__scale_x_150 =
    A.class "focus:scale-x-150"


focus__scale_y_0 : Html.Attribute msg
focus__scale_y_0 =
    A.class "focus:scale-y-0"


focus__scale_y_50 : Html.Attribute msg
focus__scale_y_50 =
    A.class "focus:scale-y-50"


focus__scale_y_75 : Html.Attribute msg
focus__scale_y_75 =
    A.class "focus:scale-y-75"


focus__scale_y_90 : Html.Attribute msg
focus__scale_y_90 =
    A.class "focus:scale-y-90"


focus__scale_y_95 : Html.Attribute msg
focus__scale_y_95 =
    A.class "focus:scale-y-95"


focus__scale_y_100 : Html.Attribute msg
focus__scale_y_100 =
    A.class "focus:scale-y-100"


focus__scale_y_105 : Html.Attribute msg
focus__scale_y_105 =
    A.class "focus:scale-y-105"


focus__scale_y_110 : Html.Attribute msg
focus__scale_y_110 =
    A.class "focus:scale-y-110"


focus__scale_y_125 : Html.Attribute msg
focus__scale_y_125 =
    A.class "focus:scale-y-125"


focus__scale_y_150 : Html.Attribute msg
focus__scale_y_150 =
    A.class "focus:scale-y-150"


rotate_0 : Html.Attribute msg
rotate_0 =
    A.class "rotate-0"


rotate_45 : Html.Attribute msg
rotate_45 =
    A.class "rotate-45"


rotate_90 : Html.Attribute msg
rotate_90 =
    A.class "rotate-90"


rotate_180 : Html.Attribute msg
rotate_180 =
    A.class "rotate-180"


neg_rotate_180 : Html.Attribute msg
neg_rotate_180 =
    A.class "-rotate-180"


neg_rotate_90 : Html.Attribute msg
neg_rotate_90 =
    A.class "-rotate-90"


neg_rotate_45 : Html.Attribute msg
neg_rotate_45 =
    A.class "-rotate-45"


hover__rotate_0 : Html.Attribute msg
hover__rotate_0 =
    A.class "hover:rotate-0"


hover__rotate_45 : Html.Attribute msg
hover__rotate_45 =
    A.class "hover:rotate-45"


hover__rotate_90 : Html.Attribute msg
hover__rotate_90 =
    A.class "hover:rotate-90"


hover__rotate_180 : Html.Attribute msg
hover__rotate_180 =
    A.class "hover:rotate-180"


hover__neg_rotate_180 : Html.Attribute msg
hover__neg_rotate_180 =
    A.class "hover:-rotate-180"


hover__neg_rotate_90 : Html.Attribute msg
hover__neg_rotate_90 =
    A.class "hover:-rotate-90"


hover__neg_rotate_45 : Html.Attribute msg
hover__neg_rotate_45 =
    A.class "hover:-rotate-45"


focus__rotate_0 : Html.Attribute msg
focus__rotate_0 =
    A.class "focus:rotate-0"


focus__rotate_45 : Html.Attribute msg
focus__rotate_45 =
    A.class "focus:rotate-45"


focus__rotate_90 : Html.Attribute msg
focus__rotate_90 =
    A.class "focus:rotate-90"


focus__rotate_180 : Html.Attribute msg
focus__rotate_180 =
    A.class "focus:rotate-180"


focus__neg_rotate_180 : Html.Attribute msg
focus__neg_rotate_180 =
    A.class "focus:-rotate-180"


focus__neg_rotate_90 : Html.Attribute msg
focus__neg_rotate_90 =
    A.class "focus:-rotate-90"


focus__neg_rotate_45 : Html.Attribute msg
focus__neg_rotate_45 =
    A.class "focus:-rotate-45"


translate_x_0 : Html.Attribute msg
translate_x_0 =
    A.class "translate-x-0"


translate_x_1 : Html.Attribute msg
translate_x_1 =
    A.class "translate-x-1"


translate_x_2 : Html.Attribute msg
translate_x_2 =
    A.class "translate-x-2"


translate_x_3 : Html.Attribute msg
translate_x_3 =
    A.class "translate-x-3"


translate_x_4 : Html.Attribute msg
translate_x_4 =
    A.class "translate-x-4"


translate_x_5 : Html.Attribute msg
translate_x_5 =
    A.class "translate-x-5"


translate_x_6 : Html.Attribute msg
translate_x_6 =
    A.class "translate-x-6"


translate_x_8 : Html.Attribute msg
translate_x_8 =
    A.class "translate-x-8"


translate_x_10 : Html.Attribute msg
translate_x_10 =
    A.class "translate-x-10"


translate_x_12 : Html.Attribute msg
translate_x_12 =
    A.class "translate-x-12"


translate_x_16 : Html.Attribute msg
translate_x_16 =
    A.class "translate-x-16"


translate_x_20 : Html.Attribute msg
translate_x_20 =
    A.class "translate-x-20"


translate_x_24 : Html.Attribute msg
translate_x_24 =
    A.class "translate-x-24"


translate_x_32 : Html.Attribute msg
translate_x_32 =
    A.class "translate-x-32"


translate_x_40 : Html.Attribute msg
translate_x_40 =
    A.class "translate-x-40"


translate_x_48 : Html.Attribute msg
translate_x_48 =
    A.class "translate-x-48"


translate_x_56 : Html.Attribute msg
translate_x_56 =
    A.class "translate-x-56"


translate_x_64 : Html.Attribute msg
translate_x_64 =
    A.class "translate-x-64"


translate_x_px : Html.Attribute msg
translate_x_px =
    A.class "translate-x-px"


neg_translate_x_1 : Html.Attribute msg
neg_translate_x_1 =
    A.class "-translate-x-1"


neg_translate_x_2 : Html.Attribute msg
neg_translate_x_2 =
    A.class "-translate-x-2"


neg_translate_x_3 : Html.Attribute msg
neg_translate_x_3 =
    A.class "-translate-x-3"


neg_translate_x_4 : Html.Attribute msg
neg_translate_x_4 =
    A.class "-translate-x-4"


neg_translate_x_5 : Html.Attribute msg
neg_translate_x_5 =
    A.class "-translate-x-5"


neg_translate_x_6 : Html.Attribute msg
neg_translate_x_6 =
    A.class "-translate-x-6"


neg_translate_x_8 : Html.Attribute msg
neg_translate_x_8 =
    A.class "-translate-x-8"


neg_translate_x_10 : Html.Attribute msg
neg_translate_x_10 =
    A.class "-translate-x-10"


neg_translate_x_12 : Html.Attribute msg
neg_translate_x_12 =
    A.class "-translate-x-12"


neg_translate_x_16 : Html.Attribute msg
neg_translate_x_16 =
    A.class "-translate-x-16"


neg_translate_x_20 : Html.Attribute msg
neg_translate_x_20 =
    A.class "-translate-x-20"


neg_translate_x_24 : Html.Attribute msg
neg_translate_x_24 =
    A.class "-translate-x-24"


neg_translate_x_32 : Html.Attribute msg
neg_translate_x_32 =
    A.class "-translate-x-32"


neg_translate_x_40 : Html.Attribute msg
neg_translate_x_40 =
    A.class "-translate-x-40"


neg_translate_x_48 : Html.Attribute msg
neg_translate_x_48 =
    A.class "-translate-x-48"


neg_translate_x_56 : Html.Attribute msg
neg_translate_x_56 =
    A.class "-translate-x-56"


neg_translate_x_64 : Html.Attribute msg
neg_translate_x_64 =
    A.class "-translate-x-64"


neg_translate_x_px : Html.Attribute msg
neg_translate_x_px =
    A.class "-translate-x-px"


neg_translate_x_full : Html.Attribute msg
neg_translate_x_full =
    A.class "-translate-x-full"


neg_translate_x_1over2 : Html.Attribute msg
neg_translate_x_1over2 =
    A.class "-translate-x-1/2"


translate_x_1over2 : Html.Attribute msg
translate_x_1over2 =
    A.class "translate-x-1/2"


translate_x_full : Html.Attribute msg
translate_x_full =
    A.class "translate-x-full"


translate_y_0 : Html.Attribute msg
translate_y_0 =
    A.class "translate-y-0"


translate_y_1 : Html.Attribute msg
translate_y_1 =
    A.class "translate-y-1"


translate_y_2 : Html.Attribute msg
translate_y_2 =
    A.class "translate-y-2"


translate_y_3 : Html.Attribute msg
translate_y_3 =
    A.class "translate-y-3"


translate_y_4 : Html.Attribute msg
translate_y_4 =
    A.class "translate-y-4"


translate_y_5 : Html.Attribute msg
translate_y_5 =
    A.class "translate-y-5"


translate_y_6 : Html.Attribute msg
translate_y_6 =
    A.class "translate-y-6"


translate_y_8 : Html.Attribute msg
translate_y_8 =
    A.class "translate-y-8"


translate_y_10 : Html.Attribute msg
translate_y_10 =
    A.class "translate-y-10"


translate_y_12 : Html.Attribute msg
translate_y_12 =
    A.class "translate-y-12"


translate_y_16 : Html.Attribute msg
translate_y_16 =
    A.class "translate-y-16"


translate_y_20 : Html.Attribute msg
translate_y_20 =
    A.class "translate-y-20"


translate_y_24 : Html.Attribute msg
translate_y_24 =
    A.class "translate-y-24"


translate_y_32 : Html.Attribute msg
translate_y_32 =
    A.class "translate-y-32"


translate_y_40 : Html.Attribute msg
translate_y_40 =
    A.class "translate-y-40"


translate_y_48 : Html.Attribute msg
translate_y_48 =
    A.class "translate-y-48"


translate_y_56 : Html.Attribute msg
translate_y_56 =
    A.class "translate-y-56"


translate_y_64 : Html.Attribute msg
translate_y_64 =
    A.class "translate-y-64"


translate_y_px : Html.Attribute msg
translate_y_px =
    A.class "translate-y-px"


neg_translate_y_1 : Html.Attribute msg
neg_translate_y_1 =
    A.class "-translate-y-1"


neg_translate_y_2 : Html.Attribute msg
neg_translate_y_2 =
    A.class "-translate-y-2"


neg_translate_y_3 : Html.Attribute msg
neg_translate_y_3 =
    A.class "-translate-y-3"


neg_translate_y_4 : Html.Attribute msg
neg_translate_y_4 =
    A.class "-translate-y-4"


neg_translate_y_5 : Html.Attribute msg
neg_translate_y_5 =
    A.class "-translate-y-5"


neg_translate_y_6 : Html.Attribute msg
neg_translate_y_6 =
    A.class "-translate-y-6"


neg_translate_y_8 : Html.Attribute msg
neg_translate_y_8 =
    A.class "-translate-y-8"


neg_translate_y_10 : Html.Attribute msg
neg_translate_y_10 =
    A.class "-translate-y-10"


neg_translate_y_12 : Html.Attribute msg
neg_translate_y_12 =
    A.class "-translate-y-12"


neg_translate_y_16 : Html.Attribute msg
neg_translate_y_16 =
    A.class "-translate-y-16"


neg_translate_y_20 : Html.Attribute msg
neg_translate_y_20 =
    A.class "-translate-y-20"


neg_translate_y_24 : Html.Attribute msg
neg_translate_y_24 =
    A.class "-translate-y-24"


neg_translate_y_32 : Html.Attribute msg
neg_translate_y_32 =
    A.class "-translate-y-32"


neg_translate_y_40 : Html.Attribute msg
neg_translate_y_40 =
    A.class "-translate-y-40"


neg_translate_y_48 : Html.Attribute msg
neg_translate_y_48 =
    A.class "-translate-y-48"


neg_translate_y_56 : Html.Attribute msg
neg_translate_y_56 =
    A.class "-translate-y-56"


neg_translate_y_64 : Html.Attribute msg
neg_translate_y_64 =
    A.class "-translate-y-64"


neg_translate_y_px : Html.Attribute msg
neg_translate_y_px =
    A.class "-translate-y-px"


neg_translate_y_full : Html.Attribute msg
neg_translate_y_full =
    A.class "-translate-y-full"


neg_translate_y_1over2 : Html.Attribute msg
neg_translate_y_1over2 =
    A.class "-translate-y-1/2"


translate_y_1over2 : Html.Attribute msg
translate_y_1over2 =
    A.class "translate-y-1/2"


translate_y_full : Html.Attribute msg
translate_y_full =
    A.class "translate-y-full"


hover__translate_x_0 : Html.Attribute msg
hover__translate_x_0 =
    A.class "hover:translate-x-0"


hover__translate_x_1 : Html.Attribute msg
hover__translate_x_1 =
    A.class "hover:translate-x-1"


hover__translate_x_2 : Html.Attribute msg
hover__translate_x_2 =
    A.class "hover:translate-x-2"


hover__translate_x_3 : Html.Attribute msg
hover__translate_x_3 =
    A.class "hover:translate-x-3"


hover__translate_x_4 : Html.Attribute msg
hover__translate_x_4 =
    A.class "hover:translate-x-4"


hover__translate_x_5 : Html.Attribute msg
hover__translate_x_5 =
    A.class "hover:translate-x-5"


hover__translate_x_6 : Html.Attribute msg
hover__translate_x_6 =
    A.class "hover:translate-x-6"


hover__translate_x_8 : Html.Attribute msg
hover__translate_x_8 =
    A.class "hover:translate-x-8"


hover__translate_x_10 : Html.Attribute msg
hover__translate_x_10 =
    A.class "hover:translate-x-10"


hover__translate_x_12 : Html.Attribute msg
hover__translate_x_12 =
    A.class "hover:translate-x-12"


hover__translate_x_16 : Html.Attribute msg
hover__translate_x_16 =
    A.class "hover:translate-x-16"


hover__translate_x_20 : Html.Attribute msg
hover__translate_x_20 =
    A.class "hover:translate-x-20"


hover__translate_x_24 : Html.Attribute msg
hover__translate_x_24 =
    A.class "hover:translate-x-24"


hover__translate_x_32 : Html.Attribute msg
hover__translate_x_32 =
    A.class "hover:translate-x-32"


hover__translate_x_40 : Html.Attribute msg
hover__translate_x_40 =
    A.class "hover:translate-x-40"


hover__translate_x_48 : Html.Attribute msg
hover__translate_x_48 =
    A.class "hover:translate-x-48"


hover__translate_x_56 : Html.Attribute msg
hover__translate_x_56 =
    A.class "hover:translate-x-56"


hover__translate_x_64 : Html.Attribute msg
hover__translate_x_64 =
    A.class "hover:translate-x-64"


hover__translate_x_px : Html.Attribute msg
hover__translate_x_px =
    A.class "hover:translate-x-px"


hover__neg_translate_x_1 : Html.Attribute msg
hover__neg_translate_x_1 =
    A.class "hover:-translate-x-1"


hover__neg_translate_x_2 : Html.Attribute msg
hover__neg_translate_x_2 =
    A.class "hover:-translate-x-2"


hover__neg_translate_x_3 : Html.Attribute msg
hover__neg_translate_x_3 =
    A.class "hover:-translate-x-3"


hover__neg_translate_x_4 : Html.Attribute msg
hover__neg_translate_x_4 =
    A.class "hover:-translate-x-4"


hover__neg_translate_x_5 : Html.Attribute msg
hover__neg_translate_x_5 =
    A.class "hover:-translate-x-5"


hover__neg_translate_x_6 : Html.Attribute msg
hover__neg_translate_x_6 =
    A.class "hover:-translate-x-6"


hover__neg_translate_x_8 : Html.Attribute msg
hover__neg_translate_x_8 =
    A.class "hover:-translate-x-8"


hover__neg_translate_x_10 : Html.Attribute msg
hover__neg_translate_x_10 =
    A.class "hover:-translate-x-10"


hover__neg_translate_x_12 : Html.Attribute msg
hover__neg_translate_x_12 =
    A.class "hover:-translate-x-12"


hover__neg_translate_x_16 : Html.Attribute msg
hover__neg_translate_x_16 =
    A.class "hover:-translate-x-16"


hover__neg_translate_x_20 : Html.Attribute msg
hover__neg_translate_x_20 =
    A.class "hover:-translate-x-20"


hover__neg_translate_x_24 : Html.Attribute msg
hover__neg_translate_x_24 =
    A.class "hover:-translate-x-24"


hover__neg_translate_x_32 : Html.Attribute msg
hover__neg_translate_x_32 =
    A.class "hover:-translate-x-32"


hover__neg_translate_x_40 : Html.Attribute msg
hover__neg_translate_x_40 =
    A.class "hover:-translate-x-40"


hover__neg_translate_x_48 : Html.Attribute msg
hover__neg_translate_x_48 =
    A.class "hover:-translate-x-48"


hover__neg_translate_x_56 : Html.Attribute msg
hover__neg_translate_x_56 =
    A.class "hover:-translate-x-56"


hover__neg_translate_x_64 : Html.Attribute msg
hover__neg_translate_x_64 =
    A.class "hover:-translate-x-64"


hover__neg_translate_x_px : Html.Attribute msg
hover__neg_translate_x_px =
    A.class "hover:-translate-x-px"


hover__neg_translate_x_full : Html.Attribute msg
hover__neg_translate_x_full =
    A.class "hover:-translate-x-full"


hover__neg_translate_x_1over2 : Html.Attribute msg
hover__neg_translate_x_1over2 =
    A.class "hover:-translate-x-1/2"


hover__translate_x_1over2 : Html.Attribute msg
hover__translate_x_1over2 =
    A.class "hover:translate-x-1/2"


hover__translate_x_full : Html.Attribute msg
hover__translate_x_full =
    A.class "hover:translate-x-full"


hover__translate_y_0 : Html.Attribute msg
hover__translate_y_0 =
    A.class "hover:translate-y-0"


hover__translate_y_1 : Html.Attribute msg
hover__translate_y_1 =
    A.class "hover:translate-y-1"


hover__translate_y_2 : Html.Attribute msg
hover__translate_y_2 =
    A.class "hover:translate-y-2"


hover__translate_y_3 : Html.Attribute msg
hover__translate_y_3 =
    A.class "hover:translate-y-3"


hover__translate_y_4 : Html.Attribute msg
hover__translate_y_4 =
    A.class "hover:translate-y-4"


hover__translate_y_5 : Html.Attribute msg
hover__translate_y_5 =
    A.class "hover:translate-y-5"


hover__translate_y_6 : Html.Attribute msg
hover__translate_y_6 =
    A.class "hover:translate-y-6"


hover__translate_y_8 : Html.Attribute msg
hover__translate_y_8 =
    A.class "hover:translate-y-8"


hover__translate_y_10 : Html.Attribute msg
hover__translate_y_10 =
    A.class "hover:translate-y-10"


hover__translate_y_12 : Html.Attribute msg
hover__translate_y_12 =
    A.class "hover:translate-y-12"


hover__translate_y_16 : Html.Attribute msg
hover__translate_y_16 =
    A.class "hover:translate-y-16"


hover__translate_y_20 : Html.Attribute msg
hover__translate_y_20 =
    A.class "hover:translate-y-20"


hover__translate_y_24 : Html.Attribute msg
hover__translate_y_24 =
    A.class "hover:translate-y-24"


hover__translate_y_32 : Html.Attribute msg
hover__translate_y_32 =
    A.class "hover:translate-y-32"


hover__translate_y_40 : Html.Attribute msg
hover__translate_y_40 =
    A.class "hover:translate-y-40"


hover__translate_y_48 : Html.Attribute msg
hover__translate_y_48 =
    A.class "hover:translate-y-48"


hover__translate_y_56 : Html.Attribute msg
hover__translate_y_56 =
    A.class "hover:translate-y-56"


hover__translate_y_64 : Html.Attribute msg
hover__translate_y_64 =
    A.class "hover:translate-y-64"


hover__translate_y_px : Html.Attribute msg
hover__translate_y_px =
    A.class "hover:translate-y-px"


hover__neg_translate_y_1 : Html.Attribute msg
hover__neg_translate_y_1 =
    A.class "hover:-translate-y-1"


hover__neg_translate_y_2 : Html.Attribute msg
hover__neg_translate_y_2 =
    A.class "hover:-translate-y-2"


hover__neg_translate_y_3 : Html.Attribute msg
hover__neg_translate_y_3 =
    A.class "hover:-translate-y-3"


hover__neg_translate_y_4 : Html.Attribute msg
hover__neg_translate_y_4 =
    A.class "hover:-translate-y-4"


hover__neg_translate_y_5 : Html.Attribute msg
hover__neg_translate_y_5 =
    A.class "hover:-translate-y-5"


hover__neg_translate_y_6 : Html.Attribute msg
hover__neg_translate_y_6 =
    A.class "hover:-translate-y-6"


hover__neg_translate_y_8 : Html.Attribute msg
hover__neg_translate_y_8 =
    A.class "hover:-translate-y-8"


hover__neg_translate_y_10 : Html.Attribute msg
hover__neg_translate_y_10 =
    A.class "hover:-translate-y-10"


hover__neg_translate_y_12 : Html.Attribute msg
hover__neg_translate_y_12 =
    A.class "hover:-translate-y-12"


hover__neg_translate_y_16 : Html.Attribute msg
hover__neg_translate_y_16 =
    A.class "hover:-translate-y-16"


hover__neg_translate_y_20 : Html.Attribute msg
hover__neg_translate_y_20 =
    A.class "hover:-translate-y-20"


hover__neg_translate_y_24 : Html.Attribute msg
hover__neg_translate_y_24 =
    A.class "hover:-translate-y-24"


hover__neg_translate_y_32 : Html.Attribute msg
hover__neg_translate_y_32 =
    A.class "hover:-translate-y-32"


hover__neg_translate_y_40 : Html.Attribute msg
hover__neg_translate_y_40 =
    A.class "hover:-translate-y-40"


hover__neg_translate_y_48 : Html.Attribute msg
hover__neg_translate_y_48 =
    A.class "hover:-translate-y-48"


hover__neg_translate_y_56 : Html.Attribute msg
hover__neg_translate_y_56 =
    A.class "hover:-translate-y-56"


hover__neg_translate_y_64 : Html.Attribute msg
hover__neg_translate_y_64 =
    A.class "hover:-translate-y-64"


hover__neg_translate_y_px : Html.Attribute msg
hover__neg_translate_y_px =
    A.class "hover:-translate-y-px"


hover__neg_translate_y_full : Html.Attribute msg
hover__neg_translate_y_full =
    A.class "hover:-translate-y-full"


hover__neg_translate_y_1over2 : Html.Attribute msg
hover__neg_translate_y_1over2 =
    A.class "hover:-translate-y-1/2"


hover__translate_y_1over2 : Html.Attribute msg
hover__translate_y_1over2 =
    A.class "hover:translate-y-1/2"


hover__translate_y_full : Html.Attribute msg
hover__translate_y_full =
    A.class "hover:translate-y-full"


focus__translate_x_0 : Html.Attribute msg
focus__translate_x_0 =
    A.class "focus:translate-x-0"


focus__translate_x_1 : Html.Attribute msg
focus__translate_x_1 =
    A.class "focus:translate-x-1"


focus__translate_x_2 : Html.Attribute msg
focus__translate_x_2 =
    A.class "focus:translate-x-2"


focus__translate_x_3 : Html.Attribute msg
focus__translate_x_3 =
    A.class "focus:translate-x-3"


focus__translate_x_4 : Html.Attribute msg
focus__translate_x_4 =
    A.class "focus:translate-x-4"


focus__translate_x_5 : Html.Attribute msg
focus__translate_x_5 =
    A.class "focus:translate-x-5"


focus__translate_x_6 : Html.Attribute msg
focus__translate_x_6 =
    A.class "focus:translate-x-6"


focus__translate_x_8 : Html.Attribute msg
focus__translate_x_8 =
    A.class "focus:translate-x-8"


focus__translate_x_10 : Html.Attribute msg
focus__translate_x_10 =
    A.class "focus:translate-x-10"


focus__translate_x_12 : Html.Attribute msg
focus__translate_x_12 =
    A.class "focus:translate-x-12"


focus__translate_x_16 : Html.Attribute msg
focus__translate_x_16 =
    A.class "focus:translate-x-16"


focus__translate_x_20 : Html.Attribute msg
focus__translate_x_20 =
    A.class "focus:translate-x-20"


focus__translate_x_24 : Html.Attribute msg
focus__translate_x_24 =
    A.class "focus:translate-x-24"


focus__translate_x_32 : Html.Attribute msg
focus__translate_x_32 =
    A.class "focus:translate-x-32"


focus__translate_x_40 : Html.Attribute msg
focus__translate_x_40 =
    A.class "focus:translate-x-40"


focus__translate_x_48 : Html.Attribute msg
focus__translate_x_48 =
    A.class "focus:translate-x-48"


focus__translate_x_56 : Html.Attribute msg
focus__translate_x_56 =
    A.class "focus:translate-x-56"


focus__translate_x_64 : Html.Attribute msg
focus__translate_x_64 =
    A.class "focus:translate-x-64"


focus__translate_x_px : Html.Attribute msg
focus__translate_x_px =
    A.class "focus:translate-x-px"


focus__neg_translate_x_1 : Html.Attribute msg
focus__neg_translate_x_1 =
    A.class "focus:-translate-x-1"


focus__neg_translate_x_2 : Html.Attribute msg
focus__neg_translate_x_2 =
    A.class "focus:-translate-x-2"


focus__neg_translate_x_3 : Html.Attribute msg
focus__neg_translate_x_3 =
    A.class "focus:-translate-x-3"


focus__neg_translate_x_4 : Html.Attribute msg
focus__neg_translate_x_4 =
    A.class "focus:-translate-x-4"


focus__neg_translate_x_5 : Html.Attribute msg
focus__neg_translate_x_5 =
    A.class "focus:-translate-x-5"


focus__neg_translate_x_6 : Html.Attribute msg
focus__neg_translate_x_6 =
    A.class "focus:-translate-x-6"


focus__neg_translate_x_8 : Html.Attribute msg
focus__neg_translate_x_8 =
    A.class "focus:-translate-x-8"


focus__neg_translate_x_10 : Html.Attribute msg
focus__neg_translate_x_10 =
    A.class "focus:-translate-x-10"


focus__neg_translate_x_12 : Html.Attribute msg
focus__neg_translate_x_12 =
    A.class "focus:-translate-x-12"


focus__neg_translate_x_16 : Html.Attribute msg
focus__neg_translate_x_16 =
    A.class "focus:-translate-x-16"


focus__neg_translate_x_20 : Html.Attribute msg
focus__neg_translate_x_20 =
    A.class "focus:-translate-x-20"


focus__neg_translate_x_24 : Html.Attribute msg
focus__neg_translate_x_24 =
    A.class "focus:-translate-x-24"


focus__neg_translate_x_32 : Html.Attribute msg
focus__neg_translate_x_32 =
    A.class "focus:-translate-x-32"


focus__neg_translate_x_40 : Html.Attribute msg
focus__neg_translate_x_40 =
    A.class "focus:-translate-x-40"


focus__neg_translate_x_48 : Html.Attribute msg
focus__neg_translate_x_48 =
    A.class "focus:-translate-x-48"


focus__neg_translate_x_56 : Html.Attribute msg
focus__neg_translate_x_56 =
    A.class "focus:-translate-x-56"


focus__neg_translate_x_64 : Html.Attribute msg
focus__neg_translate_x_64 =
    A.class "focus:-translate-x-64"


focus__neg_translate_x_px : Html.Attribute msg
focus__neg_translate_x_px =
    A.class "focus:-translate-x-px"


focus__neg_translate_x_full : Html.Attribute msg
focus__neg_translate_x_full =
    A.class "focus:-translate-x-full"


focus__neg_translate_x_1over2 : Html.Attribute msg
focus__neg_translate_x_1over2 =
    A.class "focus:-translate-x-1/2"


focus__translate_x_1over2 : Html.Attribute msg
focus__translate_x_1over2 =
    A.class "focus:translate-x-1/2"


focus__translate_x_full : Html.Attribute msg
focus__translate_x_full =
    A.class "focus:translate-x-full"


focus__translate_y_0 : Html.Attribute msg
focus__translate_y_0 =
    A.class "focus:translate-y-0"


focus__translate_y_1 : Html.Attribute msg
focus__translate_y_1 =
    A.class "focus:translate-y-1"


focus__translate_y_2 : Html.Attribute msg
focus__translate_y_2 =
    A.class "focus:translate-y-2"


focus__translate_y_3 : Html.Attribute msg
focus__translate_y_3 =
    A.class "focus:translate-y-3"


focus__translate_y_4 : Html.Attribute msg
focus__translate_y_4 =
    A.class "focus:translate-y-4"


focus__translate_y_5 : Html.Attribute msg
focus__translate_y_5 =
    A.class "focus:translate-y-5"


focus__translate_y_6 : Html.Attribute msg
focus__translate_y_6 =
    A.class "focus:translate-y-6"


focus__translate_y_8 : Html.Attribute msg
focus__translate_y_8 =
    A.class "focus:translate-y-8"


focus__translate_y_10 : Html.Attribute msg
focus__translate_y_10 =
    A.class "focus:translate-y-10"


focus__translate_y_12 : Html.Attribute msg
focus__translate_y_12 =
    A.class "focus:translate-y-12"


focus__translate_y_16 : Html.Attribute msg
focus__translate_y_16 =
    A.class "focus:translate-y-16"


focus__translate_y_20 : Html.Attribute msg
focus__translate_y_20 =
    A.class "focus:translate-y-20"


focus__translate_y_24 : Html.Attribute msg
focus__translate_y_24 =
    A.class "focus:translate-y-24"


focus__translate_y_32 : Html.Attribute msg
focus__translate_y_32 =
    A.class "focus:translate-y-32"


focus__translate_y_40 : Html.Attribute msg
focus__translate_y_40 =
    A.class "focus:translate-y-40"


focus__translate_y_48 : Html.Attribute msg
focus__translate_y_48 =
    A.class "focus:translate-y-48"


focus__translate_y_56 : Html.Attribute msg
focus__translate_y_56 =
    A.class "focus:translate-y-56"


focus__translate_y_64 : Html.Attribute msg
focus__translate_y_64 =
    A.class "focus:translate-y-64"


focus__translate_y_px : Html.Attribute msg
focus__translate_y_px =
    A.class "focus:translate-y-px"


focus__neg_translate_y_1 : Html.Attribute msg
focus__neg_translate_y_1 =
    A.class "focus:-translate-y-1"


focus__neg_translate_y_2 : Html.Attribute msg
focus__neg_translate_y_2 =
    A.class "focus:-translate-y-2"


focus__neg_translate_y_3 : Html.Attribute msg
focus__neg_translate_y_3 =
    A.class "focus:-translate-y-3"


focus__neg_translate_y_4 : Html.Attribute msg
focus__neg_translate_y_4 =
    A.class "focus:-translate-y-4"


focus__neg_translate_y_5 : Html.Attribute msg
focus__neg_translate_y_5 =
    A.class "focus:-translate-y-5"


focus__neg_translate_y_6 : Html.Attribute msg
focus__neg_translate_y_6 =
    A.class "focus:-translate-y-6"


focus__neg_translate_y_8 : Html.Attribute msg
focus__neg_translate_y_8 =
    A.class "focus:-translate-y-8"


focus__neg_translate_y_10 : Html.Attribute msg
focus__neg_translate_y_10 =
    A.class "focus:-translate-y-10"


focus__neg_translate_y_12 : Html.Attribute msg
focus__neg_translate_y_12 =
    A.class "focus:-translate-y-12"


focus__neg_translate_y_16 : Html.Attribute msg
focus__neg_translate_y_16 =
    A.class "focus:-translate-y-16"


focus__neg_translate_y_20 : Html.Attribute msg
focus__neg_translate_y_20 =
    A.class "focus:-translate-y-20"


focus__neg_translate_y_24 : Html.Attribute msg
focus__neg_translate_y_24 =
    A.class "focus:-translate-y-24"


focus__neg_translate_y_32 : Html.Attribute msg
focus__neg_translate_y_32 =
    A.class "focus:-translate-y-32"


focus__neg_translate_y_40 : Html.Attribute msg
focus__neg_translate_y_40 =
    A.class "focus:-translate-y-40"


focus__neg_translate_y_48 : Html.Attribute msg
focus__neg_translate_y_48 =
    A.class "focus:-translate-y-48"


focus__neg_translate_y_56 : Html.Attribute msg
focus__neg_translate_y_56 =
    A.class "focus:-translate-y-56"


focus__neg_translate_y_64 : Html.Attribute msg
focus__neg_translate_y_64 =
    A.class "focus:-translate-y-64"


focus__neg_translate_y_px : Html.Attribute msg
focus__neg_translate_y_px =
    A.class "focus:-translate-y-px"


focus__neg_translate_y_full : Html.Attribute msg
focus__neg_translate_y_full =
    A.class "focus:-translate-y-full"


focus__neg_translate_y_1over2 : Html.Attribute msg
focus__neg_translate_y_1over2 =
    A.class "focus:-translate-y-1/2"


focus__translate_y_1over2 : Html.Attribute msg
focus__translate_y_1over2 =
    A.class "focus:translate-y-1/2"


focus__translate_y_full : Html.Attribute msg
focus__translate_y_full =
    A.class "focus:translate-y-full"


skew_x_0 : Html.Attribute msg
skew_x_0 =
    A.class "skew-x-0"


skew_x_3 : Html.Attribute msg
skew_x_3 =
    A.class "skew-x-3"


skew_x_6 : Html.Attribute msg
skew_x_6 =
    A.class "skew-x-6"


skew_x_12 : Html.Attribute msg
skew_x_12 =
    A.class "skew-x-12"


neg_skew_x_12 : Html.Attribute msg
neg_skew_x_12 =
    A.class "-skew-x-12"


neg_skew_x_6 : Html.Attribute msg
neg_skew_x_6 =
    A.class "-skew-x-6"


neg_skew_x_3 : Html.Attribute msg
neg_skew_x_3 =
    A.class "-skew-x-3"


skew_y_0 : Html.Attribute msg
skew_y_0 =
    A.class "skew-y-0"


skew_y_3 : Html.Attribute msg
skew_y_3 =
    A.class "skew-y-3"


skew_y_6 : Html.Attribute msg
skew_y_6 =
    A.class "skew-y-6"


skew_y_12 : Html.Attribute msg
skew_y_12 =
    A.class "skew-y-12"


neg_skew_y_12 : Html.Attribute msg
neg_skew_y_12 =
    A.class "-skew-y-12"


neg_skew_y_6 : Html.Attribute msg
neg_skew_y_6 =
    A.class "-skew-y-6"


neg_skew_y_3 : Html.Attribute msg
neg_skew_y_3 =
    A.class "-skew-y-3"


hover__skew_x_0 : Html.Attribute msg
hover__skew_x_0 =
    A.class "hover:skew-x-0"


hover__skew_x_3 : Html.Attribute msg
hover__skew_x_3 =
    A.class "hover:skew-x-3"


hover__skew_x_6 : Html.Attribute msg
hover__skew_x_6 =
    A.class "hover:skew-x-6"


hover__skew_x_12 : Html.Attribute msg
hover__skew_x_12 =
    A.class "hover:skew-x-12"


hover__neg_skew_x_12 : Html.Attribute msg
hover__neg_skew_x_12 =
    A.class "hover:-skew-x-12"


hover__neg_skew_x_6 : Html.Attribute msg
hover__neg_skew_x_6 =
    A.class "hover:-skew-x-6"


hover__neg_skew_x_3 : Html.Attribute msg
hover__neg_skew_x_3 =
    A.class "hover:-skew-x-3"


hover__skew_y_0 : Html.Attribute msg
hover__skew_y_0 =
    A.class "hover:skew-y-0"


hover__skew_y_3 : Html.Attribute msg
hover__skew_y_3 =
    A.class "hover:skew-y-3"


hover__skew_y_6 : Html.Attribute msg
hover__skew_y_6 =
    A.class "hover:skew-y-6"


hover__skew_y_12 : Html.Attribute msg
hover__skew_y_12 =
    A.class "hover:skew-y-12"


hover__neg_skew_y_12 : Html.Attribute msg
hover__neg_skew_y_12 =
    A.class "hover:-skew-y-12"


hover__neg_skew_y_6 : Html.Attribute msg
hover__neg_skew_y_6 =
    A.class "hover:-skew-y-6"


hover__neg_skew_y_3 : Html.Attribute msg
hover__neg_skew_y_3 =
    A.class "hover:-skew-y-3"


focus__skew_x_0 : Html.Attribute msg
focus__skew_x_0 =
    A.class "focus:skew-x-0"


focus__skew_x_3 : Html.Attribute msg
focus__skew_x_3 =
    A.class "focus:skew-x-3"


focus__skew_x_6 : Html.Attribute msg
focus__skew_x_6 =
    A.class "focus:skew-x-6"


focus__skew_x_12 : Html.Attribute msg
focus__skew_x_12 =
    A.class "focus:skew-x-12"


focus__neg_skew_x_12 : Html.Attribute msg
focus__neg_skew_x_12 =
    A.class "focus:-skew-x-12"


focus__neg_skew_x_6 : Html.Attribute msg
focus__neg_skew_x_6 =
    A.class "focus:-skew-x-6"


focus__neg_skew_x_3 : Html.Attribute msg
focus__neg_skew_x_3 =
    A.class "focus:-skew-x-3"


focus__skew_y_0 : Html.Attribute msg
focus__skew_y_0 =
    A.class "focus:skew-y-0"


focus__skew_y_3 : Html.Attribute msg
focus__skew_y_3 =
    A.class "focus:skew-y-3"


focus__skew_y_6 : Html.Attribute msg
focus__skew_y_6 =
    A.class "focus:skew-y-6"


focus__skew_y_12 : Html.Attribute msg
focus__skew_y_12 =
    A.class "focus:skew-y-12"


focus__neg_skew_y_12 : Html.Attribute msg
focus__neg_skew_y_12 =
    A.class "focus:-skew-y-12"


focus__neg_skew_y_6 : Html.Attribute msg
focus__neg_skew_y_6 =
    A.class "focus:-skew-y-6"


focus__neg_skew_y_3 : Html.Attribute msg
focus__neg_skew_y_3 =
    A.class "focus:-skew-y-3"


transition_none : Html.Attribute msg
transition_none =
    A.class "transition-none"


transition_all : Html.Attribute msg
transition_all =
    A.class "transition-all"


transition : Html.Attribute msg
transition =
    A.class "transition"


transition_colors : Html.Attribute msg
transition_colors =
    A.class "transition-colors"


transition_opacity : Html.Attribute msg
transition_opacity =
    A.class "transition-opacity"


transition_shadow : Html.Attribute msg
transition_shadow =
    A.class "transition-shadow"


transition_transform : Html.Attribute msg
transition_transform =
    A.class "transition-transform"


ease_linear : Html.Attribute msg
ease_linear =
    A.class "ease-linear"


ease_in : Html.Attribute msg
ease_in =
    A.class "ease-in"


ease_out : Html.Attribute msg
ease_out =
    A.class "ease-out"


ease_in_out : Html.Attribute msg
ease_in_out =
    A.class "ease-in-out"


duration_75 : Html.Attribute msg
duration_75 =
    A.class "duration-75"


duration_100 : Html.Attribute msg
duration_100 =
    A.class "duration-100"


duration_150 : Html.Attribute msg
duration_150 =
    A.class "duration-150"


duration_200 : Html.Attribute msg
duration_200 =
    A.class "duration-200"


duration_300 : Html.Attribute msg
duration_300 =
    A.class "duration-300"


duration_500 : Html.Attribute msg
duration_500 =
    A.class "duration-500"


duration_700 : Html.Attribute msg
duration_700 =
    A.class "duration-700"


duration_1000 : Html.Attribute msg
duration_1000 =
    A.class "duration-1000"


sm__sr_only : Html.Attribute msg
sm__sr_only =
    A.class "sm:sr-only"


sm__not_sr_only : Html.Attribute msg
sm__not_sr_only =
    A.class "sm:not-sr-only"


sm__focus__sr_only : Html.Attribute msg
sm__focus__sr_only =
    A.class "sm:focus:sr-only"


sm__focus__not_sr_only : Html.Attribute msg
sm__focus__not_sr_only =
    A.class "sm:focus:not-sr-only"


sm__appearance_none : Html.Attribute msg
sm__appearance_none =
    A.class "sm:appearance-none"


sm__bg_fixed : Html.Attribute msg
sm__bg_fixed =
    A.class "sm:bg-fixed"


sm__bg_local : Html.Attribute msg
sm__bg_local =
    A.class "sm:bg-local"


sm__bg_scroll : Html.Attribute msg
sm__bg_scroll =
    A.class "sm:bg-scroll"


sm__bg_transparent : Html.Attribute msg
sm__bg_transparent =
    A.class "sm:bg-transparent"


sm__bg_black : Html.Attribute msg
sm__bg_black =
    A.class "sm:bg-black"


sm__bg_white : Html.Attribute msg
sm__bg_white =
    A.class "sm:bg-white"


sm__bg_gray_100 : Html.Attribute msg
sm__bg_gray_100 =
    A.class "sm:bg-gray-100"


sm__bg_gray_200 : Html.Attribute msg
sm__bg_gray_200 =
    A.class "sm:bg-gray-200"


sm__bg_gray_300 : Html.Attribute msg
sm__bg_gray_300 =
    A.class "sm:bg-gray-300"


sm__bg_gray_400 : Html.Attribute msg
sm__bg_gray_400 =
    A.class "sm:bg-gray-400"


sm__bg_gray_500 : Html.Attribute msg
sm__bg_gray_500 =
    A.class "sm:bg-gray-500"


sm__bg_gray_600 : Html.Attribute msg
sm__bg_gray_600 =
    A.class "sm:bg-gray-600"


sm__bg_gray_700 : Html.Attribute msg
sm__bg_gray_700 =
    A.class "sm:bg-gray-700"


sm__bg_gray_800 : Html.Attribute msg
sm__bg_gray_800 =
    A.class "sm:bg-gray-800"


sm__bg_gray_900 : Html.Attribute msg
sm__bg_gray_900 =
    A.class "sm:bg-gray-900"


sm__bg_red_100 : Html.Attribute msg
sm__bg_red_100 =
    A.class "sm:bg-red-100"


sm__bg_red_200 : Html.Attribute msg
sm__bg_red_200 =
    A.class "sm:bg-red-200"


sm__bg_red_300 : Html.Attribute msg
sm__bg_red_300 =
    A.class "sm:bg-red-300"


sm__bg_red_400 : Html.Attribute msg
sm__bg_red_400 =
    A.class "sm:bg-red-400"


sm__bg_red_500 : Html.Attribute msg
sm__bg_red_500 =
    A.class "sm:bg-red-500"


sm__bg_red_600 : Html.Attribute msg
sm__bg_red_600 =
    A.class "sm:bg-red-600"


sm__bg_red_700 : Html.Attribute msg
sm__bg_red_700 =
    A.class "sm:bg-red-700"


sm__bg_red_800 : Html.Attribute msg
sm__bg_red_800 =
    A.class "sm:bg-red-800"


sm__bg_red_900 : Html.Attribute msg
sm__bg_red_900 =
    A.class "sm:bg-red-900"


sm__bg_orange_100 : Html.Attribute msg
sm__bg_orange_100 =
    A.class "sm:bg-orange-100"


sm__bg_orange_200 : Html.Attribute msg
sm__bg_orange_200 =
    A.class "sm:bg-orange-200"


sm__bg_orange_300 : Html.Attribute msg
sm__bg_orange_300 =
    A.class "sm:bg-orange-300"


sm__bg_orange_400 : Html.Attribute msg
sm__bg_orange_400 =
    A.class "sm:bg-orange-400"


sm__bg_orange_500 : Html.Attribute msg
sm__bg_orange_500 =
    A.class "sm:bg-orange-500"


sm__bg_orange_600 : Html.Attribute msg
sm__bg_orange_600 =
    A.class "sm:bg-orange-600"


sm__bg_orange_700 : Html.Attribute msg
sm__bg_orange_700 =
    A.class "sm:bg-orange-700"


sm__bg_orange_800 : Html.Attribute msg
sm__bg_orange_800 =
    A.class "sm:bg-orange-800"


sm__bg_orange_900 : Html.Attribute msg
sm__bg_orange_900 =
    A.class "sm:bg-orange-900"


sm__bg_yellow_100 : Html.Attribute msg
sm__bg_yellow_100 =
    A.class "sm:bg-yellow-100"


sm__bg_yellow_200 : Html.Attribute msg
sm__bg_yellow_200 =
    A.class "sm:bg-yellow-200"


sm__bg_yellow_300 : Html.Attribute msg
sm__bg_yellow_300 =
    A.class "sm:bg-yellow-300"


sm__bg_yellow_400 : Html.Attribute msg
sm__bg_yellow_400 =
    A.class "sm:bg-yellow-400"


sm__bg_yellow_500 : Html.Attribute msg
sm__bg_yellow_500 =
    A.class "sm:bg-yellow-500"


sm__bg_yellow_600 : Html.Attribute msg
sm__bg_yellow_600 =
    A.class "sm:bg-yellow-600"


sm__bg_yellow_700 : Html.Attribute msg
sm__bg_yellow_700 =
    A.class "sm:bg-yellow-700"


sm__bg_yellow_800 : Html.Attribute msg
sm__bg_yellow_800 =
    A.class "sm:bg-yellow-800"


sm__bg_yellow_900 : Html.Attribute msg
sm__bg_yellow_900 =
    A.class "sm:bg-yellow-900"


sm__bg_green_100 : Html.Attribute msg
sm__bg_green_100 =
    A.class "sm:bg-green-100"


sm__bg_green_200 : Html.Attribute msg
sm__bg_green_200 =
    A.class "sm:bg-green-200"


sm__bg_green_300 : Html.Attribute msg
sm__bg_green_300 =
    A.class "sm:bg-green-300"


sm__bg_green_400 : Html.Attribute msg
sm__bg_green_400 =
    A.class "sm:bg-green-400"


sm__bg_green_500 : Html.Attribute msg
sm__bg_green_500 =
    A.class "sm:bg-green-500"


sm__bg_green_600 : Html.Attribute msg
sm__bg_green_600 =
    A.class "sm:bg-green-600"


sm__bg_green_700 : Html.Attribute msg
sm__bg_green_700 =
    A.class "sm:bg-green-700"


sm__bg_green_800 : Html.Attribute msg
sm__bg_green_800 =
    A.class "sm:bg-green-800"


sm__bg_green_900 : Html.Attribute msg
sm__bg_green_900 =
    A.class "sm:bg-green-900"


sm__bg_teal_100 : Html.Attribute msg
sm__bg_teal_100 =
    A.class "sm:bg-teal-100"


sm__bg_teal_200 : Html.Attribute msg
sm__bg_teal_200 =
    A.class "sm:bg-teal-200"


sm__bg_teal_300 : Html.Attribute msg
sm__bg_teal_300 =
    A.class "sm:bg-teal-300"


sm__bg_teal_400 : Html.Attribute msg
sm__bg_teal_400 =
    A.class "sm:bg-teal-400"


sm__bg_teal_500 : Html.Attribute msg
sm__bg_teal_500 =
    A.class "sm:bg-teal-500"


sm__bg_teal_600 : Html.Attribute msg
sm__bg_teal_600 =
    A.class "sm:bg-teal-600"


sm__bg_teal_700 : Html.Attribute msg
sm__bg_teal_700 =
    A.class "sm:bg-teal-700"


sm__bg_teal_800 : Html.Attribute msg
sm__bg_teal_800 =
    A.class "sm:bg-teal-800"


sm__bg_teal_900 : Html.Attribute msg
sm__bg_teal_900 =
    A.class "sm:bg-teal-900"


sm__bg_blue_100 : Html.Attribute msg
sm__bg_blue_100 =
    A.class "sm:bg-blue-100"


sm__bg_blue_200 : Html.Attribute msg
sm__bg_blue_200 =
    A.class "sm:bg-blue-200"


sm__bg_blue_300 : Html.Attribute msg
sm__bg_blue_300 =
    A.class "sm:bg-blue-300"


sm__bg_blue_400 : Html.Attribute msg
sm__bg_blue_400 =
    A.class "sm:bg-blue-400"


sm__bg_blue_500 : Html.Attribute msg
sm__bg_blue_500 =
    A.class "sm:bg-blue-500"


sm__bg_blue_600 : Html.Attribute msg
sm__bg_blue_600 =
    A.class "sm:bg-blue-600"


sm__bg_blue_700 : Html.Attribute msg
sm__bg_blue_700 =
    A.class "sm:bg-blue-700"


sm__bg_blue_800 : Html.Attribute msg
sm__bg_blue_800 =
    A.class "sm:bg-blue-800"


sm__bg_blue_900 : Html.Attribute msg
sm__bg_blue_900 =
    A.class "sm:bg-blue-900"


sm__bg_indigo_100 : Html.Attribute msg
sm__bg_indigo_100 =
    A.class "sm:bg-indigo-100"


sm__bg_indigo_200 : Html.Attribute msg
sm__bg_indigo_200 =
    A.class "sm:bg-indigo-200"


sm__bg_indigo_300 : Html.Attribute msg
sm__bg_indigo_300 =
    A.class "sm:bg-indigo-300"


sm__bg_indigo_400 : Html.Attribute msg
sm__bg_indigo_400 =
    A.class "sm:bg-indigo-400"


sm__bg_indigo_500 : Html.Attribute msg
sm__bg_indigo_500 =
    A.class "sm:bg-indigo-500"


sm__bg_indigo_600 : Html.Attribute msg
sm__bg_indigo_600 =
    A.class "sm:bg-indigo-600"


sm__bg_indigo_700 : Html.Attribute msg
sm__bg_indigo_700 =
    A.class "sm:bg-indigo-700"


sm__bg_indigo_800 : Html.Attribute msg
sm__bg_indigo_800 =
    A.class "sm:bg-indigo-800"


sm__bg_indigo_900 : Html.Attribute msg
sm__bg_indigo_900 =
    A.class "sm:bg-indigo-900"


sm__bg_purple_100 : Html.Attribute msg
sm__bg_purple_100 =
    A.class "sm:bg-purple-100"


sm__bg_purple_200 : Html.Attribute msg
sm__bg_purple_200 =
    A.class "sm:bg-purple-200"


sm__bg_purple_300 : Html.Attribute msg
sm__bg_purple_300 =
    A.class "sm:bg-purple-300"


sm__bg_purple_400 : Html.Attribute msg
sm__bg_purple_400 =
    A.class "sm:bg-purple-400"


sm__bg_purple_500 : Html.Attribute msg
sm__bg_purple_500 =
    A.class "sm:bg-purple-500"


sm__bg_purple_600 : Html.Attribute msg
sm__bg_purple_600 =
    A.class "sm:bg-purple-600"


sm__bg_purple_700 : Html.Attribute msg
sm__bg_purple_700 =
    A.class "sm:bg-purple-700"


sm__bg_purple_800 : Html.Attribute msg
sm__bg_purple_800 =
    A.class "sm:bg-purple-800"


sm__bg_purple_900 : Html.Attribute msg
sm__bg_purple_900 =
    A.class "sm:bg-purple-900"


sm__bg_pink_100 : Html.Attribute msg
sm__bg_pink_100 =
    A.class "sm:bg-pink-100"


sm__bg_pink_200 : Html.Attribute msg
sm__bg_pink_200 =
    A.class "sm:bg-pink-200"


sm__bg_pink_300 : Html.Attribute msg
sm__bg_pink_300 =
    A.class "sm:bg-pink-300"


sm__bg_pink_400 : Html.Attribute msg
sm__bg_pink_400 =
    A.class "sm:bg-pink-400"


sm__bg_pink_500 : Html.Attribute msg
sm__bg_pink_500 =
    A.class "sm:bg-pink-500"


sm__bg_pink_600 : Html.Attribute msg
sm__bg_pink_600 =
    A.class "sm:bg-pink-600"


sm__bg_pink_700 : Html.Attribute msg
sm__bg_pink_700 =
    A.class "sm:bg-pink-700"


sm__bg_pink_800 : Html.Attribute msg
sm__bg_pink_800 =
    A.class "sm:bg-pink-800"


sm__bg_pink_900 : Html.Attribute msg
sm__bg_pink_900 =
    A.class "sm:bg-pink-900"


sm__hover__bg_transparent : Html.Attribute msg
sm__hover__bg_transparent =
    A.class "sm:hover:bg-transparent"


sm__hover__bg_black : Html.Attribute msg
sm__hover__bg_black =
    A.class "sm:hover:bg-black"


sm__hover__bg_white : Html.Attribute msg
sm__hover__bg_white =
    A.class "sm:hover:bg-white"


sm__hover__bg_gray_100 : Html.Attribute msg
sm__hover__bg_gray_100 =
    A.class "sm:hover:bg-gray-100"


sm__hover__bg_gray_200 : Html.Attribute msg
sm__hover__bg_gray_200 =
    A.class "sm:hover:bg-gray-200"


sm__hover__bg_gray_300 : Html.Attribute msg
sm__hover__bg_gray_300 =
    A.class "sm:hover:bg-gray-300"


sm__hover__bg_gray_400 : Html.Attribute msg
sm__hover__bg_gray_400 =
    A.class "sm:hover:bg-gray-400"


sm__hover__bg_gray_500 : Html.Attribute msg
sm__hover__bg_gray_500 =
    A.class "sm:hover:bg-gray-500"


sm__hover__bg_gray_600 : Html.Attribute msg
sm__hover__bg_gray_600 =
    A.class "sm:hover:bg-gray-600"


sm__hover__bg_gray_700 : Html.Attribute msg
sm__hover__bg_gray_700 =
    A.class "sm:hover:bg-gray-700"


sm__hover__bg_gray_800 : Html.Attribute msg
sm__hover__bg_gray_800 =
    A.class "sm:hover:bg-gray-800"


sm__hover__bg_gray_900 : Html.Attribute msg
sm__hover__bg_gray_900 =
    A.class "sm:hover:bg-gray-900"


sm__hover__bg_red_100 : Html.Attribute msg
sm__hover__bg_red_100 =
    A.class "sm:hover:bg-red-100"


sm__hover__bg_red_200 : Html.Attribute msg
sm__hover__bg_red_200 =
    A.class "sm:hover:bg-red-200"


sm__hover__bg_red_300 : Html.Attribute msg
sm__hover__bg_red_300 =
    A.class "sm:hover:bg-red-300"


sm__hover__bg_red_400 : Html.Attribute msg
sm__hover__bg_red_400 =
    A.class "sm:hover:bg-red-400"


sm__hover__bg_red_500 : Html.Attribute msg
sm__hover__bg_red_500 =
    A.class "sm:hover:bg-red-500"


sm__hover__bg_red_600 : Html.Attribute msg
sm__hover__bg_red_600 =
    A.class "sm:hover:bg-red-600"


sm__hover__bg_red_700 : Html.Attribute msg
sm__hover__bg_red_700 =
    A.class "sm:hover:bg-red-700"


sm__hover__bg_red_800 : Html.Attribute msg
sm__hover__bg_red_800 =
    A.class "sm:hover:bg-red-800"


sm__hover__bg_red_900 : Html.Attribute msg
sm__hover__bg_red_900 =
    A.class "sm:hover:bg-red-900"


sm__hover__bg_orange_100 : Html.Attribute msg
sm__hover__bg_orange_100 =
    A.class "sm:hover:bg-orange-100"


sm__hover__bg_orange_200 : Html.Attribute msg
sm__hover__bg_orange_200 =
    A.class "sm:hover:bg-orange-200"


sm__hover__bg_orange_300 : Html.Attribute msg
sm__hover__bg_orange_300 =
    A.class "sm:hover:bg-orange-300"


sm__hover__bg_orange_400 : Html.Attribute msg
sm__hover__bg_orange_400 =
    A.class "sm:hover:bg-orange-400"


sm__hover__bg_orange_500 : Html.Attribute msg
sm__hover__bg_orange_500 =
    A.class "sm:hover:bg-orange-500"


sm__hover__bg_orange_600 : Html.Attribute msg
sm__hover__bg_orange_600 =
    A.class "sm:hover:bg-orange-600"


sm__hover__bg_orange_700 : Html.Attribute msg
sm__hover__bg_orange_700 =
    A.class "sm:hover:bg-orange-700"


sm__hover__bg_orange_800 : Html.Attribute msg
sm__hover__bg_orange_800 =
    A.class "sm:hover:bg-orange-800"


sm__hover__bg_orange_900 : Html.Attribute msg
sm__hover__bg_orange_900 =
    A.class "sm:hover:bg-orange-900"


sm__hover__bg_yellow_100 : Html.Attribute msg
sm__hover__bg_yellow_100 =
    A.class "sm:hover:bg-yellow-100"


sm__hover__bg_yellow_200 : Html.Attribute msg
sm__hover__bg_yellow_200 =
    A.class "sm:hover:bg-yellow-200"


sm__hover__bg_yellow_300 : Html.Attribute msg
sm__hover__bg_yellow_300 =
    A.class "sm:hover:bg-yellow-300"


sm__hover__bg_yellow_400 : Html.Attribute msg
sm__hover__bg_yellow_400 =
    A.class "sm:hover:bg-yellow-400"


sm__hover__bg_yellow_500 : Html.Attribute msg
sm__hover__bg_yellow_500 =
    A.class "sm:hover:bg-yellow-500"


sm__hover__bg_yellow_600 : Html.Attribute msg
sm__hover__bg_yellow_600 =
    A.class "sm:hover:bg-yellow-600"


sm__hover__bg_yellow_700 : Html.Attribute msg
sm__hover__bg_yellow_700 =
    A.class "sm:hover:bg-yellow-700"


sm__hover__bg_yellow_800 : Html.Attribute msg
sm__hover__bg_yellow_800 =
    A.class "sm:hover:bg-yellow-800"


sm__hover__bg_yellow_900 : Html.Attribute msg
sm__hover__bg_yellow_900 =
    A.class "sm:hover:bg-yellow-900"


sm__hover__bg_green_100 : Html.Attribute msg
sm__hover__bg_green_100 =
    A.class "sm:hover:bg-green-100"


sm__hover__bg_green_200 : Html.Attribute msg
sm__hover__bg_green_200 =
    A.class "sm:hover:bg-green-200"


sm__hover__bg_green_300 : Html.Attribute msg
sm__hover__bg_green_300 =
    A.class "sm:hover:bg-green-300"


sm__hover__bg_green_400 : Html.Attribute msg
sm__hover__bg_green_400 =
    A.class "sm:hover:bg-green-400"


sm__hover__bg_green_500 : Html.Attribute msg
sm__hover__bg_green_500 =
    A.class "sm:hover:bg-green-500"


sm__hover__bg_green_600 : Html.Attribute msg
sm__hover__bg_green_600 =
    A.class "sm:hover:bg-green-600"


sm__hover__bg_green_700 : Html.Attribute msg
sm__hover__bg_green_700 =
    A.class "sm:hover:bg-green-700"


sm__hover__bg_green_800 : Html.Attribute msg
sm__hover__bg_green_800 =
    A.class "sm:hover:bg-green-800"


sm__hover__bg_green_900 : Html.Attribute msg
sm__hover__bg_green_900 =
    A.class "sm:hover:bg-green-900"


sm__hover__bg_teal_100 : Html.Attribute msg
sm__hover__bg_teal_100 =
    A.class "sm:hover:bg-teal-100"


sm__hover__bg_teal_200 : Html.Attribute msg
sm__hover__bg_teal_200 =
    A.class "sm:hover:bg-teal-200"


sm__hover__bg_teal_300 : Html.Attribute msg
sm__hover__bg_teal_300 =
    A.class "sm:hover:bg-teal-300"


sm__hover__bg_teal_400 : Html.Attribute msg
sm__hover__bg_teal_400 =
    A.class "sm:hover:bg-teal-400"


sm__hover__bg_teal_500 : Html.Attribute msg
sm__hover__bg_teal_500 =
    A.class "sm:hover:bg-teal-500"


sm__hover__bg_teal_600 : Html.Attribute msg
sm__hover__bg_teal_600 =
    A.class "sm:hover:bg-teal-600"


sm__hover__bg_teal_700 : Html.Attribute msg
sm__hover__bg_teal_700 =
    A.class "sm:hover:bg-teal-700"


sm__hover__bg_teal_800 : Html.Attribute msg
sm__hover__bg_teal_800 =
    A.class "sm:hover:bg-teal-800"


sm__hover__bg_teal_900 : Html.Attribute msg
sm__hover__bg_teal_900 =
    A.class "sm:hover:bg-teal-900"


sm__hover__bg_blue_100 : Html.Attribute msg
sm__hover__bg_blue_100 =
    A.class "sm:hover:bg-blue-100"


sm__hover__bg_blue_200 : Html.Attribute msg
sm__hover__bg_blue_200 =
    A.class "sm:hover:bg-blue-200"


sm__hover__bg_blue_300 : Html.Attribute msg
sm__hover__bg_blue_300 =
    A.class "sm:hover:bg-blue-300"


sm__hover__bg_blue_400 : Html.Attribute msg
sm__hover__bg_blue_400 =
    A.class "sm:hover:bg-blue-400"


sm__hover__bg_blue_500 : Html.Attribute msg
sm__hover__bg_blue_500 =
    A.class "sm:hover:bg-blue-500"


sm__hover__bg_blue_600 : Html.Attribute msg
sm__hover__bg_blue_600 =
    A.class "sm:hover:bg-blue-600"


sm__hover__bg_blue_700 : Html.Attribute msg
sm__hover__bg_blue_700 =
    A.class "sm:hover:bg-blue-700"


sm__hover__bg_blue_800 : Html.Attribute msg
sm__hover__bg_blue_800 =
    A.class "sm:hover:bg-blue-800"


sm__hover__bg_blue_900 : Html.Attribute msg
sm__hover__bg_blue_900 =
    A.class "sm:hover:bg-blue-900"


sm__hover__bg_indigo_100 : Html.Attribute msg
sm__hover__bg_indigo_100 =
    A.class "sm:hover:bg-indigo-100"


sm__hover__bg_indigo_200 : Html.Attribute msg
sm__hover__bg_indigo_200 =
    A.class "sm:hover:bg-indigo-200"


sm__hover__bg_indigo_300 : Html.Attribute msg
sm__hover__bg_indigo_300 =
    A.class "sm:hover:bg-indigo-300"


sm__hover__bg_indigo_400 : Html.Attribute msg
sm__hover__bg_indigo_400 =
    A.class "sm:hover:bg-indigo-400"


sm__hover__bg_indigo_500 : Html.Attribute msg
sm__hover__bg_indigo_500 =
    A.class "sm:hover:bg-indigo-500"


sm__hover__bg_indigo_600 : Html.Attribute msg
sm__hover__bg_indigo_600 =
    A.class "sm:hover:bg-indigo-600"


sm__hover__bg_indigo_700 : Html.Attribute msg
sm__hover__bg_indigo_700 =
    A.class "sm:hover:bg-indigo-700"


sm__hover__bg_indigo_800 : Html.Attribute msg
sm__hover__bg_indigo_800 =
    A.class "sm:hover:bg-indigo-800"


sm__hover__bg_indigo_900 : Html.Attribute msg
sm__hover__bg_indigo_900 =
    A.class "sm:hover:bg-indigo-900"


sm__hover__bg_purple_100 : Html.Attribute msg
sm__hover__bg_purple_100 =
    A.class "sm:hover:bg-purple-100"


sm__hover__bg_purple_200 : Html.Attribute msg
sm__hover__bg_purple_200 =
    A.class "sm:hover:bg-purple-200"


sm__hover__bg_purple_300 : Html.Attribute msg
sm__hover__bg_purple_300 =
    A.class "sm:hover:bg-purple-300"


sm__hover__bg_purple_400 : Html.Attribute msg
sm__hover__bg_purple_400 =
    A.class "sm:hover:bg-purple-400"


sm__hover__bg_purple_500 : Html.Attribute msg
sm__hover__bg_purple_500 =
    A.class "sm:hover:bg-purple-500"


sm__hover__bg_purple_600 : Html.Attribute msg
sm__hover__bg_purple_600 =
    A.class "sm:hover:bg-purple-600"


sm__hover__bg_purple_700 : Html.Attribute msg
sm__hover__bg_purple_700 =
    A.class "sm:hover:bg-purple-700"


sm__hover__bg_purple_800 : Html.Attribute msg
sm__hover__bg_purple_800 =
    A.class "sm:hover:bg-purple-800"


sm__hover__bg_purple_900 : Html.Attribute msg
sm__hover__bg_purple_900 =
    A.class "sm:hover:bg-purple-900"


sm__hover__bg_pink_100 : Html.Attribute msg
sm__hover__bg_pink_100 =
    A.class "sm:hover:bg-pink-100"


sm__hover__bg_pink_200 : Html.Attribute msg
sm__hover__bg_pink_200 =
    A.class "sm:hover:bg-pink-200"


sm__hover__bg_pink_300 : Html.Attribute msg
sm__hover__bg_pink_300 =
    A.class "sm:hover:bg-pink-300"


sm__hover__bg_pink_400 : Html.Attribute msg
sm__hover__bg_pink_400 =
    A.class "sm:hover:bg-pink-400"


sm__hover__bg_pink_500 : Html.Attribute msg
sm__hover__bg_pink_500 =
    A.class "sm:hover:bg-pink-500"


sm__hover__bg_pink_600 : Html.Attribute msg
sm__hover__bg_pink_600 =
    A.class "sm:hover:bg-pink-600"


sm__hover__bg_pink_700 : Html.Attribute msg
sm__hover__bg_pink_700 =
    A.class "sm:hover:bg-pink-700"


sm__hover__bg_pink_800 : Html.Attribute msg
sm__hover__bg_pink_800 =
    A.class "sm:hover:bg-pink-800"


sm__hover__bg_pink_900 : Html.Attribute msg
sm__hover__bg_pink_900 =
    A.class "sm:hover:bg-pink-900"


sm__focus__bg_transparent : Html.Attribute msg
sm__focus__bg_transparent =
    A.class "sm:focus:bg-transparent"


sm__focus__bg_black : Html.Attribute msg
sm__focus__bg_black =
    A.class "sm:focus:bg-black"


sm__focus__bg_white : Html.Attribute msg
sm__focus__bg_white =
    A.class "sm:focus:bg-white"


sm__focus__bg_gray_100 : Html.Attribute msg
sm__focus__bg_gray_100 =
    A.class "sm:focus:bg-gray-100"


sm__focus__bg_gray_200 : Html.Attribute msg
sm__focus__bg_gray_200 =
    A.class "sm:focus:bg-gray-200"


sm__focus__bg_gray_300 : Html.Attribute msg
sm__focus__bg_gray_300 =
    A.class "sm:focus:bg-gray-300"


sm__focus__bg_gray_400 : Html.Attribute msg
sm__focus__bg_gray_400 =
    A.class "sm:focus:bg-gray-400"


sm__focus__bg_gray_500 : Html.Attribute msg
sm__focus__bg_gray_500 =
    A.class "sm:focus:bg-gray-500"


sm__focus__bg_gray_600 : Html.Attribute msg
sm__focus__bg_gray_600 =
    A.class "sm:focus:bg-gray-600"


sm__focus__bg_gray_700 : Html.Attribute msg
sm__focus__bg_gray_700 =
    A.class "sm:focus:bg-gray-700"


sm__focus__bg_gray_800 : Html.Attribute msg
sm__focus__bg_gray_800 =
    A.class "sm:focus:bg-gray-800"


sm__focus__bg_gray_900 : Html.Attribute msg
sm__focus__bg_gray_900 =
    A.class "sm:focus:bg-gray-900"


sm__focus__bg_red_100 : Html.Attribute msg
sm__focus__bg_red_100 =
    A.class "sm:focus:bg-red-100"


sm__focus__bg_red_200 : Html.Attribute msg
sm__focus__bg_red_200 =
    A.class "sm:focus:bg-red-200"


sm__focus__bg_red_300 : Html.Attribute msg
sm__focus__bg_red_300 =
    A.class "sm:focus:bg-red-300"


sm__focus__bg_red_400 : Html.Attribute msg
sm__focus__bg_red_400 =
    A.class "sm:focus:bg-red-400"


sm__focus__bg_red_500 : Html.Attribute msg
sm__focus__bg_red_500 =
    A.class "sm:focus:bg-red-500"


sm__focus__bg_red_600 : Html.Attribute msg
sm__focus__bg_red_600 =
    A.class "sm:focus:bg-red-600"


sm__focus__bg_red_700 : Html.Attribute msg
sm__focus__bg_red_700 =
    A.class "sm:focus:bg-red-700"


sm__focus__bg_red_800 : Html.Attribute msg
sm__focus__bg_red_800 =
    A.class "sm:focus:bg-red-800"


sm__focus__bg_red_900 : Html.Attribute msg
sm__focus__bg_red_900 =
    A.class "sm:focus:bg-red-900"


sm__focus__bg_orange_100 : Html.Attribute msg
sm__focus__bg_orange_100 =
    A.class "sm:focus:bg-orange-100"


sm__focus__bg_orange_200 : Html.Attribute msg
sm__focus__bg_orange_200 =
    A.class "sm:focus:bg-orange-200"


sm__focus__bg_orange_300 : Html.Attribute msg
sm__focus__bg_orange_300 =
    A.class "sm:focus:bg-orange-300"


sm__focus__bg_orange_400 : Html.Attribute msg
sm__focus__bg_orange_400 =
    A.class "sm:focus:bg-orange-400"


sm__focus__bg_orange_500 : Html.Attribute msg
sm__focus__bg_orange_500 =
    A.class "sm:focus:bg-orange-500"


sm__focus__bg_orange_600 : Html.Attribute msg
sm__focus__bg_orange_600 =
    A.class "sm:focus:bg-orange-600"


sm__focus__bg_orange_700 : Html.Attribute msg
sm__focus__bg_orange_700 =
    A.class "sm:focus:bg-orange-700"


sm__focus__bg_orange_800 : Html.Attribute msg
sm__focus__bg_orange_800 =
    A.class "sm:focus:bg-orange-800"


sm__focus__bg_orange_900 : Html.Attribute msg
sm__focus__bg_orange_900 =
    A.class "sm:focus:bg-orange-900"


sm__focus__bg_yellow_100 : Html.Attribute msg
sm__focus__bg_yellow_100 =
    A.class "sm:focus:bg-yellow-100"


sm__focus__bg_yellow_200 : Html.Attribute msg
sm__focus__bg_yellow_200 =
    A.class "sm:focus:bg-yellow-200"


sm__focus__bg_yellow_300 : Html.Attribute msg
sm__focus__bg_yellow_300 =
    A.class "sm:focus:bg-yellow-300"


sm__focus__bg_yellow_400 : Html.Attribute msg
sm__focus__bg_yellow_400 =
    A.class "sm:focus:bg-yellow-400"


sm__focus__bg_yellow_500 : Html.Attribute msg
sm__focus__bg_yellow_500 =
    A.class "sm:focus:bg-yellow-500"


sm__focus__bg_yellow_600 : Html.Attribute msg
sm__focus__bg_yellow_600 =
    A.class "sm:focus:bg-yellow-600"


sm__focus__bg_yellow_700 : Html.Attribute msg
sm__focus__bg_yellow_700 =
    A.class "sm:focus:bg-yellow-700"


sm__focus__bg_yellow_800 : Html.Attribute msg
sm__focus__bg_yellow_800 =
    A.class "sm:focus:bg-yellow-800"


sm__focus__bg_yellow_900 : Html.Attribute msg
sm__focus__bg_yellow_900 =
    A.class "sm:focus:bg-yellow-900"


sm__focus__bg_green_100 : Html.Attribute msg
sm__focus__bg_green_100 =
    A.class "sm:focus:bg-green-100"


sm__focus__bg_green_200 : Html.Attribute msg
sm__focus__bg_green_200 =
    A.class "sm:focus:bg-green-200"


sm__focus__bg_green_300 : Html.Attribute msg
sm__focus__bg_green_300 =
    A.class "sm:focus:bg-green-300"


sm__focus__bg_green_400 : Html.Attribute msg
sm__focus__bg_green_400 =
    A.class "sm:focus:bg-green-400"


sm__focus__bg_green_500 : Html.Attribute msg
sm__focus__bg_green_500 =
    A.class "sm:focus:bg-green-500"


sm__focus__bg_green_600 : Html.Attribute msg
sm__focus__bg_green_600 =
    A.class "sm:focus:bg-green-600"


sm__focus__bg_green_700 : Html.Attribute msg
sm__focus__bg_green_700 =
    A.class "sm:focus:bg-green-700"


sm__focus__bg_green_800 : Html.Attribute msg
sm__focus__bg_green_800 =
    A.class "sm:focus:bg-green-800"


sm__focus__bg_green_900 : Html.Attribute msg
sm__focus__bg_green_900 =
    A.class "sm:focus:bg-green-900"


sm__focus__bg_teal_100 : Html.Attribute msg
sm__focus__bg_teal_100 =
    A.class "sm:focus:bg-teal-100"


sm__focus__bg_teal_200 : Html.Attribute msg
sm__focus__bg_teal_200 =
    A.class "sm:focus:bg-teal-200"


sm__focus__bg_teal_300 : Html.Attribute msg
sm__focus__bg_teal_300 =
    A.class "sm:focus:bg-teal-300"


sm__focus__bg_teal_400 : Html.Attribute msg
sm__focus__bg_teal_400 =
    A.class "sm:focus:bg-teal-400"


sm__focus__bg_teal_500 : Html.Attribute msg
sm__focus__bg_teal_500 =
    A.class "sm:focus:bg-teal-500"


sm__focus__bg_teal_600 : Html.Attribute msg
sm__focus__bg_teal_600 =
    A.class "sm:focus:bg-teal-600"


sm__focus__bg_teal_700 : Html.Attribute msg
sm__focus__bg_teal_700 =
    A.class "sm:focus:bg-teal-700"


sm__focus__bg_teal_800 : Html.Attribute msg
sm__focus__bg_teal_800 =
    A.class "sm:focus:bg-teal-800"


sm__focus__bg_teal_900 : Html.Attribute msg
sm__focus__bg_teal_900 =
    A.class "sm:focus:bg-teal-900"


sm__focus__bg_blue_100 : Html.Attribute msg
sm__focus__bg_blue_100 =
    A.class "sm:focus:bg-blue-100"


sm__focus__bg_blue_200 : Html.Attribute msg
sm__focus__bg_blue_200 =
    A.class "sm:focus:bg-blue-200"


sm__focus__bg_blue_300 : Html.Attribute msg
sm__focus__bg_blue_300 =
    A.class "sm:focus:bg-blue-300"


sm__focus__bg_blue_400 : Html.Attribute msg
sm__focus__bg_blue_400 =
    A.class "sm:focus:bg-blue-400"


sm__focus__bg_blue_500 : Html.Attribute msg
sm__focus__bg_blue_500 =
    A.class "sm:focus:bg-blue-500"


sm__focus__bg_blue_600 : Html.Attribute msg
sm__focus__bg_blue_600 =
    A.class "sm:focus:bg-blue-600"


sm__focus__bg_blue_700 : Html.Attribute msg
sm__focus__bg_blue_700 =
    A.class "sm:focus:bg-blue-700"


sm__focus__bg_blue_800 : Html.Attribute msg
sm__focus__bg_blue_800 =
    A.class "sm:focus:bg-blue-800"


sm__focus__bg_blue_900 : Html.Attribute msg
sm__focus__bg_blue_900 =
    A.class "sm:focus:bg-blue-900"


sm__focus__bg_indigo_100 : Html.Attribute msg
sm__focus__bg_indigo_100 =
    A.class "sm:focus:bg-indigo-100"


sm__focus__bg_indigo_200 : Html.Attribute msg
sm__focus__bg_indigo_200 =
    A.class "sm:focus:bg-indigo-200"


sm__focus__bg_indigo_300 : Html.Attribute msg
sm__focus__bg_indigo_300 =
    A.class "sm:focus:bg-indigo-300"


sm__focus__bg_indigo_400 : Html.Attribute msg
sm__focus__bg_indigo_400 =
    A.class "sm:focus:bg-indigo-400"


sm__focus__bg_indigo_500 : Html.Attribute msg
sm__focus__bg_indigo_500 =
    A.class "sm:focus:bg-indigo-500"


sm__focus__bg_indigo_600 : Html.Attribute msg
sm__focus__bg_indigo_600 =
    A.class "sm:focus:bg-indigo-600"


sm__focus__bg_indigo_700 : Html.Attribute msg
sm__focus__bg_indigo_700 =
    A.class "sm:focus:bg-indigo-700"


sm__focus__bg_indigo_800 : Html.Attribute msg
sm__focus__bg_indigo_800 =
    A.class "sm:focus:bg-indigo-800"


sm__focus__bg_indigo_900 : Html.Attribute msg
sm__focus__bg_indigo_900 =
    A.class "sm:focus:bg-indigo-900"


sm__focus__bg_purple_100 : Html.Attribute msg
sm__focus__bg_purple_100 =
    A.class "sm:focus:bg-purple-100"


sm__focus__bg_purple_200 : Html.Attribute msg
sm__focus__bg_purple_200 =
    A.class "sm:focus:bg-purple-200"


sm__focus__bg_purple_300 : Html.Attribute msg
sm__focus__bg_purple_300 =
    A.class "sm:focus:bg-purple-300"


sm__focus__bg_purple_400 : Html.Attribute msg
sm__focus__bg_purple_400 =
    A.class "sm:focus:bg-purple-400"


sm__focus__bg_purple_500 : Html.Attribute msg
sm__focus__bg_purple_500 =
    A.class "sm:focus:bg-purple-500"


sm__focus__bg_purple_600 : Html.Attribute msg
sm__focus__bg_purple_600 =
    A.class "sm:focus:bg-purple-600"


sm__focus__bg_purple_700 : Html.Attribute msg
sm__focus__bg_purple_700 =
    A.class "sm:focus:bg-purple-700"


sm__focus__bg_purple_800 : Html.Attribute msg
sm__focus__bg_purple_800 =
    A.class "sm:focus:bg-purple-800"


sm__focus__bg_purple_900 : Html.Attribute msg
sm__focus__bg_purple_900 =
    A.class "sm:focus:bg-purple-900"


sm__focus__bg_pink_100 : Html.Attribute msg
sm__focus__bg_pink_100 =
    A.class "sm:focus:bg-pink-100"


sm__focus__bg_pink_200 : Html.Attribute msg
sm__focus__bg_pink_200 =
    A.class "sm:focus:bg-pink-200"


sm__focus__bg_pink_300 : Html.Attribute msg
sm__focus__bg_pink_300 =
    A.class "sm:focus:bg-pink-300"


sm__focus__bg_pink_400 : Html.Attribute msg
sm__focus__bg_pink_400 =
    A.class "sm:focus:bg-pink-400"


sm__focus__bg_pink_500 : Html.Attribute msg
sm__focus__bg_pink_500 =
    A.class "sm:focus:bg-pink-500"


sm__focus__bg_pink_600 : Html.Attribute msg
sm__focus__bg_pink_600 =
    A.class "sm:focus:bg-pink-600"


sm__focus__bg_pink_700 : Html.Attribute msg
sm__focus__bg_pink_700 =
    A.class "sm:focus:bg-pink-700"


sm__focus__bg_pink_800 : Html.Attribute msg
sm__focus__bg_pink_800 =
    A.class "sm:focus:bg-pink-800"


sm__focus__bg_pink_900 : Html.Attribute msg
sm__focus__bg_pink_900 =
    A.class "sm:focus:bg-pink-900"


sm__bg_bottom : Html.Attribute msg
sm__bg_bottom =
    A.class "sm:bg-bottom"


sm__bg_center : Html.Attribute msg
sm__bg_center =
    A.class "sm:bg-center"


sm__bg_left : Html.Attribute msg
sm__bg_left =
    A.class "sm:bg-left"


sm__bg_left_bottom : Html.Attribute msg
sm__bg_left_bottom =
    A.class "sm:bg-left-bottom"


sm__bg_left_top : Html.Attribute msg
sm__bg_left_top =
    A.class "sm:bg-left-top"


sm__bg_right : Html.Attribute msg
sm__bg_right =
    A.class "sm:bg-right"


sm__bg_right_bottom : Html.Attribute msg
sm__bg_right_bottom =
    A.class "sm:bg-right-bottom"


sm__bg_right_top : Html.Attribute msg
sm__bg_right_top =
    A.class "sm:bg-right-top"


sm__bg_top : Html.Attribute msg
sm__bg_top =
    A.class "sm:bg-top"


sm__bg_repeat : Html.Attribute msg
sm__bg_repeat =
    A.class "sm:bg-repeat"


sm__bg_no_repeat : Html.Attribute msg
sm__bg_no_repeat =
    A.class "sm:bg-no-repeat"


sm__bg_repeat_x : Html.Attribute msg
sm__bg_repeat_x =
    A.class "sm:bg-repeat-x"


sm__bg_repeat_y : Html.Attribute msg
sm__bg_repeat_y =
    A.class "sm:bg-repeat-y"


sm__bg_repeat_round : Html.Attribute msg
sm__bg_repeat_round =
    A.class "sm:bg-repeat-round"


sm__bg_repeat_space : Html.Attribute msg
sm__bg_repeat_space =
    A.class "sm:bg-repeat-space"


sm__bg_auto : Html.Attribute msg
sm__bg_auto =
    A.class "sm:bg-auto"


sm__bg_cover : Html.Attribute msg
sm__bg_cover =
    A.class "sm:bg-cover"


sm__bg_contain : Html.Attribute msg
sm__bg_contain =
    A.class "sm:bg-contain"


sm__border_collapse : Html.Attribute msg
sm__border_collapse =
    A.class "sm:border-collapse"


sm__border_separate : Html.Attribute msg
sm__border_separate =
    A.class "sm:border-separate"


sm__border_transparent : Html.Attribute msg
sm__border_transparent =
    A.class "sm:border-transparent"


sm__border_black : Html.Attribute msg
sm__border_black =
    A.class "sm:border-black"


sm__border_white : Html.Attribute msg
sm__border_white =
    A.class "sm:border-white"


sm__border_gray_100 : Html.Attribute msg
sm__border_gray_100 =
    A.class "sm:border-gray-100"


sm__border_gray_200 : Html.Attribute msg
sm__border_gray_200 =
    A.class "sm:border-gray-200"


sm__border_gray_300 : Html.Attribute msg
sm__border_gray_300 =
    A.class "sm:border-gray-300"


sm__border_gray_400 : Html.Attribute msg
sm__border_gray_400 =
    A.class "sm:border-gray-400"


sm__border_gray_500 : Html.Attribute msg
sm__border_gray_500 =
    A.class "sm:border-gray-500"


sm__border_gray_600 : Html.Attribute msg
sm__border_gray_600 =
    A.class "sm:border-gray-600"


sm__border_gray_700 : Html.Attribute msg
sm__border_gray_700 =
    A.class "sm:border-gray-700"


sm__border_gray_800 : Html.Attribute msg
sm__border_gray_800 =
    A.class "sm:border-gray-800"


sm__border_gray_900 : Html.Attribute msg
sm__border_gray_900 =
    A.class "sm:border-gray-900"


sm__border_red_100 : Html.Attribute msg
sm__border_red_100 =
    A.class "sm:border-red-100"


sm__border_red_200 : Html.Attribute msg
sm__border_red_200 =
    A.class "sm:border-red-200"


sm__border_red_300 : Html.Attribute msg
sm__border_red_300 =
    A.class "sm:border-red-300"


sm__border_red_400 : Html.Attribute msg
sm__border_red_400 =
    A.class "sm:border-red-400"


sm__border_red_500 : Html.Attribute msg
sm__border_red_500 =
    A.class "sm:border-red-500"


sm__border_red_600 : Html.Attribute msg
sm__border_red_600 =
    A.class "sm:border-red-600"


sm__border_red_700 : Html.Attribute msg
sm__border_red_700 =
    A.class "sm:border-red-700"


sm__border_red_800 : Html.Attribute msg
sm__border_red_800 =
    A.class "sm:border-red-800"


sm__border_red_900 : Html.Attribute msg
sm__border_red_900 =
    A.class "sm:border-red-900"


sm__border_orange_100 : Html.Attribute msg
sm__border_orange_100 =
    A.class "sm:border-orange-100"


sm__border_orange_200 : Html.Attribute msg
sm__border_orange_200 =
    A.class "sm:border-orange-200"


sm__border_orange_300 : Html.Attribute msg
sm__border_orange_300 =
    A.class "sm:border-orange-300"


sm__border_orange_400 : Html.Attribute msg
sm__border_orange_400 =
    A.class "sm:border-orange-400"


sm__border_orange_500 : Html.Attribute msg
sm__border_orange_500 =
    A.class "sm:border-orange-500"


sm__border_orange_600 : Html.Attribute msg
sm__border_orange_600 =
    A.class "sm:border-orange-600"


sm__border_orange_700 : Html.Attribute msg
sm__border_orange_700 =
    A.class "sm:border-orange-700"


sm__border_orange_800 : Html.Attribute msg
sm__border_orange_800 =
    A.class "sm:border-orange-800"


sm__border_orange_900 : Html.Attribute msg
sm__border_orange_900 =
    A.class "sm:border-orange-900"


sm__border_yellow_100 : Html.Attribute msg
sm__border_yellow_100 =
    A.class "sm:border-yellow-100"


sm__border_yellow_200 : Html.Attribute msg
sm__border_yellow_200 =
    A.class "sm:border-yellow-200"


sm__border_yellow_300 : Html.Attribute msg
sm__border_yellow_300 =
    A.class "sm:border-yellow-300"


sm__border_yellow_400 : Html.Attribute msg
sm__border_yellow_400 =
    A.class "sm:border-yellow-400"


sm__border_yellow_500 : Html.Attribute msg
sm__border_yellow_500 =
    A.class "sm:border-yellow-500"


sm__border_yellow_600 : Html.Attribute msg
sm__border_yellow_600 =
    A.class "sm:border-yellow-600"


sm__border_yellow_700 : Html.Attribute msg
sm__border_yellow_700 =
    A.class "sm:border-yellow-700"


sm__border_yellow_800 : Html.Attribute msg
sm__border_yellow_800 =
    A.class "sm:border-yellow-800"


sm__border_yellow_900 : Html.Attribute msg
sm__border_yellow_900 =
    A.class "sm:border-yellow-900"


sm__border_green_100 : Html.Attribute msg
sm__border_green_100 =
    A.class "sm:border-green-100"


sm__border_green_200 : Html.Attribute msg
sm__border_green_200 =
    A.class "sm:border-green-200"


sm__border_green_300 : Html.Attribute msg
sm__border_green_300 =
    A.class "sm:border-green-300"


sm__border_green_400 : Html.Attribute msg
sm__border_green_400 =
    A.class "sm:border-green-400"


sm__border_green_500 : Html.Attribute msg
sm__border_green_500 =
    A.class "sm:border-green-500"


sm__border_green_600 : Html.Attribute msg
sm__border_green_600 =
    A.class "sm:border-green-600"


sm__border_green_700 : Html.Attribute msg
sm__border_green_700 =
    A.class "sm:border-green-700"


sm__border_green_800 : Html.Attribute msg
sm__border_green_800 =
    A.class "sm:border-green-800"


sm__border_green_900 : Html.Attribute msg
sm__border_green_900 =
    A.class "sm:border-green-900"


sm__border_teal_100 : Html.Attribute msg
sm__border_teal_100 =
    A.class "sm:border-teal-100"


sm__border_teal_200 : Html.Attribute msg
sm__border_teal_200 =
    A.class "sm:border-teal-200"


sm__border_teal_300 : Html.Attribute msg
sm__border_teal_300 =
    A.class "sm:border-teal-300"


sm__border_teal_400 : Html.Attribute msg
sm__border_teal_400 =
    A.class "sm:border-teal-400"


sm__border_teal_500 : Html.Attribute msg
sm__border_teal_500 =
    A.class "sm:border-teal-500"


sm__border_teal_600 : Html.Attribute msg
sm__border_teal_600 =
    A.class "sm:border-teal-600"


sm__border_teal_700 : Html.Attribute msg
sm__border_teal_700 =
    A.class "sm:border-teal-700"


sm__border_teal_800 : Html.Attribute msg
sm__border_teal_800 =
    A.class "sm:border-teal-800"


sm__border_teal_900 : Html.Attribute msg
sm__border_teal_900 =
    A.class "sm:border-teal-900"


sm__border_blue_100 : Html.Attribute msg
sm__border_blue_100 =
    A.class "sm:border-blue-100"


sm__border_blue_200 : Html.Attribute msg
sm__border_blue_200 =
    A.class "sm:border-blue-200"


sm__border_blue_300 : Html.Attribute msg
sm__border_blue_300 =
    A.class "sm:border-blue-300"


sm__border_blue_400 : Html.Attribute msg
sm__border_blue_400 =
    A.class "sm:border-blue-400"


sm__border_blue_500 : Html.Attribute msg
sm__border_blue_500 =
    A.class "sm:border-blue-500"


sm__border_blue_600 : Html.Attribute msg
sm__border_blue_600 =
    A.class "sm:border-blue-600"


sm__border_blue_700 : Html.Attribute msg
sm__border_blue_700 =
    A.class "sm:border-blue-700"


sm__border_blue_800 : Html.Attribute msg
sm__border_blue_800 =
    A.class "sm:border-blue-800"


sm__border_blue_900 : Html.Attribute msg
sm__border_blue_900 =
    A.class "sm:border-blue-900"


sm__border_indigo_100 : Html.Attribute msg
sm__border_indigo_100 =
    A.class "sm:border-indigo-100"


sm__border_indigo_200 : Html.Attribute msg
sm__border_indigo_200 =
    A.class "sm:border-indigo-200"


sm__border_indigo_300 : Html.Attribute msg
sm__border_indigo_300 =
    A.class "sm:border-indigo-300"


sm__border_indigo_400 : Html.Attribute msg
sm__border_indigo_400 =
    A.class "sm:border-indigo-400"


sm__border_indigo_500 : Html.Attribute msg
sm__border_indigo_500 =
    A.class "sm:border-indigo-500"


sm__border_indigo_600 : Html.Attribute msg
sm__border_indigo_600 =
    A.class "sm:border-indigo-600"


sm__border_indigo_700 : Html.Attribute msg
sm__border_indigo_700 =
    A.class "sm:border-indigo-700"


sm__border_indigo_800 : Html.Attribute msg
sm__border_indigo_800 =
    A.class "sm:border-indigo-800"


sm__border_indigo_900 : Html.Attribute msg
sm__border_indigo_900 =
    A.class "sm:border-indigo-900"


sm__border_purple_100 : Html.Attribute msg
sm__border_purple_100 =
    A.class "sm:border-purple-100"


sm__border_purple_200 : Html.Attribute msg
sm__border_purple_200 =
    A.class "sm:border-purple-200"


sm__border_purple_300 : Html.Attribute msg
sm__border_purple_300 =
    A.class "sm:border-purple-300"


sm__border_purple_400 : Html.Attribute msg
sm__border_purple_400 =
    A.class "sm:border-purple-400"


sm__border_purple_500 : Html.Attribute msg
sm__border_purple_500 =
    A.class "sm:border-purple-500"


sm__border_purple_600 : Html.Attribute msg
sm__border_purple_600 =
    A.class "sm:border-purple-600"


sm__border_purple_700 : Html.Attribute msg
sm__border_purple_700 =
    A.class "sm:border-purple-700"


sm__border_purple_800 : Html.Attribute msg
sm__border_purple_800 =
    A.class "sm:border-purple-800"


sm__border_purple_900 : Html.Attribute msg
sm__border_purple_900 =
    A.class "sm:border-purple-900"


sm__border_pink_100 : Html.Attribute msg
sm__border_pink_100 =
    A.class "sm:border-pink-100"


sm__border_pink_200 : Html.Attribute msg
sm__border_pink_200 =
    A.class "sm:border-pink-200"


sm__border_pink_300 : Html.Attribute msg
sm__border_pink_300 =
    A.class "sm:border-pink-300"


sm__border_pink_400 : Html.Attribute msg
sm__border_pink_400 =
    A.class "sm:border-pink-400"


sm__border_pink_500 : Html.Attribute msg
sm__border_pink_500 =
    A.class "sm:border-pink-500"


sm__border_pink_600 : Html.Attribute msg
sm__border_pink_600 =
    A.class "sm:border-pink-600"


sm__border_pink_700 : Html.Attribute msg
sm__border_pink_700 =
    A.class "sm:border-pink-700"


sm__border_pink_800 : Html.Attribute msg
sm__border_pink_800 =
    A.class "sm:border-pink-800"


sm__border_pink_900 : Html.Attribute msg
sm__border_pink_900 =
    A.class "sm:border-pink-900"


sm__hover__border_transparent : Html.Attribute msg
sm__hover__border_transparent =
    A.class "sm:hover:border-transparent"


sm__hover__border_black : Html.Attribute msg
sm__hover__border_black =
    A.class "sm:hover:border-black"


sm__hover__border_white : Html.Attribute msg
sm__hover__border_white =
    A.class "sm:hover:border-white"


sm__hover__border_gray_100 : Html.Attribute msg
sm__hover__border_gray_100 =
    A.class "sm:hover:border-gray-100"


sm__hover__border_gray_200 : Html.Attribute msg
sm__hover__border_gray_200 =
    A.class "sm:hover:border-gray-200"


sm__hover__border_gray_300 : Html.Attribute msg
sm__hover__border_gray_300 =
    A.class "sm:hover:border-gray-300"


sm__hover__border_gray_400 : Html.Attribute msg
sm__hover__border_gray_400 =
    A.class "sm:hover:border-gray-400"


sm__hover__border_gray_500 : Html.Attribute msg
sm__hover__border_gray_500 =
    A.class "sm:hover:border-gray-500"


sm__hover__border_gray_600 : Html.Attribute msg
sm__hover__border_gray_600 =
    A.class "sm:hover:border-gray-600"


sm__hover__border_gray_700 : Html.Attribute msg
sm__hover__border_gray_700 =
    A.class "sm:hover:border-gray-700"


sm__hover__border_gray_800 : Html.Attribute msg
sm__hover__border_gray_800 =
    A.class "sm:hover:border-gray-800"


sm__hover__border_gray_900 : Html.Attribute msg
sm__hover__border_gray_900 =
    A.class "sm:hover:border-gray-900"


sm__hover__border_red_100 : Html.Attribute msg
sm__hover__border_red_100 =
    A.class "sm:hover:border-red-100"


sm__hover__border_red_200 : Html.Attribute msg
sm__hover__border_red_200 =
    A.class "sm:hover:border-red-200"


sm__hover__border_red_300 : Html.Attribute msg
sm__hover__border_red_300 =
    A.class "sm:hover:border-red-300"


sm__hover__border_red_400 : Html.Attribute msg
sm__hover__border_red_400 =
    A.class "sm:hover:border-red-400"


sm__hover__border_red_500 : Html.Attribute msg
sm__hover__border_red_500 =
    A.class "sm:hover:border-red-500"


sm__hover__border_red_600 : Html.Attribute msg
sm__hover__border_red_600 =
    A.class "sm:hover:border-red-600"


sm__hover__border_red_700 : Html.Attribute msg
sm__hover__border_red_700 =
    A.class "sm:hover:border-red-700"


sm__hover__border_red_800 : Html.Attribute msg
sm__hover__border_red_800 =
    A.class "sm:hover:border-red-800"


sm__hover__border_red_900 : Html.Attribute msg
sm__hover__border_red_900 =
    A.class "sm:hover:border-red-900"


sm__hover__border_orange_100 : Html.Attribute msg
sm__hover__border_orange_100 =
    A.class "sm:hover:border-orange-100"


sm__hover__border_orange_200 : Html.Attribute msg
sm__hover__border_orange_200 =
    A.class "sm:hover:border-orange-200"


sm__hover__border_orange_300 : Html.Attribute msg
sm__hover__border_orange_300 =
    A.class "sm:hover:border-orange-300"


sm__hover__border_orange_400 : Html.Attribute msg
sm__hover__border_orange_400 =
    A.class "sm:hover:border-orange-400"


sm__hover__border_orange_500 : Html.Attribute msg
sm__hover__border_orange_500 =
    A.class "sm:hover:border-orange-500"


sm__hover__border_orange_600 : Html.Attribute msg
sm__hover__border_orange_600 =
    A.class "sm:hover:border-orange-600"


sm__hover__border_orange_700 : Html.Attribute msg
sm__hover__border_orange_700 =
    A.class "sm:hover:border-orange-700"


sm__hover__border_orange_800 : Html.Attribute msg
sm__hover__border_orange_800 =
    A.class "sm:hover:border-orange-800"


sm__hover__border_orange_900 : Html.Attribute msg
sm__hover__border_orange_900 =
    A.class "sm:hover:border-orange-900"


sm__hover__border_yellow_100 : Html.Attribute msg
sm__hover__border_yellow_100 =
    A.class "sm:hover:border-yellow-100"


sm__hover__border_yellow_200 : Html.Attribute msg
sm__hover__border_yellow_200 =
    A.class "sm:hover:border-yellow-200"


sm__hover__border_yellow_300 : Html.Attribute msg
sm__hover__border_yellow_300 =
    A.class "sm:hover:border-yellow-300"


sm__hover__border_yellow_400 : Html.Attribute msg
sm__hover__border_yellow_400 =
    A.class "sm:hover:border-yellow-400"


sm__hover__border_yellow_500 : Html.Attribute msg
sm__hover__border_yellow_500 =
    A.class "sm:hover:border-yellow-500"


sm__hover__border_yellow_600 : Html.Attribute msg
sm__hover__border_yellow_600 =
    A.class "sm:hover:border-yellow-600"


sm__hover__border_yellow_700 : Html.Attribute msg
sm__hover__border_yellow_700 =
    A.class "sm:hover:border-yellow-700"


sm__hover__border_yellow_800 : Html.Attribute msg
sm__hover__border_yellow_800 =
    A.class "sm:hover:border-yellow-800"


sm__hover__border_yellow_900 : Html.Attribute msg
sm__hover__border_yellow_900 =
    A.class "sm:hover:border-yellow-900"


sm__hover__border_green_100 : Html.Attribute msg
sm__hover__border_green_100 =
    A.class "sm:hover:border-green-100"


sm__hover__border_green_200 : Html.Attribute msg
sm__hover__border_green_200 =
    A.class "sm:hover:border-green-200"


sm__hover__border_green_300 : Html.Attribute msg
sm__hover__border_green_300 =
    A.class "sm:hover:border-green-300"


sm__hover__border_green_400 : Html.Attribute msg
sm__hover__border_green_400 =
    A.class "sm:hover:border-green-400"


sm__hover__border_green_500 : Html.Attribute msg
sm__hover__border_green_500 =
    A.class "sm:hover:border-green-500"


sm__hover__border_green_600 : Html.Attribute msg
sm__hover__border_green_600 =
    A.class "sm:hover:border-green-600"


sm__hover__border_green_700 : Html.Attribute msg
sm__hover__border_green_700 =
    A.class "sm:hover:border-green-700"


sm__hover__border_green_800 : Html.Attribute msg
sm__hover__border_green_800 =
    A.class "sm:hover:border-green-800"


sm__hover__border_green_900 : Html.Attribute msg
sm__hover__border_green_900 =
    A.class "sm:hover:border-green-900"


sm__hover__border_teal_100 : Html.Attribute msg
sm__hover__border_teal_100 =
    A.class "sm:hover:border-teal-100"


sm__hover__border_teal_200 : Html.Attribute msg
sm__hover__border_teal_200 =
    A.class "sm:hover:border-teal-200"


sm__hover__border_teal_300 : Html.Attribute msg
sm__hover__border_teal_300 =
    A.class "sm:hover:border-teal-300"


sm__hover__border_teal_400 : Html.Attribute msg
sm__hover__border_teal_400 =
    A.class "sm:hover:border-teal-400"


sm__hover__border_teal_500 : Html.Attribute msg
sm__hover__border_teal_500 =
    A.class "sm:hover:border-teal-500"


sm__hover__border_teal_600 : Html.Attribute msg
sm__hover__border_teal_600 =
    A.class "sm:hover:border-teal-600"


sm__hover__border_teal_700 : Html.Attribute msg
sm__hover__border_teal_700 =
    A.class "sm:hover:border-teal-700"


sm__hover__border_teal_800 : Html.Attribute msg
sm__hover__border_teal_800 =
    A.class "sm:hover:border-teal-800"


sm__hover__border_teal_900 : Html.Attribute msg
sm__hover__border_teal_900 =
    A.class "sm:hover:border-teal-900"


sm__hover__border_blue_100 : Html.Attribute msg
sm__hover__border_blue_100 =
    A.class "sm:hover:border-blue-100"


sm__hover__border_blue_200 : Html.Attribute msg
sm__hover__border_blue_200 =
    A.class "sm:hover:border-blue-200"


sm__hover__border_blue_300 : Html.Attribute msg
sm__hover__border_blue_300 =
    A.class "sm:hover:border-blue-300"


sm__hover__border_blue_400 : Html.Attribute msg
sm__hover__border_blue_400 =
    A.class "sm:hover:border-blue-400"


sm__hover__border_blue_500 : Html.Attribute msg
sm__hover__border_blue_500 =
    A.class "sm:hover:border-blue-500"


sm__hover__border_blue_600 : Html.Attribute msg
sm__hover__border_blue_600 =
    A.class "sm:hover:border-blue-600"


sm__hover__border_blue_700 : Html.Attribute msg
sm__hover__border_blue_700 =
    A.class "sm:hover:border-blue-700"


sm__hover__border_blue_800 : Html.Attribute msg
sm__hover__border_blue_800 =
    A.class "sm:hover:border-blue-800"


sm__hover__border_blue_900 : Html.Attribute msg
sm__hover__border_blue_900 =
    A.class "sm:hover:border-blue-900"


sm__hover__border_indigo_100 : Html.Attribute msg
sm__hover__border_indigo_100 =
    A.class "sm:hover:border-indigo-100"


sm__hover__border_indigo_200 : Html.Attribute msg
sm__hover__border_indigo_200 =
    A.class "sm:hover:border-indigo-200"


sm__hover__border_indigo_300 : Html.Attribute msg
sm__hover__border_indigo_300 =
    A.class "sm:hover:border-indigo-300"


sm__hover__border_indigo_400 : Html.Attribute msg
sm__hover__border_indigo_400 =
    A.class "sm:hover:border-indigo-400"


sm__hover__border_indigo_500 : Html.Attribute msg
sm__hover__border_indigo_500 =
    A.class "sm:hover:border-indigo-500"


sm__hover__border_indigo_600 : Html.Attribute msg
sm__hover__border_indigo_600 =
    A.class "sm:hover:border-indigo-600"


sm__hover__border_indigo_700 : Html.Attribute msg
sm__hover__border_indigo_700 =
    A.class "sm:hover:border-indigo-700"


sm__hover__border_indigo_800 : Html.Attribute msg
sm__hover__border_indigo_800 =
    A.class "sm:hover:border-indigo-800"


sm__hover__border_indigo_900 : Html.Attribute msg
sm__hover__border_indigo_900 =
    A.class "sm:hover:border-indigo-900"


sm__hover__border_purple_100 : Html.Attribute msg
sm__hover__border_purple_100 =
    A.class "sm:hover:border-purple-100"


sm__hover__border_purple_200 : Html.Attribute msg
sm__hover__border_purple_200 =
    A.class "sm:hover:border-purple-200"


sm__hover__border_purple_300 : Html.Attribute msg
sm__hover__border_purple_300 =
    A.class "sm:hover:border-purple-300"


sm__hover__border_purple_400 : Html.Attribute msg
sm__hover__border_purple_400 =
    A.class "sm:hover:border-purple-400"


sm__hover__border_purple_500 : Html.Attribute msg
sm__hover__border_purple_500 =
    A.class "sm:hover:border-purple-500"


sm__hover__border_purple_600 : Html.Attribute msg
sm__hover__border_purple_600 =
    A.class "sm:hover:border-purple-600"


sm__hover__border_purple_700 : Html.Attribute msg
sm__hover__border_purple_700 =
    A.class "sm:hover:border-purple-700"


sm__hover__border_purple_800 : Html.Attribute msg
sm__hover__border_purple_800 =
    A.class "sm:hover:border-purple-800"


sm__hover__border_purple_900 : Html.Attribute msg
sm__hover__border_purple_900 =
    A.class "sm:hover:border-purple-900"


sm__hover__border_pink_100 : Html.Attribute msg
sm__hover__border_pink_100 =
    A.class "sm:hover:border-pink-100"


sm__hover__border_pink_200 : Html.Attribute msg
sm__hover__border_pink_200 =
    A.class "sm:hover:border-pink-200"


sm__hover__border_pink_300 : Html.Attribute msg
sm__hover__border_pink_300 =
    A.class "sm:hover:border-pink-300"


sm__hover__border_pink_400 : Html.Attribute msg
sm__hover__border_pink_400 =
    A.class "sm:hover:border-pink-400"


sm__hover__border_pink_500 : Html.Attribute msg
sm__hover__border_pink_500 =
    A.class "sm:hover:border-pink-500"


sm__hover__border_pink_600 : Html.Attribute msg
sm__hover__border_pink_600 =
    A.class "sm:hover:border-pink-600"


sm__hover__border_pink_700 : Html.Attribute msg
sm__hover__border_pink_700 =
    A.class "sm:hover:border-pink-700"


sm__hover__border_pink_800 : Html.Attribute msg
sm__hover__border_pink_800 =
    A.class "sm:hover:border-pink-800"


sm__hover__border_pink_900 : Html.Attribute msg
sm__hover__border_pink_900 =
    A.class "sm:hover:border-pink-900"


sm__focus__border_transparent : Html.Attribute msg
sm__focus__border_transparent =
    A.class "sm:focus:border-transparent"


sm__focus__border_black : Html.Attribute msg
sm__focus__border_black =
    A.class "sm:focus:border-black"


sm__focus__border_white : Html.Attribute msg
sm__focus__border_white =
    A.class "sm:focus:border-white"


sm__focus__border_gray_100 : Html.Attribute msg
sm__focus__border_gray_100 =
    A.class "sm:focus:border-gray-100"


sm__focus__border_gray_200 : Html.Attribute msg
sm__focus__border_gray_200 =
    A.class "sm:focus:border-gray-200"


sm__focus__border_gray_300 : Html.Attribute msg
sm__focus__border_gray_300 =
    A.class "sm:focus:border-gray-300"


sm__focus__border_gray_400 : Html.Attribute msg
sm__focus__border_gray_400 =
    A.class "sm:focus:border-gray-400"


sm__focus__border_gray_500 : Html.Attribute msg
sm__focus__border_gray_500 =
    A.class "sm:focus:border-gray-500"


sm__focus__border_gray_600 : Html.Attribute msg
sm__focus__border_gray_600 =
    A.class "sm:focus:border-gray-600"


sm__focus__border_gray_700 : Html.Attribute msg
sm__focus__border_gray_700 =
    A.class "sm:focus:border-gray-700"


sm__focus__border_gray_800 : Html.Attribute msg
sm__focus__border_gray_800 =
    A.class "sm:focus:border-gray-800"


sm__focus__border_gray_900 : Html.Attribute msg
sm__focus__border_gray_900 =
    A.class "sm:focus:border-gray-900"


sm__focus__border_red_100 : Html.Attribute msg
sm__focus__border_red_100 =
    A.class "sm:focus:border-red-100"


sm__focus__border_red_200 : Html.Attribute msg
sm__focus__border_red_200 =
    A.class "sm:focus:border-red-200"


sm__focus__border_red_300 : Html.Attribute msg
sm__focus__border_red_300 =
    A.class "sm:focus:border-red-300"


sm__focus__border_red_400 : Html.Attribute msg
sm__focus__border_red_400 =
    A.class "sm:focus:border-red-400"


sm__focus__border_red_500 : Html.Attribute msg
sm__focus__border_red_500 =
    A.class "sm:focus:border-red-500"


sm__focus__border_red_600 : Html.Attribute msg
sm__focus__border_red_600 =
    A.class "sm:focus:border-red-600"


sm__focus__border_red_700 : Html.Attribute msg
sm__focus__border_red_700 =
    A.class "sm:focus:border-red-700"


sm__focus__border_red_800 : Html.Attribute msg
sm__focus__border_red_800 =
    A.class "sm:focus:border-red-800"


sm__focus__border_red_900 : Html.Attribute msg
sm__focus__border_red_900 =
    A.class "sm:focus:border-red-900"


sm__focus__border_orange_100 : Html.Attribute msg
sm__focus__border_orange_100 =
    A.class "sm:focus:border-orange-100"


sm__focus__border_orange_200 : Html.Attribute msg
sm__focus__border_orange_200 =
    A.class "sm:focus:border-orange-200"


sm__focus__border_orange_300 : Html.Attribute msg
sm__focus__border_orange_300 =
    A.class "sm:focus:border-orange-300"


sm__focus__border_orange_400 : Html.Attribute msg
sm__focus__border_orange_400 =
    A.class "sm:focus:border-orange-400"


sm__focus__border_orange_500 : Html.Attribute msg
sm__focus__border_orange_500 =
    A.class "sm:focus:border-orange-500"


sm__focus__border_orange_600 : Html.Attribute msg
sm__focus__border_orange_600 =
    A.class "sm:focus:border-orange-600"


sm__focus__border_orange_700 : Html.Attribute msg
sm__focus__border_orange_700 =
    A.class "sm:focus:border-orange-700"


sm__focus__border_orange_800 : Html.Attribute msg
sm__focus__border_orange_800 =
    A.class "sm:focus:border-orange-800"


sm__focus__border_orange_900 : Html.Attribute msg
sm__focus__border_orange_900 =
    A.class "sm:focus:border-orange-900"


sm__focus__border_yellow_100 : Html.Attribute msg
sm__focus__border_yellow_100 =
    A.class "sm:focus:border-yellow-100"


sm__focus__border_yellow_200 : Html.Attribute msg
sm__focus__border_yellow_200 =
    A.class "sm:focus:border-yellow-200"


sm__focus__border_yellow_300 : Html.Attribute msg
sm__focus__border_yellow_300 =
    A.class "sm:focus:border-yellow-300"


sm__focus__border_yellow_400 : Html.Attribute msg
sm__focus__border_yellow_400 =
    A.class "sm:focus:border-yellow-400"


sm__focus__border_yellow_500 : Html.Attribute msg
sm__focus__border_yellow_500 =
    A.class "sm:focus:border-yellow-500"


sm__focus__border_yellow_600 : Html.Attribute msg
sm__focus__border_yellow_600 =
    A.class "sm:focus:border-yellow-600"


sm__focus__border_yellow_700 : Html.Attribute msg
sm__focus__border_yellow_700 =
    A.class "sm:focus:border-yellow-700"


sm__focus__border_yellow_800 : Html.Attribute msg
sm__focus__border_yellow_800 =
    A.class "sm:focus:border-yellow-800"


sm__focus__border_yellow_900 : Html.Attribute msg
sm__focus__border_yellow_900 =
    A.class "sm:focus:border-yellow-900"


sm__focus__border_green_100 : Html.Attribute msg
sm__focus__border_green_100 =
    A.class "sm:focus:border-green-100"


sm__focus__border_green_200 : Html.Attribute msg
sm__focus__border_green_200 =
    A.class "sm:focus:border-green-200"


sm__focus__border_green_300 : Html.Attribute msg
sm__focus__border_green_300 =
    A.class "sm:focus:border-green-300"


sm__focus__border_green_400 : Html.Attribute msg
sm__focus__border_green_400 =
    A.class "sm:focus:border-green-400"


sm__focus__border_green_500 : Html.Attribute msg
sm__focus__border_green_500 =
    A.class "sm:focus:border-green-500"


sm__focus__border_green_600 : Html.Attribute msg
sm__focus__border_green_600 =
    A.class "sm:focus:border-green-600"


sm__focus__border_green_700 : Html.Attribute msg
sm__focus__border_green_700 =
    A.class "sm:focus:border-green-700"


sm__focus__border_green_800 : Html.Attribute msg
sm__focus__border_green_800 =
    A.class "sm:focus:border-green-800"


sm__focus__border_green_900 : Html.Attribute msg
sm__focus__border_green_900 =
    A.class "sm:focus:border-green-900"


sm__focus__border_teal_100 : Html.Attribute msg
sm__focus__border_teal_100 =
    A.class "sm:focus:border-teal-100"


sm__focus__border_teal_200 : Html.Attribute msg
sm__focus__border_teal_200 =
    A.class "sm:focus:border-teal-200"


sm__focus__border_teal_300 : Html.Attribute msg
sm__focus__border_teal_300 =
    A.class "sm:focus:border-teal-300"


sm__focus__border_teal_400 : Html.Attribute msg
sm__focus__border_teal_400 =
    A.class "sm:focus:border-teal-400"


sm__focus__border_teal_500 : Html.Attribute msg
sm__focus__border_teal_500 =
    A.class "sm:focus:border-teal-500"


sm__focus__border_teal_600 : Html.Attribute msg
sm__focus__border_teal_600 =
    A.class "sm:focus:border-teal-600"


sm__focus__border_teal_700 : Html.Attribute msg
sm__focus__border_teal_700 =
    A.class "sm:focus:border-teal-700"


sm__focus__border_teal_800 : Html.Attribute msg
sm__focus__border_teal_800 =
    A.class "sm:focus:border-teal-800"


sm__focus__border_teal_900 : Html.Attribute msg
sm__focus__border_teal_900 =
    A.class "sm:focus:border-teal-900"


sm__focus__border_blue_100 : Html.Attribute msg
sm__focus__border_blue_100 =
    A.class "sm:focus:border-blue-100"


sm__focus__border_blue_200 : Html.Attribute msg
sm__focus__border_blue_200 =
    A.class "sm:focus:border-blue-200"


sm__focus__border_blue_300 : Html.Attribute msg
sm__focus__border_blue_300 =
    A.class "sm:focus:border-blue-300"


sm__focus__border_blue_400 : Html.Attribute msg
sm__focus__border_blue_400 =
    A.class "sm:focus:border-blue-400"


sm__focus__border_blue_500 : Html.Attribute msg
sm__focus__border_blue_500 =
    A.class "sm:focus:border-blue-500"


sm__focus__border_blue_600 : Html.Attribute msg
sm__focus__border_blue_600 =
    A.class "sm:focus:border-blue-600"


sm__focus__border_blue_700 : Html.Attribute msg
sm__focus__border_blue_700 =
    A.class "sm:focus:border-blue-700"


sm__focus__border_blue_800 : Html.Attribute msg
sm__focus__border_blue_800 =
    A.class "sm:focus:border-blue-800"


sm__focus__border_blue_900 : Html.Attribute msg
sm__focus__border_blue_900 =
    A.class "sm:focus:border-blue-900"


sm__focus__border_indigo_100 : Html.Attribute msg
sm__focus__border_indigo_100 =
    A.class "sm:focus:border-indigo-100"


sm__focus__border_indigo_200 : Html.Attribute msg
sm__focus__border_indigo_200 =
    A.class "sm:focus:border-indigo-200"


sm__focus__border_indigo_300 : Html.Attribute msg
sm__focus__border_indigo_300 =
    A.class "sm:focus:border-indigo-300"


sm__focus__border_indigo_400 : Html.Attribute msg
sm__focus__border_indigo_400 =
    A.class "sm:focus:border-indigo-400"


sm__focus__border_indigo_500 : Html.Attribute msg
sm__focus__border_indigo_500 =
    A.class "sm:focus:border-indigo-500"


sm__focus__border_indigo_600 : Html.Attribute msg
sm__focus__border_indigo_600 =
    A.class "sm:focus:border-indigo-600"


sm__focus__border_indigo_700 : Html.Attribute msg
sm__focus__border_indigo_700 =
    A.class "sm:focus:border-indigo-700"


sm__focus__border_indigo_800 : Html.Attribute msg
sm__focus__border_indigo_800 =
    A.class "sm:focus:border-indigo-800"


sm__focus__border_indigo_900 : Html.Attribute msg
sm__focus__border_indigo_900 =
    A.class "sm:focus:border-indigo-900"


sm__focus__border_purple_100 : Html.Attribute msg
sm__focus__border_purple_100 =
    A.class "sm:focus:border-purple-100"


sm__focus__border_purple_200 : Html.Attribute msg
sm__focus__border_purple_200 =
    A.class "sm:focus:border-purple-200"


sm__focus__border_purple_300 : Html.Attribute msg
sm__focus__border_purple_300 =
    A.class "sm:focus:border-purple-300"


sm__focus__border_purple_400 : Html.Attribute msg
sm__focus__border_purple_400 =
    A.class "sm:focus:border-purple-400"


sm__focus__border_purple_500 : Html.Attribute msg
sm__focus__border_purple_500 =
    A.class "sm:focus:border-purple-500"


sm__focus__border_purple_600 : Html.Attribute msg
sm__focus__border_purple_600 =
    A.class "sm:focus:border-purple-600"


sm__focus__border_purple_700 : Html.Attribute msg
sm__focus__border_purple_700 =
    A.class "sm:focus:border-purple-700"


sm__focus__border_purple_800 : Html.Attribute msg
sm__focus__border_purple_800 =
    A.class "sm:focus:border-purple-800"


sm__focus__border_purple_900 : Html.Attribute msg
sm__focus__border_purple_900 =
    A.class "sm:focus:border-purple-900"


sm__focus__border_pink_100 : Html.Attribute msg
sm__focus__border_pink_100 =
    A.class "sm:focus:border-pink-100"


sm__focus__border_pink_200 : Html.Attribute msg
sm__focus__border_pink_200 =
    A.class "sm:focus:border-pink-200"


sm__focus__border_pink_300 : Html.Attribute msg
sm__focus__border_pink_300 =
    A.class "sm:focus:border-pink-300"


sm__focus__border_pink_400 : Html.Attribute msg
sm__focus__border_pink_400 =
    A.class "sm:focus:border-pink-400"


sm__focus__border_pink_500 : Html.Attribute msg
sm__focus__border_pink_500 =
    A.class "sm:focus:border-pink-500"


sm__focus__border_pink_600 : Html.Attribute msg
sm__focus__border_pink_600 =
    A.class "sm:focus:border-pink-600"


sm__focus__border_pink_700 : Html.Attribute msg
sm__focus__border_pink_700 =
    A.class "sm:focus:border-pink-700"


sm__focus__border_pink_800 : Html.Attribute msg
sm__focus__border_pink_800 =
    A.class "sm:focus:border-pink-800"


sm__focus__border_pink_900 : Html.Attribute msg
sm__focus__border_pink_900 =
    A.class "sm:focus:border-pink-900"


sm__rounded_none : Html.Attribute msg
sm__rounded_none =
    A.class "sm:rounded-none"


sm__rounded_sm : Html.Attribute msg
sm__rounded_sm =
    A.class "sm:rounded-sm"


sm__rounded : Html.Attribute msg
sm__rounded =
    A.class "sm:rounded"


sm__rounded_md : Html.Attribute msg
sm__rounded_md =
    A.class "sm:rounded-md"


sm__rounded_lg : Html.Attribute msg
sm__rounded_lg =
    A.class "sm:rounded-lg"


sm__rounded_full : Html.Attribute msg
sm__rounded_full =
    A.class "sm:rounded-full"


sm__rounded_t_none : Html.Attribute msg
sm__rounded_t_none =
    A.class "sm:rounded-t-none"


sm__rounded_r_none : Html.Attribute msg
sm__rounded_r_none =
    A.class "sm:rounded-r-none"


sm__rounded_b_none : Html.Attribute msg
sm__rounded_b_none =
    A.class "sm:rounded-b-none"


sm__rounded_l_none : Html.Attribute msg
sm__rounded_l_none =
    A.class "sm:rounded-l-none"


sm__rounded_t_sm : Html.Attribute msg
sm__rounded_t_sm =
    A.class "sm:rounded-t-sm"


sm__rounded_r_sm : Html.Attribute msg
sm__rounded_r_sm =
    A.class "sm:rounded-r-sm"


sm__rounded_b_sm : Html.Attribute msg
sm__rounded_b_sm =
    A.class "sm:rounded-b-sm"


sm__rounded_l_sm : Html.Attribute msg
sm__rounded_l_sm =
    A.class "sm:rounded-l-sm"


sm__rounded_t : Html.Attribute msg
sm__rounded_t =
    A.class "sm:rounded-t"


sm__rounded_r : Html.Attribute msg
sm__rounded_r =
    A.class "sm:rounded-r"


sm__rounded_b : Html.Attribute msg
sm__rounded_b =
    A.class "sm:rounded-b"


sm__rounded_l : Html.Attribute msg
sm__rounded_l =
    A.class "sm:rounded-l"


sm__rounded_t_md : Html.Attribute msg
sm__rounded_t_md =
    A.class "sm:rounded-t-md"


sm__rounded_r_md : Html.Attribute msg
sm__rounded_r_md =
    A.class "sm:rounded-r-md"


sm__rounded_b_md : Html.Attribute msg
sm__rounded_b_md =
    A.class "sm:rounded-b-md"


sm__rounded_l_md : Html.Attribute msg
sm__rounded_l_md =
    A.class "sm:rounded-l-md"


sm__rounded_t_lg : Html.Attribute msg
sm__rounded_t_lg =
    A.class "sm:rounded-t-lg"


sm__rounded_r_lg : Html.Attribute msg
sm__rounded_r_lg =
    A.class "sm:rounded-r-lg"


sm__rounded_b_lg : Html.Attribute msg
sm__rounded_b_lg =
    A.class "sm:rounded-b-lg"


sm__rounded_l_lg : Html.Attribute msg
sm__rounded_l_lg =
    A.class "sm:rounded-l-lg"


sm__rounded_t_full : Html.Attribute msg
sm__rounded_t_full =
    A.class "sm:rounded-t-full"


sm__rounded_r_full : Html.Attribute msg
sm__rounded_r_full =
    A.class "sm:rounded-r-full"


sm__rounded_b_full : Html.Attribute msg
sm__rounded_b_full =
    A.class "sm:rounded-b-full"


sm__rounded_l_full : Html.Attribute msg
sm__rounded_l_full =
    A.class "sm:rounded-l-full"


sm__rounded_tl_none : Html.Attribute msg
sm__rounded_tl_none =
    A.class "sm:rounded-tl-none"


sm__rounded_tr_none : Html.Attribute msg
sm__rounded_tr_none =
    A.class "sm:rounded-tr-none"


sm__rounded_br_none : Html.Attribute msg
sm__rounded_br_none =
    A.class "sm:rounded-br-none"


sm__rounded_bl_none : Html.Attribute msg
sm__rounded_bl_none =
    A.class "sm:rounded-bl-none"


sm__rounded_tl_sm : Html.Attribute msg
sm__rounded_tl_sm =
    A.class "sm:rounded-tl-sm"


sm__rounded_tr_sm : Html.Attribute msg
sm__rounded_tr_sm =
    A.class "sm:rounded-tr-sm"


sm__rounded_br_sm : Html.Attribute msg
sm__rounded_br_sm =
    A.class "sm:rounded-br-sm"


sm__rounded_bl_sm : Html.Attribute msg
sm__rounded_bl_sm =
    A.class "sm:rounded-bl-sm"


sm__rounded_tl : Html.Attribute msg
sm__rounded_tl =
    A.class "sm:rounded-tl"


sm__rounded_tr : Html.Attribute msg
sm__rounded_tr =
    A.class "sm:rounded-tr"


sm__rounded_br : Html.Attribute msg
sm__rounded_br =
    A.class "sm:rounded-br"


sm__rounded_bl : Html.Attribute msg
sm__rounded_bl =
    A.class "sm:rounded-bl"


sm__rounded_tl_md : Html.Attribute msg
sm__rounded_tl_md =
    A.class "sm:rounded-tl-md"


sm__rounded_tr_md : Html.Attribute msg
sm__rounded_tr_md =
    A.class "sm:rounded-tr-md"


sm__rounded_br_md : Html.Attribute msg
sm__rounded_br_md =
    A.class "sm:rounded-br-md"


sm__rounded_bl_md : Html.Attribute msg
sm__rounded_bl_md =
    A.class "sm:rounded-bl-md"


sm__rounded_tl_lg : Html.Attribute msg
sm__rounded_tl_lg =
    A.class "sm:rounded-tl-lg"


sm__rounded_tr_lg : Html.Attribute msg
sm__rounded_tr_lg =
    A.class "sm:rounded-tr-lg"


sm__rounded_br_lg : Html.Attribute msg
sm__rounded_br_lg =
    A.class "sm:rounded-br-lg"


sm__rounded_bl_lg : Html.Attribute msg
sm__rounded_bl_lg =
    A.class "sm:rounded-bl-lg"


sm__rounded_tl_full : Html.Attribute msg
sm__rounded_tl_full =
    A.class "sm:rounded-tl-full"


sm__rounded_tr_full : Html.Attribute msg
sm__rounded_tr_full =
    A.class "sm:rounded-tr-full"


sm__rounded_br_full : Html.Attribute msg
sm__rounded_br_full =
    A.class "sm:rounded-br-full"


sm__rounded_bl_full : Html.Attribute msg
sm__rounded_bl_full =
    A.class "sm:rounded-bl-full"


sm__border_solid : Html.Attribute msg
sm__border_solid =
    A.class "sm:border-solid"


sm__border_dashed : Html.Attribute msg
sm__border_dashed =
    A.class "sm:border-dashed"


sm__border_dotted : Html.Attribute msg
sm__border_dotted =
    A.class "sm:border-dotted"


sm__border_double : Html.Attribute msg
sm__border_double =
    A.class "sm:border-double"


sm__border_none : Html.Attribute msg
sm__border_none =
    A.class "sm:border-none"


sm__border_0 : Html.Attribute msg
sm__border_0 =
    A.class "sm:border-0"


sm__border_2 : Html.Attribute msg
sm__border_2 =
    A.class "sm:border-2"


sm__border_4 : Html.Attribute msg
sm__border_4 =
    A.class "sm:border-4"


sm__border_8 : Html.Attribute msg
sm__border_8 =
    A.class "sm:border-8"


sm__border : Html.Attribute msg
sm__border =
    A.class "sm:border"


sm__border_t_0 : Html.Attribute msg
sm__border_t_0 =
    A.class "sm:border-t-0"


sm__border_r_0 : Html.Attribute msg
sm__border_r_0 =
    A.class "sm:border-r-0"


sm__border_b_0 : Html.Attribute msg
sm__border_b_0 =
    A.class "sm:border-b-0"


sm__border_l_0 : Html.Attribute msg
sm__border_l_0 =
    A.class "sm:border-l-0"


sm__border_t_2 : Html.Attribute msg
sm__border_t_2 =
    A.class "sm:border-t-2"


sm__border_r_2 : Html.Attribute msg
sm__border_r_2 =
    A.class "sm:border-r-2"


sm__border_b_2 : Html.Attribute msg
sm__border_b_2 =
    A.class "sm:border-b-2"


sm__border_l_2 : Html.Attribute msg
sm__border_l_2 =
    A.class "sm:border-l-2"


sm__border_t_4 : Html.Attribute msg
sm__border_t_4 =
    A.class "sm:border-t-4"


sm__border_r_4 : Html.Attribute msg
sm__border_r_4 =
    A.class "sm:border-r-4"


sm__border_b_4 : Html.Attribute msg
sm__border_b_4 =
    A.class "sm:border-b-4"


sm__border_l_4 : Html.Attribute msg
sm__border_l_4 =
    A.class "sm:border-l-4"


sm__border_t_8 : Html.Attribute msg
sm__border_t_8 =
    A.class "sm:border-t-8"


sm__border_r_8 : Html.Attribute msg
sm__border_r_8 =
    A.class "sm:border-r-8"


sm__border_b_8 : Html.Attribute msg
sm__border_b_8 =
    A.class "sm:border-b-8"


sm__border_l_8 : Html.Attribute msg
sm__border_l_8 =
    A.class "sm:border-l-8"


sm__border_t : Html.Attribute msg
sm__border_t =
    A.class "sm:border-t"


sm__border_r : Html.Attribute msg
sm__border_r =
    A.class "sm:border-r"


sm__border_b : Html.Attribute msg
sm__border_b =
    A.class "sm:border-b"


sm__border_l : Html.Attribute msg
sm__border_l =
    A.class "sm:border-l"


sm__box_border : Html.Attribute msg
sm__box_border =
    A.class "sm:box-border"


sm__box_content : Html.Attribute msg
sm__box_content =
    A.class "sm:box-content"


sm__cursor_auto : Html.Attribute msg
sm__cursor_auto =
    A.class "sm:cursor-auto"


sm__cursor_default : Html.Attribute msg
sm__cursor_default =
    A.class "sm:cursor-default"


sm__cursor_pointer : Html.Attribute msg
sm__cursor_pointer =
    A.class "sm:cursor-pointer"


sm__cursor_wait : Html.Attribute msg
sm__cursor_wait =
    A.class "sm:cursor-wait"


sm__cursor_text : Html.Attribute msg
sm__cursor_text =
    A.class "sm:cursor-text"


sm__cursor_move : Html.Attribute msg
sm__cursor_move =
    A.class "sm:cursor-move"


sm__cursor_not_allowed : Html.Attribute msg
sm__cursor_not_allowed =
    A.class "sm:cursor-not-allowed"


sm__block : Html.Attribute msg
sm__block =
    A.class "sm:block"


sm__inline_block : Html.Attribute msg
sm__inline_block =
    A.class "sm:inline-block"


sm__inline : Html.Attribute msg
sm__inline =
    A.class "sm:inline"


sm__flex : Html.Attribute msg
sm__flex =
    A.class "sm:flex"


sm__inline_flex : Html.Attribute msg
sm__inline_flex =
    A.class "sm:inline-flex"


sm__grid : Html.Attribute msg
sm__grid =
    A.class "sm:grid"


sm__table : Html.Attribute msg
sm__table =
    A.class "sm:table"


sm__table_caption : Html.Attribute msg
sm__table_caption =
    A.class "sm:table-caption"


sm__table_cell : Html.Attribute msg
sm__table_cell =
    A.class "sm:table-cell"


sm__table_column : Html.Attribute msg
sm__table_column =
    A.class "sm:table-column"


sm__table_column_group : Html.Attribute msg
sm__table_column_group =
    A.class "sm:table-column-group"


sm__table_footer_group : Html.Attribute msg
sm__table_footer_group =
    A.class "sm:table-footer-group"


sm__table_header_group : Html.Attribute msg
sm__table_header_group =
    A.class "sm:table-header-group"


sm__table_row_group : Html.Attribute msg
sm__table_row_group =
    A.class "sm:table-row-group"


sm__table_row : Html.Attribute msg
sm__table_row =
    A.class "sm:table-row"


sm__hidden : Html.Attribute msg
sm__hidden =
    A.class "sm:hidden"


sm__flex_row : Html.Attribute msg
sm__flex_row =
    A.class "sm:flex-row"


sm__flex_row_reverse : Html.Attribute msg
sm__flex_row_reverse =
    A.class "sm:flex-row-reverse"


sm__flex_col : Html.Attribute msg
sm__flex_col =
    A.class "sm:flex-col"


sm__flex_col_reverse : Html.Attribute msg
sm__flex_col_reverse =
    A.class "sm:flex-col-reverse"


sm__flex_wrap : Html.Attribute msg
sm__flex_wrap =
    A.class "sm:flex-wrap"


sm__flex_wrap_reverse : Html.Attribute msg
sm__flex_wrap_reverse =
    A.class "sm:flex-wrap-reverse"


sm__flex_no_wrap : Html.Attribute msg
sm__flex_no_wrap =
    A.class "sm:flex-no-wrap"


sm__items_start : Html.Attribute msg
sm__items_start =
    A.class "sm:items-start"


sm__items_end : Html.Attribute msg
sm__items_end =
    A.class "sm:items-end"


sm__items_center : Html.Attribute msg
sm__items_center =
    A.class "sm:items-center"


sm__items_baseline : Html.Attribute msg
sm__items_baseline =
    A.class "sm:items-baseline"


sm__items_stretch : Html.Attribute msg
sm__items_stretch =
    A.class "sm:items-stretch"


sm__self_auto : Html.Attribute msg
sm__self_auto =
    A.class "sm:self-auto"


sm__self_start : Html.Attribute msg
sm__self_start =
    A.class "sm:self-start"


sm__self_end : Html.Attribute msg
sm__self_end =
    A.class "sm:self-end"


sm__self_center : Html.Attribute msg
sm__self_center =
    A.class "sm:self-center"


sm__self_stretch : Html.Attribute msg
sm__self_stretch =
    A.class "sm:self-stretch"


sm__justify_start : Html.Attribute msg
sm__justify_start =
    A.class "sm:justify-start"


sm__justify_end : Html.Attribute msg
sm__justify_end =
    A.class "sm:justify-end"


sm__justify_center : Html.Attribute msg
sm__justify_center =
    A.class "sm:justify-center"


sm__justify_between : Html.Attribute msg
sm__justify_between =
    A.class "sm:justify-between"


sm__justify_around : Html.Attribute msg
sm__justify_around =
    A.class "sm:justify-around"


sm__justify_evenly : Html.Attribute msg
sm__justify_evenly =
    A.class "sm:justify-evenly"


sm__content_center : Html.Attribute msg
sm__content_center =
    A.class "sm:content-center"


sm__content_start : Html.Attribute msg
sm__content_start =
    A.class "sm:content-start"


sm__content_end : Html.Attribute msg
sm__content_end =
    A.class "sm:content-end"


sm__content_between : Html.Attribute msg
sm__content_between =
    A.class "sm:content-between"


sm__content_around : Html.Attribute msg
sm__content_around =
    A.class "sm:content-around"


sm__flex_1 : Html.Attribute msg
sm__flex_1 =
    A.class "sm:flex-1"


sm__flex_auto : Html.Attribute msg
sm__flex_auto =
    A.class "sm:flex-auto"


sm__flex_initial : Html.Attribute msg
sm__flex_initial =
    A.class "sm:flex-initial"


sm__flex_none : Html.Attribute msg
sm__flex_none =
    A.class "sm:flex-none"


sm__flex_grow_0 : Html.Attribute msg
sm__flex_grow_0 =
    A.class "sm:flex-grow-0"


sm__flex_grow : Html.Attribute msg
sm__flex_grow =
    A.class "sm:flex-grow"


sm__flex_shrink_0 : Html.Attribute msg
sm__flex_shrink_0 =
    A.class "sm:flex-shrink-0"


sm__flex_shrink : Html.Attribute msg
sm__flex_shrink =
    A.class "sm:flex-shrink"


sm__order_1 : Html.Attribute msg
sm__order_1 =
    A.class "sm:order-1"


sm__order_2 : Html.Attribute msg
sm__order_2 =
    A.class "sm:order-2"


sm__order_3 : Html.Attribute msg
sm__order_3 =
    A.class "sm:order-3"


sm__order_4 : Html.Attribute msg
sm__order_4 =
    A.class "sm:order-4"


sm__order_5 : Html.Attribute msg
sm__order_5 =
    A.class "sm:order-5"


sm__order_6 : Html.Attribute msg
sm__order_6 =
    A.class "sm:order-6"


sm__order_7 : Html.Attribute msg
sm__order_7 =
    A.class "sm:order-7"


sm__order_8 : Html.Attribute msg
sm__order_8 =
    A.class "sm:order-8"


sm__order_9 : Html.Attribute msg
sm__order_9 =
    A.class "sm:order-9"


sm__order_10 : Html.Attribute msg
sm__order_10 =
    A.class "sm:order-10"


sm__order_11 : Html.Attribute msg
sm__order_11 =
    A.class "sm:order-11"


sm__order_12 : Html.Attribute msg
sm__order_12 =
    A.class "sm:order-12"


sm__order_first : Html.Attribute msg
sm__order_first =
    A.class "sm:order-first"


sm__order_last : Html.Attribute msg
sm__order_last =
    A.class "sm:order-last"


sm__order_none : Html.Attribute msg
sm__order_none =
    A.class "sm:order-none"


sm__float_right : Html.Attribute msg
sm__float_right =
    A.class "sm:float-right"


sm__float_left : Html.Attribute msg
sm__float_left =
    A.class "sm:float-left"


sm__float_none : Html.Attribute msg
sm__float_none =
    A.class "sm:float-none"


sm__clearfix__after : Html.Attribute msg
sm__clearfix__after =
    A.class "sm:clearfix:after"


sm__clear_left : Html.Attribute msg
sm__clear_left =
    A.class "sm:clear-left"


sm__clear_right : Html.Attribute msg
sm__clear_right =
    A.class "sm:clear-right"


sm__clear_both : Html.Attribute msg
sm__clear_both =
    A.class "sm:clear-both"


sm__font_sans : Html.Attribute msg
sm__font_sans =
    A.class "sm:font-sans"


sm__font_serif : Html.Attribute msg
sm__font_serif =
    A.class "sm:font-serif"


sm__font_mono : Html.Attribute msg
sm__font_mono =
    A.class "sm:font-mono"


sm__font_hairline : Html.Attribute msg
sm__font_hairline =
    A.class "sm:font-hairline"


sm__font_thin : Html.Attribute msg
sm__font_thin =
    A.class "sm:font-thin"


sm__font_light : Html.Attribute msg
sm__font_light =
    A.class "sm:font-light"


sm__font_normal : Html.Attribute msg
sm__font_normal =
    A.class "sm:font-normal"


sm__font_medium : Html.Attribute msg
sm__font_medium =
    A.class "sm:font-medium"


sm__font_semibold : Html.Attribute msg
sm__font_semibold =
    A.class "sm:font-semibold"


sm__font_bold : Html.Attribute msg
sm__font_bold =
    A.class "sm:font-bold"


sm__font_extrabold : Html.Attribute msg
sm__font_extrabold =
    A.class "sm:font-extrabold"


sm__font_black : Html.Attribute msg
sm__font_black =
    A.class "sm:font-black"


sm__hover__font_hairline : Html.Attribute msg
sm__hover__font_hairline =
    A.class "sm:hover:font-hairline"


sm__hover__font_thin : Html.Attribute msg
sm__hover__font_thin =
    A.class "sm:hover:font-thin"


sm__hover__font_light : Html.Attribute msg
sm__hover__font_light =
    A.class "sm:hover:font-light"


sm__hover__font_normal : Html.Attribute msg
sm__hover__font_normal =
    A.class "sm:hover:font-normal"


sm__hover__font_medium : Html.Attribute msg
sm__hover__font_medium =
    A.class "sm:hover:font-medium"


sm__hover__font_semibold : Html.Attribute msg
sm__hover__font_semibold =
    A.class "sm:hover:font-semibold"


sm__hover__font_bold : Html.Attribute msg
sm__hover__font_bold =
    A.class "sm:hover:font-bold"


sm__hover__font_extrabold : Html.Attribute msg
sm__hover__font_extrabold =
    A.class "sm:hover:font-extrabold"


sm__hover__font_black : Html.Attribute msg
sm__hover__font_black =
    A.class "sm:hover:font-black"


sm__focus__font_hairline : Html.Attribute msg
sm__focus__font_hairline =
    A.class "sm:focus:font-hairline"


sm__focus__font_thin : Html.Attribute msg
sm__focus__font_thin =
    A.class "sm:focus:font-thin"


sm__focus__font_light : Html.Attribute msg
sm__focus__font_light =
    A.class "sm:focus:font-light"


sm__focus__font_normal : Html.Attribute msg
sm__focus__font_normal =
    A.class "sm:focus:font-normal"


sm__focus__font_medium : Html.Attribute msg
sm__focus__font_medium =
    A.class "sm:focus:font-medium"


sm__focus__font_semibold : Html.Attribute msg
sm__focus__font_semibold =
    A.class "sm:focus:font-semibold"


sm__focus__font_bold : Html.Attribute msg
sm__focus__font_bold =
    A.class "sm:focus:font-bold"


sm__focus__font_extrabold : Html.Attribute msg
sm__focus__font_extrabold =
    A.class "sm:focus:font-extrabold"


sm__focus__font_black : Html.Attribute msg
sm__focus__font_black =
    A.class "sm:focus:font-black"


sm__h_0 : Html.Attribute msg
sm__h_0 =
    A.class "sm:h-0"


sm__h_1 : Html.Attribute msg
sm__h_1 =
    A.class "sm:h-1"


sm__h_2 : Html.Attribute msg
sm__h_2 =
    A.class "sm:h-2"


sm__h_3 : Html.Attribute msg
sm__h_3 =
    A.class "sm:h-3"


sm__h_4 : Html.Attribute msg
sm__h_4 =
    A.class "sm:h-4"


sm__h_5 : Html.Attribute msg
sm__h_5 =
    A.class "sm:h-5"


sm__h_6 : Html.Attribute msg
sm__h_6 =
    A.class "sm:h-6"


sm__h_8 : Html.Attribute msg
sm__h_8 =
    A.class "sm:h-8"


sm__h_10 : Html.Attribute msg
sm__h_10 =
    A.class "sm:h-10"


sm__h_12 : Html.Attribute msg
sm__h_12 =
    A.class "sm:h-12"


sm__h_16 : Html.Attribute msg
sm__h_16 =
    A.class "sm:h-16"


sm__h_20 : Html.Attribute msg
sm__h_20 =
    A.class "sm:h-20"


sm__h_24 : Html.Attribute msg
sm__h_24 =
    A.class "sm:h-24"


sm__h_32 : Html.Attribute msg
sm__h_32 =
    A.class "sm:h-32"


sm__h_40 : Html.Attribute msg
sm__h_40 =
    A.class "sm:h-40"


sm__h_48 : Html.Attribute msg
sm__h_48 =
    A.class "sm:h-48"


sm__h_56 : Html.Attribute msg
sm__h_56 =
    A.class "sm:h-56"


sm__h_64 : Html.Attribute msg
sm__h_64 =
    A.class "sm:h-64"


sm__h_auto : Html.Attribute msg
sm__h_auto =
    A.class "sm:h-auto"


sm__h_px : Html.Attribute msg
sm__h_px =
    A.class "sm:h-px"


sm__h_full : Html.Attribute msg
sm__h_full =
    A.class "sm:h-full"


sm__h_screen : Html.Attribute msg
sm__h_screen =
    A.class "sm:h-screen"


sm__leading_3 : Html.Attribute msg
sm__leading_3 =
    A.class "sm:leading-3"


sm__leading_4 : Html.Attribute msg
sm__leading_4 =
    A.class "sm:leading-4"


sm__leading_5 : Html.Attribute msg
sm__leading_5 =
    A.class "sm:leading-5"


sm__leading_6 : Html.Attribute msg
sm__leading_6 =
    A.class "sm:leading-6"


sm__leading_7 : Html.Attribute msg
sm__leading_7 =
    A.class "sm:leading-7"


sm__leading_8 : Html.Attribute msg
sm__leading_8 =
    A.class "sm:leading-8"


sm__leading_9 : Html.Attribute msg
sm__leading_9 =
    A.class "sm:leading-9"


sm__leading_10 : Html.Attribute msg
sm__leading_10 =
    A.class "sm:leading-10"


sm__leading_none : Html.Attribute msg
sm__leading_none =
    A.class "sm:leading-none"


sm__leading_tight : Html.Attribute msg
sm__leading_tight =
    A.class "sm:leading-tight"


sm__leading_snug : Html.Attribute msg
sm__leading_snug =
    A.class "sm:leading-snug"


sm__leading_normal : Html.Attribute msg
sm__leading_normal =
    A.class "sm:leading-normal"


sm__leading_relaxed : Html.Attribute msg
sm__leading_relaxed =
    A.class "sm:leading-relaxed"


sm__leading_loose : Html.Attribute msg
sm__leading_loose =
    A.class "sm:leading-loose"


sm__list_inside : Html.Attribute msg
sm__list_inside =
    A.class "sm:list-inside"


sm__list_outside : Html.Attribute msg
sm__list_outside =
    A.class "sm:list-outside"


sm__list_none : Html.Attribute msg
sm__list_none =
    A.class "sm:list-none"


sm__list_disc : Html.Attribute msg
sm__list_disc =
    A.class "sm:list-disc"


sm__list_decimal : Html.Attribute msg
sm__list_decimal =
    A.class "sm:list-decimal"


sm__m_0 : Html.Attribute msg
sm__m_0 =
    A.class "sm:m-0"


sm__m_1 : Html.Attribute msg
sm__m_1 =
    A.class "sm:m-1"


sm__m_2 : Html.Attribute msg
sm__m_2 =
    A.class "sm:m-2"


sm__m_3 : Html.Attribute msg
sm__m_3 =
    A.class "sm:m-3"


sm__m_4 : Html.Attribute msg
sm__m_4 =
    A.class "sm:m-4"


sm__m_5 : Html.Attribute msg
sm__m_5 =
    A.class "sm:m-5"


sm__m_6 : Html.Attribute msg
sm__m_6 =
    A.class "sm:m-6"


sm__m_8 : Html.Attribute msg
sm__m_8 =
    A.class "sm:m-8"


sm__m_10 : Html.Attribute msg
sm__m_10 =
    A.class "sm:m-10"


sm__m_12 : Html.Attribute msg
sm__m_12 =
    A.class "sm:m-12"


sm__m_16 : Html.Attribute msg
sm__m_16 =
    A.class "sm:m-16"


sm__m_20 : Html.Attribute msg
sm__m_20 =
    A.class "sm:m-20"


sm__m_24 : Html.Attribute msg
sm__m_24 =
    A.class "sm:m-24"


sm__m_32 : Html.Attribute msg
sm__m_32 =
    A.class "sm:m-32"


sm__m_40 : Html.Attribute msg
sm__m_40 =
    A.class "sm:m-40"


sm__m_48 : Html.Attribute msg
sm__m_48 =
    A.class "sm:m-48"


sm__m_56 : Html.Attribute msg
sm__m_56 =
    A.class "sm:m-56"


sm__m_64 : Html.Attribute msg
sm__m_64 =
    A.class "sm:m-64"


sm__m_auto : Html.Attribute msg
sm__m_auto =
    A.class "sm:m-auto"


sm__m_px : Html.Attribute msg
sm__m_px =
    A.class "sm:m-px"


sm__neg_m_1 : Html.Attribute msg
sm__neg_m_1 =
    A.class "sm:-m-1"


sm__neg_m_2 : Html.Attribute msg
sm__neg_m_2 =
    A.class "sm:-m-2"


sm__neg_m_3 : Html.Attribute msg
sm__neg_m_3 =
    A.class "sm:-m-3"


sm__neg_m_4 : Html.Attribute msg
sm__neg_m_4 =
    A.class "sm:-m-4"


sm__neg_m_5 : Html.Attribute msg
sm__neg_m_5 =
    A.class "sm:-m-5"


sm__neg_m_6 : Html.Attribute msg
sm__neg_m_6 =
    A.class "sm:-m-6"


sm__neg_m_8 : Html.Attribute msg
sm__neg_m_8 =
    A.class "sm:-m-8"


sm__neg_m_10 : Html.Attribute msg
sm__neg_m_10 =
    A.class "sm:-m-10"


sm__neg_m_12 : Html.Attribute msg
sm__neg_m_12 =
    A.class "sm:-m-12"


sm__neg_m_16 : Html.Attribute msg
sm__neg_m_16 =
    A.class "sm:-m-16"


sm__neg_m_20 : Html.Attribute msg
sm__neg_m_20 =
    A.class "sm:-m-20"


sm__neg_m_24 : Html.Attribute msg
sm__neg_m_24 =
    A.class "sm:-m-24"


sm__neg_m_32 : Html.Attribute msg
sm__neg_m_32 =
    A.class "sm:-m-32"


sm__neg_m_40 : Html.Attribute msg
sm__neg_m_40 =
    A.class "sm:-m-40"


sm__neg_m_48 : Html.Attribute msg
sm__neg_m_48 =
    A.class "sm:-m-48"


sm__neg_m_56 : Html.Attribute msg
sm__neg_m_56 =
    A.class "sm:-m-56"


sm__neg_m_64 : Html.Attribute msg
sm__neg_m_64 =
    A.class "sm:-m-64"


sm__neg_m_px : Html.Attribute msg
sm__neg_m_px =
    A.class "sm:-m-px"


sm__my_0 : Html.Attribute msg
sm__my_0 =
    A.class "sm:my-0"


sm__mx_0 : Html.Attribute msg
sm__mx_0 =
    A.class "sm:mx-0"


sm__my_1 : Html.Attribute msg
sm__my_1 =
    A.class "sm:my-1"


sm__mx_1 : Html.Attribute msg
sm__mx_1 =
    A.class "sm:mx-1"


sm__my_2 : Html.Attribute msg
sm__my_2 =
    A.class "sm:my-2"


sm__mx_2 : Html.Attribute msg
sm__mx_2 =
    A.class "sm:mx-2"


sm__my_3 : Html.Attribute msg
sm__my_3 =
    A.class "sm:my-3"


sm__mx_3 : Html.Attribute msg
sm__mx_3 =
    A.class "sm:mx-3"


sm__my_4 : Html.Attribute msg
sm__my_4 =
    A.class "sm:my-4"


sm__mx_4 : Html.Attribute msg
sm__mx_4 =
    A.class "sm:mx-4"


sm__my_5 : Html.Attribute msg
sm__my_5 =
    A.class "sm:my-5"


sm__mx_5 : Html.Attribute msg
sm__mx_5 =
    A.class "sm:mx-5"


sm__my_6 : Html.Attribute msg
sm__my_6 =
    A.class "sm:my-6"


sm__mx_6 : Html.Attribute msg
sm__mx_6 =
    A.class "sm:mx-6"


sm__my_8 : Html.Attribute msg
sm__my_8 =
    A.class "sm:my-8"


sm__mx_8 : Html.Attribute msg
sm__mx_8 =
    A.class "sm:mx-8"


sm__my_10 : Html.Attribute msg
sm__my_10 =
    A.class "sm:my-10"


sm__mx_10 : Html.Attribute msg
sm__mx_10 =
    A.class "sm:mx-10"


sm__my_12 : Html.Attribute msg
sm__my_12 =
    A.class "sm:my-12"


sm__mx_12 : Html.Attribute msg
sm__mx_12 =
    A.class "sm:mx-12"


sm__my_16 : Html.Attribute msg
sm__my_16 =
    A.class "sm:my-16"


sm__mx_16 : Html.Attribute msg
sm__mx_16 =
    A.class "sm:mx-16"


sm__my_20 : Html.Attribute msg
sm__my_20 =
    A.class "sm:my-20"


sm__mx_20 : Html.Attribute msg
sm__mx_20 =
    A.class "sm:mx-20"


sm__my_24 : Html.Attribute msg
sm__my_24 =
    A.class "sm:my-24"


sm__mx_24 : Html.Attribute msg
sm__mx_24 =
    A.class "sm:mx-24"


sm__my_32 : Html.Attribute msg
sm__my_32 =
    A.class "sm:my-32"


sm__mx_32 : Html.Attribute msg
sm__mx_32 =
    A.class "sm:mx-32"


sm__my_40 : Html.Attribute msg
sm__my_40 =
    A.class "sm:my-40"


sm__mx_40 : Html.Attribute msg
sm__mx_40 =
    A.class "sm:mx-40"


sm__my_48 : Html.Attribute msg
sm__my_48 =
    A.class "sm:my-48"


sm__mx_48 : Html.Attribute msg
sm__mx_48 =
    A.class "sm:mx-48"


sm__my_56 : Html.Attribute msg
sm__my_56 =
    A.class "sm:my-56"


sm__mx_56 : Html.Attribute msg
sm__mx_56 =
    A.class "sm:mx-56"


sm__my_64 : Html.Attribute msg
sm__my_64 =
    A.class "sm:my-64"


sm__mx_64 : Html.Attribute msg
sm__mx_64 =
    A.class "sm:mx-64"


sm__my_auto : Html.Attribute msg
sm__my_auto =
    A.class "sm:my-auto"


sm__mx_auto : Html.Attribute msg
sm__mx_auto =
    A.class "sm:mx-auto"


sm__my_px : Html.Attribute msg
sm__my_px =
    A.class "sm:my-px"


sm__mx_px : Html.Attribute msg
sm__mx_px =
    A.class "sm:mx-px"


sm__neg_my_1 : Html.Attribute msg
sm__neg_my_1 =
    A.class "sm:-my-1"


sm__neg_mx_1 : Html.Attribute msg
sm__neg_mx_1 =
    A.class "sm:-mx-1"


sm__neg_my_2 : Html.Attribute msg
sm__neg_my_2 =
    A.class "sm:-my-2"


sm__neg_mx_2 : Html.Attribute msg
sm__neg_mx_2 =
    A.class "sm:-mx-2"


sm__neg_my_3 : Html.Attribute msg
sm__neg_my_3 =
    A.class "sm:-my-3"


sm__neg_mx_3 : Html.Attribute msg
sm__neg_mx_3 =
    A.class "sm:-mx-3"


sm__neg_my_4 : Html.Attribute msg
sm__neg_my_4 =
    A.class "sm:-my-4"


sm__neg_mx_4 : Html.Attribute msg
sm__neg_mx_4 =
    A.class "sm:-mx-4"


sm__neg_my_5 : Html.Attribute msg
sm__neg_my_5 =
    A.class "sm:-my-5"


sm__neg_mx_5 : Html.Attribute msg
sm__neg_mx_5 =
    A.class "sm:-mx-5"


sm__neg_my_6 : Html.Attribute msg
sm__neg_my_6 =
    A.class "sm:-my-6"


sm__neg_mx_6 : Html.Attribute msg
sm__neg_mx_6 =
    A.class "sm:-mx-6"


sm__neg_my_8 : Html.Attribute msg
sm__neg_my_8 =
    A.class "sm:-my-8"


sm__neg_mx_8 : Html.Attribute msg
sm__neg_mx_8 =
    A.class "sm:-mx-8"


sm__neg_my_10 : Html.Attribute msg
sm__neg_my_10 =
    A.class "sm:-my-10"


sm__neg_mx_10 : Html.Attribute msg
sm__neg_mx_10 =
    A.class "sm:-mx-10"


sm__neg_my_12 : Html.Attribute msg
sm__neg_my_12 =
    A.class "sm:-my-12"


sm__neg_mx_12 : Html.Attribute msg
sm__neg_mx_12 =
    A.class "sm:-mx-12"


sm__neg_my_16 : Html.Attribute msg
sm__neg_my_16 =
    A.class "sm:-my-16"


sm__neg_mx_16 : Html.Attribute msg
sm__neg_mx_16 =
    A.class "sm:-mx-16"


sm__neg_my_20 : Html.Attribute msg
sm__neg_my_20 =
    A.class "sm:-my-20"


sm__neg_mx_20 : Html.Attribute msg
sm__neg_mx_20 =
    A.class "sm:-mx-20"


sm__neg_my_24 : Html.Attribute msg
sm__neg_my_24 =
    A.class "sm:-my-24"


sm__neg_mx_24 : Html.Attribute msg
sm__neg_mx_24 =
    A.class "sm:-mx-24"


sm__neg_my_32 : Html.Attribute msg
sm__neg_my_32 =
    A.class "sm:-my-32"


sm__neg_mx_32 : Html.Attribute msg
sm__neg_mx_32 =
    A.class "sm:-mx-32"


sm__neg_my_40 : Html.Attribute msg
sm__neg_my_40 =
    A.class "sm:-my-40"


sm__neg_mx_40 : Html.Attribute msg
sm__neg_mx_40 =
    A.class "sm:-mx-40"


sm__neg_my_48 : Html.Attribute msg
sm__neg_my_48 =
    A.class "sm:-my-48"


sm__neg_mx_48 : Html.Attribute msg
sm__neg_mx_48 =
    A.class "sm:-mx-48"


sm__neg_my_56 : Html.Attribute msg
sm__neg_my_56 =
    A.class "sm:-my-56"


sm__neg_mx_56 : Html.Attribute msg
sm__neg_mx_56 =
    A.class "sm:-mx-56"


sm__neg_my_64 : Html.Attribute msg
sm__neg_my_64 =
    A.class "sm:-my-64"


sm__neg_mx_64 : Html.Attribute msg
sm__neg_mx_64 =
    A.class "sm:-mx-64"


sm__neg_my_px : Html.Attribute msg
sm__neg_my_px =
    A.class "sm:-my-px"


sm__neg_mx_px : Html.Attribute msg
sm__neg_mx_px =
    A.class "sm:-mx-px"


sm__mt_0 : Html.Attribute msg
sm__mt_0 =
    A.class "sm:mt-0"


sm__mr_0 : Html.Attribute msg
sm__mr_0 =
    A.class "sm:mr-0"


sm__mb_0 : Html.Attribute msg
sm__mb_0 =
    A.class "sm:mb-0"


sm__ml_0 : Html.Attribute msg
sm__ml_0 =
    A.class "sm:ml-0"


sm__mt_1 : Html.Attribute msg
sm__mt_1 =
    A.class "sm:mt-1"


sm__mr_1 : Html.Attribute msg
sm__mr_1 =
    A.class "sm:mr-1"


sm__mb_1 : Html.Attribute msg
sm__mb_1 =
    A.class "sm:mb-1"


sm__ml_1 : Html.Attribute msg
sm__ml_1 =
    A.class "sm:ml-1"


sm__mt_2 : Html.Attribute msg
sm__mt_2 =
    A.class "sm:mt-2"


sm__mr_2 : Html.Attribute msg
sm__mr_2 =
    A.class "sm:mr-2"


sm__mb_2 : Html.Attribute msg
sm__mb_2 =
    A.class "sm:mb-2"


sm__ml_2 : Html.Attribute msg
sm__ml_2 =
    A.class "sm:ml-2"


sm__mt_3 : Html.Attribute msg
sm__mt_3 =
    A.class "sm:mt-3"


sm__mr_3 : Html.Attribute msg
sm__mr_3 =
    A.class "sm:mr-3"


sm__mb_3 : Html.Attribute msg
sm__mb_3 =
    A.class "sm:mb-3"


sm__ml_3 : Html.Attribute msg
sm__ml_3 =
    A.class "sm:ml-3"


sm__mt_4 : Html.Attribute msg
sm__mt_4 =
    A.class "sm:mt-4"


sm__mr_4 : Html.Attribute msg
sm__mr_4 =
    A.class "sm:mr-4"


sm__mb_4 : Html.Attribute msg
sm__mb_4 =
    A.class "sm:mb-4"


sm__ml_4 : Html.Attribute msg
sm__ml_4 =
    A.class "sm:ml-4"


sm__mt_5 : Html.Attribute msg
sm__mt_5 =
    A.class "sm:mt-5"


sm__mr_5 : Html.Attribute msg
sm__mr_5 =
    A.class "sm:mr-5"


sm__mb_5 : Html.Attribute msg
sm__mb_5 =
    A.class "sm:mb-5"


sm__ml_5 : Html.Attribute msg
sm__ml_5 =
    A.class "sm:ml-5"


sm__mt_6 : Html.Attribute msg
sm__mt_6 =
    A.class "sm:mt-6"


sm__mr_6 : Html.Attribute msg
sm__mr_6 =
    A.class "sm:mr-6"


sm__mb_6 : Html.Attribute msg
sm__mb_6 =
    A.class "sm:mb-6"


sm__ml_6 : Html.Attribute msg
sm__ml_6 =
    A.class "sm:ml-6"


sm__mt_8 : Html.Attribute msg
sm__mt_8 =
    A.class "sm:mt-8"


sm__mr_8 : Html.Attribute msg
sm__mr_8 =
    A.class "sm:mr-8"


sm__mb_8 : Html.Attribute msg
sm__mb_8 =
    A.class "sm:mb-8"


sm__ml_8 : Html.Attribute msg
sm__ml_8 =
    A.class "sm:ml-8"


sm__mt_10 : Html.Attribute msg
sm__mt_10 =
    A.class "sm:mt-10"


sm__mr_10 : Html.Attribute msg
sm__mr_10 =
    A.class "sm:mr-10"


sm__mb_10 : Html.Attribute msg
sm__mb_10 =
    A.class "sm:mb-10"


sm__ml_10 : Html.Attribute msg
sm__ml_10 =
    A.class "sm:ml-10"


sm__mt_12 : Html.Attribute msg
sm__mt_12 =
    A.class "sm:mt-12"


sm__mr_12 : Html.Attribute msg
sm__mr_12 =
    A.class "sm:mr-12"


sm__mb_12 : Html.Attribute msg
sm__mb_12 =
    A.class "sm:mb-12"


sm__ml_12 : Html.Attribute msg
sm__ml_12 =
    A.class "sm:ml-12"


sm__mt_16 : Html.Attribute msg
sm__mt_16 =
    A.class "sm:mt-16"


sm__mr_16 : Html.Attribute msg
sm__mr_16 =
    A.class "sm:mr-16"


sm__mb_16 : Html.Attribute msg
sm__mb_16 =
    A.class "sm:mb-16"


sm__ml_16 : Html.Attribute msg
sm__ml_16 =
    A.class "sm:ml-16"


sm__mt_20 : Html.Attribute msg
sm__mt_20 =
    A.class "sm:mt-20"


sm__mr_20 : Html.Attribute msg
sm__mr_20 =
    A.class "sm:mr-20"


sm__mb_20 : Html.Attribute msg
sm__mb_20 =
    A.class "sm:mb-20"


sm__ml_20 : Html.Attribute msg
sm__ml_20 =
    A.class "sm:ml-20"


sm__mt_24 : Html.Attribute msg
sm__mt_24 =
    A.class "sm:mt-24"


sm__mr_24 : Html.Attribute msg
sm__mr_24 =
    A.class "sm:mr-24"


sm__mb_24 : Html.Attribute msg
sm__mb_24 =
    A.class "sm:mb-24"


sm__ml_24 : Html.Attribute msg
sm__ml_24 =
    A.class "sm:ml-24"


sm__mt_32 : Html.Attribute msg
sm__mt_32 =
    A.class "sm:mt-32"


sm__mr_32 : Html.Attribute msg
sm__mr_32 =
    A.class "sm:mr-32"


sm__mb_32 : Html.Attribute msg
sm__mb_32 =
    A.class "sm:mb-32"


sm__ml_32 : Html.Attribute msg
sm__ml_32 =
    A.class "sm:ml-32"


sm__mt_40 : Html.Attribute msg
sm__mt_40 =
    A.class "sm:mt-40"


sm__mr_40 : Html.Attribute msg
sm__mr_40 =
    A.class "sm:mr-40"


sm__mb_40 : Html.Attribute msg
sm__mb_40 =
    A.class "sm:mb-40"


sm__ml_40 : Html.Attribute msg
sm__ml_40 =
    A.class "sm:ml-40"


sm__mt_48 : Html.Attribute msg
sm__mt_48 =
    A.class "sm:mt-48"


sm__mr_48 : Html.Attribute msg
sm__mr_48 =
    A.class "sm:mr-48"


sm__mb_48 : Html.Attribute msg
sm__mb_48 =
    A.class "sm:mb-48"


sm__ml_48 : Html.Attribute msg
sm__ml_48 =
    A.class "sm:ml-48"


sm__mt_56 : Html.Attribute msg
sm__mt_56 =
    A.class "sm:mt-56"


sm__mr_56 : Html.Attribute msg
sm__mr_56 =
    A.class "sm:mr-56"


sm__mb_56 : Html.Attribute msg
sm__mb_56 =
    A.class "sm:mb-56"


sm__ml_56 : Html.Attribute msg
sm__ml_56 =
    A.class "sm:ml-56"


sm__mt_64 : Html.Attribute msg
sm__mt_64 =
    A.class "sm:mt-64"


sm__mr_64 : Html.Attribute msg
sm__mr_64 =
    A.class "sm:mr-64"


sm__mb_64 : Html.Attribute msg
sm__mb_64 =
    A.class "sm:mb-64"


sm__ml_64 : Html.Attribute msg
sm__ml_64 =
    A.class "sm:ml-64"


sm__mt_auto : Html.Attribute msg
sm__mt_auto =
    A.class "sm:mt-auto"


sm__mr_auto : Html.Attribute msg
sm__mr_auto =
    A.class "sm:mr-auto"


sm__mb_auto : Html.Attribute msg
sm__mb_auto =
    A.class "sm:mb-auto"


sm__ml_auto : Html.Attribute msg
sm__ml_auto =
    A.class "sm:ml-auto"


sm__mt_px : Html.Attribute msg
sm__mt_px =
    A.class "sm:mt-px"


sm__mr_px : Html.Attribute msg
sm__mr_px =
    A.class "sm:mr-px"


sm__mb_px : Html.Attribute msg
sm__mb_px =
    A.class "sm:mb-px"


sm__ml_px : Html.Attribute msg
sm__ml_px =
    A.class "sm:ml-px"


sm__neg_mt_1 : Html.Attribute msg
sm__neg_mt_1 =
    A.class "sm:-mt-1"


sm__neg_mr_1 : Html.Attribute msg
sm__neg_mr_1 =
    A.class "sm:-mr-1"


sm__neg_mb_1 : Html.Attribute msg
sm__neg_mb_1 =
    A.class "sm:-mb-1"


sm__neg_ml_1 : Html.Attribute msg
sm__neg_ml_1 =
    A.class "sm:-ml-1"


sm__neg_mt_2 : Html.Attribute msg
sm__neg_mt_2 =
    A.class "sm:-mt-2"


sm__neg_mr_2 : Html.Attribute msg
sm__neg_mr_2 =
    A.class "sm:-mr-2"


sm__neg_mb_2 : Html.Attribute msg
sm__neg_mb_2 =
    A.class "sm:-mb-2"


sm__neg_ml_2 : Html.Attribute msg
sm__neg_ml_2 =
    A.class "sm:-ml-2"


sm__neg_mt_3 : Html.Attribute msg
sm__neg_mt_3 =
    A.class "sm:-mt-3"


sm__neg_mr_3 : Html.Attribute msg
sm__neg_mr_3 =
    A.class "sm:-mr-3"


sm__neg_mb_3 : Html.Attribute msg
sm__neg_mb_3 =
    A.class "sm:-mb-3"


sm__neg_ml_3 : Html.Attribute msg
sm__neg_ml_3 =
    A.class "sm:-ml-3"


sm__neg_mt_4 : Html.Attribute msg
sm__neg_mt_4 =
    A.class "sm:-mt-4"


sm__neg_mr_4 : Html.Attribute msg
sm__neg_mr_4 =
    A.class "sm:-mr-4"


sm__neg_mb_4 : Html.Attribute msg
sm__neg_mb_4 =
    A.class "sm:-mb-4"


sm__neg_ml_4 : Html.Attribute msg
sm__neg_ml_4 =
    A.class "sm:-ml-4"


sm__neg_mt_5 : Html.Attribute msg
sm__neg_mt_5 =
    A.class "sm:-mt-5"


sm__neg_mr_5 : Html.Attribute msg
sm__neg_mr_5 =
    A.class "sm:-mr-5"


sm__neg_mb_5 : Html.Attribute msg
sm__neg_mb_5 =
    A.class "sm:-mb-5"


sm__neg_ml_5 : Html.Attribute msg
sm__neg_ml_5 =
    A.class "sm:-ml-5"


sm__neg_mt_6 : Html.Attribute msg
sm__neg_mt_6 =
    A.class "sm:-mt-6"


sm__neg_mr_6 : Html.Attribute msg
sm__neg_mr_6 =
    A.class "sm:-mr-6"


sm__neg_mb_6 : Html.Attribute msg
sm__neg_mb_6 =
    A.class "sm:-mb-6"


sm__neg_ml_6 : Html.Attribute msg
sm__neg_ml_6 =
    A.class "sm:-ml-6"


sm__neg_mt_8 : Html.Attribute msg
sm__neg_mt_8 =
    A.class "sm:-mt-8"


sm__neg_mr_8 : Html.Attribute msg
sm__neg_mr_8 =
    A.class "sm:-mr-8"


sm__neg_mb_8 : Html.Attribute msg
sm__neg_mb_8 =
    A.class "sm:-mb-8"


sm__neg_ml_8 : Html.Attribute msg
sm__neg_ml_8 =
    A.class "sm:-ml-8"


sm__neg_mt_10 : Html.Attribute msg
sm__neg_mt_10 =
    A.class "sm:-mt-10"


sm__neg_mr_10 : Html.Attribute msg
sm__neg_mr_10 =
    A.class "sm:-mr-10"


sm__neg_mb_10 : Html.Attribute msg
sm__neg_mb_10 =
    A.class "sm:-mb-10"


sm__neg_ml_10 : Html.Attribute msg
sm__neg_ml_10 =
    A.class "sm:-ml-10"


sm__neg_mt_12 : Html.Attribute msg
sm__neg_mt_12 =
    A.class "sm:-mt-12"


sm__neg_mr_12 : Html.Attribute msg
sm__neg_mr_12 =
    A.class "sm:-mr-12"


sm__neg_mb_12 : Html.Attribute msg
sm__neg_mb_12 =
    A.class "sm:-mb-12"


sm__neg_ml_12 : Html.Attribute msg
sm__neg_ml_12 =
    A.class "sm:-ml-12"


sm__neg_mt_16 : Html.Attribute msg
sm__neg_mt_16 =
    A.class "sm:-mt-16"


sm__neg_mr_16 : Html.Attribute msg
sm__neg_mr_16 =
    A.class "sm:-mr-16"


sm__neg_mb_16 : Html.Attribute msg
sm__neg_mb_16 =
    A.class "sm:-mb-16"


sm__neg_ml_16 : Html.Attribute msg
sm__neg_ml_16 =
    A.class "sm:-ml-16"


sm__neg_mt_20 : Html.Attribute msg
sm__neg_mt_20 =
    A.class "sm:-mt-20"


sm__neg_mr_20 : Html.Attribute msg
sm__neg_mr_20 =
    A.class "sm:-mr-20"


sm__neg_mb_20 : Html.Attribute msg
sm__neg_mb_20 =
    A.class "sm:-mb-20"


sm__neg_ml_20 : Html.Attribute msg
sm__neg_ml_20 =
    A.class "sm:-ml-20"


sm__neg_mt_24 : Html.Attribute msg
sm__neg_mt_24 =
    A.class "sm:-mt-24"


sm__neg_mr_24 : Html.Attribute msg
sm__neg_mr_24 =
    A.class "sm:-mr-24"


sm__neg_mb_24 : Html.Attribute msg
sm__neg_mb_24 =
    A.class "sm:-mb-24"


sm__neg_ml_24 : Html.Attribute msg
sm__neg_ml_24 =
    A.class "sm:-ml-24"


sm__neg_mt_32 : Html.Attribute msg
sm__neg_mt_32 =
    A.class "sm:-mt-32"


sm__neg_mr_32 : Html.Attribute msg
sm__neg_mr_32 =
    A.class "sm:-mr-32"


sm__neg_mb_32 : Html.Attribute msg
sm__neg_mb_32 =
    A.class "sm:-mb-32"


sm__neg_ml_32 : Html.Attribute msg
sm__neg_ml_32 =
    A.class "sm:-ml-32"


sm__neg_mt_40 : Html.Attribute msg
sm__neg_mt_40 =
    A.class "sm:-mt-40"


sm__neg_mr_40 : Html.Attribute msg
sm__neg_mr_40 =
    A.class "sm:-mr-40"


sm__neg_mb_40 : Html.Attribute msg
sm__neg_mb_40 =
    A.class "sm:-mb-40"


sm__neg_ml_40 : Html.Attribute msg
sm__neg_ml_40 =
    A.class "sm:-ml-40"


sm__neg_mt_48 : Html.Attribute msg
sm__neg_mt_48 =
    A.class "sm:-mt-48"


sm__neg_mr_48 : Html.Attribute msg
sm__neg_mr_48 =
    A.class "sm:-mr-48"


sm__neg_mb_48 : Html.Attribute msg
sm__neg_mb_48 =
    A.class "sm:-mb-48"


sm__neg_ml_48 : Html.Attribute msg
sm__neg_ml_48 =
    A.class "sm:-ml-48"


sm__neg_mt_56 : Html.Attribute msg
sm__neg_mt_56 =
    A.class "sm:-mt-56"


sm__neg_mr_56 : Html.Attribute msg
sm__neg_mr_56 =
    A.class "sm:-mr-56"


sm__neg_mb_56 : Html.Attribute msg
sm__neg_mb_56 =
    A.class "sm:-mb-56"


sm__neg_ml_56 : Html.Attribute msg
sm__neg_ml_56 =
    A.class "sm:-ml-56"


sm__neg_mt_64 : Html.Attribute msg
sm__neg_mt_64 =
    A.class "sm:-mt-64"


sm__neg_mr_64 : Html.Attribute msg
sm__neg_mr_64 =
    A.class "sm:-mr-64"


sm__neg_mb_64 : Html.Attribute msg
sm__neg_mb_64 =
    A.class "sm:-mb-64"


sm__neg_ml_64 : Html.Attribute msg
sm__neg_ml_64 =
    A.class "sm:-ml-64"


sm__neg_mt_px : Html.Attribute msg
sm__neg_mt_px =
    A.class "sm:-mt-px"


sm__neg_mr_px : Html.Attribute msg
sm__neg_mr_px =
    A.class "sm:-mr-px"


sm__neg_mb_px : Html.Attribute msg
sm__neg_mb_px =
    A.class "sm:-mb-px"


sm__neg_ml_px : Html.Attribute msg
sm__neg_ml_px =
    A.class "sm:-ml-px"


sm__max_h_full : Html.Attribute msg
sm__max_h_full =
    A.class "sm:max-h-full"


sm__max_h_screen : Html.Attribute msg
sm__max_h_screen =
    A.class "sm:max-h-screen"


sm__max_w_none : Html.Attribute msg
sm__max_w_none =
    A.class "sm:max-w-none"


sm__max_w_xs : Html.Attribute msg
sm__max_w_xs =
    A.class "sm:max-w-xs"


sm__max_w_sm : Html.Attribute msg
sm__max_w_sm =
    A.class "sm:max-w-sm"


sm__max_w_md : Html.Attribute msg
sm__max_w_md =
    A.class "sm:max-w-md"


sm__max_w_lg : Html.Attribute msg
sm__max_w_lg =
    A.class "sm:max-w-lg"


sm__max_w_xl : Html.Attribute msg
sm__max_w_xl =
    A.class "sm:max-w-xl"


sm__max_w_2xl : Html.Attribute msg
sm__max_w_2xl =
    A.class "sm:max-w-2xl"


sm__max_w_3xl : Html.Attribute msg
sm__max_w_3xl =
    A.class "sm:max-w-3xl"


sm__max_w_4xl : Html.Attribute msg
sm__max_w_4xl =
    A.class "sm:max-w-4xl"


sm__max_w_5xl : Html.Attribute msg
sm__max_w_5xl =
    A.class "sm:max-w-5xl"


sm__max_w_6xl : Html.Attribute msg
sm__max_w_6xl =
    A.class "sm:max-w-6xl"


sm__max_w_full : Html.Attribute msg
sm__max_w_full =
    A.class "sm:max-w-full"


sm__max_w_screen_sm : Html.Attribute msg
sm__max_w_screen_sm =
    A.class "sm:max-w-screen-sm"


sm__max_w_screen_md : Html.Attribute msg
sm__max_w_screen_md =
    A.class "sm:max-w-screen-md"


sm__max_w_screen_lg : Html.Attribute msg
sm__max_w_screen_lg =
    A.class "sm:max-w-screen-lg"


sm__max_w_screen_xl : Html.Attribute msg
sm__max_w_screen_xl =
    A.class "sm:max-w-screen-xl"


sm__min_h_0 : Html.Attribute msg
sm__min_h_0 =
    A.class "sm:min-h-0"


sm__min_h_full : Html.Attribute msg
sm__min_h_full =
    A.class "sm:min-h-full"


sm__min_h_screen : Html.Attribute msg
sm__min_h_screen =
    A.class "sm:min-h-screen"


sm__min_w_0 : Html.Attribute msg
sm__min_w_0 =
    A.class "sm:min-w-0"


sm__min_w_full : Html.Attribute msg
sm__min_w_full =
    A.class "sm:min-w-full"


sm__object_contain : Html.Attribute msg
sm__object_contain =
    A.class "sm:object-contain"


sm__object_cover : Html.Attribute msg
sm__object_cover =
    A.class "sm:object-cover"


sm__object_fill : Html.Attribute msg
sm__object_fill =
    A.class "sm:object-fill"


sm__object_none : Html.Attribute msg
sm__object_none =
    A.class "sm:object-none"


sm__object_scale_down : Html.Attribute msg
sm__object_scale_down =
    A.class "sm:object-scale-down"


sm__object_bottom : Html.Attribute msg
sm__object_bottom =
    A.class "sm:object-bottom"


sm__object_center : Html.Attribute msg
sm__object_center =
    A.class "sm:object-center"


sm__object_left : Html.Attribute msg
sm__object_left =
    A.class "sm:object-left"


sm__object_left_bottom : Html.Attribute msg
sm__object_left_bottom =
    A.class "sm:object-left-bottom"


sm__object_left_top : Html.Attribute msg
sm__object_left_top =
    A.class "sm:object-left-top"


sm__object_right : Html.Attribute msg
sm__object_right =
    A.class "sm:object-right"


sm__object_right_bottom : Html.Attribute msg
sm__object_right_bottom =
    A.class "sm:object-right-bottom"


sm__object_right_top : Html.Attribute msg
sm__object_right_top =
    A.class "sm:object-right-top"


sm__object_top : Html.Attribute msg
sm__object_top =
    A.class "sm:object-top"


sm__opacity_0 : Html.Attribute msg
sm__opacity_0 =
    A.class "sm:opacity-0"


sm__opacity_25 : Html.Attribute msg
sm__opacity_25 =
    A.class "sm:opacity-25"


sm__opacity_50 : Html.Attribute msg
sm__opacity_50 =
    A.class "sm:opacity-50"


sm__opacity_75 : Html.Attribute msg
sm__opacity_75 =
    A.class "sm:opacity-75"


sm__opacity_100 : Html.Attribute msg
sm__opacity_100 =
    A.class "sm:opacity-100"


sm__hover__opacity_0 : Html.Attribute msg
sm__hover__opacity_0 =
    A.class "sm:hover:opacity-0"


sm__hover__opacity_25 : Html.Attribute msg
sm__hover__opacity_25 =
    A.class "sm:hover:opacity-25"


sm__hover__opacity_50 : Html.Attribute msg
sm__hover__opacity_50 =
    A.class "sm:hover:opacity-50"


sm__hover__opacity_75 : Html.Attribute msg
sm__hover__opacity_75 =
    A.class "sm:hover:opacity-75"


sm__hover__opacity_100 : Html.Attribute msg
sm__hover__opacity_100 =
    A.class "sm:hover:opacity-100"


sm__focus__opacity_0 : Html.Attribute msg
sm__focus__opacity_0 =
    A.class "sm:focus:opacity-0"


sm__focus__opacity_25 : Html.Attribute msg
sm__focus__opacity_25 =
    A.class "sm:focus:opacity-25"


sm__focus__opacity_50 : Html.Attribute msg
sm__focus__opacity_50 =
    A.class "sm:focus:opacity-50"


sm__focus__opacity_75 : Html.Attribute msg
sm__focus__opacity_75 =
    A.class "sm:focus:opacity-75"


sm__focus__opacity_100 : Html.Attribute msg
sm__focus__opacity_100 =
    A.class "sm:focus:opacity-100"


sm__outline_none : Html.Attribute msg
sm__outline_none =
    A.class "sm:outline-none"


sm__focus__outline_none : Html.Attribute msg
sm__focus__outline_none =
    A.class "sm:focus:outline-none"


sm__overflow_auto : Html.Attribute msg
sm__overflow_auto =
    A.class "sm:overflow-auto"


sm__overflow_hidden : Html.Attribute msg
sm__overflow_hidden =
    A.class "sm:overflow-hidden"


sm__overflow_visible : Html.Attribute msg
sm__overflow_visible =
    A.class "sm:overflow-visible"


sm__overflow_scroll : Html.Attribute msg
sm__overflow_scroll =
    A.class "sm:overflow-scroll"


sm__overflow_x_auto : Html.Attribute msg
sm__overflow_x_auto =
    A.class "sm:overflow-x-auto"


sm__overflow_y_auto : Html.Attribute msg
sm__overflow_y_auto =
    A.class "sm:overflow-y-auto"


sm__overflow_x_hidden : Html.Attribute msg
sm__overflow_x_hidden =
    A.class "sm:overflow-x-hidden"


sm__overflow_y_hidden : Html.Attribute msg
sm__overflow_y_hidden =
    A.class "sm:overflow-y-hidden"


sm__overflow_x_visible : Html.Attribute msg
sm__overflow_x_visible =
    A.class "sm:overflow-x-visible"


sm__overflow_y_visible : Html.Attribute msg
sm__overflow_y_visible =
    A.class "sm:overflow-y-visible"


sm__overflow_x_scroll : Html.Attribute msg
sm__overflow_x_scroll =
    A.class "sm:overflow-x-scroll"


sm__overflow_y_scroll : Html.Attribute msg
sm__overflow_y_scroll =
    A.class "sm:overflow-y-scroll"


sm__scrolling_touch : Html.Attribute msg
sm__scrolling_touch =
    A.class "sm:scrolling-touch"


sm__scrolling_auto : Html.Attribute msg
sm__scrolling_auto =
    A.class "sm:scrolling-auto"


sm__p_0 : Html.Attribute msg
sm__p_0 =
    A.class "sm:p-0"


sm__p_1 : Html.Attribute msg
sm__p_1 =
    A.class "sm:p-1"


sm__p_2 : Html.Attribute msg
sm__p_2 =
    A.class "sm:p-2"


sm__p_3 : Html.Attribute msg
sm__p_3 =
    A.class "sm:p-3"


sm__p_4 : Html.Attribute msg
sm__p_4 =
    A.class "sm:p-4"


sm__p_5 : Html.Attribute msg
sm__p_5 =
    A.class "sm:p-5"


sm__p_6 : Html.Attribute msg
sm__p_6 =
    A.class "sm:p-6"


sm__p_8 : Html.Attribute msg
sm__p_8 =
    A.class "sm:p-8"


sm__p_10 : Html.Attribute msg
sm__p_10 =
    A.class "sm:p-10"


sm__p_12 : Html.Attribute msg
sm__p_12 =
    A.class "sm:p-12"


sm__p_16 : Html.Attribute msg
sm__p_16 =
    A.class "sm:p-16"


sm__p_20 : Html.Attribute msg
sm__p_20 =
    A.class "sm:p-20"


sm__p_24 : Html.Attribute msg
sm__p_24 =
    A.class "sm:p-24"


sm__p_32 : Html.Attribute msg
sm__p_32 =
    A.class "sm:p-32"


sm__p_40 : Html.Attribute msg
sm__p_40 =
    A.class "sm:p-40"


sm__p_48 : Html.Attribute msg
sm__p_48 =
    A.class "sm:p-48"


sm__p_56 : Html.Attribute msg
sm__p_56 =
    A.class "sm:p-56"


sm__p_64 : Html.Attribute msg
sm__p_64 =
    A.class "sm:p-64"


sm__p_px : Html.Attribute msg
sm__p_px =
    A.class "sm:p-px"


sm__py_0 : Html.Attribute msg
sm__py_0 =
    A.class "sm:py-0"


sm__px_0 : Html.Attribute msg
sm__px_0 =
    A.class "sm:px-0"


sm__py_1 : Html.Attribute msg
sm__py_1 =
    A.class "sm:py-1"


sm__px_1 : Html.Attribute msg
sm__px_1 =
    A.class "sm:px-1"


sm__py_2 : Html.Attribute msg
sm__py_2 =
    A.class "sm:py-2"


sm__px_2 : Html.Attribute msg
sm__px_2 =
    A.class "sm:px-2"


sm__py_3 : Html.Attribute msg
sm__py_3 =
    A.class "sm:py-3"


sm__px_3 : Html.Attribute msg
sm__px_3 =
    A.class "sm:px-3"


sm__py_4 : Html.Attribute msg
sm__py_4 =
    A.class "sm:py-4"


sm__px_4 : Html.Attribute msg
sm__px_4 =
    A.class "sm:px-4"


sm__py_5 : Html.Attribute msg
sm__py_5 =
    A.class "sm:py-5"


sm__px_5 : Html.Attribute msg
sm__px_5 =
    A.class "sm:px-5"


sm__py_6 : Html.Attribute msg
sm__py_6 =
    A.class "sm:py-6"


sm__px_6 : Html.Attribute msg
sm__px_6 =
    A.class "sm:px-6"


sm__py_8 : Html.Attribute msg
sm__py_8 =
    A.class "sm:py-8"


sm__px_8 : Html.Attribute msg
sm__px_8 =
    A.class "sm:px-8"


sm__py_10 : Html.Attribute msg
sm__py_10 =
    A.class "sm:py-10"


sm__px_10 : Html.Attribute msg
sm__px_10 =
    A.class "sm:px-10"


sm__py_12 : Html.Attribute msg
sm__py_12 =
    A.class "sm:py-12"


sm__px_12 : Html.Attribute msg
sm__px_12 =
    A.class "sm:px-12"


sm__py_16 : Html.Attribute msg
sm__py_16 =
    A.class "sm:py-16"


sm__px_16 : Html.Attribute msg
sm__px_16 =
    A.class "sm:px-16"


sm__py_20 : Html.Attribute msg
sm__py_20 =
    A.class "sm:py-20"


sm__px_20 : Html.Attribute msg
sm__px_20 =
    A.class "sm:px-20"


sm__py_24 : Html.Attribute msg
sm__py_24 =
    A.class "sm:py-24"


sm__px_24 : Html.Attribute msg
sm__px_24 =
    A.class "sm:px-24"


sm__py_32 : Html.Attribute msg
sm__py_32 =
    A.class "sm:py-32"


sm__px_32 : Html.Attribute msg
sm__px_32 =
    A.class "sm:px-32"


sm__py_40 : Html.Attribute msg
sm__py_40 =
    A.class "sm:py-40"


sm__px_40 : Html.Attribute msg
sm__px_40 =
    A.class "sm:px-40"


sm__py_48 : Html.Attribute msg
sm__py_48 =
    A.class "sm:py-48"


sm__px_48 : Html.Attribute msg
sm__px_48 =
    A.class "sm:px-48"


sm__py_56 : Html.Attribute msg
sm__py_56 =
    A.class "sm:py-56"


sm__px_56 : Html.Attribute msg
sm__px_56 =
    A.class "sm:px-56"


sm__py_64 : Html.Attribute msg
sm__py_64 =
    A.class "sm:py-64"


sm__px_64 : Html.Attribute msg
sm__px_64 =
    A.class "sm:px-64"


sm__py_px : Html.Attribute msg
sm__py_px =
    A.class "sm:py-px"


sm__px_px : Html.Attribute msg
sm__px_px =
    A.class "sm:px-px"


sm__pt_0 : Html.Attribute msg
sm__pt_0 =
    A.class "sm:pt-0"


sm__pr_0 : Html.Attribute msg
sm__pr_0 =
    A.class "sm:pr-0"


sm__pb_0 : Html.Attribute msg
sm__pb_0 =
    A.class "sm:pb-0"


sm__pl_0 : Html.Attribute msg
sm__pl_0 =
    A.class "sm:pl-0"


sm__pt_1 : Html.Attribute msg
sm__pt_1 =
    A.class "sm:pt-1"


sm__pr_1 : Html.Attribute msg
sm__pr_1 =
    A.class "sm:pr-1"


sm__pb_1 : Html.Attribute msg
sm__pb_1 =
    A.class "sm:pb-1"


sm__pl_1 : Html.Attribute msg
sm__pl_1 =
    A.class "sm:pl-1"


sm__pt_2 : Html.Attribute msg
sm__pt_2 =
    A.class "sm:pt-2"


sm__pr_2 : Html.Attribute msg
sm__pr_2 =
    A.class "sm:pr-2"


sm__pb_2 : Html.Attribute msg
sm__pb_2 =
    A.class "sm:pb-2"


sm__pl_2 : Html.Attribute msg
sm__pl_2 =
    A.class "sm:pl-2"


sm__pt_3 : Html.Attribute msg
sm__pt_3 =
    A.class "sm:pt-3"


sm__pr_3 : Html.Attribute msg
sm__pr_3 =
    A.class "sm:pr-3"


sm__pb_3 : Html.Attribute msg
sm__pb_3 =
    A.class "sm:pb-3"


sm__pl_3 : Html.Attribute msg
sm__pl_3 =
    A.class "sm:pl-3"


sm__pt_4 : Html.Attribute msg
sm__pt_4 =
    A.class "sm:pt-4"


sm__pr_4 : Html.Attribute msg
sm__pr_4 =
    A.class "sm:pr-4"


sm__pb_4 : Html.Attribute msg
sm__pb_4 =
    A.class "sm:pb-4"


sm__pl_4 : Html.Attribute msg
sm__pl_4 =
    A.class "sm:pl-4"


sm__pt_5 : Html.Attribute msg
sm__pt_5 =
    A.class "sm:pt-5"


sm__pr_5 : Html.Attribute msg
sm__pr_5 =
    A.class "sm:pr-5"


sm__pb_5 : Html.Attribute msg
sm__pb_5 =
    A.class "sm:pb-5"


sm__pl_5 : Html.Attribute msg
sm__pl_5 =
    A.class "sm:pl-5"


sm__pt_6 : Html.Attribute msg
sm__pt_6 =
    A.class "sm:pt-6"


sm__pr_6 : Html.Attribute msg
sm__pr_6 =
    A.class "sm:pr-6"


sm__pb_6 : Html.Attribute msg
sm__pb_6 =
    A.class "sm:pb-6"


sm__pl_6 : Html.Attribute msg
sm__pl_6 =
    A.class "sm:pl-6"


sm__pt_8 : Html.Attribute msg
sm__pt_8 =
    A.class "sm:pt-8"


sm__pr_8 : Html.Attribute msg
sm__pr_8 =
    A.class "sm:pr-8"


sm__pb_8 : Html.Attribute msg
sm__pb_8 =
    A.class "sm:pb-8"


sm__pl_8 : Html.Attribute msg
sm__pl_8 =
    A.class "sm:pl-8"


sm__pt_10 : Html.Attribute msg
sm__pt_10 =
    A.class "sm:pt-10"


sm__pr_10 : Html.Attribute msg
sm__pr_10 =
    A.class "sm:pr-10"


sm__pb_10 : Html.Attribute msg
sm__pb_10 =
    A.class "sm:pb-10"


sm__pl_10 : Html.Attribute msg
sm__pl_10 =
    A.class "sm:pl-10"


sm__pt_12 : Html.Attribute msg
sm__pt_12 =
    A.class "sm:pt-12"


sm__pr_12 : Html.Attribute msg
sm__pr_12 =
    A.class "sm:pr-12"


sm__pb_12 : Html.Attribute msg
sm__pb_12 =
    A.class "sm:pb-12"


sm__pl_12 : Html.Attribute msg
sm__pl_12 =
    A.class "sm:pl-12"


sm__pt_16 : Html.Attribute msg
sm__pt_16 =
    A.class "sm:pt-16"


sm__pr_16 : Html.Attribute msg
sm__pr_16 =
    A.class "sm:pr-16"


sm__pb_16 : Html.Attribute msg
sm__pb_16 =
    A.class "sm:pb-16"


sm__pl_16 : Html.Attribute msg
sm__pl_16 =
    A.class "sm:pl-16"


sm__pt_20 : Html.Attribute msg
sm__pt_20 =
    A.class "sm:pt-20"


sm__pr_20 : Html.Attribute msg
sm__pr_20 =
    A.class "sm:pr-20"


sm__pb_20 : Html.Attribute msg
sm__pb_20 =
    A.class "sm:pb-20"


sm__pl_20 : Html.Attribute msg
sm__pl_20 =
    A.class "sm:pl-20"


sm__pt_24 : Html.Attribute msg
sm__pt_24 =
    A.class "sm:pt-24"


sm__pr_24 : Html.Attribute msg
sm__pr_24 =
    A.class "sm:pr-24"


sm__pb_24 : Html.Attribute msg
sm__pb_24 =
    A.class "sm:pb-24"


sm__pl_24 : Html.Attribute msg
sm__pl_24 =
    A.class "sm:pl-24"


sm__pt_32 : Html.Attribute msg
sm__pt_32 =
    A.class "sm:pt-32"


sm__pr_32 : Html.Attribute msg
sm__pr_32 =
    A.class "sm:pr-32"


sm__pb_32 : Html.Attribute msg
sm__pb_32 =
    A.class "sm:pb-32"


sm__pl_32 : Html.Attribute msg
sm__pl_32 =
    A.class "sm:pl-32"


sm__pt_40 : Html.Attribute msg
sm__pt_40 =
    A.class "sm:pt-40"


sm__pr_40 : Html.Attribute msg
sm__pr_40 =
    A.class "sm:pr-40"


sm__pb_40 : Html.Attribute msg
sm__pb_40 =
    A.class "sm:pb-40"


sm__pl_40 : Html.Attribute msg
sm__pl_40 =
    A.class "sm:pl-40"


sm__pt_48 : Html.Attribute msg
sm__pt_48 =
    A.class "sm:pt-48"


sm__pr_48 : Html.Attribute msg
sm__pr_48 =
    A.class "sm:pr-48"


sm__pb_48 : Html.Attribute msg
sm__pb_48 =
    A.class "sm:pb-48"


sm__pl_48 : Html.Attribute msg
sm__pl_48 =
    A.class "sm:pl-48"


sm__pt_56 : Html.Attribute msg
sm__pt_56 =
    A.class "sm:pt-56"


sm__pr_56 : Html.Attribute msg
sm__pr_56 =
    A.class "sm:pr-56"


sm__pb_56 : Html.Attribute msg
sm__pb_56 =
    A.class "sm:pb-56"


sm__pl_56 : Html.Attribute msg
sm__pl_56 =
    A.class "sm:pl-56"


sm__pt_64 : Html.Attribute msg
sm__pt_64 =
    A.class "sm:pt-64"


sm__pr_64 : Html.Attribute msg
sm__pr_64 =
    A.class "sm:pr-64"


sm__pb_64 : Html.Attribute msg
sm__pb_64 =
    A.class "sm:pb-64"


sm__pl_64 : Html.Attribute msg
sm__pl_64 =
    A.class "sm:pl-64"


sm__pt_px : Html.Attribute msg
sm__pt_px =
    A.class "sm:pt-px"


sm__pr_px : Html.Attribute msg
sm__pr_px =
    A.class "sm:pr-px"


sm__pb_px : Html.Attribute msg
sm__pb_px =
    A.class "sm:pb-px"


sm__pl_px : Html.Attribute msg
sm__pl_px =
    A.class "sm:pl-px"


sm__placeholder_transparent : Html.Attribute msg
sm__placeholder_transparent =
    A.class "sm:placeholder-transparent"


sm__placeholder_black : Html.Attribute msg
sm__placeholder_black =
    A.class "sm:placeholder-black"


sm__placeholder_white : Html.Attribute msg
sm__placeholder_white =
    A.class "sm:placeholder-white"


sm__placeholder_gray_100 : Html.Attribute msg
sm__placeholder_gray_100 =
    A.class "sm:placeholder-gray-100"


sm__placeholder_gray_200 : Html.Attribute msg
sm__placeholder_gray_200 =
    A.class "sm:placeholder-gray-200"


sm__placeholder_gray_300 : Html.Attribute msg
sm__placeholder_gray_300 =
    A.class "sm:placeholder-gray-300"


sm__placeholder_gray_400 : Html.Attribute msg
sm__placeholder_gray_400 =
    A.class "sm:placeholder-gray-400"


sm__placeholder_gray_500 : Html.Attribute msg
sm__placeholder_gray_500 =
    A.class "sm:placeholder-gray-500"


sm__placeholder_gray_600 : Html.Attribute msg
sm__placeholder_gray_600 =
    A.class "sm:placeholder-gray-600"


sm__placeholder_gray_700 : Html.Attribute msg
sm__placeholder_gray_700 =
    A.class "sm:placeholder-gray-700"


sm__placeholder_gray_800 : Html.Attribute msg
sm__placeholder_gray_800 =
    A.class "sm:placeholder-gray-800"


sm__placeholder_gray_900 : Html.Attribute msg
sm__placeholder_gray_900 =
    A.class "sm:placeholder-gray-900"


sm__placeholder_red_100 : Html.Attribute msg
sm__placeholder_red_100 =
    A.class "sm:placeholder-red-100"


sm__placeholder_red_200 : Html.Attribute msg
sm__placeholder_red_200 =
    A.class "sm:placeholder-red-200"


sm__placeholder_red_300 : Html.Attribute msg
sm__placeholder_red_300 =
    A.class "sm:placeholder-red-300"


sm__placeholder_red_400 : Html.Attribute msg
sm__placeholder_red_400 =
    A.class "sm:placeholder-red-400"


sm__placeholder_red_500 : Html.Attribute msg
sm__placeholder_red_500 =
    A.class "sm:placeholder-red-500"


sm__placeholder_red_600 : Html.Attribute msg
sm__placeholder_red_600 =
    A.class "sm:placeholder-red-600"


sm__placeholder_red_700 : Html.Attribute msg
sm__placeholder_red_700 =
    A.class "sm:placeholder-red-700"


sm__placeholder_red_800 : Html.Attribute msg
sm__placeholder_red_800 =
    A.class "sm:placeholder-red-800"


sm__placeholder_red_900 : Html.Attribute msg
sm__placeholder_red_900 =
    A.class "sm:placeholder-red-900"


sm__placeholder_orange_100 : Html.Attribute msg
sm__placeholder_orange_100 =
    A.class "sm:placeholder-orange-100"


sm__placeholder_orange_200 : Html.Attribute msg
sm__placeholder_orange_200 =
    A.class "sm:placeholder-orange-200"


sm__placeholder_orange_300 : Html.Attribute msg
sm__placeholder_orange_300 =
    A.class "sm:placeholder-orange-300"


sm__placeholder_orange_400 : Html.Attribute msg
sm__placeholder_orange_400 =
    A.class "sm:placeholder-orange-400"


sm__placeholder_orange_500 : Html.Attribute msg
sm__placeholder_orange_500 =
    A.class "sm:placeholder-orange-500"


sm__placeholder_orange_600 : Html.Attribute msg
sm__placeholder_orange_600 =
    A.class "sm:placeholder-orange-600"


sm__placeholder_orange_700 : Html.Attribute msg
sm__placeholder_orange_700 =
    A.class "sm:placeholder-orange-700"


sm__placeholder_orange_800 : Html.Attribute msg
sm__placeholder_orange_800 =
    A.class "sm:placeholder-orange-800"


sm__placeholder_orange_900 : Html.Attribute msg
sm__placeholder_orange_900 =
    A.class "sm:placeholder-orange-900"


sm__placeholder_yellow_100 : Html.Attribute msg
sm__placeholder_yellow_100 =
    A.class "sm:placeholder-yellow-100"


sm__placeholder_yellow_200 : Html.Attribute msg
sm__placeholder_yellow_200 =
    A.class "sm:placeholder-yellow-200"


sm__placeholder_yellow_300 : Html.Attribute msg
sm__placeholder_yellow_300 =
    A.class "sm:placeholder-yellow-300"


sm__placeholder_yellow_400 : Html.Attribute msg
sm__placeholder_yellow_400 =
    A.class "sm:placeholder-yellow-400"


sm__placeholder_yellow_500 : Html.Attribute msg
sm__placeholder_yellow_500 =
    A.class "sm:placeholder-yellow-500"


sm__placeholder_yellow_600 : Html.Attribute msg
sm__placeholder_yellow_600 =
    A.class "sm:placeholder-yellow-600"


sm__placeholder_yellow_700 : Html.Attribute msg
sm__placeholder_yellow_700 =
    A.class "sm:placeholder-yellow-700"


sm__placeholder_yellow_800 : Html.Attribute msg
sm__placeholder_yellow_800 =
    A.class "sm:placeholder-yellow-800"


sm__placeholder_yellow_900 : Html.Attribute msg
sm__placeholder_yellow_900 =
    A.class "sm:placeholder-yellow-900"


sm__placeholder_green_100 : Html.Attribute msg
sm__placeholder_green_100 =
    A.class "sm:placeholder-green-100"


sm__placeholder_green_200 : Html.Attribute msg
sm__placeholder_green_200 =
    A.class "sm:placeholder-green-200"


sm__placeholder_green_300 : Html.Attribute msg
sm__placeholder_green_300 =
    A.class "sm:placeholder-green-300"


sm__placeholder_green_400 : Html.Attribute msg
sm__placeholder_green_400 =
    A.class "sm:placeholder-green-400"


sm__placeholder_green_500 : Html.Attribute msg
sm__placeholder_green_500 =
    A.class "sm:placeholder-green-500"


sm__placeholder_green_600 : Html.Attribute msg
sm__placeholder_green_600 =
    A.class "sm:placeholder-green-600"


sm__placeholder_green_700 : Html.Attribute msg
sm__placeholder_green_700 =
    A.class "sm:placeholder-green-700"


sm__placeholder_green_800 : Html.Attribute msg
sm__placeholder_green_800 =
    A.class "sm:placeholder-green-800"


sm__placeholder_green_900 : Html.Attribute msg
sm__placeholder_green_900 =
    A.class "sm:placeholder-green-900"


sm__placeholder_teal_100 : Html.Attribute msg
sm__placeholder_teal_100 =
    A.class "sm:placeholder-teal-100"


sm__placeholder_teal_200 : Html.Attribute msg
sm__placeholder_teal_200 =
    A.class "sm:placeholder-teal-200"


sm__placeholder_teal_300 : Html.Attribute msg
sm__placeholder_teal_300 =
    A.class "sm:placeholder-teal-300"


sm__placeholder_teal_400 : Html.Attribute msg
sm__placeholder_teal_400 =
    A.class "sm:placeholder-teal-400"


sm__placeholder_teal_500 : Html.Attribute msg
sm__placeholder_teal_500 =
    A.class "sm:placeholder-teal-500"


sm__placeholder_teal_600 : Html.Attribute msg
sm__placeholder_teal_600 =
    A.class "sm:placeholder-teal-600"


sm__placeholder_teal_700 : Html.Attribute msg
sm__placeholder_teal_700 =
    A.class "sm:placeholder-teal-700"


sm__placeholder_teal_800 : Html.Attribute msg
sm__placeholder_teal_800 =
    A.class "sm:placeholder-teal-800"


sm__placeholder_teal_900 : Html.Attribute msg
sm__placeholder_teal_900 =
    A.class "sm:placeholder-teal-900"


sm__placeholder_blue_100 : Html.Attribute msg
sm__placeholder_blue_100 =
    A.class "sm:placeholder-blue-100"


sm__placeholder_blue_200 : Html.Attribute msg
sm__placeholder_blue_200 =
    A.class "sm:placeholder-blue-200"


sm__placeholder_blue_300 : Html.Attribute msg
sm__placeholder_blue_300 =
    A.class "sm:placeholder-blue-300"


sm__placeholder_blue_400 : Html.Attribute msg
sm__placeholder_blue_400 =
    A.class "sm:placeholder-blue-400"


sm__placeholder_blue_500 : Html.Attribute msg
sm__placeholder_blue_500 =
    A.class "sm:placeholder-blue-500"


sm__placeholder_blue_600 : Html.Attribute msg
sm__placeholder_blue_600 =
    A.class "sm:placeholder-blue-600"


sm__placeholder_blue_700 : Html.Attribute msg
sm__placeholder_blue_700 =
    A.class "sm:placeholder-blue-700"


sm__placeholder_blue_800 : Html.Attribute msg
sm__placeholder_blue_800 =
    A.class "sm:placeholder-blue-800"


sm__placeholder_blue_900 : Html.Attribute msg
sm__placeholder_blue_900 =
    A.class "sm:placeholder-blue-900"


sm__placeholder_indigo_100 : Html.Attribute msg
sm__placeholder_indigo_100 =
    A.class "sm:placeholder-indigo-100"


sm__placeholder_indigo_200 : Html.Attribute msg
sm__placeholder_indigo_200 =
    A.class "sm:placeholder-indigo-200"


sm__placeholder_indigo_300 : Html.Attribute msg
sm__placeholder_indigo_300 =
    A.class "sm:placeholder-indigo-300"


sm__placeholder_indigo_400 : Html.Attribute msg
sm__placeholder_indigo_400 =
    A.class "sm:placeholder-indigo-400"


sm__placeholder_indigo_500 : Html.Attribute msg
sm__placeholder_indigo_500 =
    A.class "sm:placeholder-indigo-500"


sm__placeholder_indigo_600 : Html.Attribute msg
sm__placeholder_indigo_600 =
    A.class "sm:placeholder-indigo-600"


sm__placeholder_indigo_700 : Html.Attribute msg
sm__placeholder_indigo_700 =
    A.class "sm:placeholder-indigo-700"


sm__placeholder_indigo_800 : Html.Attribute msg
sm__placeholder_indigo_800 =
    A.class "sm:placeholder-indigo-800"


sm__placeholder_indigo_900 : Html.Attribute msg
sm__placeholder_indigo_900 =
    A.class "sm:placeholder-indigo-900"


sm__placeholder_purple_100 : Html.Attribute msg
sm__placeholder_purple_100 =
    A.class "sm:placeholder-purple-100"


sm__placeholder_purple_200 : Html.Attribute msg
sm__placeholder_purple_200 =
    A.class "sm:placeholder-purple-200"


sm__placeholder_purple_300 : Html.Attribute msg
sm__placeholder_purple_300 =
    A.class "sm:placeholder-purple-300"


sm__placeholder_purple_400 : Html.Attribute msg
sm__placeholder_purple_400 =
    A.class "sm:placeholder-purple-400"


sm__placeholder_purple_500 : Html.Attribute msg
sm__placeholder_purple_500 =
    A.class "sm:placeholder-purple-500"


sm__placeholder_purple_600 : Html.Attribute msg
sm__placeholder_purple_600 =
    A.class "sm:placeholder-purple-600"


sm__placeholder_purple_700 : Html.Attribute msg
sm__placeholder_purple_700 =
    A.class "sm:placeholder-purple-700"


sm__placeholder_purple_800 : Html.Attribute msg
sm__placeholder_purple_800 =
    A.class "sm:placeholder-purple-800"


sm__placeholder_purple_900 : Html.Attribute msg
sm__placeholder_purple_900 =
    A.class "sm:placeholder-purple-900"


sm__placeholder_pink_100 : Html.Attribute msg
sm__placeholder_pink_100 =
    A.class "sm:placeholder-pink-100"


sm__placeholder_pink_200 : Html.Attribute msg
sm__placeholder_pink_200 =
    A.class "sm:placeholder-pink-200"


sm__placeholder_pink_300 : Html.Attribute msg
sm__placeholder_pink_300 =
    A.class "sm:placeholder-pink-300"


sm__placeholder_pink_400 : Html.Attribute msg
sm__placeholder_pink_400 =
    A.class "sm:placeholder-pink-400"


sm__placeholder_pink_500 : Html.Attribute msg
sm__placeholder_pink_500 =
    A.class "sm:placeholder-pink-500"


sm__placeholder_pink_600 : Html.Attribute msg
sm__placeholder_pink_600 =
    A.class "sm:placeholder-pink-600"


sm__placeholder_pink_700 : Html.Attribute msg
sm__placeholder_pink_700 =
    A.class "sm:placeholder-pink-700"


sm__placeholder_pink_800 : Html.Attribute msg
sm__placeholder_pink_800 =
    A.class "sm:placeholder-pink-800"


sm__placeholder_pink_900 : Html.Attribute msg
sm__placeholder_pink_900 =
    A.class "sm:placeholder-pink-900"


sm__focus__placeholder_transparent__focus : Html.Attribute msg
sm__focus__placeholder_transparent__focus =
    A.class "sm:focus:placeholder-transparent:focus"


sm__focus__placeholder_black__focus : Html.Attribute msg
sm__focus__placeholder_black__focus =
    A.class "sm:focus:placeholder-black:focus"


sm__focus__placeholder_white__focus : Html.Attribute msg
sm__focus__placeholder_white__focus =
    A.class "sm:focus:placeholder-white:focus"


sm__focus__placeholder_gray_100__focus : Html.Attribute msg
sm__focus__placeholder_gray_100__focus =
    A.class "sm:focus:placeholder-gray-100:focus"


sm__focus__placeholder_gray_200__focus : Html.Attribute msg
sm__focus__placeholder_gray_200__focus =
    A.class "sm:focus:placeholder-gray-200:focus"


sm__focus__placeholder_gray_300__focus : Html.Attribute msg
sm__focus__placeholder_gray_300__focus =
    A.class "sm:focus:placeholder-gray-300:focus"


sm__focus__placeholder_gray_400__focus : Html.Attribute msg
sm__focus__placeholder_gray_400__focus =
    A.class "sm:focus:placeholder-gray-400:focus"


sm__focus__placeholder_gray_500__focus : Html.Attribute msg
sm__focus__placeholder_gray_500__focus =
    A.class "sm:focus:placeholder-gray-500:focus"


sm__focus__placeholder_gray_600__focus : Html.Attribute msg
sm__focus__placeholder_gray_600__focus =
    A.class "sm:focus:placeholder-gray-600:focus"


sm__focus__placeholder_gray_700__focus : Html.Attribute msg
sm__focus__placeholder_gray_700__focus =
    A.class "sm:focus:placeholder-gray-700:focus"


sm__focus__placeholder_gray_800__focus : Html.Attribute msg
sm__focus__placeholder_gray_800__focus =
    A.class "sm:focus:placeholder-gray-800:focus"


sm__focus__placeholder_gray_900__focus : Html.Attribute msg
sm__focus__placeholder_gray_900__focus =
    A.class "sm:focus:placeholder-gray-900:focus"


sm__focus__placeholder_red_100__focus : Html.Attribute msg
sm__focus__placeholder_red_100__focus =
    A.class "sm:focus:placeholder-red-100:focus"


sm__focus__placeholder_red_200__focus : Html.Attribute msg
sm__focus__placeholder_red_200__focus =
    A.class "sm:focus:placeholder-red-200:focus"


sm__focus__placeholder_red_300__focus : Html.Attribute msg
sm__focus__placeholder_red_300__focus =
    A.class "sm:focus:placeholder-red-300:focus"


sm__focus__placeholder_red_400__focus : Html.Attribute msg
sm__focus__placeholder_red_400__focus =
    A.class "sm:focus:placeholder-red-400:focus"


sm__focus__placeholder_red_500__focus : Html.Attribute msg
sm__focus__placeholder_red_500__focus =
    A.class "sm:focus:placeholder-red-500:focus"


sm__focus__placeholder_red_600__focus : Html.Attribute msg
sm__focus__placeholder_red_600__focus =
    A.class "sm:focus:placeholder-red-600:focus"


sm__focus__placeholder_red_700__focus : Html.Attribute msg
sm__focus__placeholder_red_700__focus =
    A.class "sm:focus:placeholder-red-700:focus"


sm__focus__placeholder_red_800__focus : Html.Attribute msg
sm__focus__placeholder_red_800__focus =
    A.class "sm:focus:placeholder-red-800:focus"


sm__focus__placeholder_red_900__focus : Html.Attribute msg
sm__focus__placeholder_red_900__focus =
    A.class "sm:focus:placeholder-red-900:focus"


sm__focus__placeholder_orange_100__focus : Html.Attribute msg
sm__focus__placeholder_orange_100__focus =
    A.class "sm:focus:placeholder-orange-100:focus"


sm__focus__placeholder_orange_200__focus : Html.Attribute msg
sm__focus__placeholder_orange_200__focus =
    A.class "sm:focus:placeholder-orange-200:focus"


sm__focus__placeholder_orange_300__focus : Html.Attribute msg
sm__focus__placeholder_orange_300__focus =
    A.class "sm:focus:placeholder-orange-300:focus"


sm__focus__placeholder_orange_400__focus : Html.Attribute msg
sm__focus__placeholder_orange_400__focus =
    A.class "sm:focus:placeholder-orange-400:focus"


sm__focus__placeholder_orange_500__focus : Html.Attribute msg
sm__focus__placeholder_orange_500__focus =
    A.class "sm:focus:placeholder-orange-500:focus"


sm__focus__placeholder_orange_600__focus : Html.Attribute msg
sm__focus__placeholder_orange_600__focus =
    A.class "sm:focus:placeholder-orange-600:focus"


sm__focus__placeholder_orange_700__focus : Html.Attribute msg
sm__focus__placeholder_orange_700__focus =
    A.class "sm:focus:placeholder-orange-700:focus"


sm__focus__placeholder_orange_800__focus : Html.Attribute msg
sm__focus__placeholder_orange_800__focus =
    A.class "sm:focus:placeholder-orange-800:focus"


sm__focus__placeholder_orange_900__focus : Html.Attribute msg
sm__focus__placeholder_orange_900__focus =
    A.class "sm:focus:placeholder-orange-900:focus"


sm__focus__placeholder_yellow_100__focus : Html.Attribute msg
sm__focus__placeholder_yellow_100__focus =
    A.class "sm:focus:placeholder-yellow-100:focus"


sm__focus__placeholder_yellow_200__focus : Html.Attribute msg
sm__focus__placeholder_yellow_200__focus =
    A.class "sm:focus:placeholder-yellow-200:focus"


sm__focus__placeholder_yellow_300__focus : Html.Attribute msg
sm__focus__placeholder_yellow_300__focus =
    A.class "sm:focus:placeholder-yellow-300:focus"


sm__focus__placeholder_yellow_400__focus : Html.Attribute msg
sm__focus__placeholder_yellow_400__focus =
    A.class "sm:focus:placeholder-yellow-400:focus"


sm__focus__placeholder_yellow_500__focus : Html.Attribute msg
sm__focus__placeholder_yellow_500__focus =
    A.class "sm:focus:placeholder-yellow-500:focus"


sm__focus__placeholder_yellow_600__focus : Html.Attribute msg
sm__focus__placeholder_yellow_600__focus =
    A.class "sm:focus:placeholder-yellow-600:focus"


sm__focus__placeholder_yellow_700__focus : Html.Attribute msg
sm__focus__placeholder_yellow_700__focus =
    A.class "sm:focus:placeholder-yellow-700:focus"


sm__focus__placeholder_yellow_800__focus : Html.Attribute msg
sm__focus__placeholder_yellow_800__focus =
    A.class "sm:focus:placeholder-yellow-800:focus"


sm__focus__placeholder_yellow_900__focus : Html.Attribute msg
sm__focus__placeholder_yellow_900__focus =
    A.class "sm:focus:placeholder-yellow-900:focus"


sm__focus__placeholder_green_100__focus : Html.Attribute msg
sm__focus__placeholder_green_100__focus =
    A.class "sm:focus:placeholder-green-100:focus"


sm__focus__placeholder_green_200__focus : Html.Attribute msg
sm__focus__placeholder_green_200__focus =
    A.class "sm:focus:placeholder-green-200:focus"


sm__focus__placeholder_green_300__focus : Html.Attribute msg
sm__focus__placeholder_green_300__focus =
    A.class "sm:focus:placeholder-green-300:focus"


sm__focus__placeholder_green_400__focus : Html.Attribute msg
sm__focus__placeholder_green_400__focus =
    A.class "sm:focus:placeholder-green-400:focus"


sm__focus__placeholder_green_500__focus : Html.Attribute msg
sm__focus__placeholder_green_500__focus =
    A.class "sm:focus:placeholder-green-500:focus"


sm__focus__placeholder_green_600__focus : Html.Attribute msg
sm__focus__placeholder_green_600__focus =
    A.class "sm:focus:placeholder-green-600:focus"


sm__focus__placeholder_green_700__focus : Html.Attribute msg
sm__focus__placeholder_green_700__focus =
    A.class "sm:focus:placeholder-green-700:focus"


sm__focus__placeholder_green_800__focus : Html.Attribute msg
sm__focus__placeholder_green_800__focus =
    A.class "sm:focus:placeholder-green-800:focus"


sm__focus__placeholder_green_900__focus : Html.Attribute msg
sm__focus__placeholder_green_900__focus =
    A.class "sm:focus:placeholder-green-900:focus"


sm__focus__placeholder_teal_100__focus : Html.Attribute msg
sm__focus__placeholder_teal_100__focus =
    A.class "sm:focus:placeholder-teal-100:focus"


sm__focus__placeholder_teal_200__focus : Html.Attribute msg
sm__focus__placeholder_teal_200__focus =
    A.class "sm:focus:placeholder-teal-200:focus"


sm__focus__placeholder_teal_300__focus : Html.Attribute msg
sm__focus__placeholder_teal_300__focus =
    A.class "sm:focus:placeholder-teal-300:focus"


sm__focus__placeholder_teal_400__focus : Html.Attribute msg
sm__focus__placeholder_teal_400__focus =
    A.class "sm:focus:placeholder-teal-400:focus"


sm__focus__placeholder_teal_500__focus : Html.Attribute msg
sm__focus__placeholder_teal_500__focus =
    A.class "sm:focus:placeholder-teal-500:focus"


sm__focus__placeholder_teal_600__focus : Html.Attribute msg
sm__focus__placeholder_teal_600__focus =
    A.class "sm:focus:placeholder-teal-600:focus"


sm__focus__placeholder_teal_700__focus : Html.Attribute msg
sm__focus__placeholder_teal_700__focus =
    A.class "sm:focus:placeholder-teal-700:focus"


sm__focus__placeholder_teal_800__focus : Html.Attribute msg
sm__focus__placeholder_teal_800__focus =
    A.class "sm:focus:placeholder-teal-800:focus"


sm__focus__placeholder_teal_900__focus : Html.Attribute msg
sm__focus__placeholder_teal_900__focus =
    A.class "sm:focus:placeholder-teal-900:focus"


sm__focus__placeholder_blue_100__focus : Html.Attribute msg
sm__focus__placeholder_blue_100__focus =
    A.class "sm:focus:placeholder-blue-100:focus"


sm__focus__placeholder_blue_200__focus : Html.Attribute msg
sm__focus__placeholder_blue_200__focus =
    A.class "sm:focus:placeholder-blue-200:focus"


sm__focus__placeholder_blue_300__focus : Html.Attribute msg
sm__focus__placeholder_blue_300__focus =
    A.class "sm:focus:placeholder-blue-300:focus"


sm__focus__placeholder_blue_400__focus : Html.Attribute msg
sm__focus__placeholder_blue_400__focus =
    A.class "sm:focus:placeholder-blue-400:focus"


sm__focus__placeholder_blue_500__focus : Html.Attribute msg
sm__focus__placeholder_blue_500__focus =
    A.class "sm:focus:placeholder-blue-500:focus"


sm__focus__placeholder_blue_600__focus : Html.Attribute msg
sm__focus__placeholder_blue_600__focus =
    A.class "sm:focus:placeholder-blue-600:focus"


sm__focus__placeholder_blue_700__focus : Html.Attribute msg
sm__focus__placeholder_blue_700__focus =
    A.class "sm:focus:placeholder-blue-700:focus"


sm__focus__placeholder_blue_800__focus : Html.Attribute msg
sm__focus__placeholder_blue_800__focus =
    A.class "sm:focus:placeholder-blue-800:focus"


sm__focus__placeholder_blue_900__focus : Html.Attribute msg
sm__focus__placeholder_blue_900__focus =
    A.class "sm:focus:placeholder-blue-900:focus"


sm__focus__placeholder_indigo_100__focus : Html.Attribute msg
sm__focus__placeholder_indigo_100__focus =
    A.class "sm:focus:placeholder-indigo-100:focus"


sm__focus__placeholder_indigo_200__focus : Html.Attribute msg
sm__focus__placeholder_indigo_200__focus =
    A.class "sm:focus:placeholder-indigo-200:focus"


sm__focus__placeholder_indigo_300__focus : Html.Attribute msg
sm__focus__placeholder_indigo_300__focus =
    A.class "sm:focus:placeholder-indigo-300:focus"


sm__focus__placeholder_indigo_400__focus : Html.Attribute msg
sm__focus__placeholder_indigo_400__focus =
    A.class "sm:focus:placeholder-indigo-400:focus"


sm__focus__placeholder_indigo_500__focus : Html.Attribute msg
sm__focus__placeholder_indigo_500__focus =
    A.class "sm:focus:placeholder-indigo-500:focus"


sm__focus__placeholder_indigo_600__focus : Html.Attribute msg
sm__focus__placeholder_indigo_600__focus =
    A.class "sm:focus:placeholder-indigo-600:focus"


sm__focus__placeholder_indigo_700__focus : Html.Attribute msg
sm__focus__placeholder_indigo_700__focus =
    A.class "sm:focus:placeholder-indigo-700:focus"


sm__focus__placeholder_indigo_800__focus : Html.Attribute msg
sm__focus__placeholder_indigo_800__focus =
    A.class "sm:focus:placeholder-indigo-800:focus"


sm__focus__placeholder_indigo_900__focus : Html.Attribute msg
sm__focus__placeholder_indigo_900__focus =
    A.class "sm:focus:placeholder-indigo-900:focus"


sm__focus__placeholder_purple_100__focus : Html.Attribute msg
sm__focus__placeholder_purple_100__focus =
    A.class "sm:focus:placeholder-purple-100:focus"


sm__focus__placeholder_purple_200__focus : Html.Attribute msg
sm__focus__placeholder_purple_200__focus =
    A.class "sm:focus:placeholder-purple-200:focus"


sm__focus__placeholder_purple_300__focus : Html.Attribute msg
sm__focus__placeholder_purple_300__focus =
    A.class "sm:focus:placeholder-purple-300:focus"


sm__focus__placeholder_purple_400__focus : Html.Attribute msg
sm__focus__placeholder_purple_400__focus =
    A.class "sm:focus:placeholder-purple-400:focus"


sm__focus__placeholder_purple_500__focus : Html.Attribute msg
sm__focus__placeholder_purple_500__focus =
    A.class "sm:focus:placeholder-purple-500:focus"


sm__focus__placeholder_purple_600__focus : Html.Attribute msg
sm__focus__placeholder_purple_600__focus =
    A.class "sm:focus:placeholder-purple-600:focus"


sm__focus__placeholder_purple_700__focus : Html.Attribute msg
sm__focus__placeholder_purple_700__focus =
    A.class "sm:focus:placeholder-purple-700:focus"


sm__focus__placeholder_purple_800__focus : Html.Attribute msg
sm__focus__placeholder_purple_800__focus =
    A.class "sm:focus:placeholder-purple-800:focus"


sm__focus__placeholder_purple_900__focus : Html.Attribute msg
sm__focus__placeholder_purple_900__focus =
    A.class "sm:focus:placeholder-purple-900:focus"


sm__focus__placeholder_pink_100__focus : Html.Attribute msg
sm__focus__placeholder_pink_100__focus =
    A.class "sm:focus:placeholder-pink-100:focus"


sm__focus__placeholder_pink_200__focus : Html.Attribute msg
sm__focus__placeholder_pink_200__focus =
    A.class "sm:focus:placeholder-pink-200:focus"


sm__focus__placeholder_pink_300__focus : Html.Attribute msg
sm__focus__placeholder_pink_300__focus =
    A.class "sm:focus:placeholder-pink-300:focus"


sm__focus__placeholder_pink_400__focus : Html.Attribute msg
sm__focus__placeholder_pink_400__focus =
    A.class "sm:focus:placeholder-pink-400:focus"


sm__focus__placeholder_pink_500__focus : Html.Attribute msg
sm__focus__placeholder_pink_500__focus =
    A.class "sm:focus:placeholder-pink-500:focus"


sm__focus__placeholder_pink_600__focus : Html.Attribute msg
sm__focus__placeholder_pink_600__focus =
    A.class "sm:focus:placeholder-pink-600:focus"


sm__focus__placeholder_pink_700__focus : Html.Attribute msg
sm__focus__placeholder_pink_700__focus =
    A.class "sm:focus:placeholder-pink-700:focus"


sm__focus__placeholder_pink_800__focus : Html.Attribute msg
sm__focus__placeholder_pink_800__focus =
    A.class "sm:focus:placeholder-pink-800:focus"


sm__focus__placeholder_pink_900__focus : Html.Attribute msg
sm__focus__placeholder_pink_900__focus =
    A.class "sm:focus:placeholder-pink-900:focus"


sm__pointer_events_none : Html.Attribute msg
sm__pointer_events_none =
    A.class "sm:pointer-events-none"


sm__pointer_events_auto : Html.Attribute msg
sm__pointer_events_auto =
    A.class "sm:pointer-events-auto"


sm__static : Html.Attribute msg
sm__static =
    A.class "sm:static"


sm__fixed : Html.Attribute msg
sm__fixed =
    A.class "sm:fixed"


sm__absolute : Html.Attribute msg
sm__absolute =
    A.class "sm:absolute"


sm__relative : Html.Attribute msg
sm__relative =
    A.class "sm:relative"


sm__sticky : Html.Attribute msg
sm__sticky =
    A.class "sm:sticky"


sm__inset_0 : Html.Attribute msg
sm__inset_0 =
    A.class "sm:inset-0"


sm__inset_auto : Html.Attribute msg
sm__inset_auto =
    A.class "sm:inset-auto"


sm__inset_y_0 : Html.Attribute msg
sm__inset_y_0 =
    A.class "sm:inset-y-0"


sm__inset_x_0 : Html.Attribute msg
sm__inset_x_0 =
    A.class "sm:inset-x-0"


sm__inset_y_auto : Html.Attribute msg
sm__inset_y_auto =
    A.class "sm:inset-y-auto"


sm__inset_x_auto : Html.Attribute msg
sm__inset_x_auto =
    A.class "sm:inset-x-auto"


sm__top_0 : Html.Attribute msg
sm__top_0 =
    A.class "sm:top-0"


sm__right_0 : Html.Attribute msg
sm__right_0 =
    A.class "sm:right-0"


sm__bottom_0 : Html.Attribute msg
sm__bottom_0 =
    A.class "sm:bottom-0"


sm__left_0 : Html.Attribute msg
sm__left_0 =
    A.class "sm:left-0"


sm__top_auto : Html.Attribute msg
sm__top_auto =
    A.class "sm:top-auto"


sm__right_auto : Html.Attribute msg
sm__right_auto =
    A.class "sm:right-auto"


sm__bottom_auto : Html.Attribute msg
sm__bottom_auto =
    A.class "sm:bottom-auto"


sm__left_auto : Html.Attribute msg
sm__left_auto =
    A.class "sm:left-auto"


sm__resize_none : Html.Attribute msg
sm__resize_none =
    A.class "sm:resize-none"


sm__resize_y : Html.Attribute msg
sm__resize_y =
    A.class "sm:resize-y"


sm__resize_x : Html.Attribute msg
sm__resize_x =
    A.class "sm:resize-x"


sm__resize : Html.Attribute msg
sm__resize =
    A.class "sm:resize"


sm__shadow_xs : Html.Attribute msg
sm__shadow_xs =
    A.class "sm:shadow-xs"


sm__shadow_sm : Html.Attribute msg
sm__shadow_sm =
    A.class "sm:shadow-sm"


sm__shadow : Html.Attribute msg
sm__shadow =
    A.class "sm:shadow"


sm__shadow_md : Html.Attribute msg
sm__shadow_md =
    A.class "sm:shadow-md"


sm__shadow_lg : Html.Attribute msg
sm__shadow_lg =
    A.class "sm:shadow-lg"


sm__shadow_xl : Html.Attribute msg
sm__shadow_xl =
    A.class "sm:shadow-xl"


sm__shadow_2xl : Html.Attribute msg
sm__shadow_2xl =
    A.class "sm:shadow-2xl"


sm__shadow_inner : Html.Attribute msg
sm__shadow_inner =
    A.class "sm:shadow-inner"


sm__shadow_outline : Html.Attribute msg
sm__shadow_outline =
    A.class "sm:shadow-outline"


sm__shadow_none : Html.Attribute msg
sm__shadow_none =
    A.class "sm:shadow-none"


sm__hover__shadow_xs : Html.Attribute msg
sm__hover__shadow_xs =
    A.class "sm:hover:shadow-xs"


sm__hover__shadow_sm : Html.Attribute msg
sm__hover__shadow_sm =
    A.class "sm:hover:shadow-sm"


sm__hover__shadow : Html.Attribute msg
sm__hover__shadow =
    A.class "sm:hover:shadow"


sm__hover__shadow_md : Html.Attribute msg
sm__hover__shadow_md =
    A.class "sm:hover:shadow-md"


sm__hover__shadow_lg : Html.Attribute msg
sm__hover__shadow_lg =
    A.class "sm:hover:shadow-lg"


sm__hover__shadow_xl : Html.Attribute msg
sm__hover__shadow_xl =
    A.class "sm:hover:shadow-xl"


sm__hover__shadow_2xl : Html.Attribute msg
sm__hover__shadow_2xl =
    A.class "sm:hover:shadow-2xl"


sm__hover__shadow_inner : Html.Attribute msg
sm__hover__shadow_inner =
    A.class "sm:hover:shadow-inner"


sm__hover__shadow_outline : Html.Attribute msg
sm__hover__shadow_outline =
    A.class "sm:hover:shadow-outline"


sm__hover__shadow_none : Html.Attribute msg
sm__hover__shadow_none =
    A.class "sm:hover:shadow-none"


sm__focus__shadow_xs : Html.Attribute msg
sm__focus__shadow_xs =
    A.class "sm:focus:shadow-xs"


sm__focus__shadow_sm : Html.Attribute msg
sm__focus__shadow_sm =
    A.class "sm:focus:shadow-sm"


sm__focus__shadow : Html.Attribute msg
sm__focus__shadow =
    A.class "sm:focus:shadow"


sm__focus__shadow_md : Html.Attribute msg
sm__focus__shadow_md =
    A.class "sm:focus:shadow-md"


sm__focus__shadow_lg : Html.Attribute msg
sm__focus__shadow_lg =
    A.class "sm:focus:shadow-lg"


sm__focus__shadow_xl : Html.Attribute msg
sm__focus__shadow_xl =
    A.class "sm:focus:shadow-xl"


sm__focus__shadow_2xl : Html.Attribute msg
sm__focus__shadow_2xl =
    A.class "sm:focus:shadow-2xl"


sm__focus__shadow_inner : Html.Attribute msg
sm__focus__shadow_inner =
    A.class "sm:focus:shadow-inner"


sm__focus__shadow_outline : Html.Attribute msg
sm__focus__shadow_outline =
    A.class "sm:focus:shadow-outline"


sm__focus__shadow_none : Html.Attribute msg
sm__focus__shadow_none =
    A.class "sm:focus:shadow-none"


sm__fill_current : Html.Attribute msg
sm__fill_current =
    A.class "sm:fill-current"


sm__stroke_current : Html.Attribute msg
sm__stroke_current =
    A.class "sm:stroke-current"


sm__stroke_0 : Html.Attribute msg
sm__stroke_0 =
    A.class "sm:stroke-0"


sm__stroke_1 : Html.Attribute msg
sm__stroke_1 =
    A.class "sm:stroke-1"


sm__stroke_2 : Html.Attribute msg
sm__stroke_2 =
    A.class "sm:stroke-2"


sm__table_auto : Html.Attribute msg
sm__table_auto =
    A.class "sm:table-auto"


sm__table_fixed : Html.Attribute msg
sm__table_fixed =
    A.class "sm:table-fixed"


sm__text_left : Html.Attribute msg
sm__text_left =
    A.class "sm:text-left"


sm__text_center : Html.Attribute msg
sm__text_center =
    A.class "sm:text-center"


sm__text_right : Html.Attribute msg
sm__text_right =
    A.class "sm:text-right"


sm__text_justify : Html.Attribute msg
sm__text_justify =
    A.class "sm:text-justify"


sm__text_transparent : Html.Attribute msg
sm__text_transparent =
    A.class "sm:text-transparent"


sm__text_black : Html.Attribute msg
sm__text_black =
    A.class "sm:text-black"


sm__text_white : Html.Attribute msg
sm__text_white =
    A.class "sm:text-white"


sm__text_gray_100 : Html.Attribute msg
sm__text_gray_100 =
    A.class "sm:text-gray-100"


sm__text_gray_200 : Html.Attribute msg
sm__text_gray_200 =
    A.class "sm:text-gray-200"


sm__text_gray_300 : Html.Attribute msg
sm__text_gray_300 =
    A.class "sm:text-gray-300"


sm__text_gray_400 : Html.Attribute msg
sm__text_gray_400 =
    A.class "sm:text-gray-400"


sm__text_gray_500 : Html.Attribute msg
sm__text_gray_500 =
    A.class "sm:text-gray-500"


sm__text_gray_600 : Html.Attribute msg
sm__text_gray_600 =
    A.class "sm:text-gray-600"


sm__text_gray_700 : Html.Attribute msg
sm__text_gray_700 =
    A.class "sm:text-gray-700"


sm__text_gray_800 : Html.Attribute msg
sm__text_gray_800 =
    A.class "sm:text-gray-800"


sm__text_gray_900 : Html.Attribute msg
sm__text_gray_900 =
    A.class "sm:text-gray-900"


sm__text_red_100 : Html.Attribute msg
sm__text_red_100 =
    A.class "sm:text-red-100"


sm__text_red_200 : Html.Attribute msg
sm__text_red_200 =
    A.class "sm:text-red-200"


sm__text_red_300 : Html.Attribute msg
sm__text_red_300 =
    A.class "sm:text-red-300"


sm__text_red_400 : Html.Attribute msg
sm__text_red_400 =
    A.class "sm:text-red-400"


sm__text_red_500 : Html.Attribute msg
sm__text_red_500 =
    A.class "sm:text-red-500"


sm__text_red_600 : Html.Attribute msg
sm__text_red_600 =
    A.class "sm:text-red-600"


sm__text_red_700 : Html.Attribute msg
sm__text_red_700 =
    A.class "sm:text-red-700"


sm__text_red_800 : Html.Attribute msg
sm__text_red_800 =
    A.class "sm:text-red-800"


sm__text_red_900 : Html.Attribute msg
sm__text_red_900 =
    A.class "sm:text-red-900"


sm__text_orange_100 : Html.Attribute msg
sm__text_orange_100 =
    A.class "sm:text-orange-100"


sm__text_orange_200 : Html.Attribute msg
sm__text_orange_200 =
    A.class "sm:text-orange-200"


sm__text_orange_300 : Html.Attribute msg
sm__text_orange_300 =
    A.class "sm:text-orange-300"


sm__text_orange_400 : Html.Attribute msg
sm__text_orange_400 =
    A.class "sm:text-orange-400"


sm__text_orange_500 : Html.Attribute msg
sm__text_orange_500 =
    A.class "sm:text-orange-500"


sm__text_orange_600 : Html.Attribute msg
sm__text_orange_600 =
    A.class "sm:text-orange-600"


sm__text_orange_700 : Html.Attribute msg
sm__text_orange_700 =
    A.class "sm:text-orange-700"


sm__text_orange_800 : Html.Attribute msg
sm__text_orange_800 =
    A.class "sm:text-orange-800"


sm__text_orange_900 : Html.Attribute msg
sm__text_orange_900 =
    A.class "sm:text-orange-900"


sm__text_yellow_100 : Html.Attribute msg
sm__text_yellow_100 =
    A.class "sm:text-yellow-100"


sm__text_yellow_200 : Html.Attribute msg
sm__text_yellow_200 =
    A.class "sm:text-yellow-200"


sm__text_yellow_300 : Html.Attribute msg
sm__text_yellow_300 =
    A.class "sm:text-yellow-300"


sm__text_yellow_400 : Html.Attribute msg
sm__text_yellow_400 =
    A.class "sm:text-yellow-400"


sm__text_yellow_500 : Html.Attribute msg
sm__text_yellow_500 =
    A.class "sm:text-yellow-500"


sm__text_yellow_600 : Html.Attribute msg
sm__text_yellow_600 =
    A.class "sm:text-yellow-600"


sm__text_yellow_700 : Html.Attribute msg
sm__text_yellow_700 =
    A.class "sm:text-yellow-700"


sm__text_yellow_800 : Html.Attribute msg
sm__text_yellow_800 =
    A.class "sm:text-yellow-800"


sm__text_yellow_900 : Html.Attribute msg
sm__text_yellow_900 =
    A.class "sm:text-yellow-900"


sm__text_green_100 : Html.Attribute msg
sm__text_green_100 =
    A.class "sm:text-green-100"


sm__text_green_200 : Html.Attribute msg
sm__text_green_200 =
    A.class "sm:text-green-200"


sm__text_green_300 : Html.Attribute msg
sm__text_green_300 =
    A.class "sm:text-green-300"


sm__text_green_400 : Html.Attribute msg
sm__text_green_400 =
    A.class "sm:text-green-400"


sm__text_green_500 : Html.Attribute msg
sm__text_green_500 =
    A.class "sm:text-green-500"


sm__text_green_600 : Html.Attribute msg
sm__text_green_600 =
    A.class "sm:text-green-600"


sm__text_green_700 : Html.Attribute msg
sm__text_green_700 =
    A.class "sm:text-green-700"


sm__text_green_800 : Html.Attribute msg
sm__text_green_800 =
    A.class "sm:text-green-800"


sm__text_green_900 : Html.Attribute msg
sm__text_green_900 =
    A.class "sm:text-green-900"


sm__text_teal_100 : Html.Attribute msg
sm__text_teal_100 =
    A.class "sm:text-teal-100"


sm__text_teal_200 : Html.Attribute msg
sm__text_teal_200 =
    A.class "sm:text-teal-200"


sm__text_teal_300 : Html.Attribute msg
sm__text_teal_300 =
    A.class "sm:text-teal-300"


sm__text_teal_400 : Html.Attribute msg
sm__text_teal_400 =
    A.class "sm:text-teal-400"


sm__text_teal_500 : Html.Attribute msg
sm__text_teal_500 =
    A.class "sm:text-teal-500"


sm__text_teal_600 : Html.Attribute msg
sm__text_teal_600 =
    A.class "sm:text-teal-600"


sm__text_teal_700 : Html.Attribute msg
sm__text_teal_700 =
    A.class "sm:text-teal-700"


sm__text_teal_800 : Html.Attribute msg
sm__text_teal_800 =
    A.class "sm:text-teal-800"


sm__text_teal_900 : Html.Attribute msg
sm__text_teal_900 =
    A.class "sm:text-teal-900"


sm__text_blue_100 : Html.Attribute msg
sm__text_blue_100 =
    A.class "sm:text-blue-100"


sm__text_blue_200 : Html.Attribute msg
sm__text_blue_200 =
    A.class "sm:text-blue-200"


sm__text_blue_300 : Html.Attribute msg
sm__text_blue_300 =
    A.class "sm:text-blue-300"


sm__text_blue_400 : Html.Attribute msg
sm__text_blue_400 =
    A.class "sm:text-blue-400"


sm__text_blue_500 : Html.Attribute msg
sm__text_blue_500 =
    A.class "sm:text-blue-500"


sm__text_blue_600 : Html.Attribute msg
sm__text_blue_600 =
    A.class "sm:text-blue-600"


sm__text_blue_700 : Html.Attribute msg
sm__text_blue_700 =
    A.class "sm:text-blue-700"


sm__text_blue_800 : Html.Attribute msg
sm__text_blue_800 =
    A.class "sm:text-blue-800"


sm__text_blue_900 : Html.Attribute msg
sm__text_blue_900 =
    A.class "sm:text-blue-900"


sm__text_indigo_100 : Html.Attribute msg
sm__text_indigo_100 =
    A.class "sm:text-indigo-100"


sm__text_indigo_200 : Html.Attribute msg
sm__text_indigo_200 =
    A.class "sm:text-indigo-200"


sm__text_indigo_300 : Html.Attribute msg
sm__text_indigo_300 =
    A.class "sm:text-indigo-300"


sm__text_indigo_400 : Html.Attribute msg
sm__text_indigo_400 =
    A.class "sm:text-indigo-400"


sm__text_indigo_500 : Html.Attribute msg
sm__text_indigo_500 =
    A.class "sm:text-indigo-500"


sm__text_indigo_600 : Html.Attribute msg
sm__text_indigo_600 =
    A.class "sm:text-indigo-600"


sm__text_indigo_700 : Html.Attribute msg
sm__text_indigo_700 =
    A.class "sm:text-indigo-700"


sm__text_indigo_800 : Html.Attribute msg
sm__text_indigo_800 =
    A.class "sm:text-indigo-800"


sm__text_indigo_900 : Html.Attribute msg
sm__text_indigo_900 =
    A.class "sm:text-indigo-900"


sm__text_purple_100 : Html.Attribute msg
sm__text_purple_100 =
    A.class "sm:text-purple-100"


sm__text_purple_200 : Html.Attribute msg
sm__text_purple_200 =
    A.class "sm:text-purple-200"


sm__text_purple_300 : Html.Attribute msg
sm__text_purple_300 =
    A.class "sm:text-purple-300"


sm__text_purple_400 : Html.Attribute msg
sm__text_purple_400 =
    A.class "sm:text-purple-400"


sm__text_purple_500 : Html.Attribute msg
sm__text_purple_500 =
    A.class "sm:text-purple-500"


sm__text_purple_600 : Html.Attribute msg
sm__text_purple_600 =
    A.class "sm:text-purple-600"


sm__text_purple_700 : Html.Attribute msg
sm__text_purple_700 =
    A.class "sm:text-purple-700"


sm__text_purple_800 : Html.Attribute msg
sm__text_purple_800 =
    A.class "sm:text-purple-800"


sm__text_purple_900 : Html.Attribute msg
sm__text_purple_900 =
    A.class "sm:text-purple-900"


sm__text_pink_100 : Html.Attribute msg
sm__text_pink_100 =
    A.class "sm:text-pink-100"


sm__text_pink_200 : Html.Attribute msg
sm__text_pink_200 =
    A.class "sm:text-pink-200"


sm__text_pink_300 : Html.Attribute msg
sm__text_pink_300 =
    A.class "sm:text-pink-300"


sm__text_pink_400 : Html.Attribute msg
sm__text_pink_400 =
    A.class "sm:text-pink-400"


sm__text_pink_500 : Html.Attribute msg
sm__text_pink_500 =
    A.class "sm:text-pink-500"


sm__text_pink_600 : Html.Attribute msg
sm__text_pink_600 =
    A.class "sm:text-pink-600"


sm__text_pink_700 : Html.Attribute msg
sm__text_pink_700 =
    A.class "sm:text-pink-700"


sm__text_pink_800 : Html.Attribute msg
sm__text_pink_800 =
    A.class "sm:text-pink-800"


sm__text_pink_900 : Html.Attribute msg
sm__text_pink_900 =
    A.class "sm:text-pink-900"


sm__hover__text_transparent : Html.Attribute msg
sm__hover__text_transparent =
    A.class "sm:hover:text-transparent"


sm__hover__text_black : Html.Attribute msg
sm__hover__text_black =
    A.class "sm:hover:text-black"


sm__hover__text_white : Html.Attribute msg
sm__hover__text_white =
    A.class "sm:hover:text-white"


sm__hover__text_gray_100 : Html.Attribute msg
sm__hover__text_gray_100 =
    A.class "sm:hover:text-gray-100"


sm__hover__text_gray_200 : Html.Attribute msg
sm__hover__text_gray_200 =
    A.class "sm:hover:text-gray-200"


sm__hover__text_gray_300 : Html.Attribute msg
sm__hover__text_gray_300 =
    A.class "sm:hover:text-gray-300"


sm__hover__text_gray_400 : Html.Attribute msg
sm__hover__text_gray_400 =
    A.class "sm:hover:text-gray-400"


sm__hover__text_gray_500 : Html.Attribute msg
sm__hover__text_gray_500 =
    A.class "sm:hover:text-gray-500"


sm__hover__text_gray_600 : Html.Attribute msg
sm__hover__text_gray_600 =
    A.class "sm:hover:text-gray-600"


sm__hover__text_gray_700 : Html.Attribute msg
sm__hover__text_gray_700 =
    A.class "sm:hover:text-gray-700"


sm__hover__text_gray_800 : Html.Attribute msg
sm__hover__text_gray_800 =
    A.class "sm:hover:text-gray-800"


sm__hover__text_gray_900 : Html.Attribute msg
sm__hover__text_gray_900 =
    A.class "sm:hover:text-gray-900"


sm__hover__text_red_100 : Html.Attribute msg
sm__hover__text_red_100 =
    A.class "sm:hover:text-red-100"


sm__hover__text_red_200 : Html.Attribute msg
sm__hover__text_red_200 =
    A.class "sm:hover:text-red-200"


sm__hover__text_red_300 : Html.Attribute msg
sm__hover__text_red_300 =
    A.class "sm:hover:text-red-300"


sm__hover__text_red_400 : Html.Attribute msg
sm__hover__text_red_400 =
    A.class "sm:hover:text-red-400"


sm__hover__text_red_500 : Html.Attribute msg
sm__hover__text_red_500 =
    A.class "sm:hover:text-red-500"


sm__hover__text_red_600 : Html.Attribute msg
sm__hover__text_red_600 =
    A.class "sm:hover:text-red-600"


sm__hover__text_red_700 : Html.Attribute msg
sm__hover__text_red_700 =
    A.class "sm:hover:text-red-700"


sm__hover__text_red_800 : Html.Attribute msg
sm__hover__text_red_800 =
    A.class "sm:hover:text-red-800"


sm__hover__text_red_900 : Html.Attribute msg
sm__hover__text_red_900 =
    A.class "sm:hover:text-red-900"


sm__hover__text_orange_100 : Html.Attribute msg
sm__hover__text_orange_100 =
    A.class "sm:hover:text-orange-100"


sm__hover__text_orange_200 : Html.Attribute msg
sm__hover__text_orange_200 =
    A.class "sm:hover:text-orange-200"


sm__hover__text_orange_300 : Html.Attribute msg
sm__hover__text_orange_300 =
    A.class "sm:hover:text-orange-300"


sm__hover__text_orange_400 : Html.Attribute msg
sm__hover__text_orange_400 =
    A.class "sm:hover:text-orange-400"


sm__hover__text_orange_500 : Html.Attribute msg
sm__hover__text_orange_500 =
    A.class "sm:hover:text-orange-500"


sm__hover__text_orange_600 : Html.Attribute msg
sm__hover__text_orange_600 =
    A.class "sm:hover:text-orange-600"


sm__hover__text_orange_700 : Html.Attribute msg
sm__hover__text_orange_700 =
    A.class "sm:hover:text-orange-700"


sm__hover__text_orange_800 : Html.Attribute msg
sm__hover__text_orange_800 =
    A.class "sm:hover:text-orange-800"


sm__hover__text_orange_900 : Html.Attribute msg
sm__hover__text_orange_900 =
    A.class "sm:hover:text-orange-900"


sm__hover__text_yellow_100 : Html.Attribute msg
sm__hover__text_yellow_100 =
    A.class "sm:hover:text-yellow-100"


sm__hover__text_yellow_200 : Html.Attribute msg
sm__hover__text_yellow_200 =
    A.class "sm:hover:text-yellow-200"


sm__hover__text_yellow_300 : Html.Attribute msg
sm__hover__text_yellow_300 =
    A.class "sm:hover:text-yellow-300"


sm__hover__text_yellow_400 : Html.Attribute msg
sm__hover__text_yellow_400 =
    A.class "sm:hover:text-yellow-400"


sm__hover__text_yellow_500 : Html.Attribute msg
sm__hover__text_yellow_500 =
    A.class "sm:hover:text-yellow-500"


sm__hover__text_yellow_600 : Html.Attribute msg
sm__hover__text_yellow_600 =
    A.class "sm:hover:text-yellow-600"


sm__hover__text_yellow_700 : Html.Attribute msg
sm__hover__text_yellow_700 =
    A.class "sm:hover:text-yellow-700"


sm__hover__text_yellow_800 : Html.Attribute msg
sm__hover__text_yellow_800 =
    A.class "sm:hover:text-yellow-800"


sm__hover__text_yellow_900 : Html.Attribute msg
sm__hover__text_yellow_900 =
    A.class "sm:hover:text-yellow-900"


sm__hover__text_green_100 : Html.Attribute msg
sm__hover__text_green_100 =
    A.class "sm:hover:text-green-100"


sm__hover__text_green_200 : Html.Attribute msg
sm__hover__text_green_200 =
    A.class "sm:hover:text-green-200"


sm__hover__text_green_300 : Html.Attribute msg
sm__hover__text_green_300 =
    A.class "sm:hover:text-green-300"


sm__hover__text_green_400 : Html.Attribute msg
sm__hover__text_green_400 =
    A.class "sm:hover:text-green-400"


sm__hover__text_green_500 : Html.Attribute msg
sm__hover__text_green_500 =
    A.class "sm:hover:text-green-500"


sm__hover__text_green_600 : Html.Attribute msg
sm__hover__text_green_600 =
    A.class "sm:hover:text-green-600"


sm__hover__text_green_700 : Html.Attribute msg
sm__hover__text_green_700 =
    A.class "sm:hover:text-green-700"


sm__hover__text_green_800 : Html.Attribute msg
sm__hover__text_green_800 =
    A.class "sm:hover:text-green-800"


sm__hover__text_green_900 : Html.Attribute msg
sm__hover__text_green_900 =
    A.class "sm:hover:text-green-900"


sm__hover__text_teal_100 : Html.Attribute msg
sm__hover__text_teal_100 =
    A.class "sm:hover:text-teal-100"


sm__hover__text_teal_200 : Html.Attribute msg
sm__hover__text_teal_200 =
    A.class "sm:hover:text-teal-200"


sm__hover__text_teal_300 : Html.Attribute msg
sm__hover__text_teal_300 =
    A.class "sm:hover:text-teal-300"


sm__hover__text_teal_400 : Html.Attribute msg
sm__hover__text_teal_400 =
    A.class "sm:hover:text-teal-400"


sm__hover__text_teal_500 : Html.Attribute msg
sm__hover__text_teal_500 =
    A.class "sm:hover:text-teal-500"


sm__hover__text_teal_600 : Html.Attribute msg
sm__hover__text_teal_600 =
    A.class "sm:hover:text-teal-600"


sm__hover__text_teal_700 : Html.Attribute msg
sm__hover__text_teal_700 =
    A.class "sm:hover:text-teal-700"


sm__hover__text_teal_800 : Html.Attribute msg
sm__hover__text_teal_800 =
    A.class "sm:hover:text-teal-800"


sm__hover__text_teal_900 : Html.Attribute msg
sm__hover__text_teal_900 =
    A.class "sm:hover:text-teal-900"


sm__hover__text_blue_100 : Html.Attribute msg
sm__hover__text_blue_100 =
    A.class "sm:hover:text-blue-100"


sm__hover__text_blue_200 : Html.Attribute msg
sm__hover__text_blue_200 =
    A.class "sm:hover:text-blue-200"


sm__hover__text_blue_300 : Html.Attribute msg
sm__hover__text_blue_300 =
    A.class "sm:hover:text-blue-300"


sm__hover__text_blue_400 : Html.Attribute msg
sm__hover__text_blue_400 =
    A.class "sm:hover:text-blue-400"


sm__hover__text_blue_500 : Html.Attribute msg
sm__hover__text_blue_500 =
    A.class "sm:hover:text-blue-500"


sm__hover__text_blue_600 : Html.Attribute msg
sm__hover__text_blue_600 =
    A.class "sm:hover:text-blue-600"


sm__hover__text_blue_700 : Html.Attribute msg
sm__hover__text_blue_700 =
    A.class "sm:hover:text-blue-700"


sm__hover__text_blue_800 : Html.Attribute msg
sm__hover__text_blue_800 =
    A.class "sm:hover:text-blue-800"


sm__hover__text_blue_900 : Html.Attribute msg
sm__hover__text_blue_900 =
    A.class "sm:hover:text-blue-900"


sm__hover__text_indigo_100 : Html.Attribute msg
sm__hover__text_indigo_100 =
    A.class "sm:hover:text-indigo-100"


sm__hover__text_indigo_200 : Html.Attribute msg
sm__hover__text_indigo_200 =
    A.class "sm:hover:text-indigo-200"


sm__hover__text_indigo_300 : Html.Attribute msg
sm__hover__text_indigo_300 =
    A.class "sm:hover:text-indigo-300"


sm__hover__text_indigo_400 : Html.Attribute msg
sm__hover__text_indigo_400 =
    A.class "sm:hover:text-indigo-400"


sm__hover__text_indigo_500 : Html.Attribute msg
sm__hover__text_indigo_500 =
    A.class "sm:hover:text-indigo-500"


sm__hover__text_indigo_600 : Html.Attribute msg
sm__hover__text_indigo_600 =
    A.class "sm:hover:text-indigo-600"


sm__hover__text_indigo_700 : Html.Attribute msg
sm__hover__text_indigo_700 =
    A.class "sm:hover:text-indigo-700"


sm__hover__text_indigo_800 : Html.Attribute msg
sm__hover__text_indigo_800 =
    A.class "sm:hover:text-indigo-800"


sm__hover__text_indigo_900 : Html.Attribute msg
sm__hover__text_indigo_900 =
    A.class "sm:hover:text-indigo-900"


sm__hover__text_purple_100 : Html.Attribute msg
sm__hover__text_purple_100 =
    A.class "sm:hover:text-purple-100"


sm__hover__text_purple_200 : Html.Attribute msg
sm__hover__text_purple_200 =
    A.class "sm:hover:text-purple-200"


sm__hover__text_purple_300 : Html.Attribute msg
sm__hover__text_purple_300 =
    A.class "sm:hover:text-purple-300"


sm__hover__text_purple_400 : Html.Attribute msg
sm__hover__text_purple_400 =
    A.class "sm:hover:text-purple-400"


sm__hover__text_purple_500 : Html.Attribute msg
sm__hover__text_purple_500 =
    A.class "sm:hover:text-purple-500"


sm__hover__text_purple_600 : Html.Attribute msg
sm__hover__text_purple_600 =
    A.class "sm:hover:text-purple-600"


sm__hover__text_purple_700 : Html.Attribute msg
sm__hover__text_purple_700 =
    A.class "sm:hover:text-purple-700"


sm__hover__text_purple_800 : Html.Attribute msg
sm__hover__text_purple_800 =
    A.class "sm:hover:text-purple-800"


sm__hover__text_purple_900 : Html.Attribute msg
sm__hover__text_purple_900 =
    A.class "sm:hover:text-purple-900"


sm__hover__text_pink_100 : Html.Attribute msg
sm__hover__text_pink_100 =
    A.class "sm:hover:text-pink-100"


sm__hover__text_pink_200 : Html.Attribute msg
sm__hover__text_pink_200 =
    A.class "sm:hover:text-pink-200"


sm__hover__text_pink_300 : Html.Attribute msg
sm__hover__text_pink_300 =
    A.class "sm:hover:text-pink-300"


sm__hover__text_pink_400 : Html.Attribute msg
sm__hover__text_pink_400 =
    A.class "sm:hover:text-pink-400"


sm__hover__text_pink_500 : Html.Attribute msg
sm__hover__text_pink_500 =
    A.class "sm:hover:text-pink-500"


sm__hover__text_pink_600 : Html.Attribute msg
sm__hover__text_pink_600 =
    A.class "sm:hover:text-pink-600"


sm__hover__text_pink_700 : Html.Attribute msg
sm__hover__text_pink_700 =
    A.class "sm:hover:text-pink-700"


sm__hover__text_pink_800 : Html.Attribute msg
sm__hover__text_pink_800 =
    A.class "sm:hover:text-pink-800"


sm__hover__text_pink_900 : Html.Attribute msg
sm__hover__text_pink_900 =
    A.class "sm:hover:text-pink-900"


sm__focus__text_transparent : Html.Attribute msg
sm__focus__text_transparent =
    A.class "sm:focus:text-transparent"


sm__focus__text_black : Html.Attribute msg
sm__focus__text_black =
    A.class "sm:focus:text-black"


sm__focus__text_white : Html.Attribute msg
sm__focus__text_white =
    A.class "sm:focus:text-white"


sm__focus__text_gray_100 : Html.Attribute msg
sm__focus__text_gray_100 =
    A.class "sm:focus:text-gray-100"


sm__focus__text_gray_200 : Html.Attribute msg
sm__focus__text_gray_200 =
    A.class "sm:focus:text-gray-200"


sm__focus__text_gray_300 : Html.Attribute msg
sm__focus__text_gray_300 =
    A.class "sm:focus:text-gray-300"


sm__focus__text_gray_400 : Html.Attribute msg
sm__focus__text_gray_400 =
    A.class "sm:focus:text-gray-400"


sm__focus__text_gray_500 : Html.Attribute msg
sm__focus__text_gray_500 =
    A.class "sm:focus:text-gray-500"


sm__focus__text_gray_600 : Html.Attribute msg
sm__focus__text_gray_600 =
    A.class "sm:focus:text-gray-600"


sm__focus__text_gray_700 : Html.Attribute msg
sm__focus__text_gray_700 =
    A.class "sm:focus:text-gray-700"


sm__focus__text_gray_800 : Html.Attribute msg
sm__focus__text_gray_800 =
    A.class "sm:focus:text-gray-800"


sm__focus__text_gray_900 : Html.Attribute msg
sm__focus__text_gray_900 =
    A.class "sm:focus:text-gray-900"


sm__focus__text_red_100 : Html.Attribute msg
sm__focus__text_red_100 =
    A.class "sm:focus:text-red-100"


sm__focus__text_red_200 : Html.Attribute msg
sm__focus__text_red_200 =
    A.class "sm:focus:text-red-200"


sm__focus__text_red_300 : Html.Attribute msg
sm__focus__text_red_300 =
    A.class "sm:focus:text-red-300"


sm__focus__text_red_400 : Html.Attribute msg
sm__focus__text_red_400 =
    A.class "sm:focus:text-red-400"


sm__focus__text_red_500 : Html.Attribute msg
sm__focus__text_red_500 =
    A.class "sm:focus:text-red-500"


sm__focus__text_red_600 : Html.Attribute msg
sm__focus__text_red_600 =
    A.class "sm:focus:text-red-600"


sm__focus__text_red_700 : Html.Attribute msg
sm__focus__text_red_700 =
    A.class "sm:focus:text-red-700"


sm__focus__text_red_800 : Html.Attribute msg
sm__focus__text_red_800 =
    A.class "sm:focus:text-red-800"


sm__focus__text_red_900 : Html.Attribute msg
sm__focus__text_red_900 =
    A.class "sm:focus:text-red-900"


sm__focus__text_orange_100 : Html.Attribute msg
sm__focus__text_orange_100 =
    A.class "sm:focus:text-orange-100"


sm__focus__text_orange_200 : Html.Attribute msg
sm__focus__text_orange_200 =
    A.class "sm:focus:text-orange-200"


sm__focus__text_orange_300 : Html.Attribute msg
sm__focus__text_orange_300 =
    A.class "sm:focus:text-orange-300"


sm__focus__text_orange_400 : Html.Attribute msg
sm__focus__text_orange_400 =
    A.class "sm:focus:text-orange-400"


sm__focus__text_orange_500 : Html.Attribute msg
sm__focus__text_orange_500 =
    A.class "sm:focus:text-orange-500"


sm__focus__text_orange_600 : Html.Attribute msg
sm__focus__text_orange_600 =
    A.class "sm:focus:text-orange-600"


sm__focus__text_orange_700 : Html.Attribute msg
sm__focus__text_orange_700 =
    A.class "sm:focus:text-orange-700"


sm__focus__text_orange_800 : Html.Attribute msg
sm__focus__text_orange_800 =
    A.class "sm:focus:text-orange-800"


sm__focus__text_orange_900 : Html.Attribute msg
sm__focus__text_orange_900 =
    A.class "sm:focus:text-orange-900"


sm__focus__text_yellow_100 : Html.Attribute msg
sm__focus__text_yellow_100 =
    A.class "sm:focus:text-yellow-100"


sm__focus__text_yellow_200 : Html.Attribute msg
sm__focus__text_yellow_200 =
    A.class "sm:focus:text-yellow-200"


sm__focus__text_yellow_300 : Html.Attribute msg
sm__focus__text_yellow_300 =
    A.class "sm:focus:text-yellow-300"


sm__focus__text_yellow_400 : Html.Attribute msg
sm__focus__text_yellow_400 =
    A.class "sm:focus:text-yellow-400"


sm__focus__text_yellow_500 : Html.Attribute msg
sm__focus__text_yellow_500 =
    A.class "sm:focus:text-yellow-500"


sm__focus__text_yellow_600 : Html.Attribute msg
sm__focus__text_yellow_600 =
    A.class "sm:focus:text-yellow-600"


sm__focus__text_yellow_700 : Html.Attribute msg
sm__focus__text_yellow_700 =
    A.class "sm:focus:text-yellow-700"


sm__focus__text_yellow_800 : Html.Attribute msg
sm__focus__text_yellow_800 =
    A.class "sm:focus:text-yellow-800"


sm__focus__text_yellow_900 : Html.Attribute msg
sm__focus__text_yellow_900 =
    A.class "sm:focus:text-yellow-900"


sm__focus__text_green_100 : Html.Attribute msg
sm__focus__text_green_100 =
    A.class "sm:focus:text-green-100"


sm__focus__text_green_200 : Html.Attribute msg
sm__focus__text_green_200 =
    A.class "sm:focus:text-green-200"


sm__focus__text_green_300 : Html.Attribute msg
sm__focus__text_green_300 =
    A.class "sm:focus:text-green-300"


sm__focus__text_green_400 : Html.Attribute msg
sm__focus__text_green_400 =
    A.class "sm:focus:text-green-400"


sm__focus__text_green_500 : Html.Attribute msg
sm__focus__text_green_500 =
    A.class "sm:focus:text-green-500"


sm__focus__text_green_600 : Html.Attribute msg
sm__focus__text_green_600 =
    A.class "sm:focus:text-green-600"


sm__focus__text_green_700 : Html.Attribute msg
sm__focus__text_green_700 =
    A.class "sm:focus:text-green-700"


sm__focus__text_green_800 : Html.Attribute msg
sm__focus__text_green_800 =
    A.class "sm:focus:text-green-800"


sm__focus__text_green_900 : Html.Attribute msg
sm__focus__text_green_900 =
    A.class "sm:focus:text-green-900"


sm__focus__text_teal_100 : Html.Attribute msg
sm__focus__text_teal_100 =
    A.class "sm:focus:text-teal-100"


sm__focus__text_teal_200 : Html.Attribute msg
sm__focus__text_teal_200 =
    A.class "sm:focus:text-teal-200"


sm__focus__text_teal_300 : Html.Attribute msg
sm__focus__text_teal_300 =
    A.class "sm:focus:text-teal-300"


sm__focus__text_teal_400 : Html.Attribute msg
sm__focus__text_teal_400 =
    A.class "sm:focus:text-teal-400"


sm__focus__text_teal_500 : Html.Attribute msg
sm__focus__text_teal_500 =
    A.class "sm:focus:text-teal-500"


sm__focus__text_teal_600 : Html.Attribute msg
sm__focus__text_teal_600 =
    A.class "sm:focus:text-teal-600"


sm__focus__text_teal_700 : Html.Attribute msg
sm__focus__text_teal_700 =
    A.class "sm:focus:text-teal-700"


sm__focus__text_teal_800 : Html.Attribute msg
sm__focus__text_teal_800 =
    A.class "sm:focus:text-teal-800"


sm__focus__text_teal_900 : Html.Attribute msg
sm__focus__text_teal_900 =
    A.class "sm:focus:text-teal-900"


sm__focus__text_blue_100 : Html.Attribute msg
sm__focus__text_blue_100 =
    A.class "sm:focus:text-blue-100"


sm__focus__text_blue_200 : Html.Attribute msg
sm__focus__text_blue_200 =
    A.class "sm:focus:text-blue-200"


sm__focus__text_blue_300 : Html.Attribute msg
sm__focus__text_blue_300 =
    A.class "sm:focus:text-blue-300"


sm__focus__text_blue_400 : Html.Attribute msg
sm__focus__text_blue_400 =
    A.class "sm:focus:text-blue-400"


sm__focus__text_blue_500 : Html.Attribute msg
sm__focus__text_blue_500 =
    A.class "sm:focus:text-blue-500"


sm__focus__text_blue_600 : Html.Attribute msg
sm__focus__text_blue_600 =
    A.class "sm:focus:text-blue-600"


sm__focus__text_blue_700 : Html.Attribute msg
sm__focus__text_blue_700 =
    A.class "sm:focus:text-blue-700"


sm__focus__text_blue_800 : Html.Attribute msg
sm__focus__text_blue_800 =
    A.class "sm:focus:text-blue-800"


sm__focus__text_blue_900 : Html.Attribute msg
sm__focus__text_blue_900 =
    A.class "sm:focus:text-blue-900"


sm__focus__text_indigo_100 : Html.Attribute msg
sm__focus__text_indigo_100 =
    A.class "sm:focus:text-indigo-100"


sm__focus__text_indigo_200 : Html.Attribute msg
sm__focus__text_indigo_200 =
    A.class "sm:focus:text-indigo-200"


sm__focus__text_indigo_300 : Html.Attribute msg
sm__focus__text_indigo_300 =
    A.class "sm:focus:text-indigo-300"


sm__focus__text_indigo_400 : Html.Attribute msg
sm__focus__text_indigo_400 =
    A.class "sm:focus:text-indigo-400"


sm__focus__text_indigo_500 : Html.Attribute msg
sm__focus__text_indigo_500 =
    A.class "sm:focus:text-indigo-500"


sm__focus__text_indigo_600 : Html.Attribute msg
sm__focus__text_indigo_600 =
    A.class "sm:focus:text-indigo-600"


sm__focus__text_indigo_700 : Html.Attribute msg
sm__focus__text_indigo_700 =
    A.class "sm:focus:text-indigo-700"


sm__focus__text_indigo_800 : Html.Attribute msg
sm__focus__text_indigo_800 =
    A.class "sm:focus:text-indigo-800"


sm__focus__text_indigo_900 : Html.Attribute msg
sm__focus__text_indigo_900 =
    A.class "sm:focus:text-indigo-900"


sm__focus__text_purple_100 : Html.Attribute msg
sm__focus__text_purple_100 =
    A.class "sm:focus:text-purple-100"


sm__focus__text_purple_200 : Html.Attribute msg
sm__focus__text_purple_200 =
    A.class "sm:focus:text-purple-200"


sm__focus__text_purple_300 : Html.Attribute msg
sm__focus__text_purple_300 =
    A.class "sm:focus:text-purple-300"


sm__focus__text_purple_400 : Html.Attribute msg
sm__focus__text_purple_400 =
    A.class "sm:focus:text-purple-400"


sm__focus__text_purple_500 : Html.Attribute msg
sm__focus__text_purple_500 =
    A.class "sm:focus:text-purple-500"


sm__focus__text_purple_600 : Html.Attribute msg
sm__focus__text_purple_600 =
    A.class "sm:focus:text-purple-600"


sm__focus__text_purple_700 : Html.Attribute msg
sm__focus__text_purple_700 =
    A.class "sm:focus:text-purple-700"


sm__focus__text_purple_800 : Html.Attribute msg
sm__focus__text_purple_800 =
    A.class "sm:focus:text-purple-800"


sm__focus__text_purple_900 : Html.Attribute msg
sm__focus__text_purple_900 =
    A.class "sm:focus:text-purple-900"


sm__focus__text_pink_100 : Html.Attribute msg
sm__focus__text_pink_100 =
    A.class "sm:focus:text-pink-100"


sm__focus__text_pink_200 : Html.Attribute msg
sm__focus__text_pink_200 =
    A.class "sm:focus:text-pink-200"


sm__focus__text_pink_300 : Html.Attribute msg
sm__focus__text_pink_300 =
    A.class "sm:focus:text-pink-300"


sm__focus__text_pink_400 : Html.Attribute msg
sm__focus__text_pink_400 =
    A.class "sm:focus:text-pink-400"


sm__focus__text_pink_500 : Html.Attribute msg
sm__focus__text_pink_500 =
    A.class "sm:focus:text-pink-500"


sm__focus__text_pink_600 : Html.Attribute msg
sm__focus__text_pink_600 =
    A.class "sm:focus:text-pink-600"


sm__focus__text_pink_700 : Html.Attribute msg
sm__focus__text_pink_700 =
    A.class "sm:focus:text-pink-700"


sm__focus__text_pink_800 : Html.Attribute msg
sm__focus__text_pink_800 =
    A.class "sm:focus:text-pink-800"


sm__focus__text_pink_900 : Html.Attribute msg
sm__focus__text_pink_900 =
    A.class "sm:focus:text-pink-900"


sm__text_xs : Html.Attribute msg
sm__text_xs =
    A.class "sm:text-xs"


sm__text_sm : Html.Attribute msg
sm__text_sm =
    A.class "sm:text-sm"


sm__text_base : Html.Attribute msg
sm__text_base =
    A.class "sm:text-base"


sm__text_lg : Html.Attribute msg
sm__text_lg =
    A.class "sm:text-lg"


sm__text_xl : Html.Attribute msg
sm__text_xl =
    A.class "sm:text-xl"


sm__text_2xl : Html.Attribute msg
sm__text_2xl =
    A.class "sm:text-2xl"


sm__text_3xl : Html.Attribute msg
sm__text_3xl =
    A.class "sm:text-3xl"


sm__text_4xl : Html.Attribute msg
sm__text_4xl =
    A.class "sm:text-4xl"


sm__text_5xl : Html.Attribute msg
sm__text_5xl =
    A.class "sm:text-5xl"


sm__text_6xl : Html.Attribute msg
sm__text_6xl =
    A.class "sm:text-6xl"


sm__italic : Html.Attribute msg
sm__italic =
    A.class "sm:italic"


sm__not_italic : Html.Attribute msg
sm__not_italic =
    A.class "sm:not-italic"


sm__uppercase : Html.Attribute msg
sm__uppercase =
    A.class "sm:uppercase"


sm__lowercase : Html.Attribute msg
sm__lowercase =
    A.class "sm:lowercase"


sm__capitalize : Html.Attribute msg
sm__capitalize =
    A.class "sm:capitalize"


sm__normal_case : Html.Attribute msg
sm__normal_case =
    A.class "sm:normal-case"


sm__underline : Html.Attribute msg
sm__underline =
    A.class "sm:underline"


sm__line_through : Html.Attribute msg
sm__line_through =
    A.class "sm:line-through"


sm__no_underline : Html.Attribute msg
sm__no_underline =
    A.class "sm:no-underline"


sm__hover__underline : Html.Attribute msg
sm__hover__underline =
    A.class "sm:hover:underline"


sm__hover__line_through : Html.Attribute msg
sm__hover__line_through =
    A.class "sm:hover:line-through"


sm__hover__no_underline : Html.Attribute msg
sm__hover__no_underline =
    A.class "sm:hover:no-underline"


sm__focus__underline : Html.Attribute msg
sm__focus__underline =
    A.class "sm:focus:underline"


sm__focus__line_through : Html.Attribute msg
sm__focus__line_through =
    A.class "sm:focus:line-through"


sm__focus__no_underline : Html.Attribute msg
sm__focus__no_underline =
    A.class "sm:focus:no-underline"


sm__antialiased : Html.Attribute msg
sm__antialiased =
    A.class "sm:antialiased"


sm__subpixel_antialiased : Html.Attribute msg
sm__subpixel_antialiased =
    A.class "sm:subpixel-antialiased"


sm__tracking_tighter : Html.Attribute msg
sm__tracking_tighter =
    A.class "sm:tracking-tighter"


sm__tracking_tight : Html.Attribute msg
sm__tracking_tight =
    A.class "sm:tracking-tight"


sm__tracking_normal : Html.Attribute msg
sm__tracking_normal =
    A.class "sm:tracking-normal"


sm__tracking_wide : Html.Attribute msg
sm__tracking_wide =
    A.class "sm:tracking-wide"


sm__tracking_wider : Html.Attribute msg
sm__tracking_wider =
    A.class "sm:tracking-wider"


sm__tracking_widest : Html.Attribute msg
sm__tracking_widest =
    A.class "sm:tracking-widest"


sm__select_none : Html.Attribute msg
sm__select_none =
    A.class "sm:select-none"


sm__select_text : Html.Attribute msg
sm__select_text =
    A.class "sm:select-text"


sm__select_all : Html.Attribute msg
sm__select_all =
    A.class "sm:select-all"


sm__select_auto : Html.Attribute msg
sm__select_auto =
    A.class "sm:select-auto"


sm__align_baseline : Html.Attribute msg
sm__align_baseline =
    A.class "sm:align-baseline"


sm__align_top : Html.Attribute msg
sm__align_top =
    A.class "sm:align-top"


sm__align_middle : Html.Attribute msg
sm__align_middle =
    A.class "sm:align-middle"


sm__align_bottom : Html.Attribute msg
sm__align_bottom =
    A.class "sm:align-bottom"


sm__align_text_top : Html.Attribute msg
sm__align_text_top =
    A.class "sm:align-text-top"


sm__align_text_bottom : Html.Attribute msg
sm__align_text_bottom =
    A.class "sm:align-text-bottom"


sm__visible : Html.Attribute msg
sm__visible =
    A.class "sm:visible"


sm__invisible : Html.Attribute msg
sm__invisible =
    A.class "sm:invisible"


sm__whitespace_normal : Html.Attribute msg
sm__whitespace_normal =
    A.class "sm:whitespace-normal"


sm__whitespace_no_wrap : Html.Attribute msg
sm__whitespace_no_wrap =
    A.class "sm:whitespace-no-wrap"


sm__whitespace_pre : Html.Attribute msg
sm__whitespace_pre =
    A.class "sm:whitespace-pre"


sm__whitespace_pre_line : Html.Attribute msg
sm__whitespace_pre_line =
    A.class "sm:whitespace-pre-line"


sm__whitespace_pre_wrap : Html.Attribute msg
sm__whitespace_pre_wrap =
    A.class "sm:whitespace-pre-wrap"


sm__break_normal : Html.Attribute msg
sm__break_normal =
    A.class "sm:break-normal"


sm__break_words : Html.Attribute msg
sm__break_words =
    A.class "sm:break-words"


sm__break_all : Html.Attribute msg
sm__break_all =
    A.class "sm:break-all"


sm__truncate : Html.Attribute msg
sm__truncate =
    A.class "sm:truncate"


sm__w_0 : Html.Attribute msg
sm__w_0 =
    A.class "sm:w-0"


sm__w_1 : Html.Attribute msg
sm__w_1 =
    A.class "sm:w-1"


sm__w_2 : Html.Attribute msg
sm__w_2 =
    A.class "sm:w-2"


sm__w_3 : Html.Attribute msg
sm__w_3 =
    A.class "sm:w-3"


sm__w_4 : Html.Attribute msg
sm__w_4 =
    A.class "sm:w-4"


sm__w_5 : Html.Attribute msg
sm__w_5 =
    A.class "sm:w-5"


sm__w_6 : Html.Attribute msg
sm__w_6 =
    A.class "sm:w-6"


sm__w_8 : Html.Attribute msg
sm__w_8 =
    A.class "sm:w-8"


sm__w_10 : Html.Attribute msg
sm__w_10 =
    A.class "sm:w-10"


sm__w_12 : Html.Attribute msg
sm__w_12 =
    A.class "sm:w-12"


sm__w_16 : Html.Attribute msg
sm__w_16 =
    A.class "sm:w-16"


sm__w_20 : Html.Attribute msg
sm__w_20 =
    A.class "sm:w-20"


sm__w_24 : Html.Attribute msg
sm__w_24 =
    A.class "sm:w-24"


sm__w_32 : Html.Attribute msg
sm__w_32 =
    A.class "sm:w-32"


sm__w_40 : Html.Attribute msg
sm__w_40 =
    A.class "sm:w-40"


sm__w_48 : Html.Attribute msg
sm__w_48 =
    A.class "sm:w-48"


sm__w_56 : Html.Attribute msg
sm__w_56 =
    A.class "sm:w-56"


sm__w_64 : Html.Attribute msg
sm__w_64 =
    A.class "sm:w-64"


sm__w_auto : Html.Attribute msg
sm__w_auto =
    A.class "sm:w-auto"


sm__w_px : Html.Attribute msg
sm__w_px =
    A.class "sm:w-px"


sm__w_1over2 : Html.Attribute msg
sm__w_1over2 =
    A.class "sm:w-1/2"


sm__w_1over3 : Html.Attribute msg
sm__w_1over3 =
    A.class "sm:w-1/3"


sm__w_2over3 : Html.Attribute msg
sm__w_2over3 =
    A.class "sm:w-2/3"


sm__w_1over4 : Html.Attribute msg
sm__w_1over4 =
    A.class "sm:w-1/4"


sm__w_2over4 : Html.Attribute msg
sm__w_2over4 =
    A.class "sm:w-2/4"


sm__w_3over4 : Html.Attribute msg
sm__w_3over4 =
    A.class "sm:w-3/4"


sm__w_1over5 : Html.Attribute msg
sm__w_1over5 =
    A.class "sm:w-1/5"


sm__w_2over5 : Html.Attribute msg
sm__w_2over5 =
    A.class "sm:w-2/5"


sm__w_3over5 : Html.Attribute msg
sm__w_3over5 =
    A.class "sm:w-3/5"


sm__w_4over5 : Html.Attribute msg
sm__w_4over5 =
    A.class "sm:w-4/5"


sm__w_1over6 : Html.Attribute msg
sm__w_1over6 =
    A.class "sm:w-1/6"


sm__w_2over6 : Html.Attribute msg
sm__w_2over6 =
    A.class "sm:w-2/6"


sm__w_3over6 : Html.Attribute msg
sm__w_3over6 =
    A.class "sm:w-3/6"


sm__w_4over6 : Html.Attribute msg
sm__w_4over6 =
    A.class "sm:w-4/6"


sm__w_5over6 : Html.Attribute msg
sm__w_5over6 =
    A.class "sm:w-5/6"


sm__w_1over12 : Html.Attribute msg
sm__w_1over12 =
    A.class "sm:w-1/12"


sm__w_2over12 : Html.Attribute msg
sm__w_2over12 =
    A.class "sm:w-2/12"


sm__w_3over12 : Html.Attribute msg
sm__w_3over12 =
    A.class "sm:w-3/12"


sm__w_4over12 : Html.Attribute msg
sm__w_4over12 =
    A.class "sm:w-4/12"


sm__w_5over12 : Html.Attribute msg
sm__w_5over12 =
    A.class "sm:w-5/12"


sm__w_6over12 : Html.Attribute msg
sm__w_6over12 =
    A.class "sm:w-6/12"


sm__w_7over12 : Html.Attribute msg
sm__w_7over12 =
    A.class "sm:w-7/12"


sm__w_8over12 : Html.Attribute msg
sm__w_8over12 =
    A.class "sm:w-8/12"


sm__w_9over12 : Html.Attribute msg
sm__w_9over12 =
    A.class "sm:w-9/12"


sm__w_10over12 : Html.Attribute msg
sm__w_10over12 =
    A.class "sm:w-10/12"


sm__w_11over12 : Html.Attribute msg
sm__w_11over12 =
    A.class "sm:w-11/12"


sm__w_full : Html.Attribute msg
sm__w_full =
    A.class "sm:w-full"


sm__w_screen : Html.Attribute msg
sm__w_screen =
    A.class "sm:w-screen"


sm__z_0 : Html.Attribute msg
sm__z_0 =
    A.class "sm:z-0"


sm__z_10 : Html.Attribute msg
sm__z_10 =
    A.class "sm:z-10"


sm__z_20 : Html.Attribute msg
sm__z_20 =
    A.class "sm:z-20"


sm__z_30 : Html.Attribute msg
sm__z_30 =
    A.class "sm:z-30"


sm__z_40 : Html.Attribute msg
sm__z_40 =
    A.class "sm:z-40"


sm__z_50 : Html.Attribute msg
sm__z_50 =
    A.class "sm:z-50"


sm__z_auto : Html.Attribute msg
sm__z_auto =
    A.class "sm:z-auto"


sm__gap_0 : Html.Attribute msg
sm__gap_0 =
    A.class "sm:gap-0"


sm__gap_1 : Html.Attribute msg
sm__gap_1 =
    A.class "sm:gap-1"


sm__gap_2 : Html.Attribute msg
sm__gap_2 =
    A.class "sm:gap-2"


sm__gap_3 : Html.Attribute msg
sm__gap_3 =
    A.class "sm:gap-3"


sm__gap_4 : Html.Attribute msg
sm__gap_4 =
    A.class "sm:gap-4"


sm__gap_5 : Html.Attribute msg
sm__gap_5 =
    A.class "sm:gap-5"


sm__gap_6 : Html.Attribute msg
sm__gap_6 =
    A.class "sm:gap-6"


sm__gap_8 : Html.Attribute msg
sm__gap_8 =
    A.class "sm:gap-8"


sm__gap_10 : Html.Attribute msg
sm__gap_10 =
    A.class "sm:gap-10"


sm__gap_12 : Html.Attribute msg
sm__gap_12 =
    A.class "sm:gap-12"


sm__gap_16 : Html.Attribute msg
sm__gap_16 =
    A.class "sm:gap-16"


sm__gap_20 : Html.Attribute msg
sm__gap_20 =
    A.class "sm:gap-20"


sm__gap_24 : Html.Attribute msg
sm__gap_24 =
    A.class "sm:gap-24"


sm__gap_32 : Html.Attribute msg
sm__gap_32 =
    A.class "sm:gap-32"


sm__gap_40 : Html.Attribute msg
sm__gap_40 =
    A.class "sm:gap-40"


sm__gap_48 : Html.Attribute msg
sm__gap_48 =
    A.class "sm:gap-48"


sm__gap_56 : Html.Attribute msg
sm__gap_56 =
    A.class "sm:gap-56"


sm__gap_64 : Html.Attribute msg
sm__gap_64 =
    A.class "sm:gap-64"


sm__gap_px : Html.Attribute msg
sm__gap_px =
    A.class "sm:gap-px"


sm__col_gap_0 : Html.Attribute msg
sm__col_gap_0 =
    A.class "sm:col-gap-0"


sm__col_gap_1 : Html.Attribute msg
sm__col_gap_1 =
    A.class "sm:col-gap-1"


sm__col_gap_2 : Html.Attribute msg
sm__col_gap_2 =
    A.class "sm:col-gap-2"


sm__col_gap_3 : Html.Attribute msg
sm__col_gap_3 =
    A.class "sm:col-gap-3"


sm__col_gap_4 : Html.Attribute msg
sm__col_gap_4 =
    A.class "sm:col-gap-4"


sm__col_gap_5 : Html.Attribute msg
sm__col_gap_5 =
    A.class "sm:col-gap-5"


sm__col_gap_6 : Html.Attribute msg
sm__col_gap_6 =
    A.class "sm:col-gap-6"


sm__col_gap_8 : Html.Attribute msg
sm__col_gap_8 =
    A.class "sm:col-gap-8"


sm__col_gap_10 : Html.Attribute msg
sm__col_gap_10 =
    A.class "sm:col-gap-10"


sm__col_gap_12 : Html.Attribute msg
sm__col_gap_12 =
    A.class "sm:col-gap-12"


sm__col_gap_16 : Html.Attribute msg
sm__col_gap_16 =
    A.class "sm:col-gap-16"


sm__col_gap_20 : Html.Attribute msg
sm__col_gap_20 =
    A.class "sm:col-gap-20"


sm__col_gap_24 : Html.Attribute msg
sm__col_gap_24 =
    A.class "sm:col-gap-24"


sm__col_gap_32 : Html.Attribute msg
sm__col_gap_32 =
    A.class "sm:col-gap-32"


sm__col_gap_40 : Html.Attribute msg
sm__col_gap_40 =
    A.class "sm:col-gap-40"


sm__col_gap_48 : Html.Attribute msg
sm__col_gap_48 =
    A.class "sm:col-gap-48"


sm__col_gap_56 : Html.Attribute msg
sm__col_gap_56 =
    A.class "sm:col-gap-56"


sm__col_gap_64 : Html.Attribute msg
sm__col_gap_64 =
    A.class "sm:col-gap-64"


sm__col_gap_px : Html.Attribute msg
sm__col_gap_px =
    A.class "sm:col-gap-px"


sm__row_gap_0 : Html.Attribute msg
sm__row_gap_0 =
    A.class "sm:row-gap-0"


sm__row_gap_1 : Html.Attribute msg
sm__row_gap_1 =
    A.class "sm:row-gap-1"


sm__row_gap_2 : Html.Attribute msg
sm__row_gap_2 =
    A.class "sm:row-gap-2"


sm__row_gap_3 : Html.Attribute msg
sm__row_gap_3 =
    A.class "sm:row-gap-3"


sm__row_gap_4 : Html.Attribute msg
sm__row_gap_4 =
    A.class "sm:row-gap-4"


sm__row_gap_5 : Html.Attribute msg
sm__row_gap_5 =
    A.class "sm:row-gap-5"


sm__row_gap_6 : Html.Attribute msg
sm__row_gap_6 =
    A.class "sm:row-gap-6"


sm__row_gap_8 : Html.Attribute msg
sm__row_gap_8 =
    A.class "sm:row-gap-8"


sm__row_gap_10 : Html.Attribute msg
sm__row_gap_10 =
    A.class "sm:row-gap-10"


sm__row_gap_12 : Html.Attribute msg
sm__row_gap_12 =
    A.class "sm:row-gap-12"


sm__row_gap_16 : Html.Attribute msg
sm__row_gap_16 =
    A.class "sm:row-gap-16"


sm__row_gap_20 : Html.Attribute msg
sm__row_gap_20 =
    A.class "sm:row-gap-20"


sm__row_gap_24 : Html.Attribute msg
sm__row_gap_24 =
    A.class "sm:row-gap-24"


sm__row_gap_32 : Html.Attribute msg
sm__row_gap_32 =
    A.class "sm:row-gap-32"


sm__row_gap_40 : Html.Attribute msg
sm__row_gap_40 =
    A.class "sm:row-gap-40"


sm__row_gap_48 : Html.Attribute msg
sm__row_gap_48 =
    A.class "sm:row-gap-48"


sm__row_gap_56 : Html.Attribute msg
sm__row_gap_56 =
    A.class "sm:row-gap-56"


sm__row_gap_64 : Html.Attribute msg
sm__row_gap_64 =
    A.class "sm:row-gap-64"


sm__row_gap_px : Html.Attribute msg
sm__row_gap_px =
    A.class "sm:row-gap-px"


sm__grid_flow_row : Html.Attribute msg
sm__grid_flow_row =
    A.class "sm:grid-flow-row"


sm__grid_flow_col : Html.Attribute msg
sm__grid_flow_col =
    A.class "sm:grid-flow-col"


sm__grid_flow_row_dense : Html.Attribute msg
sm__grid_flow_row_dense =
    A.class "sm:grid-flow-row-dense"


sm__grid_flow_col_dense : Html.Attribute msg
sm__grid_flow_col_dense =
    A.class "sm:grid-flow-col-dense"


sm__grid_cols_1 : Html.Attribute msg
sm__grid_cols_1 =
    A.class "sm:grid-cols-1"


sm__grid_cols_2 : Html.Attribute msg
sm__grid_cols_2 =
    A.class "sm:grid-cols-2"


sm__grid_cols_3 : Html.Attribute msg
sm__grid_cols_3 =
    A.class "sm:grid-cols-3"


sm__grid_cols_4 : Html.Attribute msg
sm__grid_cols_4 =
    A.class "sm:grid-cols-4"


sm__grid_cols_5 : Html.Attribute msg
sm__grid_cols_5 =
    A.class "sm:grid-cols-5"


sm__grid_cols_6 : Html.Attribute msg
sm__grid_cols_6 =
    A.class "sm:grid-cols-6"


sm__grid_cols_7 : Html.Attribute msg
sm__grid_cols_7 =
    A.class "sm:grid-cols-7"


sm__grid_cols_8 : Html.Attribute msg
sm__grid_cols_8 =
    A.class "sm:grid-cols-8"


sm__grid_cols_9 : Html.Attribute msg
sm__grid_cols_9 =
    A.class "sm:grid-cols-9"


sm__grid_cols_10 : Html.Attribute msg
sm__grid_cols_10 =
    A.class "sm:grid-cols-10"


sm__grid_cols_11 : Html.Attribute msg
sm__grid_cols_11 =
    A.class "sm:grid-cols-11"


sm__grid_cols_12 : Html.Attribute msg
sm__grid_cols_12 =
    A.class "sm:grid-cols-12"


sm__grid_cols_none : Html.Attribute msg
sm__grid_cols_none =
    A.class "sm:grid-cols-none"


sm__col_auto : Html.Attribute msg
sm__col_auto =
    A.class "sm:col-auto"


sm__col_span_1 : Html.Attribute msg
sm__col_span_1 =
    A.class "sm:col-span-1"


sm__col_span_2 : Html.Attribute msg
sm__col_span_2 =
    A.class "sm:col-span-2"


sm__col_span_3 : Html.Attribute msg
sm__col_span_3 =
    A.class "sm:col-span-3"


sm__col_span_4 : Html.Attribute msg
sm__col_span_4 =
    A.class "sm:col-span-4"


sm__col_span_5 : Html.Attribute msg
sm__col_span_5 =
    A.class "sm:col-span-5"


sm__col_span_6 : Html.Attribute msg
sm__col_span_6 =
    A.class "sm:col-span-6"


sm__col_span_7 : Html.Attribute msg
sm__col_span_7 =
    A.class "sm:col-span-7"


sm__col_span_8 : Html.Attribute msg
sm__col_span_8 =
    A.class "sm:col-span-8"


sm__col_span_9 : Html.Attribute msg
sm__col_span_9 =
    A.class "sm:col-span-9"


sm__col_span_10 : Html.Attribute msg
sm__col_span_10 =
    A.class "sm:col-span-10"


sm__col_span_11 : Html.Attribute msg
sm__col_span_11 =
    A.class "sm:col-span-11"


sm__col_span_12 : Html.Attribute msg
sm__col_span_12 =
    A.class "sm:col-span-12"


sm__col_start_1 : Html.Attribute msg
sm__col_start_1 =
    A.class "sm:col-start-1"


sm__col_start_2 : Html.Attribute msg
sm__col_start_2 =
    A.class "sm:col-start-2"


sm__col_start_3 : Html.Attribute msg
sm__col_start_3 =
    A.class "sm:col-start-3"


sm__col_start_4 : Html.Attribute msg
sm__col_start_4 =
    A.class "sm:col-start-4"


sm__col_start_5 : Html.Attribute msg
sm__col_start_5 =
    A.class "sm:col-start-5"


sm__col_start_6 : Html.Attribute msg
sm__col_start_6 =
    A.class "sm:col-start-6"


sm__col_start_7 : Html.Attribute msg
sm__col_start_7 =
    A.class "sm:col-start-7"


sm__col_start_8 : Html.Attribute msg
sm__col_start_8 =
    A.class "sm:col-start-8"


sm__col_start_9 : Html.Attribute msg
sm__col_start_9 =
    A.class "sm:col-start-9"


sm__col_start_10 : Html.Attribute msg
sm__col_start_10 =
    A.class "sm:col-start-10"


sm__col_start_11 : Html.Attribute msg
sm__col_start_11 =
    A.class "sm:col-start-11"


sm__col_start_12 : Html.Attribute msg
sm__col_start_12 =
    A.class "sm:col-start-12"


sm__col_start_13 : Html.Attribute msg
sm__col_start_13 =
    A.class "sm:col-start-13"


sm__col_start_auto : Html.Attribute msg
sm__col_start_auto =
    A.class "sm:col-start-auto"


sm__col_end_1 : Html.Attribute msg
sm__col_end_1 =
    A.class "sm:col-end-1"


sm__col_end_2 : Html.Attribute msg
sm__col_end_2 =
    A.class "sm:col-end-2"


sm__col_end_3 : Html.Attribute msg
sm__col_end_3 =
    A.class "sm:col-end-3"


sm__col_end_4 : Html.Attribute msg
sm__col_end_4 =
    A.class "sm:col-end-4"


sm__col_end_5 : Html.Attribute msg
sm__col_end_5 =
    A.class "sm:col-end-5"


sm__col_end_6 : Html.Attribute msg
sm__col_end_6 =
    A.class "sm:col-end-6"


sm__col_end_7 : Html.Attribute msg
sm__col_end_7 =
    A.class "sm:col-end-7"


sm__col_end_8 : Html.Attribute msg
sm__col_end_8 =
    A.class "sm:col-end-8"


sm__col_end_9 : Html.Attribute msg
sm__col_end_9 =
    A.class "sm:col-end-9"


sm__col_end_10 : Html.Attribute msg
sm__col_end_10 =
    A.class "sm:col-end-10"


sm__col_end_11 : Html.Attribute msg
sm__col_end_11 =
    A.class "sm:col-end-11"


sm__col_end_12 : Html.Attribute msg
sm__col_end_12 =
    A.class "sm:col-end-12"


sm__col_end_13 : Html.Attribute msg
sm__col_end_13 =
    A.class "sm:col-end-13"


sm__col_end_auto : Html.Attribute msg
sm__col_end_auto =
    A.class "sm:col-end-auto"


sm__grid_rows_1 : Html.Attribute msg
sm__grid_rows_1 =
    A.class "sm:grid-rows-1"


sm__grid_rows_2 : Html.Attribute msg
sm__grid_rows_2 =
    A.class "sm:grid-rows-2"


sm__grid_rows_3 : Html.Attribute msg
sm__grid_rows_3 =
    A.class "sm:grid-rows-3"


sm__grid_rows_4 : Html.Attribute msg
sm__grid_rows_4 =
    A.class "sm:grid-rows-4"


sm__grid_rows_5 : Html.Attribute msg
sm__grid_rows_5 =
    A.class "sm:grid-rows-5"


sm__grid_rows_6 : Html.Attribute msg
sm__grid_rows_6 =
    A.class "sm:grid-rows-6"


sm__grid_rows_none : Html.Attribute msg
sm__grid_rows_none =
    A.class "sm:grid-rows-none"


sm__row_auto : Html.Attribute msg
sm__row_auto =
    A.class "sm:row-auto"


sm__row_span_1 : Html.Attribute msg
sm__row_span_1 =
    A.class "sm:row-span-1"


sm__row_span_2 : Html.Attribute msg
sm__row_span_2 =
    A.class "sm:row-span-2"


sm__row_span_3 : Html.Attribute msg
sm__row_span_3 =
    A.class "sm:row-span-3"


sm__row_span_4 : Html.Attribute msg
sm__row_span_4 =
    A.class "sm:row-span-4"


sm__row_span_5 : Html.Attribute msg
sm__row_span_5 =
    A.class "sm:row-span-5"


sm__row_span_6 : Html.Attribute msg
sm__row_span_6 =
    A.class "sm:row-span-6"


sm__row_start_1 : Html.Attribute msg
sm__row_start_1 =
    A.class "sm:row-start-1"


sm__row_start_2 : Html.Attribute msg
sm__row_start_2 =
    A.class "sm:row-start-2"


sm__row_start_3 : Html.Attribute msg
sm__row_start_3 =
    A.class "sm:row-start-3"


sm__row_start_4 : Html.Attribute msg
sm__row_start_4 =
    A.class "sm:row-start-4"


sm__row_start_5 : Html.Attribute msg
sm__row_start_5 =
    A.class "sm:row-start-5"


sm__row_start_6 : Html.Attribute msg
sm__row_start_6 =
    A.class "sm:row-start-6"


sm__row_start_7 : Html.Attribute msg
sm__row_start_7 =
    A.class "sm:row-start-7"


sm__row_start_auto : Html.Attribute msg
sm__row_start_auto =
    A.class "sm:row-start-auto"


sm__row_end_1 : Html.Attribute msg
sm__row_end_1 =
    A.class "sm:row-end-1"


sm__row_end_2 : Html.Attribute msg
sm__row_end_2 =
    A.class "sm:row-end-2"


sm__row_end_3 : Html.Attribute msg
sm__row_end_3 =
    A.class "sm:row-end-3"


sm__row_end_4 : Html.Attribute msg
sm__row_end_4 =
    A.class "sm:row-end-4"


sm__row_end_5 : Html.Attribute msg
sm__row_end_5 =
    A.class "sm:row-end-5"


sm__row_end_6 : Html.Attribute msg
sm__row_end_6 =
    A.class "sm:row-end-6"


sm__row_end_7 : Html.Attribute msg
sm__row_end_7 =
    A.class "sm:row-end-7"


sm__row_end_auto : Html.Attribute msg
sm__row_end_auto =
    A.class "sm:row-end-auto"


sm__transform : Html.Attribute msg
sm__transform =
    A.class "sm:transform"


sm__transform_none : Html.Attribute msg
sm__transform_none =
    A.class "sm:transform-none"


sm__origin_center : Html.Attribute msg
sm__origin_center =
    A.class "sm:origin-center"


sm__origin_top : Html.Attribute msg
sm__origin_top =
    A.class "sm:origin-top"


sm__origin_top_right : Html.Attribute msg
sm__origin_top_right =
    A.class "sm:origin-top-right"


sm__origin_right : Html.Attribute msg
sm__origin_right =
    A.class "sm:origin-right"


sm__origin_bottom_right : Html.Attribute msg
sm__origin_bottom_right =
    A.class "sm:origin-bottom-right"


sm__origin_bottom : Html.Attribute msg
sm__origin_bottom =
    A.class "sm:origin-bottom"


sm__origin_bottom_left : Html.Attribute msg
sm__origin_bottom_left =
    A.class "sm:origin-bottom-left"


sm__origin_left : Html.Attribute msg
sm__origin_left =
    A.class "sm:origin-left"


sm__origin_top_left : Html.Attribute msg
sm__origin_top_left =
    A.class "sm:origin-top-left"


sm__scale_0 : Html.Attribute msg
sm__scale_0 =
    A.class "sm:scale-0"


sm__scale_50 : Html.Attribute msg
sm__scale_50 =
    A.class "sm:scale-50"


sm__scale_75 : Html.Attribute msg
sm__scale_75 =
    A.class "sm:scale-75"


sm__scale_90 : Html.Attribute msg
sm__scale_90 =
    A.class "sm:scale-90"


sm__scale_95 : Html.Attribute msg
sm__scale_95 =
    A.class "sm:scale-95"


sm__scale_100 : Html.Attribute msg
sm__scale_100 =
    A.class "sm:scale-100"


sm__scale_105 : Html.Attribute msg
sm__scale_105 =
    A.class "sm:scale-105"


sm__scale_110 : Html.Attribute msg
sm__scale_110 =
    A.class "sm:scale-110"


sm__scale_125 : Html.Attribute msg
sm__scale_125 =
    A.class "sm:scale-125"


sm__scale_150 : Html.Attribute msg
sm__scale_150 =
    A.class "sm:scale-150"


sm__scale_x_0 : Html.Attribute msg
sm__scale_x_0 =
    A.class "sm:scale-x-0"


sm__scale_x_50 : Html.Attribute msg
sm__scale_x_50 =
    A.class "sm:scale-x-50"


sm__scale_x_75 : Html.Attribute msg
sm__scale_x_75 =
    A.class "sm:scale-x-75"


sm__scale_x_90 : Html.Attribute msg
sm__scale_x_90 =
    A.class "sm:scale-x-90"


sm__scale_x_95 : Html.Attribute msg
sm__scale_x_95 =
    A.class "sm:scale-x-95"


sm__scale_x_100 : Html.Attribute msg
sm__scale_x_100 =
    A.class "sm:scale-x-100"


sm__scale_x_105 : Html.Attribute msg
sm__scale_x_105 =
    A.class "sm:scale-x-105"


sm__scale_x_110 : Html.Attribute msg
sm__scale_x_110 =
    A.class "sm:scale-x-110"


sm__scale_x_125 : Html.Attribute msg
sm__scale_x_125 =
    A.class "sm:scale-x-125"


sm__scale_x_150 : Html.Attribute msg
sm__scale_x_150 =
    A.class "sm:scale-x-150"


sm__scale_y_0 : Html.Attribute msg
sm__scale_y_0 =
    A.class "sm:scale-y-0"


sm__scale_y_50 : Html.Attribute msg
sm__scale_y_50 =
    A.class "sm:scale-y-50"


sm__scale_y_75 : Html.Attribute msg
sm__scale_y_75 =
    A.class "sm:scale-y-75"


sm__scale_y_90 : Html.Attribute msg
sm__scale_y_90 =
    A.class "sm:scale-y-90"


sm__scale_y_95 : Html.Attribute msg
sm__scale_y_95 =
    A.class "sm:scale-y-95"


sm__scale_y_100 : Html.Attribute msg
sm__scale_y_100 =
    A.class "sm:scale-y-100"


sm__scale_y_105 : Html.Attribute msg
sm__scale_y_105 =
    A.class "sm:scale-y-105"


sm__scale_y_110 : Html.Attribute msg
sm__scale_y_110 =
    A.class "sm:scale-y-110"


sm__scale_y_125 : Html.Attribute msg
sm__scale_y_125 =
    A.class "sm:scale-y-125"


sm__scale_y_150 : Html.Attribute msg
sm__scale_y_150 =
    A.class "sm:scale-y-150"


sm__hover__scale_0 : Html.Attribute msg
sm__hover__scale_0 =
    A.class "sm:hover:scale-0"


sm__hover__scale_50 : Html.Attribute msg
sm__hover__scale_50 =
    A.class "sm:hover:scale-50"


sm__hover__scale_75 : Html.Attribute msg
sm__hover__scale_75 =
    A.class "sm:hover:scale-75"


sm__hover__scale_90 : Html.Attribute msg
sm__hover__scale_90 =
    A.class "sm:hover:scale-90"


sm__hover__scale_95 : Html.Attribute msg
sm__hover__scale_95 =
    A.class "sm:hover:scale-95"


sm__hover__scale_100 : Html.Attribute msg
sm__hover__scale_100 =
    A.class "sm:hover:scale-100"


sm__hover__scale_105 : Html.Attribute msg
sm__hover__scale_105 =
    A.class "sm:hover:scale-105"


sm__hover__scale_110 : Html.Attribute msg
sm__hover__scale_110 =
    A.class "sm:hover:scale-110"


sm__hover__scale_125 : Html.Attribute msg
sm__hover__scale_125 =
    A.class "sm:hover:scale-125"


sm__hover__scale_150 : Html.Attribute msg
sm__hover__scale_150 =
    A.class "sm:hover:scale-150"


sm__hover__scale_x_0 : Html.Attribute msg
sm__hover__scale_x_0 =
    A.class "sm:hover:scale-x-0"


sm__hover__scale_x_50 : Html.Attribute msg
sm__hover__scale_x_50 =
    A.class "sm:hover:scale-x-50"


sm__hover__scale_x_75 : Html.Attribute msg
sm__hover__scale_x_75 =
    A.class "sm:hover:scale-x-75"


sm__hover__scale_x_90 : Html.Attribute msg
sm__hover__scale_x_90 =
    A.class "sm:hover:scale-x-90"


sm__hover__scale_x_95 : Html.Attribute msg
sm__hover__scale_x_95 =
    A.class "sm:hover:scale-x-95"


sm__hover__scale_x_100 : Html.Attribute msg
sm__hover__scale_x_100 =
    A.class "sm:hover:scale-x-100"


sm__hover__scale_x_105 : Html.Attribute msg
sm__hover__scale_x_105 =
    A.class "sm:hover:scale-x-105"


sm__hover__scale_x_110 : Html.Attribute msg
sm__hover__scale_x_110 =
    A.class "sm:hover:scale-x-110"


sm__hover__scale_x_125 : Html.Attribute msg
sm__hover__scale_x_125 =
    A.class "sm:hover:scale-x-125"


sm__hover__scale_x_150 : Html.Attribute msg
sm__hover__scale_x_150 =
    A.class "sm:hover:scale-x-150"


sm__hover__scale_y_0 : Html.Attribute msg
sm__hover__scale_y_0 =
    A.class "sm:hover:scale-y-0"


sm__hover__scale_y_50 : Html.Attribute msg
sm__hover__scale_y_50 =
    A.class "sm:hover:scale-y-50"


sm__hover__scale_y_75 : Html.Attribute msg
sm__hover__scale_y_75 =
    A.class "sm:hover:scale-y-75"


sm__hover__scale_y_90 : Html.Attribute msg
sm__hover__scale_y_90 =
    A.class "sm:hover:scale-y-90"


sm__hover__scale_y_95 : Html.Attribute msg
sm__hover__scale_y_95 =
    A.class "sm:hover:scale-y-95"


sm__hover__scale_y_100 : Html.Attribute msg
sm__hover__scale_y_100 =
    A.class "sm:hover:scale-y-100"


sm__hover__scale_y_105 : Html.Attribute msg
sm__hover__scale_y_105 =
    A.class "sm:hover:scale-y-105"


sm__hover__scale_y_110 : Html.Attribute msg
sm__hover__scale_y_110 =
    A.class "sm:hover:scale-y-110"


sm__hover__scale_y_125 : Html.Attribute msg
sm__hover__scale_y_125 =
    A.class "sm:hover:scale-y-125"


sm__hover__scale_y_150 : Html.Attribute msg
sm__hover__scale_y_150 =
    A.class "sm:hover:scale-y-150"


sm__focus__scale_0 : Html.Attribute msg
sm__focus__scale_0 =
    A.class "sm:focus:scale-0"


sm__focus__scale_50 : Html.Attribute msg
sm__focus__scale_50 =
    A.class "sm:focus:scale-50"


sm__focus__scale_75 : Html.Attribute msg
sm__focus__scale_75 =
    A.class "sm:focus:scale-75"


sm__focus__scale_90 : Html.Attribute msg
sm__focus__scale_90 =
    A.class "sm:focus:scale-90"


sm__focus__scale_95 : Html.Attribute msg
sm__focus__scale_95 =
    A.class "sm:focus:scale-95"


sm__focus__scale_100 : Html.Attribute msg
sm__focus__scale_100 =
    A.class "sm:focus:scale-100"


sm__focus__scale_105 : Html.Attribute msg
sm__focus__scale_105 =
    A.class "sm:focus:scale-105"


sm__focus__scale_110 : Html.Attribute msg
sm__focus__scale_110 =
    A.class "sm:focus:scale-110"


sm__focus__scale_125 : Html.Attribute msg
sm__focus__scale_125 =
    A.class "sm:focus:scale-125"


sm__focus__scale_150 : Html.Attribute msg
sm__focus__scale_150 =
    A.class "sm:focus:scale-150"


sm__focus__scale_x_0 : Html.Attribute msg
sm__focus__scale_x_0 =
    A.class "sm:focus:scale-x-0"


sm__focus__scale_x_50 : Html.Attribute msg
sm__focus__scale_x_50 =
    A.class "sm:focus:scale-x-50"


sm__focus__scale_x_75 : Html.Attribute msg
sm__focus__scale_x_75 =
    A.class "sm:focus:scale-x-75"


sm__focus__scale_x_90 : Html.Attribute msg
sm__focus__scale_x_90 =
    A.class "sm:focus:scale-x-90"


sm__focus__scale_x_95 : Html.Attribute msg
sm__focus__scale_x_95 =
    A.class "sm:focus:scale-x-95"


sm__focus__scale_x_100 : Html.Attribute msg
sm__focus__scale_x_100 =
    A.class "sm:focus:scale-x-100"


sm__focus__scale_x_105 : Html.Attribute msg
sm__focus__scale_x_105 =
    A.class "sm:focus:scale-x-105"


sm__focus__scale_x_110 : Html.Attribute msg
sm__focus__scale_x_110 =
    A.class "sm:focus:scale-x-110"


sm__focus__scale_x_125 : Html.Attribute msg
sm__focus__scale_x_125 =
    A.class "sm:focus:scale-x-125"


sm__focus__scale_x_150 : Html.Attribute msg
sm__focus__scale_x_150 =
    A.class "sm:focus:scale-x-150"


sm__focus__scale_y_0 : Html.Attribute msg
sm__focus__scale_y_0 =
    A.class "sm:focus:scale-y-0"


sm__focus__scale_y_50 : Html.Attribute msg
sm__focus__scale_y_50 =
    A.class "sm:focus:scale-y-50"


sm__focus__scale_y_75 : Html.Attribute msg
sm__focus__scale_y_75 =
    A.class "sm:focus:scale-y-75"


sm__focus__scale_y_90 : Html.Attribute msg
sm__focus__scale_y_90 =
    A.class "sm:focus:scale-y-90"


sm__focus__scale_y_95 : Html.Attribute msg
sm__focus__scale_y_95 =
    A.class "sm:focus:scale-y-95"


sm__focus__scale_y_100 : Html.Attribute msg
sm__focus__scale_y_100 =
    A.class "sm:focus:scale-y-100"


sm__focus__scale_y_105 : Html.Attribute msg
sm__focus__scale_y_105 =
    A.class "sm:focus:scale-y-105"


sm__focus__scale_y_110 : Html.Attribute msg
sm__focus__scale_y_110 =
    A.class "sm:focus:scale-y-110"


sm__focus__scale_y_125 : Html.Attribute msg
sm__focus__scale_y_125 =
    A.class "sm:focus:scale-y-125"


sm__focus__scale_y_150 : Html.Attribute msg
sm__focus__scale_y_150 =
    A.class "sm:focus:scale-y-150"


sm__rotate_0 : Html.Attribute msg
sm__rotate_0 =
    A.class "sm:rotate-0"


sm__rotate_45 : Html.Attribute msg
sm__rotate_45 =
    A.class "sm:rotate-45"


sm__rotate_90 : Html.Attribute msg
sm__rotate_90 =
    A.class "sm:rotate-90"


sm__rotate_180 : Html.Attribute msg
sm__rotate_180 =
    A.class "sm:rotate-180"


sm__neg_rotate_180 : Html.Attribute msg
sm__neg_rotate_180 =
    A.class "sm:-rotate-180"


sm__neg_rotate_90 : Html.Attribute msg
sm__neg_rotate_90 =
    A.class "sm:-rotate-90"


sm__neg_rotate_45 : Html.Attribute msg
sm__neg_rotate_45 =
    A.class "sm:-rotate-45"


sm__hover__rotate_0 : Html.Attribute msg
sm__hover__rotate_0 =
    A.class "sm:hover:rotate-0"


sm__hover__rotate_45 : Html.Attribute msg
sm__hover__rotate_45 =
    A.class "sm:hover:rotate-45"


sm__hover__rotate_90 : Html.Attribute msg
sm__hover__rotate_90 =
    A.class "sm:hover:rotate-90"


sm__hover__rotate_180 : Html.Attribute msg
sm__hover__rotate_180 =
    A.class "sm:hover:rotate-180"


sm__hover__neg_rotate_180 : Html.Attribute msg
sm__hover__neg_rotate_180 =
    A.class "sm:hover:-rotate-180"


sm__hover__neg_rotate_90 : Html.Attribute msg
sm__hover__neg_rotate_90 =
    A.class "sm:hover:-rotate-90"


sm__hover__neg_rotate_45 : Html.Attribute msg
sm__hover__neg_rotate_45 =
    A.class "sm:hover:-rotate-45"


sm__focus__rotate_0 : Html.Attribute msg
sm__focus__rotate_0 =
    A.class "sm:focus:rotate-0"


sm__focus__rotate_45 : Html.Attribute msg
sm__focus__rotate_45 =
    A.class "sm:focus:rotate-45"


sm__focus__rotate_90 : Html.Attribute msg
sm__focus__rotate_90 =
    A.class "sm:focus:rotate-90"


sm__focus__rotate_180 : Html.Attribute msg
sm__focus__rotate_180 =
    A.class "sm:focus:rotate-180"


sm__focus__neg_rotate_180 : Html.Attribute msg
sm__focus__neg_rotate_180 =
    A.class "sm:focus:-rotate-180"


sm__focus__neg_rotate_90 : Html.Attribute msg
sm__focus__neg_rotate_90 =
    A.class "sm:focus:-rotate-90"


sm__focus__neg_rotate_45 : Html.Attribute msg
sm__focus__neg_rotate_45 =
    A.class "sm:focus:-rotate-45"


sm__translate_x_0 : Html.Attribute msg
sm__translate_x_0 =
    A.class "sm:translate-x-0"


sm__translate_x_1 : Html.Attribute msg
sm__translate_x_1 =
    A.class "sm:translate-x-1"


sm__translate_x_2 : Html.Attribute msg
sm__translate_x_2 =
    A.class "sm:translate-x-2"


sm__translate_x_3 : Html.Attribute msg
sm__translate_x_3 =
    A.class "sm:translate-x-3"


sm__translate_x_4 : Html.Attribute msg
sm__translate_x_4 =
    A.class "sm:translate-x-4"


sm__translate_x_5 : Html.Attribute msg
sm__translate_x_5 =
    A.class "sm:translate-x-5"


sm__translate_x_6 : Html.Attribute msg
sm__translate_x_6 =
    A.class "sm:translate-x-6"


sm__translate_x_8 : Html.Attribute msg
sm__translate_x_8 =
    A.class "sm:translate-x-8"


sm__translate_x_10 : Html.Attribute msg
sm__translate_x_10 =
    A.class "sm:translate-x-10"


sm__translate_x_12 : Html.Attribute msg
sm__translate_x_12 =
    A.class "sm:translate-x-12"


sm__translate_x_16 : Html.Attribute msg
sm__translate_x_16 =
    A.class "sm:translate-x-16"


sm__translate_x_20 : Html.Attribute msg
sm__translate_x_20 =
    A.class "sm:translate-x-20"


sm__translate_x_24 : Html.Attribute msg
sm__translate_x_24 =
    A.class "sm:translate-x-24"


sm__translate_x_32 : Html.Attribute msg
sm__translate_x_32 =
    A.class "sm:translate-x-32"


sm__translate_x_40 : Html.Attribute msg
sm__translate_x_40 =
    A.class "sm:translate-x-40"


sm__translate_x_48 : Html.Attribute msg
sm__translate_x_48 =
    A.class "sm:translate-x-48"


sm__translate_x_56 : Html.Attribute msg
sm__translate_x_56 =
    A.class "sm:translate-x-56"


sm__translate_x_64 : Html.Attribute msg
sm__translate_x_64 =
    A.class "sm:translate-x-64"


sm__translate_x_px : Html.Attribute msg
sm__translate_x_px =
    A.class "sm:translate-x-px"


sm__neg_translate_x_1 : Html.Attribute msg
sm__neg_translate_x_1 =
    A.class "sm:-translate-x-1"


sm__neg_translate_x_2 : Html.Attribute msg
sm__neg_translate_x_2 =
    A.class "sm:-translate-x-2"


sm__neg_translate_x_3 : Html.Attribute msg
sm__neg_translate_x_3 =
    A.class "sm:-translate-x-3"


sm__neg_translate_x_4 : Html.Attribute msg
sm__neg_translate_x_4 =
    A.class "sm:-translate-x-4"


sm__neg_translate_x_5 : Html.Attribute msg
sm__neg_translate_x_5 =
    A.class "sm:-translate-x-5"


sm__neg_translate_x_6 : Html.Attribute msg
sm__neg_translate_x_6 =
    A.class "sm:-translate-x-6"


sm__neg_translate_x_8 : Html.Attribute msg
sm__neg_translate_x_8 =
    A.class "sm:-translate-x-8"


sm__neg_translate_x_10 : Html.Attribute msg
sm__neg_translate_x_10 =
    A.class "sm:-translate-x-10"


sm__neg_translate_x_12 : Html.Attribute msg
sm__neg_translate_x_12 =
    A.class "sm:-translate-x-12"


sm__neg_translate_x_16 : Html.Attribute msg
sm__neg_translate_x_16 =
    A.class "sm:-translate-x-16"


sm__neg_translate_x_20 : Html.Attribute msg
sm__neg_translate_x_20 =
    A.class "sm:-translate-x-20"


sm__neg_translate_x_24 : Html.Attribute msg
sm__neg_translate_x_24 =
    A.class "sm:-translate-x-24"


sm__neg_translate_x_32 : Html.Attribute msg
sm__neg_translate_x_32 =
    A.class "sm:-translate-x-32"


sm__neg_translate_x_40 : Html.Attribute msg
sm__neg_translate_x_40 =
    A.class "sm:-translate-x-40"


sm__neg_translate_x_48 : Html.Attribute msg
sm__neg_translate_x_48 =
    A.class "sm:-translate-x-48"


sm__neg_translate_x_56 : Html.Attribute msg
sm__neg_translate_x_56 =
    A.class "sm:-translate-x-56"


sm__neg_translate_x_64 : Html.Attribute msg
sm__neg_translate_x_64 =
    A.class "sm:-translate-x-64"


sm__neg_translate_x_px : Html.Attribute msg
sm__neg_translate_x_px =
    A.class "sm:-translate-x-px"


sm__neg_translate_x_full : Html.Attribute msg
sm__neg_translate_x_full =
    A.class "sm:-translate-x-full"


sm__neg_translate_x_1over2 : Html.Attribute msg
sm__neg_translate_x_1over2 =
    A.class "sm:-translate-x-1/2"


sm__translate_x_1over2 : Html.Attribute msg
sm__translate_x_1over2 =
    A.class "sm:translate-x-1/2"


sm__translate_x_full : Html.Attribute msg
sm__translate_x_full =
    A.class "sm:translate-x-full"


sm__translate_y_0 : Html.Attribute msg
sm__translate_y_0 =
    A.class "sm:translate-y-0"


sm__translate_y_1 : Html.Attribute msg
sm__translate_y_1 =
    A.class "sm:translate-y-1"


sm__translate_y_2 : Html.Attribute msg
sm__translate_y_2 =
    A.class "sm:translate-y-2"


sm__translate_y_3 : Html.Attribute msg
sm__translate_y_3 =
    A.class "sm:translate-y-3"


sm__translate_y_4 : Html.Attribute msg
sm__translate_y_4 =
    A.class "sm:translate-y-4"


sm__translate_y_5 : Html.Attribute msg
sm__translate_y_5 =
    A.class "sm:translate-y-5"


sm__translate_y_6 : Html.Attribute msg
sm__translate_y_6 =
    A.class "sm:translate-y-6"


sm__translate_y_8 : Html.Attribute msg
sm__translate_y_8 =
    A.class "sm:translate-y-8"


sm__translate_y_10 : Html.Attribute msg
sm__translate_y_10 =
    A.class "sm:translate-y-10"


sm__translate_y_12 : Html.Attribute msg
sm__translate_y_12 =
    A.class "sm:translate-y-12"


sm__translate_y_16 : Html.Attribute msg
sm__translate_y_16 =
    A.class "sm:translate-y-16"


sm__translate_y_20 : Html.Attribute msg
sm__translate_y_20 =
    A.class "sm:translate-y-20"


sm__translate_y_24 : Html.Attribute msg
sm__translate_y_24 =
    A.class "sm:translate-y-24"


sm__translate_y_32 : Html.Attribute msg
sm__translate_y_32 =
    A.class "sm:translate-y-32"


sm__translate_y_40 : Html.Attribute msg
sm__translate_y_40 =
    A.class "sm:translate-y-40"


sm__translate_y_48 : Html.Attribute msg
sm__translate_y_48 =
    A.class "sm:translate-y-48"


sm__translate_y_56 : Html.Attribute msg
sm__translate_y_56 =
    A.class "sm:translate-y-56"


sm__translate_y_64 : Html.Attribute msg
sm__translate_y_64 =
    A.class "sm:translate-y-64"


sm__translate_y_px : Html.Attribute msg
sm__translate_y_px =
    A.class "sm:translate-y-px"


sm__neg_translate_y_1 : Html.Attribute msg
sm__neg_translate_y_1 =
    A.class "sm:-translate-y-1"


sm__neg_translate_y_2 : Html.Attribute msg
sm__neg_translate_y_2 =
    A.class "sm:-translate-y-2"


sm__neg_translate_y_3 : Html.Attribute msg
sm__neg_translate_y_3 =
    A.class "sm:-translate-y-3"


sm__neg_translate_y_4 : Html.Attribute msg
sm__neg_translate_y_4 =
    A.class "sm:-translate-y-4"


sm__neg_translate_y_5 : Html.Attribute msg
sm__neg_translate_y_5 =
    A.class "sm:-translate-y-5"


sm__neg_translate_y_6 : Html.Attribute msg
sm__neg_translate_y_6 =
    A.class "sm:-translate-y-6"


sm__neg_translate_y_8 : Html.Attribute msg
sm__neg_translate_y_8 =
    A.class "sm:-translate-y-8"


sm__neg_translate_y_10 : Html.Attribute msg
sm__neg_translate_y_10 =
    A.class "sm:-translate-y-10"


sm__neg_translate_y_12 : Html.Attribute msg
sm__neg_translate_y_12 =
    A.class "sm:-translate-y-12"


sm__neg_translate_y_16 : Html.Attribute msg
sm__neg_translate_y_16 =
    A.class "sm:-translate-y-16"


sm__neg_translate_y_20 : Html.Attribute msg
sm__neg_translate_y_20 =
    A.class "sm:-translate-y-20"


sm__neg_translate_y_24 : Html.Attribute msg
sm__neg_translate_y_24 =
    A.class "sm:-translate-y-24"


sm__neg_translate_y_32 : Html.Attribute msg
sm__neg_translate_y_32 =
    A.class "sm:-translate-y-32"


sm__neg_translate_y_40 : Html.Attribute msg
sm__neg_translate_y_40 =
    A.class "sm:-translate-y-40"


sm__neg_translate_y_48 : Html.Attribute msg
sm__neg_translate_y_48 =
    A.class "sm:-translate-y-48"


sm__neg_translate_y_56 : Html.Attribute msg
sm__neg_translate_y_56 =
    A.class "sm:-translate-y-56"


sm__neg_translate_y_64 : Html.Attribute msg
sm__neg_translate_y_64 =
    A.class "sm:-translate-y-64"


sm__neg_translate_y_px : Html.Attribute msg
sm__neg_translate_y_px =
    A.class "sm:-translate-y-px"


sm__neg_translate_y_full : Html.Attribute msg
sm__neg_translate_y_full =
    A.class "sm:-translate-y-full"


sm__neg_translate_y_1over2 : Html.Attribute msg
sm__neg_translate_y_1over2 =
    A.class "sm:-translate-y-1/2"


sm__translate_y_1over2 : Html.Attribute msg
sm__translate_y_1over2 =
    A.class "sm:translate-y-1/2"


sm__translate_y_full : Html.Attribute msg
sm__translate_y_full =
    A.class "sm:translate-y-full"


sm__hover__translate_x_0 : Html.Attribute msg
sm__hover__translate_x_0 =
    A.class "sm:hover:translate-x-0"


sm__hover__translate_x_1 : Html.Attribute msg
sm__hover__translate_x_1 =
    A.class "sm:hover:translate-x-1"


sm__hover__translate_x_2 : Html.Attribute msg
sm__hover__translate_x_2 =
    A.class "sm:hover:translate-x-2"


sm__hover__translate_x_3 : Html.Attribute msg
sm__hover__translate_x_3 =
    A.class "sm:hover:translate-x-3"


sm__hover__translate_x_4 : Html.Attribute msg
sm__hover__translate_x_4 =
    A.class "sm:hover:translate-x-4"


sm__hover__translate_x_5 : Html.Attribute msg
sm__hover__translate_x_5 =
    A.class "sm:hover:translate-x-5"


sm__hover__translate_x_6 : Html.Attribute msg
sm__hover__translate_x_6 =
    A.class "sm:hover:translate-x-6"


sm__hover__translate_x_8 : Html.Attribute msg
sm__hover__translate_x_8 =
    A.class "sm:hover:translate-x-8"


sm__hover__translate_x_10 : Html.Attribute msg
sm__hover__translate_x_10 =
    A.class "sm:hover:translate-x-10"


sm__hover__translate_x_12 : Html.Attribute msg
sm__hover__translate_x_12 =
    A.class "sm:hover:translate-x-12"


sm__hover__translate_x_16 : Html.Attribute msg
sm__hover__translate_x_16 =
    A.class "sm:hover:translate-x-16"


sm__hover__translate_x_20 : Html.Attribute msg
sm__hover__translate_x_20 =
    A.class "sm:hover:translate-x-20"


sm__hover__translate_x_24 : Html.Attribute msg
sm__hover__translate_x_24 =
    A.class "sm:hover:translate-x-24"


sm__hover__translate_x_32 : Html.Attribute msg
sm__hover__translate_x_32 =
    A.class "sm:hover:translate-x-32"


sm__hover__translate_x_40 : Html.Attribute msg
sm__hover__translate_x_40 =
    A.class "sm:hover:translate-x-40"


sm__hover__translate_x_48 : Html.Attribute msg
sm__hover__translate_x_48 =
    A.class "sm:hover:translate-x-48"


sm__hover__translate_x_56 : Html.Attribute msg
sm__hover__translate_x_56 =
    A.class "sm:hover:translate-x-56"


sm__hover__translate_x_64 : Html.Attribute msg
sm__hover__translate_x_64 =
    A.class "sm:hover:translate-x-64"


sm__hover__translate_x_px : Html.Attribute msg
sm__hover__translate_x_px =
    A.class "sm:hover:translate-x-px"


sm__hover__neg_translate_x_1 : Html.Attribute msg
sm__hover__neg_translate_x_1 =
    A.class "sm:hover:-translate-x-1"


sm__hover__neg_translate_x_2 : Html.Attribute msg
sm__hover__neg_translate_x_2 =
    A.class "sm:hover:-translate-x-2"


sm__hover__neg_translate_x_3 : Html.Attribute msg
sm__hover__neg_translate_x_3 =
    A.class "sm:hover:-translate-x-3"


sm__hover__neg_translate_x_4 : Html.Attribute msg
sm__hover__neg_translate_x_4 =
    A.class "sm:hover:-translate-x-4"


sm__hover__neg_translate_x_5 : Html.Attribute msg
sm__hover__neg_translate_x_5 =
    A.class "sm:hover:-translate-x-5"


sm__hover__neg_translate_x_6 : Html.Attribute msg
sm__hover__neg_translate_x_6 =
    A.class "sm:hover:-translate-x-6"


sm__hover__neg_translate_x_8 : Html.Attribute msg
sm__hover__neg_translate_x_8 =
    A.class "sm:hover:-translate-x-8"


sm__hover__neg_translate_x_10 : Html.Attribute msg
sm__hover__neg_translate_x_10 =
    A.class "sm:hover:-translate-x-10"


sm__hover__neg_translate_x_12 : Html.Attribute msg
sm__hover__neg_translate_x_12 =
    A.class "sm:hover:-translate-x-12"


sm__hover__neg_translate_x_16 : Html.Attribute msg
sm__hover__neg_translate_x_16 =
    A.class "sm:hover:-translate-x-16"


sm__hover__neg_translate_x_20 : Html.Attribute msg
sm__hover__neg_translate_x_20 =
    A.class "sm:hover:-translate-x-20"


sm__hover__neg_translate_x_24 : Html.Attribute msg
sm__hover__neg_translate_x_24 =
    A.class "sm:hover:-translate-x-24"


sm__hover__neg_translate_x_32 : Html.Attribute msg
sm__hover__neg_translate_x_32 =
    A.class "sm:hover:-translate-x-32"


sm__hover__neg_translate_x_40 : Html.Attribute msg
sm__hover__neg_translate_x_40 =
    A.class "sm:hover:-translate-x-40"


sm__hover__neg_translate_x_48 : Html.Attribute msg
sm__hover__neg_translate_x_48 =
    A.class "sm:hover:-translate-x-48"


sm__hover__neg_translate_x_56 : Html.Attribute msg
sm__hover__neg_translate_x_56 =
    A.class "sm:hover:-translate-x-56"


sm__hover__neg_translate_x_64 : Html.Attribute msg
sm__hover__neg_translate_x_64 =
    A.class "sm:hover:-translate-x-64"


sm__hover__neg_translate_x_px : Html.Attribute msg
sm__hover__neg_translate_x_px =
    A.class "sm:hover:-translate-x-px"


sm__hover__neg_translate_x_full : Html.Attribute msg
sm__hover__neg_translate_x_full =
    A.class "sm:hover:-translate-x-full"


sm__hover__neg_translate_x_1over2 : Html.Attribute msg
sm__hover__neg_translate_x_1over2 =
    A.class "sm:hover:-translate-x-1/2"


sm__hover__translate_x_1over2 : Html.Attribute msg
sm__hover__translate_x_1over2 =
    A.class "sm:hover:translate-x-1/2"


sm__hover__translate_x_full : Html.Attribute msg
sm__hover__translate_x_full =
    A.class "sm:hover:translate-x-full"


sm__hover__translate_y_0 : Html.Attribute msg
sm__hover__translate_y_0 =
    A.class "sm:hover:translate-y-0"


sm__hover__translate_y_1 : Html.Attribute msg
sm__hover__translate_y_1 =
    A.class "sm:hover:translate-y-1"


sm__hover__translate_y_2 : Html.Attribute msg
sm__hover__translate_y_2 =
    A.class "sm:hover:translate-y-2"


sm__hover__translate_y_3 : Html.Attribute msg
sm__hover__translate_y_3 =
    A.class "sm:hover:translate-y-3"


sm__hover__translate_y_4 : Html.Attribute msg
sm__hover__translate_y_4 =
    A.class "sm:hover:translate-y-4"


sm__hover__translate_y_5 : Html.Attribute msg
sm__hover__translate_y_5 =
    A.class "sm:hover:translate-y-5"


sm__hover__translate_y_6 : Html.Attribute msg
sm__hover__translate_y_6 =
    A.class "sm:hover:translate-y-6"


sm__hover__translate_y_8 : Html.Attribute msg
sm__hover__translate_y_8 =
    A.class "sm:hover:translate-y-8"


sm__hover__translate_y_10 : Html.Attribute msg
sm__hover__translate_y_10 =
    A.class "sm:hover:translate-y-10"


sm__hover__translate_y_12 : Html.Attribute msg
sm__hover__translate_y_12 =
    A.class "sm:hover:translate-y-12"


sm__hover__translate_y_16 : Html.Attribute msg
sm__hover__translate_y_16 =
    A.class "sm:hover:translate-y-16"


sm__hover__translate_y_20 : Html.Attribute msg
sm__hover__translate_y_20 =
    A.class "sm:hover:translate-y-20"


sm__hover__translate_y_24 : Html.Attribute msg
sm__hover__translate_y_24 =
    A.class "sm:hover:translate-y-24"


sm__hover__translate_y_32 : Html.Attribute msg
sm__hover__translate_y_32 =
    A.class "sm:hover:translate-y-32"


sm__hover__translate_y_40 : Html.Attribute msg
sm__hover__translate_y_40 =
    A.class "sm:hover:translate-y-40"


sm__hover__translate_y_48 : Html.Attribute msg
sm__hover__translate_y_48 =
    A.class "sm:hover:translate-y-48"


sm__hover__translate_y_56 : Html.Attribute msg
sm__hover__translate_y_56 =
    A.class "sm:hover:translate-y-56"


sm__hover__translate_y_64 : Html.Attribute msg
sm__hover__translate_y_64 =
    A.class "sm:hover:translate-y-64"


sm__hover__translate_y_px : Html.Attribute msg
sm__hover__translate_y_px =
    A.class "sm:hover:translate-y-px"


sm__hover__neg_translate_y_1 : Html.Attribute msg
sm__hover__neg_translate_y_1 =
    A.class "sm:hover:-translate-y-1"


sm__hover__neg_translate_y_2 : Html.Attribute msg
sm__hover__neg_translate_y_2 =
    A.class "sm:hover:-translate-y-2"


sm__hover__neg_translate_y_3 : Html.Attribute msg
sm__hover__neg_translate_y_3 =
    A.class "sm:hover:-translate-y-3"


sm__hover__neg_translate_y_4 : Html.Attribute msg
sm__hover__neg_translate_y_4 =
    A.class "sm:hover:-translate-y-4"


sm__hover__neg_translate_y_5 : Html.Attribute msg
sm__hover__neg_translate_y_5 =
    A.class "sm:hover:-translate-y-5"


sm__hover__neg_translate_y_6 : Html.Attribute msg
sm__hover__neg_translate_y_6 =
    A.class "sm:hover:-translate-y-6"


sm__hover__neg_translate_y_8 : Html.Attribute msg
sm__hover__neg_translate_y_8 =
    A.class "sm:hover:-translate-y-8"


sm__hover__neg_translate_y_10 : Html.Attribute msg
sm__hover__neg_translate_y_10 =
    A.class "sm:hover:-translate-y-10"


sm__hover__neg_translate_y_12 : Html.Attribute msg
sm__hover__neg_translate_y_12 =
    A.class "sm:hover:-translate-y-12"


sm__hover__neg_translate_y_16 : Html.Attribute msg
sm__hover__neg_translate_y_16 =
    A.class "sm:hover:-translate-y-16"


sm__hover__neg_translate_y_20 : Html.Attribute msg
sm__hover__neg_translate_y_20 =
    A.class "sm:hover:-translate-y-20"


sm__hover__neg_translate_y_24 : Html.Attribute msg
sm__hover__neg_translate_y_24 =
    A.class "sm:hover:-translate-y-24"


sm__hover__neg_translate_y_32 : Html.Attribute msg
sm__hover__neg_translate_y_32 =
    A.class "sm:hover:-translate-y-32"


sm__hover__neg_translate_y_40 : Html.Attribute msg
sm__hover__neg_translate_y_40 =
    A.class "sm:hover:-translate-y-40"


sm__hover__neg_translate_y_48 : Html.Attribute msg
sm__hover__neg_translate_y_48 =
    A.class "sm:hover:-translate-y-48"


sm__hover__neg_translate_y_56 : Html.Attribute msg
sm__hover__neg_translate_y_56 =
    A.class "sm:hover:-translate-y-56"


sm__hover__neg_translate_y_64 : Html.Attribute msg
sm__hover__neg_translate_y_64 =
    A.class "sm:hover:-translate-y-64"


sm__hover__neg_translate_y_px : Html.Attribute msg
sm__hover__neg_translate_y_px =
    A.class "sm:hover:-translate-y-px"


sm__hover__neg_translate_y_full : Html.Attribute msg
sm__hover__neg_translate_y_full =
    A.class "sm:hover:-translate-y-full"


sm__hover__neg_translate_y_1over2 : Html.Attribute msg
sm__hover__neg_translate_y_1over2 =
    A.class "sm:hover:-translate-y-1/2"


sm__hover__translate_y_1over2 : Html.Attribute msg
sm__hover__translate_y_1over2 =
    A.class "sm:hover:translate-y-1/2"


sm__hover__translate_y_full : Html.Attribute msg
sm__hover__translate_y_full =
    A.class "sm:hover:translate-y-full"


sm__focus__translate_x_0 : Html.Attribute msg
sm__focus__translate_x_0 =
    A.class "sm:focus:translate-x-0"


sm__focus__translate_x_1 : Html.Attribute msg
sm__focus__translate_x_1 =
    A.class "sm:focus:translate-x-1"


sm__focus__translate_x_2 : Html.Attribute msg
sm__focus__translate_x_2 =
    A.class "sm:focus:translate-x-2"


sm__focus__translate_x_3 : Html.Attribute msg
sm__focus__translate_x_3 =
    A.class "sm:focus:translate-x-3"


sm__focus__translate_x_4 : Html.Attribute msg
sm__focus__translate_x_4 =
    A.class "sm:focus:translate-x-4"


sm__focus__translate_x_5 : Html.Attribute msg
sm__focus__translate_x_5 =
    A.class "sm:focus:translate-x-5"


sm__focus__translate_x_6 : Html.Attribute msg
sm__focus__translate_x_6 =
    A.class "sm:focus:translate-x-6"


sm__focus__translate_x_8 : Html.Attribute msg
sm__focus__translate_x_8 =
    A.class "sm:focus:translate-x-8"


sm__focus__translate_x_10 : Html.Attribute msg
sm__focus__translate_x_10 =
    A.class "sm:focus:translate-x-10"


sm__focus__translate_x_12 : Html.Attribute msg
sm__focus__translate_x_12 =
    A.class "sm:focus:translate-x-12"


sm__focus__translate_x_16 : Html.Attribute msg
sm__focus__translate_x_16 =
    A.class "sm:focus:translate-x-16"


sm__focus__translate_x_20 : Html.Attribute msg
sm__focus__translate_x_20 =
    A.class "sm:focus:translate-x-20"


sm__focus__translate_x_24 : Html.Attribute msg
sm__focus__translate_x_24 =
    A.class "sm:focus:translate-x-24"


sm__focus__translate_x_32 : Html.Attribute msg
sm__focus__translate_x_32 =
    A.class "sm:focus:translate-x-32"


sm__focus__translate_x_40 : Html.Attribute msg
sm__focus__translate_x_40 =
    A.class "sm:focus:translate-x-40"


sm__focus__translate_x_48 : Html.Attribute msg
sm__focus__translate_x_48 =
    A.class "sm:focus:translate-x-48"


sm__focus__translate_x_56 : Html.Attribute msg
sm__focus__translate_x_56 =
    A.class "sm:focus:translate-x-56"


sm__focus__translate_x_64 : Html.Attribute msg
sm__focus__translate_x_64 =
    A.class "sm:focus:translate-x-64"


sm__focus__translate_x_px : Html.Attribute msg
sm__focus__translate_x_px =
    A.class "sm:focus:translate-x-px"


sm__focus__neg_translate_x_1 : Html.Attribute msg
sm__focus__neg_translate_x_1 =
    A.class "sm:focus:-translate-x-1"


sm__focus__neg_translate_x_2 : Html.Attribute msg
sm__focus__neg_translate_x_2 =
    A.class "sm:focus:-translate-x-2"


sm__focus__neg_translate_x_3 : Html.Attribute msg
sm__focus__neg_translate_x_3 =
    A.class "sm:focus:-translate-x-3"


sm__focus__neg_translate_x_4 : Html.Attribute msg
sm__focus__neg_translate_x_4 =
    A.class "sm:focus:-translate-x-4"


sm__focus__neg_translate_x_5 : Html.Attribute msg
sm__focus__neg_translate_x_5 =
    A.class "sm:focus:-translate-x-5"


sm__focus__neg_translate_x_6 : Html.Attribute msg
sm__focus__neg_translate_x_6 =
    A.class "sm:focus:-translate-x-6"


sm__focus__neg_translate_x_8 : Html.Attribute msg
sm__focus__neg_translate_x_8 =
    A.class "sm:focus:-translate-x-8"


sm__focus__neg_translate_x_10 : Html.Attribute msg
sm__focus__neg_translate_x_10 =
    A.class "sm:focus:-translate-x-10"


sm__focus__neg_translate_x_12 : Html.Attribute msg
sm__focus__neg_translate_x_12 =
    A.class "sm:focus:-translate-x-12"


sm__focus__neg_translate_x_16 : Html.Attribute msg
sm__focus__neg_translate_x_16 =
    A.class "sm:focus:-translate-x-16"


sm__focus__neg_translate_x_20 : Html.Attribute msg
sm__focus__neg_translate_x_20 =
    A.class "sm:focus:-translate-x-20"


sm__focus__neg_translate_x_24 : Html.Attribute msg
sm__focus__neg_translate_x_24 =
    A.class "sm:focus:-translate-x-24"


sm__focus__neg_translate_x_32 : Html.Attribute msg
sm__focus__neg_translate_x_32 =
    A.class "sm:focus:-translate-x-32"


sm__focus__neg_translate_x_40 : Html.Attribute msg
sm__focus__neg_translate_x_40 =
    A.class "sm:focus:-translate-x-40"


sm__focus__neg_translate_x_48 : Html.Attribute msg
sm__focus__neg_translate_x_48 =
    A.class "sm:focus:-translate-x-48"


sm__focus__neg_translate_x_56 : Html.Attribute msg
sm__focus__neg_translate_x_56 =
    A.class "sm:focus:-translate-x-56"


sm__focus__neg_translate_x_64 : Html.Attribute msg
sm__focus__neg_translate_x_64 =
    A.class "sm:focus:-translate-x-64"


sm__focus__neg_translate_x_px : Html.Attribute msg
sm__focus__neg_translate_x_px =
    A.class "sm:focus:-translate-x-px"


sm__focus__neg_translate_x_full : Html.Attribute msg
sm__focus__neg_translate_x_full =
    A.class "sm:focus:-translate-x-full"


sm__focus__neg_translate_x_1over2 : Html.Attribute msg
sm__focus__neg_translate_x_1over2 =
    A.class "sm:focus:-translate-x-1/2"


sm__focus__translate_x_1over2 : Html.Attribute msg
sm__focus__translate_x_1over2 =
    A.class "sm:focus:translate-x-1/2"


sm__focus__translate_x_full : Html.Attribute msg
sm__focus__translate_x_full =
    A.class "sm:focus:translate-x-full"


sm__focus__translate_y_0 : Html.Attribute msg
sm__focus__translate_y_0 =
    A.class "sm:focus:translate-y-0"


sm__focus__translate_y_1 : Html.Attribute msg
sm__focus__translate_y_1 =
    A.class "sm:focus:translate-y-1"


sm__focus__translate_y_2 : Html.Attribute msg
sm__focus__translate_y_2 =
    A.class "sm:focus:translate-y-2"


sm__focus__translate_y_3 : Html.Attribute msg
sm__focus__translate_y_3 =
    A.class "sm:focus:translate-y-3"


sm__focus__translate_y_4 : Html.Attribute msg
sm__focus__translate_y_4 =
    A.class "sm:focus:translate-y-4"


sm__focus__translate_y_5 : Html.Attribute msg
sm__focus__translate_y_5 =
    A.class "sm:focus:translate-y-5"


sm__focus__translate_y_6 : Html.Attribute msg
sm__focus__translate_y_6 =
    A.class "sm:focus:translate-y-6"


sm__focus__translate_y_8 : Html.Attribute msg
sm__focus__translate_y_8 =
    A.class "sm:focus:translate-y-8"


sm__focus__translate_y_10 : Html.Attribute msg
sm__focus__translate_y_10 =
    A.class "sm:focus:translate-y-10"


sm__focus__translate_y_12 : Html.Attribute msg
sm__focus__translate_y_12 =
    A.class "sm:focus:translate-y-12"


sm__focus__translate_y_16 : Html.Attribute msg
sm__focus__translate_y_16 =
    A.class "sm:focus:translate-y-16"


sm__focus__translate_y_20 : Html.Attribute msg
sm__focus__translate_y_20 =
    A.class "sm:focus:translate-y-20"


sm__focus__translate_y_24 : Html.Attribute msg
sm__focus__translate_y_24 =
    A.class "sm:focus:translate-y-24"


sm__focus__translate_y_32 : Html.Attribute msg
sm__focus__translate_y_32 =
    A.class "sm:focus:translate-y-32"


sm__focus__translate_y_40 : Html.Attribute msg
sm__focus__translate_y_40 =
    A.class "sm:focus:translate-y-40"


sm__focus__translate_y_48 : Html.Attribute msg
sm__focus__translate_y_48 =
    A.class "sm:focus:translate-y-48"


sm__focus__translate_y_56 : Html.Attribute msg
sm__focus__translate_y_56 =
    A.class "sm:focus:translate-y-56"


sm__focus__translate_y_64 : Html.Attribute msg
sm__focus__translate_y_64 =
    A.class "sm:focus:translate-y-64"


sm__focus__translate_y_px : Html.Attribute msg
sm__focus__translate_y_px =
    A.class "sm:focus:translate-y-px"


sm__focus__neg_translate_y_1 : Html.Attribute msg
sm__focus__neg_translate_y_1 =
    A.class "sm:focus:-translate-y-1"


sm__focus__neg_translate_y_2 : Html.Attribute msg
sm__focus__neg_translate_y_2 =
    A.class "sm:focus:-translate-y-2"


sm__focus__neg_translate_y_3 : Html.Attribute msg
sm__focus__neg_translate_y_3 =
    A.class "sm:focus:-translate-y-3"


sm__focus__neg_translate_y_4 : Html.Attribute msg
sm__focus__neg_translate_y_4 =
    A.class "sm:focus:-translate-y-4"


sm__focus__neg_translate_y_5 : Html.Attribute msg
sm__focus__neg_translate_y_5 =
    A.class "sm:focus:-translate-y-5"


sm__focus__neg_translate_y_6 : Html.Attribute msg
sm__focus__neg_translate_y_6 =
    A.class "sm:focus:-translate-y-6"


sm__focus__neg_translate_y_8 : Html.Attribute msg
sm__focus__neg_translate_y_8 =
    A.class "sm:focus:-translate-y-8"


sm__focus__neg_translate_y_10 : Html.Attribute msg
sm__focus__neg_translate_y_10 =
    A.class "sm:focus:-translate-y-10"


sm__focus__neg_translate_y_12 : Html.Attribute msg
sm__focus__neg_translate_y_12 =
    A.class "sm:focus:-translate-y-12"


sm__focus__neg_translate_y_16 : Html.Attribute msg
sm__focus__neg_translate_y_16 =
    A.class "sm:focus:-translate-y-16"


sm__focus__neg_translate_y_20 : Html.Attribute msg
sm__focus__neg_translate_y_20 =
    A.class "sm:focus:-translate-y-20"


sm__focus__neg_translate_y_24 : Html.Attribute msg
sm__focus__neg_translate_y_24 =
    A.class "sm:focus:-translate-y-24"


sm__focus__neg_translate_y_32 : Html.Attribute msg
sm__focus__neg_translate_y_32 =
    A.class "sm:focus:-translate-y-32"


sm__focus__neg_translate_y_40 : Html.Attribute msg
sm__focus__neg_translate_y_40 =
    A.class "sm:focus:-translate-y-40"


sm__focus__neg_translate_y_48 : Html.Attribute msg
sm__focus__neg_translate_y_48 =
    A.class "sm:focus:-translate-y-48"


sm__focus__neg_translate_y_56 : Html.Attribute msg
sm__focus__neg_translate_y_56 =
    A.class "sm:focus:-translate-y-56"


sm__focus__neg_translate_y_64 : Html.Attribute msg
sm__focus__neg_translate_y_64 =
    A.class "sm:focus:-translate-y-64"


sm__focus__neg_translate_y_px : Html.Attribute msg
sm__focus__neg_translate_y_px =
    A.class "sm:focus:-translate-y-px"


sm__focus__neg_translate_y_full : Html.Attribute msg
sm__focus__neg_translate_y_full =
    A.class "sm:focus:-translate-y-full"


sm__focus__neg_translate_y_1over2 : Html.Attribute msg
sm__focus__neg_translate_y_1over2 =
    A.class "sm:focus:-translate-y-1/2"


sm__focus__translate_y_1over2 : Html.Attribute msg
sm__focus__translate_y_1over2 =
    A.class "sm:focus:translate-y-1/2"


sm__focus__translate_y_full : Html.Attribute msg
sm__focus__translate_y_full =
    A.class "sm:focus:translate-y-full"


sm__skew_x_0 : Html.Attribute msg
sm__skew_x_0 =
    A.class "sm:skew-x-0"


sm__skew_x_3 : Html.Attribute msg
sm__skew_x_3 =
    A.class "sm:skew-x-3"


sm__skew_x_6 : Html.Attribute msg
sm__skew_x_6 =
    A.class "sm:skew-x-6"


sm__skew_x_12 : Html.Attribute msg
sm__skew_x_12 =
    A.class "sm:skew-x-12"


sm__neg_skew_x_12 : Html.Attribute msg
sm__neg_skew_x_12 =
    A.class "sm:-skew-x-12"


sm__neg_skew_x_6 : Html.Attribute msg
sm__neg_skew_x_6 =
    A.class "sm:-skew-x-6"


sm__neg_skew_x_3 : Html.Attribute msg
sm__neg_skew_x_3 =
    A.class "sm:-skew-x-3"


sm__skew_y_0 : Html.Attribute msg
sm__skew_y_0 =
    A.class "sm:skew-y-0"


sm__skew_y_3 : Html.Attribute msg
sm__skew_y_3 =
    A.class "sm:skew-y-3"


sm__skew_y_6 : Html.Attribute msg
sm__skew_y_6 =
    A.class "sm:skew-y-6"


sm__skew_y_12 : Html.Attribute msg
sm__skew_y_12 =
    A.class "sm:skew-y-12"


sm__neg_skew_y_12 : Html.Attribute msg
sm__neg_skew_y_12 =
    A.class "sm:-skew-y-12"


sm__neg_skew_y_6 : Html.Attribute msg
sm__neg_skew_y_6 =
    A.class "sm:-skew-y-6"


sm__neg_skew_y_3 : Html.Attribute msg
sm__neg_skew_y_3 =
    A.class "sm:-skew-y-3"


sm__hover__skew_x_0 : Html.Attribute msg
sm__hover__skew_x_0 =
    A.class "sm:hover:skew-x-0"


sm__hover__skew_x_3 : Html.Attribute msg
sm__hover__skew_x_3 =
    A.class "sm:hover:skew-x-3"


sm__hover__skew_x_6 : Html.Attribute msg
sm__hover__skew_x_6 =
    A.class "sm:hover:skew-x-6"


sm__hover__skew_x_12 : Html.Attribute msg
sm__hover__skew_x_12 =
    A.class "sm:hover:skew-x-12"


sm__hover__neg_skew_x_12 : Html.Attribute msg
sm__hover__neg_skew_x_12 =
    A.class "sm:hover:-skew-x-12"


sm__hover__neg_skew_x_6 : Html.Attribute msg
sm__hover__neg_skew_x_6 =
    A.class "sm:hover:-skew-x-6"


sm__hover__neg_skew_x_3 : Html.Attribute msg
sm__hover__neg_skew_x_3 =
    A.class "sm:hover:-skew-x-3"


sm__hover__skew_y_0 : Html.Attribute msg
sm__hover__skew_y_0 =
    A.class "sm:hover:skew-y-0"


sm__hover__skew_y_3 : Html.Attribute msg
sm__hover__skew_y_3 =
    A.class "sm:hover:skew-y-3"


sm__hover__skew_y_6 : Html.Attribute msg
sm__hover__skew_y_6 =
    A.class "sm:hover:skew-y-6"


sm__hover__skew_y_12 : Html.Attribute msg
sm__hover__skew_y_12 =
    A.class "sm:hover:skew-y-12"


sm__hover__neg_skew_y_12 : Html.Attribute msg
sm__hover__neg_skew_y_12 =
    A.class "sm:hover:-skew-y-12"


sm__hover__neg_skew_y_6 : Html.Attribute msg
sm__hover__neg_skew_y_6 =
    A.class "sm:hover:-skew-y-6"


sm__hover__neg_skew_y_3 : Html.Attribute msg
sm__hover__neg_skew_y_3 =
    A.class "sm:hover:-skew-y-3"


sm__focus__skew_x_0 : Html.Attribute msg
sm__focus__skew_x_0 =
    A.class "sm:focus:skew-x-0"


sm__focus__skew_x_3 : Html.Attribute msg
sm__focus__skew_x_3 =
    A.class "sm:focus:skew-x-3"


sm__focus__skew_x_6 : Html.Attribute msg
sm__focus__skew_x_6 =
    A.class "sm:focus:skew-x-6"


sm__focus__skew_x_12 : Html.Attribute msg
sm__focus__skew_x_12 =
    A.class "sm:focus:skew-x-12"


sm__focus__neg_skew_x_12 : Html.Attribute msg
sm__focus__neg_skew_x_12 =
    A.class "sm:focus:-skew-x-12"


sm__focus__neg_skew_x_6 : Html.Attribute msg
sm__focus__neg_skew_x_6 =
    A.class "sm:focus:-skew-x-6"


sm__focus__neg_skew_x_3 : Html.Attribute msg
sm__focus__neg_skew_x_3 =
    A.class "sm:focus:-skew-x-3"


sm__focus__skew_y_0 : Html.Attribute msg
sm__focus__skew_y_0 =
    A.class "sm:focus:skew-y-0"


sm__focus__skew_y_3 : Html.Attribute msg
sm__focus__skew_y_3 =
    A.class "sm:focus:skew-y-3"


sm__focus__skew_y_6 : Html.Attribute msg
sm__focus__skew_y_6 =
    A.class "sm:focus:skew-y-6"


sm__focus__skew_y_12 : Html.Attribute msg
sm__focus__skew_y_12 =
    A.class "sm:focus:skew-y-12"


sm__focus__neg_skew_y_12 : Html.Attribute msg
sm__focus__neg_skew_y_12 =
    A.class "sm:focus:-skew-y-12"


sm__focus__neg_skew_y_6 : Html.Attribute msg
sm__focus__neg_skew_y_6 =
    A.class "sm:focus:-skew-y-6"


sm__focus__neg_skew_y_3 : Html.Attribute msg
sm__focus__neg_skew_y_3 =
    A.class "sm:focus:-skew-y-3"


sm__transition_none : Html.Attribute msg
sm__transition_none =
    A.class "sm:transition-none"


sm__transition_all : Html.Attribute msg
sm__transition_all =
    A.class "sm:transition-all"


sm__transition : Html.Attribute msg
sm__transition =
    A.class "sm:transition"


sm__transition_colors : Html.Attribute msg
sm__transition_colors =
    A.class "sm:transition-colors"


sm__transition_opacity : Html.Attribute msg
sm__transition_opacity =
    A.class "sm:transition-opacity"


sm__transition_shadow : Html.Attribute msg
sm__transition_shadow =
    A.class "sm:transition-shadow"


sm__transition_transform : Html.Attribute msg
sm__transition_transform =
    A.class "sm:transition-transform"


sm__ease_linear : Html.Attribute msg
sm__ease_linear =
    A.class "sm:ease-linear"


sm__ease_in : Html.Attribute msg
sm__ease_in =
    A.class "sm:ease-in"


sm__ease_out : Html.Attribute msg
sm__ease_out =
    A.class "sm:ease-out"


sm__ease_in_out : Html.Attribute msg
sm__ease_in_out =
    A.class "sm:ease-in-out"


sm__duration_75 : Html.Attribute msg
sm__duration_75 =
    A.class "sm:duration-75"


sm__duration_100 : Html.Attribute msg
sm__duration_100 =
    A.class "sm:duration-100"


sm__duration_150 : Html.Attribute msg
sm__duration_150 =
    A.class "sm:duration-150"


sm__duration_200 : Html.Attribute msg
sm__duration_200 =
    A.class "sm:duration-200"


sm__duration_300 : Html.Attribute msg
sm__duration_300 =
    A.class "sm:duration-300"


sm__duration_500 : Html.Attribute msg
sm__duration_500 =
    A.class "sm:duration-500"


sm__duration_700 : Html.Attribute msg
sm__duration_700 =
    A.class "sm:duration-700"


sm__duration_1000 : Html.Attribute msg
sm__duration_1000 =
    A.class "sm:duration-1000"


md__sr_only : Html.Attribute msg
md__sr_only =
    A.class "md:sr-only"


md__not_sr_only : Html.Attribute msg
md__not_sr_only =
    A.class "md:not-sr-only"


md__focus__sr_only : Html.Attribute msg
md__focus__sr_only =
    A.class "md:focus:sr-only"


md__focus__not_sr_only : Html.Attribute msg
md__focus__not_sr_only =
    A.class "md:focus:not-sr-only"


md__appearance_none : Html.Attribute msg
md__appearance_none =
    A.class "md:appearance-none"


md__bg_fixed : Html.Attribute msg
md__bg_fixed =
    A.class "md:bg-fixed"


md__bg_local : Html.Attribute msg
md__bg_local =
    A.class "md:bg-local"


md__bg_scroll : Html.Attribute msg
md__bg_scroll =
    A.class "md:bg-scroll"


md__bg_transparent : Html.Attribute msg
md__bg_transparent =
    A.class "md:bg-transparent"


md__bg_black : Html.Attribute msg
md__bg_black =
    A.class "md:bg-black"


md__bg_white : Html.Attribute msg
md__bg_white =
    A.class "md:bg-white"


md__bg_gray_100 : Html.Attribute msg
md__bg_gray_100 =
    A.class "md:bg-gray-100"


md__bg_gray_200 : Html.Attribute msg
md__bg_gray_200 =
    A.class "md:bg-gray-200"


md__bg_gray_300 : Html.Attribute msg
md__bg_gray_300 =
    A.class "md:bg-gray-300"


md__bg_gray_400 : Html.Attribute msg
md__bg_gray_400 =
    A.class "md:bg-gray-400"


md__bg_gray_500 : Html.Attribute msg
md__bg_gray_500 =
    A.class "md:bg-gray-500"


md__bg_gray_600 : Html.Attribute msg
md__bg_gray_600 =
    A.class "md:bg-gray-600"


md__bg_gray_700 : Html.Attribute msg
md__bg_gray_700 =
    A.class "md:bg-gray-700"


md__bg_gray_800 : Html.Attribute msg
md__bg_gray_800 =
    A.class "md:bg-gray-800"


md__bg_gray_900 : Html.Attribute msg
md__bg_gray_900 =
    A.class "md:bg-gray-900"


md__bg_red_100 : Html.Attribute msg
md__bg_red_100 =
    A.class "md:bg-red-100"


md__bg_red_200 : Html.Attribute msg
md__bg_red_200 =
    A.class "md:bg-red-200"


md__bg_red_300 : Html.Attribute msg
md__bg_red_300 =
    A.class "md:bg-red-300"


md__bg_red_400 : Html.Attribute msg
md__bg_red_400 =
    A.class "md:bg-red-400"


md__bg_red_500 : Html.Attribute msg
md__bg_red_500 =
    A.class "md:bg-red-500"


md__bg_red_600 : Html.Attribute msg
md__bg_red_600 =
    A.class "md:bg-red-600"


md__bg_red_700 : Html.Attribute msg
md__bg_red_700 =
    A.class "md:bg-red-700"


md__bg_red_800 : Html.Attribute msg
md__bg_red_800 =
    A.class "md:bg-red-800"


md__bg_red_900 : Html.Attribute msg
md__bg_red_900 =
    A.class "md:bg-red-900"


md__bg_orange_100 : Html.Attribute msg
md__bg_orange_100 =
    A.class "md:bg-orange-100"


md__bg_orange_200 : Html.Attribute msg
md__bg_orange_200 =
    A.class "md:bg-orange-200"


md__bg_orange_300 : Html.Attribute msg
md__bg_orange_300 =
    A.class "md:bg-orange-300"


md__bg_orange_400 : Html.Attribute msg
md__bg_orange_400 =
    A.class "md:bg-orange-400"


md__bg_orange_500 : Html.Attribute msg
md__bg_orange_500 =
    A.class "md:bg-orange-500"


md__bg_orange_600 : Html.Attribute msg
md__bg_orange_600 =
    A.class "md:bg-orange-600"


md__bg_orange_700 : Html.Attribute msg
md__bg_orange_700 =
    A.class "md:bg-orange-700"


md__bg_orange_800 : Html.Attribute msg
md__bg_orange_800 =
    A.class "md:bg-orange-800"


md__bg_orange_900 : Html.Attribute msg
md__bg_orange_900 =
    A.class "md:bg-orange-900"


md__bg_yellow_100 : Html.Attribute msg
md__bg_yellow_100 =
    A.class "md:bg-yellow-100"


md__bg_yellow_200 : Html.Attribute msg
md__bg_yellow_200 =
    A.class "md:bg-yellow-200"


md__bg_yellow_300 : Html.Attribute msg
md__bg_yellow_300 =
    A.class "md:bg-yellow-300"


md__bg_yellow_400 : Html.Attribute msg
md__bg_yellow_400 =
    A.class "md:bg-yellow-400"


md__bg_yellow_500 : Html.Attribute msg
md__bg_yellow_500 =
    A.class "md:bg-yellow-500"


md__bg_yellow_600 : Html.Attribute msg
md__bg_yellow_600 =
    A.class "md:bg-yellow-600"


md__bg_yellow_700 : Html.Attribute msg
md__bg_yellow_700 =
    A.class "md:bg-yellow-700"


md__bg_yellow_800 : Html.Attribute msg
md__bg_yellow_800 =
    A.class "md:bg-yellow-800"


md__bg_yellow_900 : Html.Attribute msg
md__bg_yellow_900 =
    A.class "md:bg-yellow-900"


md__bg_green_100 : Html.Attribute msg
md__bg_green_100 =
    A.class "md:bg-green-100"


md__bg_green_200 : Html.Attribute msg
md__bg_green_200 =
    A.class "md:bg-green-200"


md__bg_green_300 : Html.Attribute msg
md__bg_green_300 =
    A.class "md:bg-green-300"


md__bg_green_400 : Html.Attribute msg
md__bg_green_400 =
    A.class "md:bg-green-400"


md__bg_green_500 : Html.Attribute msg
md__bg_green_500 =
    A.class "md:bg-green-500"


md__bg_green_600 : Html.Attribute msg
md__bg_green_600 =
    A.class "md:bg-green-600"


md__bg_green_700 : Html.Attribute msg
md__bg_green_700 =
    A.class "md:bg-green-700"


md__bg_green_800 : Html.Attribute msg
md__bg_green_800 =
    A.class "md:bg-green-800"


md__bg_green_900 : Html.Attribute msg
md__bg_green_900 =
    A.class "md:bg-green-900"


md__bg_teal_100 : Html.Attribute msg
md__bg_teal_100 =
    A.class "md:bg-teal-100"


md__bg_teal_200 : Html.Attribute msg
md__bg_teal_200 =
    A.class "md:bg-teal-200"


md__bg_teal_300 : Html.Attribute msg
md__bg_teal_300 =
    A.class "md:bg-teal-300"


md__bg_teal_400 : Html.Attribute msg
md__bg_teal_400 =
    A.class "md:bg-teal-400"


md__bg_teal_500 : Html.Attribute msg
md__bg_teal_500 =
    A.class "md:bg-teal-500"


md__bg_teal_600 : Html.Attribute msg
md__bg_teal_600 =
    A.class "md:bg-teal-600"


md__bg_teal_700 : Html.Attribute msg
md__bg_teal_700 =
    A.class "md:bg-teal-700"


md__bg_teal_800 : Html.Attribute msg
md__bg_teal_800 =
    A.class "md:bg-teal-800"


md__bg_teal_900 : Html.Attribute msg
md__bg_teal_900 =
    A.class "md:bg-teal-900"


md__bg_blue_100 : Html.Attribute msg
md__bg_blue_100 =
    A.class "md:bg-blue-100"


md__bg_blue_200 : Html.Attribute msg
md__bg_blue_200 =
    A.class "md:bg-blue-200"


md__bg_blue_300 : Html.Attribute msg
md__bg_blue_300 =
    A.class "md:bg-blue-300"


md__bg_blue_400 : Html.Attribute msg
md__bg_blue_400 =
    A.class "md:bg-blue-400"


md__bg_blue_500 : Html.Attribute msg
md__bg_blue_500 =
    A.class "md:bg-blue-500"


md__bg_blue_600 : Html.Attribute msg
md__bg_blue_600 =
    A.class "md:bg-blue-600"


md__bg_blue_700 : Html.Attribute msg
md__bg_blue_700 =
    A.class "md:bg-blue-700"


md__bg_blue_800 : Html.Attribute msg
md__bg_blue_800 =
    A.class "md:bg-blue-800"


md__bg_blue_900 : Html.Attribute msg
md__bg_blue_900 =
    A.class "md:bg-blue-900"


md__bg_indigo_100 : Html.Attribute msg
md__bg_indigo_100 =
    A.class "md:bg-indigo-100"


md__bg_indigo_200 : Html.Attribute msg
md__bg_indigo_200 =
    A.class "md:bg-indigo-200"


md__bg_indigo_300 : Html.Attribute msg
md__bg_indigo_300 =
    A.class "md:bg-indigo-300"


md__bg_indigo_400 : Html.Attribute msg
md__bg_indigo_400 =
    A.class "md:bg-indigo-400"


md__bg_indigo_500 : Html.Attribute msg
md__bg_indigo_500 =
    A.class "md:bg-indigo-500"


md__bg_indigo_600 : Html.Attribute msg
md__bg_indigo_600 =
    A.class "md:bg-indigo-600"


md__bg_indigo_700 : Html.Attribute msg
md__bg_indigo_700 =
    A.class "md:bg-indigo-700"


md__bg_indigo_800 : Html.Attribute msg
md__bg_indigo_800 =
    A.class "md:bg-indigo-800"


md__bg_indigo_900 : Html.Attribute msg
md__bg_indigo_900 =
    A.class "md:bg-indigo-900"


md__bg_purple_100 : Html.Attribute msg
md__bg_purple_100 =
    A.class "md:bg-purple-100"


md__bg_purple_200 : Html.Attribute msg
md__bg_purple_200 =
    A.class "md:bg-purple-200"


md__bg_purple_300 : Html.Attribute msg
md__bg_purple_300 =
    A.class "md:bg-purple-300"


md__bg_purple_400 : Html.Attribute msg
md__bg_purple_400 =
    A.class "md:bg-purple-400"


md__bg_purple_500 : Html.Attribute msg
md__bg_purple_500 =
    A.class "md:bg-purple-500"


md__bg_purple_600 : Html.Attribute msg
md__bg_purple_600 =
    A.class "md:bg-purple-600"


md__bg_purple_700 : Html.Attribute msg
md__bg_purple_700 =
    A.class "md:bg-purple-700"


md__bg_purple_800 : Html.Attribute msg
md__bg_purple_800 =
    A.class "md:bg-purple-800"


md__bg_purple_900 : Html.Attribute msg
md__bg_purple_900 =
    A.class "md:bg-purple-900"


md__bg_pink_100 : Html.Attribute msg
md__bg_pink_100 =
    A.class "md:bg-pink-100"


md__bg_pink_200 : Html.Attribute msg
md__bg_pink_200 =
    A.class "md:bg-pink-200"


md__bg_pink_300 : Html.Attribute msg
md__bg_pink_300 =
    A.class "md:bg-pink-300"


md__bg_pink_400 : Html.Attribute msg
md__bg_pink_400 =
    A.class "md:bg-pink-400"


md__bg_pink_500 : Html.Attribute msg
md__bg_pink_500 =
    A.class "md:bg-pink-500"


md__bg_pink_600 : Html.Attribute msg
md__bg_pink_600 =
    A.class "md:bg-pink-600"


md__bg_pink_700 : Html.Attribute msg
md__bg_pink_700 =
    A.class "md:bg-pink-700"


md__bg_pink_800 : Html.Attribute msg
md__bg_pink_800 =
    A.class "md:bg-pink-800"


md__bg_pink_900 : Html.Attribute msg
md__bg_pink_900 =
    A.class "md:bg-pink-900"


md__hover__bg_transparent : Html.Attribute msg
md__hover__bg_transparent =
    A.class "md:hover:bg-transparent"


md__hover__bg_black : Html.Attribute msg
md__hover__bg_black =
    A.class "md:hover:bg-black"


md__hover__bg_white : Html.Attribute msg
md__hover__bg_white =
    A.class "md:hover:bg-white"


md__hover__bg_gray_100 : Html.Attribute msg
md__hover__bg_gray_100 =
    A.class "md:hover:bg-gray-100"


md__hover__bg_gray_200 : Html.Attribute msg
md__hover__bg_gray_200 =
    A.class "md:hover:bg-gray-200"


md__hover__bg_gray_300 : Html.Attribute msg
md__hover__bg_gray_300 =
    A.class "md:hover:bg-gray-300"


md__hover__bg_gray_400 : Html.Attribute msg
md__hover__bg_gray_400 =
    A.class "md:hover:bg-gray-400"


md__hover__bg_gray_500 : Html.Attribute msg
md__hover__bg_gray_500 =
    A.class "md:hover:bg-gray-500"


md__hover__bg_gray_600 : Html.Attribute msg
md__hover__bg_gray_600 =
    A.class "md:hover:bg-gray-600"


md__hover__bg_gray_700 : Html.Attribute msg
md__hover__bg_gray_700 =
    A.class "md:hover:bg-gray-700"


md__hover__bg_gray_800 : Html.Attribute msg
md__hover__bg_gray_800 =
    A.class "md:hover:bg-gray-800"


md__hover__bg_gray_900 : Html.Attribute msg
md__hover__bg_gray_900 =
    A.class "md:hover:bg-gray-900"


md__hover__bg_red_100 : Html.Attribute msg
md__hover__bg_red_100 =
    A.class "md:hover:bg-red-100"


md__hover__bg_red_200 : Html.Attribute msg
md__hover__bg_red_200 =
    A.class "md:hover:bg-red-200"


md__hover__bg_red_300 : Html.Attribute msg
md__hover__bg_red_300 =
    A.class "md:hover:bg-red-300"


md__hover__bg_red_400 : Html.Attribute msg
md__hover__bg_red_400 =
    A.class "md:hover:bg-red-400"


md__hover__bg_red_500 : Html.Attribute msg
md__hover__bg_red_500 =
    A.class "md:hover:bg-red-500"


md__hover__bg_red_600 : Html.Attribute msg
md__hover__bg_red_600 =
    A.class "md:hover:bg-red-600"


md__hover__bg_red_700 : Html.Attribute msg
md__hover__bg_red_700 =
    A.class "md:hover:bg-red-700"


md__hover__bg_red_800 : Html.Attribute msg
md__hover__bg_red_800 =
    A.class "md:hover:bg-red-800"


md__hover__bg_red_900 : Html.Attribute msg
md__hover__bg_red_900 =
    A.class "md:hover:bg-red-900"


md__hover__bg_orange_100 : Html.Attribute msg
md__hover__bg_orange_100 =
    A.class "md:hover:bg-orange-100"


md__hover__bg_orange_200 : Html.Attribute msg
md__hover__bg_orange_200 =
    A.class "md:hover:bg-orange-200"


md__hover__bg_orange_300 : Html.Attribute msg
md__hover__bg_orange_300 =
    A.class "md:hover:bg-orange-300"


md__hover__bg_orange_400 : Html.Attribute msg
md__hover__bg_orange_400 =
    A.class "md:hover:bg-orange-400"


md__hover__bg_orange_500 : Html.Attribute msg
md__hover__bg_orange_500 =
    A.class "md:hover:bg-orange-500"


md__hover__bg_orange_600 : Html.Attribute msg
md__hover__bg_orange_600 =
    A.class "md:hover:bg-orange-600"


md__hover__bg_orange_700 : Html.Attribute msg
md__hover__bg_orange_700 =
    A.class "md:hover:bg-orange-700"


md__hover__bg_orange_800 : Html.Attribute msg
md__hover__bg_orange_800 =
    A.class "md:hover:bg-orange-800"


md__hover__bg_orange_900 : Html.Attribute msg
md__hover__bg_orange_900 =
    A.class "md:hover:bg-orange-900"


md__hover__bg_yellow_100 : Html.Attribute msg
md__hover__bg_yellow_100 =
    A.class "md:hover:bg-yellow-100"


md__hover__bg_yellow_200 : Html.Attribute msg
md__hover__bg_yellow_200 =
    A.class "md:hover:bg-yellow-200"


md__hover__bg_yellow_300 : Html.Attribute msg
md__hover__bg_yellow_300 =
    A.class "md:hover:bg-yellow-300"


md__hover__bg_yellow_400 : Html.Attribute msg
md__hover__bg_yellow_400 =
    A.class "md:hover:bg-yellow-400"


md__hover__bg_yellow_500 : Html.Attribute msg
md__hover__bg_yellow_500 =
    A.class "md:hover:bg-yellow-500"


md__hover__bg_yellow_600 : Html.Attribute msg
md__hover__bg_yellow_600 =
    A.class "md:hover:bg-yellow-600"


md__hover__bg_yellow_700 : Html.Attribute msg
md__hover__bg_yellow_700 =
    A.class "md:hover:bg-yellow-700"


md__hover__bg_yellow_800 : Html.Attribute msg
md__hover__bg_yellow_800 =
    A.class "md:hover:bg-yellow-800"


md__hover__bg_yellow_900 : Html.Attribute msg
md__hover__bg_yellow_900 =
    A.class "md:hover:bg-yellow-900"


md__hover__bg_green_100 : Html.Attribute msg
md__hover__bg_green_100 =
    A.class "md:hover:bg-green-100"


md__hover__bg_green_200 : Html.Attribute msg
md__hover__bg_green_200 =
    A.class "md:hover:bg-green-200"


md__hover__bg_green_300 : Html.Attribute msg
md__hover__bg_green_300 =
    A.class "md:hover:bg-green-300"


md__hover__bg_green_400 : Html.Attribute msg
md__hover__bg_green_400 =
    A.class "md:hover:bg-green-400"


md__hover__bg_green_500 : Html.Attribute msg
md__hover__bg_green_500 =
    A.class "md:hover:bg-green-500"


md__hover__bg_green_600 : Html.Attribute msg
md__hover__bg_green_600 =
    A.class "md:hover:bg-green-600"


md__hover__bg_green_700 : Html.Attribute msg
md__hover__bg_green_700 =
    A.class "md:hover:bg-green-700"


md__hover__bg_green_800 : Html.Attribute msg
md__hover__bg_green_800 =
    A.class "md:hover:bg-green-800"


md__hover__bg_green_900 : Html.Attribute msg
md__hover__bg_green_900 =
    A.class "md:hover:bg-green-900"


md__hover__bg_teal_100 : Html.Attribute msg
md__hover__bg_teal_100 =
    A.class "md:hover:bg-teal-100"


md__hover__bg_teal_200 : Html.Attribute msg
md__hover__bg_teal_200 =
    A.class "md:hover:bg-teal-200"


md__hover__bg_teal_300 : Html.Attribute msg
md__hover__bg_teal_300 =
    A.class "md:hover:bg-teal-300"


md__hover__bg_teal_400 : Html.Attribute msg
md__hover__bg_teal_400 =
    A.class "md:hover:bg-teal-400"


md__hover__bg_teal_500 : Html.Attribute msg
md__hover__bg_teal_500 =
    A.class "md:hover:bg-teal-500"


md__hover__bg_teal_600 : Html.Attribute msg
md__hover__bg_teal_600 =
    A.class "md:hover:bg-teal-600"


md__hover__bg_teal_700 : Html.Attribute msg
md__hover__bg_teal_700 =
    A.class "md:hover:bg-teal-700"


md__hover__bg_teal_800 : Html.Attribute msg
md__hover__bg_teal_800 =
    A.class "md:hover:bg-teal-800"


md__hover__bg_teal_900 : Html.Attribute msg
md__hover__bg_teal_900 =
    A.class "md:hover:bg-teal-900"


md__hover__bg_blue_100 : Html.Attribute msg
md__hover__bg_blue_100 =
    A.class "md:hover:bg-blue-100"


md__hover__bg_blue_200 : Html.Attribute msg
md__hover__bg_blue_200 =
    A.class "md:hover:bg-blue-200"


md__hover__bg_blue_300 : Html.Attribute msg
md__hover__bg_blue_300 =
    A.class "md:hover:bg-blue-300"


md__hover__bg_blue_400 : Html.Attribute msg
md__hover__bg_blue_400 =
    A.class "md:hover:bg-blue-400"


md__hover__bg_blue_500 : Html.Attribute msg
md__hover__bg_blue_500 =
    A.class "md:hover:bg-blue-500"


md__hover__bg_blue_600 : Html.Attribute msg
md__hover__bg_blue_600 =
    A.class "md:hover:bg-blue-600"


md__hover__bg_blue_700 : Html.Attribute msg
md__hover__bg_blue_700 =
    A.class "md:hover:bg-blue-700"


md__hover__bg_blue_800 : Html.Attribute msg
md__hover__bg_blue_800 =
    A.class "md:hover:bg-blue-800"


md__hover__bg_blue_900 : Html.Attribute msg
md__hover__bg_blue_900 =
    A.class "md:hover:bg-blue-900"


md__hover__bg_indigo_100 : Html.Attribute msg
md__hover__bg_indigo_100 =
    A.class "md:hover:bg-indigo-100"


md__hover__bg_indigo_200 : Html.Attribute msg
md__hover__bg_indigo_200 =
    A.class "md:hover:bg-indigo-200"


md__hover__bg_indigo_300 : Html.Attribute msg
md__hover__bg_indigo_300 =
    A.class "md:hover:bg-indigo-300"


md__hover__bg_indigo_400 : Html.Attribute msg
md__hover__bg_indigo_400 =
    A.class "md:hover:bg-indigo-400"


md__hover__bg_indigo_500 : Html.Attribute msg
md__hover__bg_indigo_500 =
    A.class "md:hover:bg-indigo-500"


md__hover__bg_indigo_600 : Html.Attribute msg
md__hover__bg_indigo_600 =
    A.class "md:hover:bg-indigo-600"


md__hover__bg_indigo_700 : Html.Attribute msg
md__hover__bg_indigo_700 =
    A.class "md:hover:bg-indigo-700"


md__hover__bg_indigo_800 : Html.Attribute msg
md__hover__bg_indigo_800 =
    A.class "md:hover:bg-indigo-800"


md__hover__bg_indigo_900 : Html.Attribute msg
md__hover__bg_indigo_900 =
    A.class "md:hover:bg-indigo-900"


md__hover__bg_purple_100 : Html.Attribute msg
md__hover__bg_purple_100 =
    A.class "md:hover:bg-purple-100"


md__hover__bg_purple_200 : Html.Attribute msg
md__hover__bg_purple_200 =
    A.class "md:hover:bg-purple-200"


md__hover__bg_purple_300 : Html.Attribute msg
md__hover__bg_purple_300 =
    A.class "md:hover:bg-purple-300"


md__hover__bg_purple_400 : Html.Attribute msg
md__hover__bg_purple_400 =
    A.class "md:hover:bg-purple-400"


md__hover__bg_purple_500 : Html.Attribute msg
md__hover__bg_purple_500 =
    A.class "md:hover:bg-purple-500"


md__hover__bg_purple_600 : Html.Attribute msg
md__hover__bg_purple_600 =
    A.class "md:hover:bg-purple-600"


md__hover__bg_purple_700 : Html.Attribute msg
md__hover__bg_purple_700 =
    A.class "md:hover:bg-purple-700"


md__hover__bg_purple_800 : Html.Attribute msg
md__hover__bg_purple_800 =
    A.class "md:hover:bg-purple-800"


md__hover__bg_purple_900 : Html.Attribute msg
md__hover__bg_purple_900 =
    A.class "md:hover:bg-purple-900"


md__hover__bg_pink_100 : Html.Attribute msg
md__hover__bg_pink_100 =
    A.class "md:hover:bg-pink-100"


md__hover__bg_pink_200 : Html.Attribute msg
md__hover__bg_pink_200 =
    A.class "md:hover:bg-pink-200"


md__hover__bg_pink_300 : Html.Attribute msg
md__hover__bg_pink_300 =
    A.class "md:hover:bg-pink-300"


md__hover__bg_pink_400 : Html.Attribute msg
md__hover__bg_pink_400 =
    A.class "md:hover:bg-pink-400"


md__hover__bg_pink_500 : Html.Attribute msg
md__hover__bg_pink_500 =
    A.class "md:hover:bg-pink-500"


md__hover__bg_pink_600 : Html.Attribute msg
md__hover__bg_pink_600 =
    A.class "md:hover:bg-pink-600"


md__hover__bg_pink_700 : Html.Attribute msg
md__hover__bg_pink_700 =
    A.class "md:hover:bg-pink-700"


md__hover__bg_pink_800 : Html.Attribute msg
md__hover__bg_pink_800 =
    A.class "md:hover:bg-pink-800"


md__hover__bg_pink_900 : Html.Attribute msg
md__hover__bg_pink_900 =
    A.class "md:hover:bg-pink-900"


md__focus__bg_transparent : Html.Attribute msg
md__focus__bg_transparent =
    A.class "md:focus:bg-transparent"


md__focus__bg_black : Html.Attribute msg
md__focus__bg_black =
    A.class "md:focus:bg-black"


md__focus__bg_white : Html.Attribute msg
md__focus__bg_white =
    A.class "md:focus:bg-white"


md__focus__bg_gray_100 : Html.Attribute msg
md__focus__bg_gray_100 =
    A.class "md:focus:bg-gray-100"


md__focus__bg_gray_200 : Html.Attribute msg
md__focus__bg_gray_200 =
    A.class "md:focus:bg-gray-200"


md__focus__bg_gray_300 : Html.Attribute msg
md__focus__bg_gray_300 =
    A.class "md:focus:bg-gray-300"


md__focus__bg_gray_400 : Html.Attribute msg
md__focus__bg_gray_400 =
    A.class "md:focus:bg-gray-400"


md__focus__bg_gray_500 : Html.Attribute msg
md__focus__bg_gray_500 =
    A.class "md:focus:bg-gray-500"


md__focus__bg_gray_600 : Html.Attribute msg
md__focus__bg_gray_600 =
    A.class "md:focus:bg-gray-600"


md__focus__bg_gray_700 : Html.Attribute msg
md__focus__bg_gray_700 =
    A.class "md:focus:bg-gray-700"


md__focus__bg_gray_800 : Html.Attribute msg
md__focus__bg_gray_800 =
    A.class "md:focus:bg-gray-800"


md__focus__bg_gray_900 : Html.Attribute msg
md__focus__bg_gray_900 =
    A.class "md:focus:bg-gray-900"


md__focus__bg_red_100 : Html.Attribute msg
md__focus__bg_red_100 =
    A.class "md:focus:bg-red-100"


md__focus__bg_red_200 : Html.Attribute msg
md__focus__bg_red_200 =
    A.class "md:focus:bg-red-200"


md__focus__bg_red_300 : Html.Attribute msg
md__focus__bg_red_300 =
    A.class "md:focus:bg-red-300"


md__focus__bg_red_400 : Html.Attribute msg
md__focus__bg_red_400 =
    A.class "md:focus:bg-red-400"


md__focus__bg_red_500 : Html.Attribute msg
md__focus__bg_red_500 =
    A.class "md:focus:bg-red-500"


md__focus__bg_red_600 : Html.Attribute msg
md__focus__bg_red_600 =
    A.class "md:focus:bg-red-600"


md__focus__bg_red_700 : Html.Attribute msg
md__focus__bg_red_700 =
    A.class "md:focus:bg-red-700"


md__focus__bg_red_800 : Html.Attribute msg
md__focus__bg_red_800 =
    A.class "md:focus:bg-red-800"


md__focus__bg_red_900 : Html.Attribute msg
md__focus__bg_red_900 =
    A.class "md:focus:bg-red-900"


md__focus__bg_orange_100 : Html.Attribute msg
md__focus__bg_orange_100 =
    A.class "md:focus:bg-orange-100"


md__focus__bg_orange_200 : Html.Attribute msg
md__focus__bg_orange_200 =
    A.class "md:focus:bg-orange-200"


md__focus__bg_orange_300 : Html.Attribute msg
md__focus__bg_orange_300 =
    A.class "md:focus:bg-orange-300"


md__focus__bg_orange_400 : Html.Attribute msg
md__focus__bg_orange_400 =
    A.class "md:focus:bg-orange-400"


md__focus__bg_orange_500 : Html.Attribute msg
md__focus__bg_orange_500 =
    A.class "md:focus:bg-orange-500"


md__focus__bg_orange_600 : Html.Attribute msg
md__focus__bg_orange_600 =
    A.class "md:focus:bg-orange-600"


md__focus__bg_orange_700 : Html.Attribute msg
md__focus__bg_orange_700 =
    A.class "md:focus:bg-orange-700"


md__focus__bg_orange_800 : Html.Attribute msg
md__focus__bg_orange_800 =
    A.class "md:focus:bg-orange-800"


md__focus__bg_orange_900 : Html.Attribute msg
md__focus__bg_orange_900 =
    A.class "md:focus:bg-orange-900"


md__focus__bg_yellow_100 : Html.Attribute msg
md__focus__bg_yellow_100 =
    A.class "md:focus:bg-yellow-100"


md__focus__bg_yellow_200 : Html.Attribute msg
md__focus__bg_yellow_200 =
    A.class "md:focus:bg-yellow-200"


md__focus__bg_yellow_300 : Html.Attribute msg
md__focus__bg_yellow_300 =
    A.class "md:focus:bg-yellow-300"


md__focus__bg_yellow_400 : Html.Attribute msg
md__focus__bg_yellow_400 =
    A.class "md:focus:bg-yellow-400"


md__focus__bg_yellow_500 : Html.Attribute msg
md__focus__bg_yellow_500 =
    A.class "md:focus:bg-yellow-500"


md__focus__bg_yellow_600 : Html.Attribute msg
md__focus__bg_yellow_600 =
    A.class "md:focus:bg-yellow-600"


md__focus__bg_yellow_700 : Html.Attribute msg
md__focus__bg_yellow_700 =
    A.class "md:focus:bg-yellow-700"


md__focus__bg_yellow_800 : Html.Attribute msg
md__focus__bg_yellow_800 =
    A.class "md:focus:bg-yellow-800"


md__focus__bg_yellow_900 : Html.Attribute msg
md__focus__bg_yellow_900 =
    A.class "md:focus:bg-yellow-900"


md__focus__bg_green_100 : Html.Attribute msg
md__focus__bg_green_100 =
    A.class "md:focus:bg-green-100"


md__focus__bg_green_200 : Html.Attribute msg
md__focus__bg_green_200 =
    A.class "md:focus:bg-green-200"


md__focus__bg_green_300 : Html.Attribute msg
md__focus__bg_green_300 =
    A.class "md:focus:bg-green-300"


md__focus__bg_green_400 : Html.Attribute msg
md__focus__bg_green_400 =
    A.class "md:focus:bg-green-400"


md__focus__bg_green_500 : Html.Attribute msg
md__focus__bg_green_500 =
    A.class "md:focus:bg-green-500"


md__focus__bg_green_600 : Html.Attribute msg
md__focus__bg_green_600 =
    A.class "md:focus:bg-green-600"


md__focus__bg_green_700 : Html.Attribute msg
md__focus__bg_green_700 =
    A.class "md:focus:bg-green-700"


md__focus__bg_green_800 : Html.Attribute msg
md__focus__bg_green_800 =
    A.class "md:focus:bg-green-800"


md__focus__bg_green_900 : Html.Attribute msg
md__focus__bg_green_900 =
    A.class "md:focus:bg-green-900"


md__focus__bg_teal_100 : Html.Attribute msg
md__focus__bg_teal_100 =
    A.class "md:focus:bg-teal-100"


md__focus__bg_teal_200 : Html.Attribute msg
md__focus__bg_teal_200 =
    A.class "md:focus:bg-teal-200"


md__focus__bg_teal_300 : Html.Attribute msg
md__focus__bg_teal_300 =
    A.class "md:focus:bg-teal-300"


md__focus__bg_teal_400 : Html.Attribute msg
md__focus__bg_teal_400 =
    A.class "md:focus:bg-teal-400"


md__focus__bg_teal_500 : Html.Attribute msg
md__focus__bg_teal_500 =
    A.class "md:focus:bg-teal-500"


md__focus__bg_teal_600 : Html.Attribute msg
md__focus__bg_teal_600 =
    A.class "md:focus:bg-teal-600"


md__focus__bg_teal_700 : Html.Attribute msg
md__focus__bg_teal_700 =
    A.class "md:focus:bg-teal-700"


md__focus__bg_teal_800 : Html.Attribute msg
md__focus__bg_teal_800 =
    A.class "md:focus:bg-teal-800"


md__focus__bg_teal_900 : Html.Attribute msg
md__focus__bg_teal_900 =
    A.class "md:focus:bg-teal-900"


md__focus__bg_blue_100 : Html.Attribute msg
md__focus__bg_blue_100 =
    A.class "md:focus:bg-blue-100"


md__focus__bg_blue_200 : Html.Attribute msg
md__focus__bg_blue_200 =
    A.class "md:focus:bg-blue-200"


md__focus__bg_blue_300 : Html.Attribute msg
md__focus__bg_blue_300 =
    A.class "md:focus:bg-blue-300"


md__focus__bg_blue_400 : Html.Attribute msg
md__focus__bg_blue_400 =
    A.class "md:focus:bg-blue-400"


md__focus__bg_blue_500 : Html.Attribute msg
md__focus__bg_blue_500 =
    A.class "md:focus:bg-blue-500"


md__focus__bg_blue_600 : Html.Attribute msg
md__focus__bg_blue_600 =
    A.class "md:focus:bg-blue-600"


md__focus__bg_blue_700 : Html.Attribute msg
md__focus__bg_blue_700 =
    A.class "md:focus:bg-blue-700"


md__focus__bg_blue_800 : Html.Attribute msg
md__focus__bg_blue_800 =
    A.class "md:focus:bg-blue-800"


md__focus__bg_blue_900 : Html.Attribute msg
md__focus__bg_blue_900 =
    A.class "md:focus:bg-blue-900"


md__focus__bg_indigo_100 : Html.Attribute msg
md__focus__bg_indigo_100 =
    A.class "md:focus:bg-indigo-100"


md__focus__bg_indigo_200 : Html.Attribute msg
md__focus__bg_indigo_200 =
    A.class "md:focus:bg-indigo-200"


md__focus__bg_indigo_300 : Html.Attribute msg
md__focus__bg_indigo_300 =
    A.class "md:focus:bg-indigo-300"


md__focus__bg_indigo_400 : Html.Attribute msg
md__focus__bg_indigo_400 =
    A.class "md:focus:bg-indigo-400"


md__focus__bg_indigo_500 : Html.Attribute msg
md__focus__bg_indigo_500 =
    A.class "md:focus:bg-indigo-500"


md__focus__bg_indigo_600 : Html.Attribute msg
md__focus__bg_indigo_600 =
    A.class "md:focus:bg-indigo-600"


md__focus__bg_indigo_700 : Html.Attribute msg
md__focus__bg_indigo_700 =
    A.class "md:focus:bg-indigo-700"


md__focus__bg_indigo_800 : Html.Attribute msg
md__focus__bg_indigo_800 =
    A.class "md:focus:bg-indigo-800"


md__focus__bg_indigo_900 : Html.Attribute msg
md__focus__bg_indigo_900 =
    A.class "md:focus:bg-indigo-900"


md__focus__bg_purple_100 : Html.Attribute msg
md__focus__bg_purple_100 =
    A.class "md:focus:bg-purple-100"


md__focus__bg_purple_200 : Html.Attribute msg
md__focus__bg_purple_200 =
    A.class "md:focus:bg-purple-200"


md__focus__bg_purple_300 : Html.Attribute msg
md__focus__bg_purple_300 =
    A.class "md:focus:bg-purple-300"


md__focus__bg_purple_400 : Html.Attribute msg
md__focus__bg_purple_400 =
    A.class "md:focus:bg-purple-400"


md__focus__bg_purple_500 : Html.Attribute msg
md__focus__bg_purple_500 =
    A.class "md:focus:bg-purple-500"


md__focus__bg_purple_600 : Html.Attribute msg
md__focus__bg_purple_600 =
    A.class "md:focus:bg-purple-600"


md__focus__bg_purple_700 : Html.Attribute msg
md__focus__bg_purple_700 =
    A.class "md:focus:bg-purple-700"


md__focus__bg_purple_800 : Html.Attribute msg
md__focus__bg_purple_800 =
    A.class "md:focus:bg-purple-800"


md__focus__bg_purple_900 : Html.Attribute msg
md__focus__bg_purple_900 =
    A.class "md:focus:bg-purple-900"


md__focus__bg_pink_100 : Html.Attribute msg
md__focus__bg_pink_100 =
    A.class "md:focus:bg-pink-100"


md__focus__bg_pink_200 : Html.Attribute msg
md__focus__bg_pink_200 =
    A.class "md:focus:bg-pink-200"


md__focus__bg_pink_300 : Html.Attribute msg
md__focus__bg_pink_300 =
    A.class "md:focus:bg-pink-300"


md__focus__bg_pink_400 : Html.Attribute msg
md__focus__bg_pink_400 =
    A.class "md:focus:bg-pink-400"


md__focus__bg_pink_500 : Html.Attribute msg
md__focus__bg_pink_500 =
    A.class "md:focus:bg-pink-500"


md__focus__bg_pink_600 : Html.Attribute msg
md__focus__bg_pink_600 =
    A.class "md:focus:bg-pink-600"


md__focus__bg_pink_700 : Html.Attribute msg
md__focus__bg_pink_700 =
    A.class "md:focus:bg-pink-700"


md__focus__bg_pink_800 : Html.Attribute msg
md__focus__bg_pink_800 =
    A.class "md:focus:bg-pink-800"


md__focus__bg_pink_900 : Html.Attribute msg
md__focus__bg_pink_900 =
    A.class "md:focus:bg-pink-900"


md__bg_bottom : Html.Attribute msg
md__bg_bottom =
    A.class "md:bg-bottom"


md__bg_center : Html.Attribute msg
md__bg_center =
    A.class "md:bg-center"


md__bg_left : Html.Attribute msg
md__bg_left =
    A.class "md:bg-left"


md__bg_left_bottom : Html.Attribute msg
md__bg_left_bottom =
    A.class "md:bg-left-bottom"


md__bg_left_top : Html.Attribute msg
md__bg_left_top =
    A.class "md:bg-left-top"


md__bg_right : Html.Attribute msg
md__bg_right =
    A.class "md:bg-right"


md__bg_right_bottom : Html.Attribute msg
md__bg_right_bottom =
    A.class "md:bg-right-bottom"


md__bg_right_top : Html.Attribute msg
md__bg_right_top =
    A.class "md:bg-right-top"


md__bg_top : Html.Attribute msg
md__bg_top =
    A.class "md:bg-top"


md__bg_repeat : Html.Attribute msg
md__bg_repeat =
    A.class "md:bg-repeat"


md__bg_no_repeat : Html.Attribute msg
md__bg_no_repeat =
    A.class "md:bg-no-repeat"


md__bg_repeat_x : Html.Attribute msg
md__bg_repeat_x =
    A.class "md:bg-repeat-x"


md__bg_repeat_y : Html.Attribute msg
md__bg_repeat_y =
    A.class "md:bg-repeat-y"


md__bg_repeat_round : Html.Attribute msg
md__bg_repeat_round =
    A.class "md:bg-repeat-round"


md__bg_repeat_space : Html.Attribute msg
md__bg_repeat_space =
    A.class "md:bg-repeat-space"


md__bg_auto : Html.Attribute msg
md__bg_auto =
    A.class "md:bg-auto"


md__bg_cover : Html.Attribute msg
md__bg_cover =
    A.class "md:bg-cover"


md__bg_contain : Html.Attribute msg
md__bg_contain =
    A.class "md:bg-contain"


md__border_collapse : Html.Attribute msg
md__border_collapse =
    A.class "md:border-collapse"


md__border_separate : Html.Attribute msg
md__border_separate =
    A.class "md:border-separate"


md__border_transparent : Html.Attribute msg
md__border_transparent =
    A.class "md:border-transparent"


md__border_black : Html.Attribute msg
md__border_black =
    A.class "md:border-black"


md__border_white : Html.Attribute msg
md__border_white =
    A.class "md:border-white"


md__border_gray_100 : Html.Attribute msg
md__border_gray_100 =
    A.class "md:border-gray-100"


md__border_gray_200 : Html.Attribute msg
md__border_gray_200 =
    A.class "md:border-gray-200"


md__border_gray_300 : Html.Attribute msg
md__border_gray_300 =
    A.class "md:border-gray-300"


md__border_gray_400 : Html.Attribute msg
md__border_gray_400 =
    A.class "md:border-gray-400"


md__border_gray_500 : Html.Attribute msg
md__border_gray_500 =
    A.class "md:border-gray-500"


md__border_gray_600 : Html.Attribute msg
md__border_gray_600 =
    A.class "md:border-gray-600"


md__border_gray_700 : Html.Attribute msg
md__border_gray_700 =
    A.class "md:border-gray-700"


md__border_gray_800 : Html.Attribute msg
md__border_gray_800 =
    A.class "md:border-gray-800"


md__border_gray_900 : Html.Attribute msg
md__border_gray_900 =
    A.class "md:border-gray-900"


md__border_red_100 : Html.Attribute msg
md__border_red_100 =
    A.class "md:border-red-100"


md__border_red_200 : Html.Attribute msg
md__border_red_200 =
    A.class "md:border-red-200"


md__border_red_300 : Html.Attribute msg
md__border_red_300 =
    A.class "md:border-red-300"


md__border_red_400 : Html.Attribute msg
md__border_red_400 =
    A.class "md:border-red-400"


md__border_red_500 : Html.Attribute msg
md__border_red_500 =
    A.class "md:border-red-500"


md__border_red_600 : Html.Attribute msg
md__border_red_600 =
    A.class "md:border-red-600"


md__border_red_700 : Html.Attribute msg
md__border_red_700 =
    A.class "md:border-red-700"


md__border_red_800 : Html.Attribute msg
md__border_red_800 =
    A.class "md:border-red-800"


md__border_red_900 : Html.Attribute msg
md__border_red_900 =
    A.class "md:border-red-900"


md__border_orange_100 : Html.Attribute msg
md__border_orange_100 =
    A.class "md:border-orange-100"


md__border_orange_200 : Html.Attribute msg
md__border_orange_200 =
    A.class "md:border-orange-200"


md__border_orange_300 : Html.Attribute msg
md__border_orange_300 =
    A.class "md:border-orange-300"


md__border_orange_400 : Html.Attribute msg
md__border_orange_400 =
    A.class "md:border-orange-400"


md__border_orange_500 : Html.Attribute msg
md__border_orange_500 =
    A.class "md:border-orange-500"


md__border_orange_600 : Html.Attribute msg
md__border_orange_600 =
    A.class "md:border-orange-600"


md__border_orange_700 : Html.Attribute msg
md__border_orange_700 =
    A.class "md:border-orange-700"


md__border_orange_800 : Html.Attribute msg
md__border_orange_800 =
    A.class "md:border-orange-800"


md__border_orange_900 : Html.Attribute msg
md__border_orange_900 =
    A.class "md:border-orange-900"


md__border_yellow_100 : Html.Attribute msg
md__border_yellow_100 =
    A.class "md:border-yellow-100"


md__border_yellow_200 : Html.Attribute msg
md__border_yellow_200 =
    A.class "md:border-yellow-200"


md__border_yellow_300 : Html.Attribute msg
md__border_yellow_300 =
    A.class "md:border-yellow-300"


md__border_yellow_400 : Html.Attribute msg
md__border_yellow_400 =
    A.class "md:border-yellow-400"


md__border_yellow_500 : Html.Attribute msg
md__border_yellow_500 =
    A.class "md:border-yellow-500"


md__border_yellow_600 : Html.Attribute msg
md__border_yellow_600 =
    A.class "md:border-yellow-600"


md__border_yellow_700 : Html.Attribute msg
md__border_yellow_700 =
    A.class "md:border-yellow-700"


md__border_yellow_800 : Html.Attribute msg
md__border_yellow_800 =
    A.class "md:border-yellow-800"


md__border_yellow_900 : Html.Attribute msg
md__border_yellow_900 =
    A.class "md:border-yellow-900"


md__border_green_100 : Html.Attribute msg
md__border_green_100 =
    A.class "md:border-green-100"


md__border_green_200 : Html.Attribute msg
md__border_green_200 =
    A.class "md:border-green-200"


md__border_green_300 : Html.Attribute msg
md__border_green_300 =
    A.class "md:border-green-300"


md__border_green_400 : Html.Attribute msg
md__border_green_400 =
    A.class "md:border-green-400"


md__border_green_500 : Html.Attribute msg
md__border_green_500 =
    A.class "md:border-green-500"


md__border_green_600 : Html.Attribute msg
md__border_green_600 =
    A.class "md:border-green-600"


md__border_green_700 : Html.Attribute msg
md__border_green_700 =
    A.class "md:border-green-700"


md__border_green_800 : Html.Attribute msg
md__border_green_800 =
    A.class "md:border-green-800"


md__border_green_900 : Html.Attribute msg
md__border_green_900 =
    A.class "md:border-green-900"


md__border_teal_100 : Html.Attribute msg
md__border_teal_100 =
    A.class "md:border-teal-100"


md__border_teal_200 : Html.Attribute msg
md__border_teal_200 =
    A.class "md:border-teal-200"


md__border_teal_300 : Html.Attribute msg
md__border_teal_300 =
    A.class "md:border-teal-300"


md__border_teal_400 : Html.Attribute msg
md__border_teal_400 =
    A.class "md:border-teal-400"


md__border_teal_500 : Html.Attribute msg
md__border_teal_500 =
    A.class "md:border-teal-500"


md__border_teal_600 : Html.Attribute msg
md__border_teal_600 =
    A.class "md:border-teal-600"


md__border_teal_700 : Html.Attribute msg
md__border_teal_700 =
    A.class "md:border-teal-700"


md__border_teal_800 : Html.Attribute msg
md__border_teal_800 =
    A.class "md:border-teal-800"


md__border_teal_900 : Html.Attribute msg
md__border_teal_900 =
    A.class "md:border-teal-900"


md__border_blue_100 : Html.Attribute msg
md__border_blue_100 =
    A.class "md:border-blue-100"


md__border_blue_200 : Html.Attribute msg
md__border_blue_200 =
    A.class "md:border-blue-200"


md__border_blue_300 : Html.Attribute msg
md__border_blue_300 =
    A.class "md:border-blue-300"


md__border_blue_400 : Html.Attribute msg
md__border_blue_400 =
    A.class "md:border-blue-400"


md__border_blue_500 : Html.Attribute msg
md__border_blue_500 =
    A.class "md:border-blue-500"


md__border_blue_600 : Html.Attribute msg
md__border_blue_600 =
    A.class "md:border-blue-600"


md__border_blue_700 : Html.Attribute msg
md__border_blue_700 =
    A.class "md:border-blue-700"


md__border_blue_800 : Html.Attribute msg
md__border_blue_800 =
    A.class "md:border-blue-800"


md__border_blue_900 : Html.Attribute msg
md__border_blue_900 =
    A.class "md:border-blue-900"


md__border_indigo_100 : Html.Attribute msg
md__border_indigo_100 =
    A.class "md:border-indigo-100"


md__border_indigo_200 : Html.Attribute msg
md__border_indigo_200 =
    A.class "md:border-indigo-200"


md__border_indigo_300 : Html.Attribute msg
md__border_indigo_300 =
    A.class "md:border-indigo-300"


md__border_indigo_400 : Html.Attribute msg
md__border_indigo_400 =
    A.class "md:border-indigo-400"


md__border_indigo_500 : Html.Attribute msg
md__border_indigo_500 =
    A.class "md:border-indigo-500"


md__border_indigo_600 : Html.Attribute msg
md__border_indigo_600 =
    A.class "md:border-indigo-600"


md__border_indigo_700 : Html.Attribute msg
md__border_indigo_700 =
    A.class "md:border-indigo-700"


md__border_indigo_800 : Html.Attribute msg
md__border_indigo_800 =
    A.class "md:border-indigo-800"


md__border_indigo_900 : Html.Attribute msg
md__border_indigo_900 =
    A.class "md:border-indigo-900"


md__border_purple_100 : Html.Attribute msg
md__border_purple_100 =
    A.class "md:border-purple-100"


md__border_purple_200 : Html.Attribute msg
md__border_purple_200 =
    A.class "md:border-purple-200"


md__border_purple_300 : Html.Attribute msg
md__border_purple_300 =
    A.class "md:border-purple-300"


md__border_purple_400 : Html.Attribute msg
md__border_purple_400 =
    A.class "md:border-purple-400"


md__border_purple_500 : Html.Attribute msg
md__border_purple_500 =
    A.class "md:border-purple-500"


md__border_purple_600 : Html.Attribute msg
md__border_purple_600 =
    A.class "md:border-purple-600"


md__border_purple_700 : Html.Attribute msg
md__border_purple_700 =
    A.class "md:border-purple-700"


md__border_purple_800 : Html.Attribute msg
md__border_purple_800 =
    A.class "md:border-purple-800"


md__border_purple_900 : Html.Attribute msg
md__border_purple_900 =
    A.class "md:border-purple-900"


md__border_pink_100 : Html.Attribute msg
md__border_pink_100 =
    A.class "md:border-pink-100"


md__border_pink_200 : Html.Attribute msg
md__border_pink_200 =
    A.class "md:border-pink-200"


md__border_pink_300 : Html.Attribute msg
md__border_pink_300 =
    A.class "md:border-pink-300"


md__border_pink_400 : Html.Attribute msg
md__border_pink_400 =
    A.class "md:border-pink-400"


md__border_pink_500 : Html.Attribute msg
md__border_pink_500 =
    A.class "md:border-pink-500"


md__border_pink_600 : Html.Attribute msg
md__border_pink_600 =
    A.class "md:border-pink-600"


md__border_pink_700 : Html.Attribute msg
md__border_pink_700 =
    A.class "md:border-pink-700"


md__border_pink_800 : Html.Attribute msg
md__border_pink_800 =
    A.class "md:border-pink-800"


md__border_pink_900 : Html.Attribute msg
md__border_pink_900 =
    A.class "md:border-pink-900"


md__hover__border_transparent : Html.Attribute msg
md__hover__border_transparent =
    A.class "md:hover:border-transparent"


md__hover__border_black : Html.Attribute msg
md__hover__border_black =
    A.class "md:hover:border-black"


md__hover__border_white : Html.Attribute msg
md__hover__border_white =
    A.class "md:hover:border-white"


md__hover__border_gray_100 : Html.Attribute msg
md__hover__border_gray_100 =
    A.class "md:hover:border-gray-100"


md__hover__border_gray_200 : Html.Attribute msg
md__hover__border_gray_200 =
    A.class "md:hover:border-gray-200"


md__hover__border_gray_300 : Html.Attribute msg
md__hover__border_gray_300 =
    A.class "md:hover:border-gray-300"


md__hover__border_gray_400 : Html.Attribute msg
md__hover__border_gray_400 =
    A.class "md:hover:border-gray-400"


md__hover__border_gray_500 : Html.Attribute msg
md__hover__border_gray_500 =
    A.class "md:hover:border-gray-500"


md__hover__border_gray_600 : Html.Attribute msg
md__hover__border_gray_600 =
    A.class "md:hover:border-gray-600"


md__hover__border_gray_700 : Html.Attribute msg
md__hover__border_gray_700 =
    A.class "md:hover:border-gray-700"


md__hover__border_gray_800 : Html.Attribute msg
md__hover__border_gray_800 =
    A.class "md:hover:border-gray-800"


md__hover__border_gray_900 : Html.Attribute msg
md__hover__border_gray_900 =
    A.class "md:hover:border-gray-900"


md__hover__border_red_100 : Html.Attribute msg
md__hover__border_red_100 =
    A.class "md:hover:border-red-100"


md__hover__border_red_200 : Html.Attribute msg
md__hover__border_red_200 =
    A.class "md:hover:border-red-200"


md__hover__border_red_300 : Html.Attribute msg
md__hover__border_red_300 =
    A.class "md:hover:border-red-300"


md__hover__border_red_400 : Html.Attribute msg
md__hover__border_red_400 =
    A.class "md:hover:border-red-400"


md__hover__border_red_500 : Html.Attribute msg
md__hover__border_red_500 =
    A.class "md:hover:border-red-500"


md__hover__border_red_600 : Html.Attribute msg
md__hover__border_red_600 =
    A.class "md:hover:border-red-600"


md__hover__border_red_700 : Html.Attribute msg
md__hover__border_red_700 =
    A.class "md:hover:border-red-700"


md__hover__border_red_800 : Html.Attribute msg
md__hover__border_red_800 =
    A.class "md:hover:border-red-800"


md__hover__border_red_900 : Html.Attribute msg
md__hover__border_red_900 =
    A.class "md:hover:border-red-900"


md__hover__border_orange_100 : Html.Attribute msg
md__hover__border_orange_100 =
    A.class "md:hover:border-orange-100"


md__hover__border_orange_200 : Html.Attribute msg
md__hover__border_orange_200 =
    A.class "md:hover:border-orange-200"


md__hover__border_orange_300 : Html.Attribute msg
md__hover__border_orange_300 =
    A.class "md:hover:border-orange-300"


md__hover__border_orange_400 : Html.Attribute msg
md__hover__border_orange_400 =
    A.class "md:hover:border-orange-400"


md__hover__border_orange_500 : Html.Attribute msg
md__hover__border_orange_500 =
    A.class "md:hover:border-orange-500"


md__hover__border_orange_600 : Html.Attribute msg
md__hover__border_orange_600 =
    A.class "md:hover:border-orange-600"


md__hover__border_orange_700 : Html.Attribute msg
md__hover__border_orange_700 =
    A.class "md:hover:border-orange-700"


md__hover__border_orange_800 : Html.Attribute msg
md__hover__border_orange_800 =
    A.class "md:hover:border-orange-800"


md__hover__border_orange_900 : Html.Attribute msg
md__hover__border_orange_900 =
    A.class "md:hover:border-orange-900"


md__hover__border_yellow_100 : Html.Attribute msg
md__hover__border_yellow_100 =
    A.class "md:hover:border-yellow-100"


md__hover__border_yellow_200 : Html.Attribute msg
md__hover__border_yellow_200 =
    A.class "md:hover:border-yellow-200"


md__hover__border_yellow_300 : Html.Attribute msg
md__hover__border_yellow_300 =
    A.class "md:hover:border-yellow-300"


md__hover__border_yellow_400 : Html.Attribute msg
md__hover__border_yellow_400 =
    A.class "md:hover:border-yellow-400"


md__hover__border_yellow_500 : Html.Attribute msg
md__hover__border_yellow_500 =
    A.class "md:hover:border-yellow-500"


md__hover__border_yellow_600 : Html.Attribute msg
md__hover__border_yellow_600 =
    A.class "md:hover:border-yellow-600"


md__hover__border_yellow_700 : Html.Attribute msg
md__hover__border_yellow_700 =
    A.class "md:hover:border-yellow-700"


md__hover__border_yellow_800 : Html.Attribute msg
md__hover__border_yellow_800 =
    A.class "md:hover:border-yellow-800"


md__hover__border_yellow_900 : Html.Attribute msg
md__hover__border_yellow_900 =
    A.class "md:hover:border-yellow-900"


md__hover__border_green_100 : Html.Attribute msg
md__hover__border_green_100 =
    A.class "md:hover:border-green-100"


md__hover__border_green_200 : Html.Attribute msg
md__hover__border_green_200 =
    A.class "md:hover:border-green-200"


md__hover__border_green_300 : Html.Attribute msg
md__hover__border_green_300 =
    A.class "md:hover:border-green-300"


md__hover__border_green_400 : Html.Attribute msg
md__hover__border_green_400 =
    A.class "md:hover:border-green-400"


md__hover__border_green_500 : Html.Attribute msg
md__hover__border_green_500 =
    A.class "md:hover:border-green-500"


md__hover__border_green_600 : Html.Attribute msg
md__hover__border_green_600 =
    A.class "md:hover:border-green-600"


md__hover__border_green_700 : Html.Attribute msg
md__hover__border_green_700 =
    A.class "md:hover:border-green-700"


md__hover__border_green_800 : Html.Attribute msg
md__hover__border_green_800 =
    A.class "md:hover:border-green-800"


md__hover__border_green_900 : Html.Attribute msg
md__hover__border_green_900 =
    A.class "md:hover:border-green-900"


md__hover__border_teal_100 : Html.Attribute msg
md__hover__border_teal_100 =
    A.class "md:hover:border-teal-100"


md__hover__border_teal_200 : Html.Attribute msg
md__hover__border_teal_200 =
    A.class "md:hover:border-teal-200"


md__hover__border_teal_300 : Html.Attribute msg
md__hover__border_teal_300 =
    A.class "md:hover:border-teal-300"


md__hover__border_teal_400 : Html.Attribute msg
md__hover__border_teal_400 =
    A.class "md:hover:border-teal-400"


md__hover__border_teal_500 : Html.Attribute msg
md__hover__border_teal_500 =
    A.class "md:hover:border-teal-500"


md__hover__border_teal_600 : Html.Attribute msg
md__hover__border_teal_600 =
    A.class "md:hover:border-teal-600"


md__hover__border_teal_700 : Html.Attribute msg
md__hover__border_teal_700 =
    A.class "md:hover:border-teal-700"


md__hover__border_teal_800 : Html.Attribute msg
md__hover__border_teal_800 =
    A.class "md:hover:border-teal-800"


md__hover__border_teal_900 : Html.Attribute msg
md__hover__border_teal_900 =
    A.class "md:hover:border-teal-900"


md__hover__border_blue_100 : Html.Attribute msg
md__hover__border_blue_100 =
    A.class "md:hover:border-blue-100"


md__hover__border_blue_200 : Html.Attribute msg
md__hover__border_blue_200 =
    A.class "md:hover:border-blue-200"


md__hover__border_blue_300 : Html.Attribute msg
md__hover__border_blue_300 =
    A.class "md:hover:border-blue-300"


md__hover__border_blue_400 : Html.Attribute msg
md__hover__border_blue_400 =
    A.class "md:hover:border-blue-400"


md__hover__border_blue_500 : Html.Attribute msg
md__hover__border_blue_500 =
    A.class "md:hover:border-blue-500"


md__hover__border_blue_600 : Html.Attribute msg
md__hover__border_blue_600 =
    A.class "md:hover:border-blue-600"


md__hover__border_blue_700 : Html.Attribute msg
md__hover__border_blue_700 =
    A.class "md:hover:border-blue-700"


md__hover__border_blue_800 : Html.Attribute msg
md__hover__border_blue_800 =
    A.class "md:hover:border-blue-800"


md__hover__border_blue_900 : Html.Attribute msg
md__hover__border_blue_900 =
    A.class "md:hover:border-blue-900"


md__hover__border_indigo_100 : Html.Attribute msg
md__hover__border_indigo_100 =
    A.class "md:hover:border-indigo-100"


md__hover__border_indigo_200 : Html.Attribute msg
md__hover__border_indigo_200 =
    A.class "md:hover:border-indigo-200"


md__hover__border_indigo_300 : Html.Attribute msg
md__hover__border_indigo_300 =
    A.class "md:hover:border-indigo-300"


md__hover__border_indigo_400 : Html.Attribute msg
md__hover__border_indigo_400 =
    A.class "md:hover:border-indigo-400"


md__hover__border_indigo_500 : Html.Attribute msg
md__hover__border_indigo_500 =
    A.class "md:hover:border-indigo-500"


md__hover__border_indigo_600 : Html.Attribute msg
md__hover__border_indigo_600 =
    A.class "md:hover:border-indigo-600"


md__hover__border_indigo_700 : Html.Attribute msg
md__hover__border_indigo_700 =
    A.class "md:hover:border-indigo-700"


md__hover__border_indigo_800 : Html.Attribute msg
md__hover__border_indigo_800 =
    A.class "md:hover:border-indigo-800"


md__hover__border_indigo_900 : Html.Attribute msg
md__hover__border_indigo_900 =
    A.class "md:hover:border-indigo-900"


md__hover__border_purple_100 : Html.Attribute msg
md__hover__border_purple_100 =
    A.class "md:hover:border-purple-100"


md__hover__border_purple_200 : Html.Attribute msg
md__hover__border_purple_200 =
    A.class "md:hover:border-purple-200"


md__hover__border_purple_300 : Html.Attribute msg
md__hover__border_purple_300 =
    A.class "md:hover:border-purple-300"


md__hover__border_purple_400 : Html.Attribute msg
md__hover__border_purple_400 =
    A.class "md:hover:border-purple-400"


md__hover__border_purple_500 : Html.Attribute msg
md__hover__border_purple_500 =
    A.class "md:hover:border-purple-500"


md__hover__border_purple_600 : Html.Attribute msg
md__hover__border_purple_600 =
    A.class "md:hover:border-purple-600"


md__hover__border_purple_700 : Html.Attribute msg
md__hover__border_purple_700 =
    A.class "md:hover:border-purple-700"


md__hover__border_purple_800 : Html.Attribute msg
md__hover__border_purple_800 =
    A.class "md:hover:border-purple-800"


md__hover__border_purple_900 : Html.Attribute msg
md__hover__border_purple_900 =
    A.class "md:hover:border-purple-900"


md__hover__border_pink_100 : Html.Attribute msg
md__hover__border_pink_100 =
    A.class "md:hover:border-pink-100"


md__hover__border_pink_200 : Html.Attribute msg
md__hover__border_pink_200 =
    A.class "md:hover:border-pink-200"


md__hover__border_pink_300 : Html.Attribute msg
md__hover__border_pink_300 =
    A.class "md:hover:border-pink-300"


md__hover__border_pink_400 : Html.Attribute msg
md__hover__border_pink_400 =
    A.class "md:hover:border-pink-400"


md__hover__border_pink_500 : Html.Attribute msg
md__hover__border_pink_500 =
    A.class "md:hover:border-pink-500"


md__hover__border_pink_600 : Html.Attribute msg
md__hover__border_pink_600 =
    A.class "md:hover:border-pink-600"


md__hover__border_pink_700 : Html.Attribute msg
md__hover__border_pink_700 =
    A.class "md:hover:border-pink-700"


md__hover__border_pink_800 : Html.Attribute msg
md__hover__border_pink_800 =
    A.class "md:hover:border-pink-800"


md__hover__border_pink_900 : Html.Attribute msg
md__hover__border_pink_900 =
    A.class "md:hover:border-pink-900"


md__focus__border_transparent : Html.Attribute msg
md__focus__border_transparent =
    A.class "md:focus:border-transparent"


md__focus__border_black : Html.Attribute msg
md__focus__border_black =
    A.class "md:focus:border-black"


md__focus__border_white : Html.Attribute msg
md__focus__border_white =
    A.class "md:focus:border-white"


md__focus__border_gray_100 : Html.Attribute msg
md__focus__border_gray_100 =
    A.class "md:focus:border-gray-100"


md__focus__border_gray_200 : Html.Attribute msg
md__focus__border_gray_200 =
    A.class "md:focus:border-gray-200"


md__focus__border_gray_300 : Html.Attribute msg
md__focus__border_gray_300 =
    A.class "md:focus:border-gray-300"


md__focus__border_gray_400 : Html.Attribute msg
md__focus__border_gray_400 =
    A.class "md:focus:border-gray-400"


md__focus__border_gray_500 : Html.Attribute msg
md__focus__border_gray_500 =
    A.class "md:focus:border-gray-500"


md__focus__border_gray_600 : Html.Attribute msg
md__focus__border_gray_600 =
    A.class "md:focus:border-gray-600"


md__focus__border_gray_700 : Html.Attribute msg
md__focus__border_gray_700 =
    A.class "md:focus:border-gray-700"


md__focus__border_gray_800 : Html.Attribute msg
md__focus__border_gray_800 =
    A.class "md:focus:border-gray-800"


md__focus__border_gray_900 : Html.Attribute msg
md__focus__border_gray_900 =
    A.class "md:focus:border-gray-900"


md__focus__border_red_100 : Html.Attribute msg
md__focus__border_red_100 =
    A.class "md:focus:border-red-100"


md__focus__border_red_200 : Html.Attribute msg
md__focus__border_red_200 =
    A.class "md:focus:border-red-200"


md__focus__border_red_300 : Html.Attribute msg
md__focus__border_red_300 =
    A.class "md:focus:border-red-300"


md__focus__border_red_400 : Html.Attribute msg
md__focus__border_red_400 =
    A.class "md:focus:border-red-400"


md__focus__border_red_500 : Html.Attribute msg
md__focus__border_red_500 =
    A.class "md:focus:border-red-500"


md__focus__border_red_600 : Html.Attribute msg
md__focus__border_red_600 =
    A.class "md:focus:border-red-600"


md__focus__border_red_700 : Html.Attribute msg
md__focus__border_red_700 =
    A.class "md:focus:border-red-700"


md__focus__border_red_800 : Html.Attribute msg
md__focus__border_red_800 =
    A.class "md:focus:border-red-800"


md__focus__border_red_900 : Html.Attribute msg
md__focus__border_red_900 =
    A.class "md:focus:border-red-900"


md__focus__border_orange_100 : Html.Attribute msg
md__focus__border_orange_100 =
    A.class "md:focus:border-orange-100"


md__focus__border_orange_200 : Html.Attribute msg
md__focus__border_orange_200 =
    A.class "md:focus:border-orange-200"


md__focus__border_orange_300 : Html.Attribute msg
md__focus__border_orange_300 =
    A.class "md:focus:border-orange-300"


md__focus__border_orange_400 : Html.Attribute msg
md__focus__border_orange_400 =
    A.class "md:focus:border-orange-400"


md__focus__border_orange_500 : Html.Attribute msg
md__focus__border_orange_500 =
    A.class "md:focus:border-orange-500"


md__focus__border_orange_600 : Html.Attribute msg
md__focus__border_orange_600 =
    A.class "md:focus:border-orange-600"


md__focus__border_orange_700 : Html.Attribute msg
md__focus__border_orange_700 =
    A.class "md:focus:border-orange-700"


md__focus__border_orange_800 : Html.Attribute msg
md__focus__border_orange_800 =
    A.class "md:focus:border-orange-800"


md__focus__border_orange_900 : Html.Attribute msg
md__focus__border_orange_900 =
    A.class "md:focus:border-orange-900"


md__focus__border_yellow_100 : Html.Attribute msg
md__focus__border_yellow_100 =
    A.class "md:focus:border-yellow-100"


md__focus__border_yellow_200 : Html.Attribute msg
md__focus__border_yellow_200 =
    A.class "md:focus:border-yellow-200"


md__focus__border_yellow_300 : Html.Attribute msg
md__focus__border_yellow_300 =
    A.class "md:focus:border-yellow-300"


md__focus__border_yellow_400 : Html.Attribute msg
md__focus__border_yellow_400 =
    A.class "md:focus:border-yellow-400"


md__focus__border_yellow_500 : Html.Attribute msg
md__focus__border_yellow_500 =
    A.class "md:focus:border-yellow-500"


md__focus__border_yellow_600 : Html.Attribute msg
md__focus__border_yellow_600 =
    A.class "md:focus:border-yellow-600"


md__focus__border_yellow_700 : Html.Attribute msg
md__focus__border_yellow_700 =
    A.class "md:focus:border-yellow-700"


md__focus__border_yellow_800 : Html.Attribute msg
md__focus__border_yellow_800 =
    A.class "md:focus:border-yellow-800"


md__focus__border_yellow_900 : Html.Attribute msg
md__focus__border_yellow_900 =
    A.class "md:focus:border-yellow-900"


md__focus__border_green_100 : Html.Attribute msg
md__focus__border_green_100 =
    A.class "md:focus:border-green-100"


md__focus__border_green_200 : Html.Attribute msg
md__focus__border_green_200 =
    A.class "md:focus:border-green-200"


md__focus__border_green_300 : Html.Attribute msg
md__focus__border_green_300 =
    A.class "md:focus:border-green-300"


md__focus__border_green_400 : Html.Attribute msg
md__focus__border_green_400 =
    A.class "md:focus:border-green-400"


md__focus__border_green_500 : Html.Attribute msg
md__focus__border_green_500 =
    A.class "md:focus:border-green-500"


md__focus__border_green_600 : Html.Attribute msg
md__focus__border_green_600 =
    A.class "md:focus:border-green-600"


md__focus__border_green_700 : Html.Attribute msg
md__focus__border_green_700 =
    A.class "md:focus:border-green-700"


md__focus__border_green_800 : Html.Attribute msg
md__focus__border_green_800 =
    A.class "md:focus:border-green-800"


md__focus__border_green_900 : Html.Attribute msg
md__focus__border_green_900 =
    A.class "md:focus:border-green-900"


md__focus__border_teal_100 : Html.Attribute msg
md__focus__border_teal_100 =
    A.class "md:focus:border-teal-100"


md__focus__border_teal_200 : Html.Attribute msg
md__focus__border_teal_200 =
    A.class "md:focus:border-teal-200"


md__focus__border_teal_300 : Html.Attribute msg
md__focus__border_teal_300 =
    A.class "md:focus:border-teal-300"


md__focus__border_teal_400 : Html.Attribute msg
md__focus__border_teal_400 =
    A.class "md:focus:border-teal-400"


md__focus__border_teal_500 : Html.Attribute msg
md__focus__border_teal_500 =
    A.class "md:focus:border-teal-500"


md__focus__border_teal_600 : Html.Attribute msg
md__focus__border_teal_600 =
    A.class "md:focus:border-teal-600"


md__focus__border_teal_700 : Html.Attribute msg
md__focus__border_teal_700 =
    A.class "md:focus:border-teal-700"


md__focus__border_teal_800 : Html.Attribute msg
md__focus__border_teal_800 =
    A.class "md:focus:border-teal-800"


md__focus__border_teal_900 : Html.Attribute msg
md__focus__border_teal_900 =
    A.class "md:focus:border-teal-900"


md__focus__border_blue_100 : Html.Attribute msg
md__focus__border_blue_100 =
    A.class "md:focus:border-blue-100"


md__focus__border_blue_200 : Html.Attribute msg
md__focus__border_blue_200 =
    A.class "md:focus:border-blue-200"


md__focus__border_blue_300 : Html.Attribute msg
md__focus__border_blue_300 =
    A.class "md:focus:border-blue-300"


md__focus__border_blue_400 : Html.Attribute msg
md__focus__border_blue_400 =
    A.class "md:focus:border-blue-400"


md__focus__border_blue_500 : Html.Attribute msg
md__focus__border_blue_500 =
    A.class "md:focus:border-blue-500"


md__focus__border_blue_600 : Html.Attribute msg
md__focus__border_blue_600 =
    A.class "md:focus:border-blue-600"


md__focus__border_blue_700 : Html.Attribute msg
md__focus__border_blue_700 =
    A.class "md:focus:border-blue-700"


md__focus__border_blue_800 : Html.Attribute msg
md__focus__border_blue_800 =
    A.class "md:focus:border-blue-800"


md__focus__border_blue_900 : Html.Attribute msg
md__focus__border_blue_900 =
    A.class "md:focus:border-blue-900"


md__focus__border_indigo_100 : Html.Attribute msg
md__focus__border_indigo_100 =
    A.class "md:focus:border-indigo-100"


md__focus__border_indigo_200 : Html.Attribute msg
md__focus__border_indigo_200 =
    A.class "md:focus:border-indigo-200"


md__focus__border_indigo_300 : Html.Attribute msg
md__focus__border_indigo_300 =
    A.class "md:focus:border-indigo-300"


md__focus__border_indigo_400 : Html.Attribute msg
md__focus__border_indigo_400 =
    A.class "md:focus:border-indigo-400"


md__focus__border_indigo_500 : Html.Attribute msg
md__focus__border_indigo_500 =
    A.class "md:focus:border-indigo-500"


md__focus__border_indigo_600 : Html.Attribute msg
md__focus__border_indigo_600 =
    A.class "md:focus:border-indigo-600"


md__focus__border_indigo_700 : Html.Attribute msg
md__focus__border_indigo_700 =
    A.class "md:focus:border-indigo-700"


md__focus__border_indigo_800 : Html.Attribute msg
md__focus__border_indigo_800 =
    A.class "md:focus:border-indigo-800"


md__focus__border_indigo_900 : Html.Attribute msg
md__focus__border_indigo_900 =
    A.class "md:focus:border-indigo-900"


md__focus__border_purple_100 : Html.Attribute msg
md__focus__border_purple_100 =
    A.class "md:focus:border-purple-100"


md__focus__border_purple_200 : Html.Attribute msg
md__focus__border_purple_200 =
    A.class "md:focus:border-purple-200"


md__focus__border_purple_300 : Html.Attribute msg
md__focus__border_purple_300 =
    A.class "md:focus:border-purple-300"


md__focus__border_purple_400 : Html.Attribute msg
md__focus__border_purple_400 =
    A.class "md:focus:border-purple-400"


md__focus__border_purple_500 : Html.Attribute msg
md__focus__border_purple_500 =
    A.class "md:focus:border-purple-500"


md__focus__border_purple_600 : Html.Attribute msg
md__focus__border_purple_600 =
    A.class "md:focus:border-purple-600"


md__focus__border_purple_700 : Html.Attribute msg
md__focus__border_purple_700 =
    A.class "md:focus:border-purple-700"


md__focus__border_purple_800 : Html.Attribute msg
md__focus__border_purple_800 =
    A.class "md:focus:border-purple-800"


md__focus__border_purple_900 : Html.Attribute msg
md__focus__border_purple_900 =
    A.class "md:focus:border-purple-900"


md__focus__border_pink_100 : Html.Attribute msg
md__focus__border_pink_100 =
    A.class "md:focus:border-pink-100"


md__focus__border_pink_200 : Html.Attribute msg
md__focus__border_pink_200 =
    A.class "md:focus:border-pink-200"


md__focus__border_pink_300 : Html.Attribute msg
md__focus__border_pink_300 =
    A.class "md:focus:border-pink-300"


md__focus__border_pink_400 : Html.Attribute msg
md__focus__border_pink_400 =
    A.class "md:focus:border-pink-400"


md__focus__border_pink_500 : Html.Attribute msg
md__focus__border_pink_500 =
    A.class "md:focus:border-pink-500"


md__focus__border_pink_600 : Html.Attribute msg
md__focus__border_pink_600 =
    A.class "md:focus:border-pink-600"


md__focus__border_pink_700 : Html.Attribute msg
md__focus__border_pink_700 =
    A.class "md:focus:border-pink-700"


md__focus__border_pink_800 : Html.Attribute msg
md__focus__border_pink_800 =
    A.class "md:focus:border-pink-800"


md__focus__border_pink_900 : Html.Attribute msg
md__focus__border_pink_900 =
    A.class "md:focus:border-pink-900"


md__rounded_none : Html.Attribute msg
md__rounded_none =
    A.class "md:rounded-none"


md__rounded_sm : Html.Attribute msg
md__rounded_sm =
    A.class "md:rounded-sm"


md__rounded : Html.Attribute msg
md__rounded =
    A.class "md:rounded"


md__rounded_md : Html.Attribute msg
md__rounded_md =
    A.class "md:rounded-md"


md__rounded_lg : Html.Attribute msg
md__rounded_lg =
    A.class "md:rounded-lg"


md__rounded_full : Html.Attribute msg
md__rounded_full =
    A.class "md:rounded-full"


md__rounded_t_none : Html.Attribute msg
md__rounded_t_none =
    A.class "md:rounded-t-none"


md__rounded_r_none : Html.Attribute msg
md__rounded_r_none =
    A.class "md:rounded-r-none"


md__rounded_b_none : Html.Attribute msg
md__rounded_b_none =
    A.class "md:rounded-b-none"


md__rounded_l_none : Html.Attribute msg
md__rounded_l_none =
    A.class "md:rounded-l-none"


md__rounded_t_sm : Html.Attribute msg
md__rounded_t_sm =
    A.class "md:rounded-t-sm"


md__rounded_r_sm : Html.Attribute msg
md__rounded_r_sm =
    A.class "md:rounded-r-sm"


md__rounded_b_sm : Html.Attribute msg
md__rounded_b_sm =
    A.class "md:rounded-b-sm"


md__rounded_l_sm : Html.Attribute msg
md__rounded_l_sm =
    A.class "md:rounded-l-sm"


md__rounded_t : Html.Attribute msg
md__rounded_t =
    A.class "md:rounded-t"


md__rounded_r : Html.Attribute msg
md__rounded_r =
    A.class "md:rounded-r"


md__rounded_b : Html.Attribute msg
md__rounded_b =
    A.class "md:rounded-b"


md__rounded_l : Html.Attribute msg
md__rounded_l =
    A.class "md:rounded-l"


md__rounded_t_md : Html.Attribute msg
md__rounded_t_md =
    A.class "md:rounded-t-md"


md__rounded_r_md : Html.Attribute msg
md__rounded_r_md =
    A.class "md:rounded-r-md"


md__rounded_b_md : Html.Attribute msg
md__rounded_b_md =
    A.class "md:rounded-b-md"


md__rounded_l_md : Html.Attribute msg
md__rounded_l_md =
    A.class "md:rounded-l-md"


md__rounded_t_lg : Html.Attribute msg
md__rounded_t_lg =
    A.class "md:rounded-t-lg"


md__rounded_r_lg : Html.Attribute msg
md__rounded_r_lg =
    A.class "md:rounded-r-lg"


md__rounded_b_lg : Html.Attribute msg
md__rounded_b_lg =
    A.class "md:rounded-b-lg"


md__rounded_l_lg : Html.Attribute msg
md__rounded_l_lg =
    A.class "md:rounded-l-lg"


md__rounded_t_full : Html.Attribute msg
md__rounded_t_full =
    A.class "md:rounded-t-full"


md__rounded_r_full : Html.Attribute msg
md__rounded_r_full =
    A.class "md:rounded-r-full"


md__rounded_b_full : Html.Attribute msg
md__rounded_b_full =
    A.class "md:rounded-b-full"


md__rounded_l_full : Html.Attribute msg
md__rounded_l_full =
    A.class "md:rounded-l-full"


md__rounded_tl_none : Html.Attribute msg
md__rounded_tl_none =
    A.class "md:rounded-tl-none"


md__rounded_tr_none : Html.Attribute msg
md__rounded_tr_none =
    A.class "md:rounded-tr-none"


md__rounded_br_none : Html.Attribute msg
md__rounded_br_none =
    A.class "md:rounded-br-none"


md__rounded_bl_none : Html.Attribute msg
md__rounded_bl_none =
    A.class "md:rounded-bl-none"


md__rounded_tl_sm : Html.Attribute msg
md__rounded_tl_sm =
    A.class "md:rounded-tl-sm"


md__rounded_tr_sm : Html.Attribute msg
md__rounded_tr_sm =
    A.class "md:rounded-tr-sm"


md__rounded_br_sm : Html.Attribute msg
md__rounded_br_sm =
    A.class "md:rounded-br-sm"


md__rounded_bl_sm : Html.Attribute msg
md__rounded_bl_sm =
    A.class "md:rounded-bl-sm"


md__rounded_tl : Html.Attribute msg
md__rounded_tl =
    A.class "md:rounded-tl"


md__rounded_tr : Html.Attribute msg
md__rounded_tr =
    A.class "md:rounded-tr"


md__rounded_br : Html.Attribute msg
md__rounded_br =
    A.class "md:rounded-br"


md__rounded_bl : Html.Attribute msg
md__rounded_bl =
    A.class "md:rounded-bl"


md__rounded_tl_md : Html.Attribute msg
md__rounded_tl_md =
    A.class "md:rounded-tl-md"


md__rounded_tr_md : Html.Attribute msg
md__rounded_tr_md =
    A.class "md:rounded-tr-md"


md__rounded_br_md : Html.Attribute msg
md__rounded_br_md =
    A.class "md:rounded-br-md"


md__rounded_bl_md : Html.Attribute msg
md__rounded_bl_md =
    A.class "md:rounded-bl-md"


md__rounded_tl_lg : Html.Attribute msg
md__rounded_tl_lg =
    A.class "md:rounded-tl-lg"


md__rounded_tr_lg : Html.Attribute msg
md__rounded_tr_lg =
    A.class "md:rounded-tr-lg"


md__rounded_br_lg : Html.Attribute msg
md__rounded_br_lg =
    A.class "md:rounded-br-lg"


md__rounded_bl_lg : Html.Attribute msg
md__rounded_bl_lg =
    A.class "md:rounded-bl-lg"


md__rounded_tl_full : Html.Attribute msg
md__rounded_tl_full =
    A.class "md:rounded-tl-full"


md__rounded_tr_full : Html.Attribute msg
md__rounded_tr_full =
    A.class "md:rounded-tr-full"


md__rounded_br_full : Html.Attribute msg
md__rounded_br_full =
    A.class "md:rounded-br-full"


md__rounded_bl_full : Html.Attribute msg
md__rounded_bl_full =
    A.class "md:rounded-bl-full"


md__border_solid : Html.Attribute msg
md__border_solid =
    A.class "md:border-solid"


md__border_dashed : Html.Attribute msg
md__border_dashed =
    A.class "md:border-dashed"


md__border_dotted : Html.Attribute msg
md__border_dotted =
    A.class "md:border-dotted"


md__border_double : Html.Attribute msg
md__border_double =
    A.class "md:border-double"


md__border_none : Html.Attribute msg
md__border_none =
    A.class "md:border-none"


md__border_0 : Html.Attribute msg
md__border_0 =
    A.class "md:border-0"


md__border_2 : Html.Attribute msg
md__border_2 =
    A.class "md:border-2"


md__border_4 : Html.Attribute msg
md__border_4 =
    A.class "md:border-4"


md__border_8 : Html.Attribute msg
md__border_8 =
    A.class "md:border-8"


md__border : Html.Attribute msg
md__border =
    A.class "md:border"


md__border_t_0 : Html.Attribute msg
md__border_t_0 =
    A.class "md:border-t-0"


md__border_r_0 : Html.Attribute msg
md__border_r_0 =
    A.class "md:border-r-0"


md__border_b_0 : Html.Attribute msg
md__border_b_0 =
    A.class "md:border-b-0"


md__border_l_0 : Html.Attribute msg
md__border_l_0 =
    A.class "md:border-l-0"


md__border_t_2 : Html.Attribute msg
md__border_t_2 =
    A.class "md:border-t-2"


md__border_r_2 : Html.Attribute msg
md__border_r_2 =
    A.class "md:border-r-2"


md__border_b_2 : Html.Attribute msg
md__border_b_2 =
    A.class "md:border-b-2"


md__border_l_2 : Html.Attribute msg
md__border_l_2 =
    A.class "md:border-l-2"


md__border_t_4 : Html.Attribute msg
md__border_t_4 =
    A.class "md:border-t-4"


md__border_r_4 : Html.Attribute msg
md__border_r_4 =
    A.class "md:border-r-4"


md__border_b_4 : Html.Attribute msg
md__border_b_4 =
    A.class "md:border-b-4"


md__border_l_4 : Html.Attribute msg
md__border_l_4 =
    A.class "md:border-l-4"


md__border_t_8 : Html.Attribute msg
md__border_t_8 =
    A.class "md:border-t-8"


md__border_r_8 : Html.Attribute msg
md__border_r_8 =
    A.class "md:border-r-8"


md__border_b_8 : Html.Attribute msg
md__border_b_8 =
    A.class "md:border-b-8"


md__border_l_8 : Html.Attribute msg
md__border_l_8 =
    A.class "md:border-l-8"


md__border_t : Html.Attribute msg
md__border_t =
    A.class "md:border-t"


md__border_r : Html.Attribute msg
md__border_r =
    A.class "md:border-r"


md__border_b : Html.Attribute msg
md__border_b =
    A.class "md:border-b"


md__border_l : Html.Attribute msg
md__border_l =
    A.class "md:border-l"


md__box_border : Html.Attribute msg
md__box_border =
    A.class "md:box-border"


md__box_content : Html.Attribute msg
md__box_content =
    A.class "md:box-content"


md__cursor_auto : Html.Attribute msg
md__cursor_auto =
    A.class "md:cursor-auto"


md__cursor_default : Html.Attribute msg
md__cursor_default =
    A.class "md:cursor-default"


md__cursor_pointer : Html.Attribute msg
md__cursor_pointer =
    A.class "md:cursor-pointer"


md__cursor_wait : Html.Attribute msg
md__cursor_wait =
    A.class "md:cursor-wait"


md__cursor_text : Html.Attribute msg
md__cursor_text =
    A.class "md:cursor-text"


md__cursor_move : Html.Attribute msg
md__cursor_move =
    A.class "md:cursor-move"


md__cursor_not_allowed : Html.Attribute msg
md__cursor_not_allowed =
    A.class "md:cursor-not-allowed"


md__block : Html.Attribute msg
md__block =
    A.class "md:block"


md__inline_block : Html.Attribute msg
md__inline_block =
    A.class "md:inline-block"


md__inline : Html.Attribute msg
md__inline =
    A.class "md:inline"


md__flex : Html.Attribute msg
md__flex =
    A.class "md:flex"


md__inline_flex : Html.Attribute msg
md__inline_flex =
    A.class "md:inline-flex"


md__grid : Html.Attribute msg
md__grid =
    A.class "md:grid"


md__table : Html.Attribute msg
md__table =
    A.class "md:table"


md__table_caption : Html.Attribute msg
md__table_caption =
    A.class "md:table-caption"


md__table_cell : Html.Attribute msg
md__table_cell =
    A.class "md:table-cell"


md__table_column : Html.Attribute msg
md__table_column =
    A.class "md:table-column"


md__table_column_group : Html.Attribute msg
md__table_column_group =
    A.class "md:table-column-group"


md__table_footer_group : Html.Attribute msg
md__table_footer_group =
    A.class "md:table-footer-group"


md__table_header_group : Html.Attribute msg
md__table_header_group =
    A.class "md:table-header-group"


md__table_row_group : Html.Attribute msg
md__table_row_group =
    A.class "md:table-row-group"


md__table_row : Html.Attribute msg
md__table_row =
    A.class "md:table-row"


md__hidden : Html.Attribute msg
md__hidden =
    A.class "md:hidden"


md__flex_row : Html.Attribute msg
md__flex_row =
    A.class "md:flex-row"


md__flex_row_reverse : Html.Attribute msg
md__flex_row_reverse =
    A.class "md:flex-row-reverse"


md__flex_col : Html.Attribute msg
md__flex_col =
    A.class "md:flex-col"


md__flex_col_reverse : Html.Attribute msg
md__flex_col_reverse =
    A.class "md:flex-col-reverse"


md__flex_wrap : Html.Attribute msg
md__flex_wrap =
    A.class "md:flex-wrap"


md__flex_wrap_reverse : Html.Attribute msg
md__flex_wrap_reverse =
    A.class "md:flex-wrap-reverse"


md__flex_no_wrap : Html.Attribute msg
md__flex_no_wrap =
    A.class "md:flex-no-wrap"


md__items_start : Html.Attribute msg
md__items_start =
    A.class "md:items-start"


md__items_end : Html.Attribute msg
md__items_end =
    A.class "md:items-end"


md__items_center : Html.Attribute msg
md__items_center =
    A.class "md:items-center"


md__items_baseline : Html.Attribute msg
md__items_baseline =
    A.class "md:items-baseline"


md__items_stretch : Html.Attribute msg
md__items_stretch =
    A.class "md:items-stretch"


md__self_auto : Html.Attribute msg
md__self_auto =
    A.class "md:self-auto"


md__self_start : Html.Attribute msg
md__self_start =
    A.class "md:self-start"


md__self_end : Html.Attribute msg
md__self_end =
    A.class "md:self-end"


md__self_center : Html.Attribute msg
md__self_center =
    A.class "md:self-center"


md__self_stretch : Html.Attribute msg
md__self_stretch =
    A.class "md:self-stretch"


md__justify_start : Html.Attribute msg
md__justify_start =
    A.class "md:justify-start"


md__justify_end : Html.Attribute msg
md__justify_end =
    A.class "md:justify-end"


md__justify_center : Html.Attribute msg
md__justify_center =
    A.class "md:justify-center"


md__justify_between : Html.Attribute msg
md__justify_between =
    A.class "md:justify-between"


md__justify_around : Html.Attribute msg
md__justify_around =
    A.class "md:justify-around"


md__justify_evenly : Html.Attribute msg
md__justify_evenly =
    A.class "md:justify-evenly"


md__content_center : Html.Attribute msg
md__content_center =
    A.class "md:content-center"


md__content_start : Html.Attribute msg
md__content_start =
    A.class "md:content-start"


md__content_end : Html.Attribute msg
md__content_end =
    A.class "md:content-end"


md__content_between : Html.Attribute msg
md__content_between =
    A.class "md:content-between"


md__content_around : Html.Attribute msg
md__content_around =
    A.class "md:content-around"


md__flex_1 : Html.Attribute msg
md__flex_1 =
    A.class "md:flex-1"


md__flex_auto : Html.Attribute msg
md__flex_auto =
    A.class "md:flex-auto"


md__flex_initial : Html.Attribute msg
md__flex_initial =
    A.class "md:flex-initial"


md__flex_none : Html.Attribute msg
md__flex_none =
    A.class "md:flex-none"


md__flex_grow_0 : Html.Attribute msg
md__flex_grow_0 =
    A.class "md:flex-grow-0"


md__flex_grow : Html.Attribute msg
md__flex_grow =
    A.class "md:flex-grow"


md__flex_shrink_0 : Html.Attribute msg
md__flex_shrink_0 =
    A.class "md:flex-shrink-0"


md__flex_shrink : Html.Attribute msg
md__flex_shrink =
    A.class "md:flex-shrink"


md__order_1 : Html.Attribute msg
md__order_1 =
    A.class "md:order-1"


md__order_2 : Html.Attribute msg
md__order_2 =
    A.class "md:order-2"


md__order_3 : Html.Attribute msg
md__order_3 =
    A.class "md:order-3"


md__order_4 : Html.Attribute msg
md__order_4 =
    A.class "md:order-4"


md__order_5 : Html.Attribute msg
md__order_5 =
    A.class "md:order-5"


md__order_6 : Html.Attribute msg
md__order_6 =
    A.class "md:order-6"


md__order_7 : Html.Attribute msg
md__order_7 =
    A.class "md:order-7"


md__order_8 : Html.Attribute msg
md__order_8 =
    A.class "md:order-8"


md__order_9 : Html.Attribute msg
md__order_9 =
    A.class "md:order-9"


md__order_10 : Html.Attribute msg
md__order_10 =
    A.class "md:order-10"


md__order_11 : Html.Attribute msg
md__order_11 =
    A.class "md:order-11"


md__order_12 : Html.Attribute msg
md__order_12 =
    A.class "md:order-12"


md__order_first : Html.Attribute msg
md__order_first =
    A.class "md:order-first"


md__order_last : Html.Attribute msg
md__order_last =
    A.class "md:order-last"


md__order_none : Html.Attribute msg
md__order_none =
    A.class "md:order-none"


md__float_right : Html.Attribute msg
md__float_right =
    A.class "md:float-right"


md__float_left : Html.Attribute msg
md__float_left =
    A.class "md:float-left"


md__float_none : Html.Attribute msg
md__float_none =
    A.class "md:float-none"


md__clearfix__after : Html.Attribute msg
md__clearfix__after =
    A.class "md:clearfix:after"


md__clear_left : Html.Attribute msg
md__clear_left =
    A.class "md:clear-left"


md__clear_right : Html.Attribute msg
md__clear_right =
    A.class "md:clear-right"


md__clear_both : Html.Attribute msg
md__clear_both =
    A.class "md:clear-both"


md__font_sans : Html.Attribute msg
md__font_sans =
    A.class "md:font-sans"


md__font_serif : Html.Attribute msg
md__font_serif =
    A.class "md:font-serif"


md__font_mono : Html.Attribute msg
md__font_mono =
    A.class "md:font-mono"


md__font_hairline : Html.Attribute msg
md__font_hairline =
    A.class "md:font-hairline"


md__font_thin : Html.Attribute msg
md__font_thin =
    A.class "md:font-thin"


md__font_light : Html.Attribute msg
md__font_light =
    A.class "md:font-light"


md__font_normal : Html.Attribute msg
md__font_normal =
    A.class "md:font-normal"


md__font_medium : Html.Attribute msg
md__font_medium =
    A.class "md:font-medium"


md__font_semibold : Html.Attribute msg
md__font_semibold =
    A.class "md:font-semibold"


md__font_bold : Html.Attribute msg
md__font_bold =
    A.class "md:font-bold"


md__font_extrabold : Html.Attribute msg
md__font_extrabold =
    A.class "md:font-extrabold"


md__font_black : Html.Attribute msg
md__font_black =
    A.class "md:font-black"


md__hover__font_hairline : Html.Attribute msg
md__hover__font_hairline =
    A.class "md:hover:font-hairline"


md__hover__font_thin : Html.Attribute msg
md__hover__font_thin =
    A.class "md:hover:font-thin"


md__hover__font_light : Html.Attribute msg
md__hover__font_light =
    A.class "md:hover:font-light"


md__hover__font_normal : Html.Attribute msg
md__hover__font_normal =
    A.class "md:hover:font-normal"


md__hover__font_medium : Html.Attribute msg
md__hover__font_medium =
    A.class "md:hover:font-medium"


md__hover__font_semibold : Html.Attribute msg
md__hover__font_semibold =
    A.class "md:hover:font-semibold"


md__hover__font_bold : Html.Attribute msg
md__hover__font_bold =
    A.class "md:hover:font-bold"


md__hover__font_extrabold : Html.Attribute msg
md__hover__font_extrabold =
    A.class "md:hover:font-extrabold"


md__hover__font_black : Html.Attribute msg
md__hover__font_black =
    A.class "md:hover:font-black"


md__focus__font_hairline : Html.Attribute msg
md__focus__font_hairline =
    A.class "md:focus:font-hairline"


md__focus__font_thin : Html.Attribute msg
md__focus__font_thin =
    A.class "md:focus:font-thin"


md__focus__font_light : Html.Attribute msg
md__focus__font_light =
    A.class "md:focus:font-light"


md__focus__font_normal : Html.Attribute msg
md__focus__font_normal =
    A.class "md:focus:font-normal"


md__focus__font_medium : Html.Attribute msg
md__focus__font_medium =
    A.class "md:focus:font-medium"


md__focus__font_semibold : Html.Attribute msg
md__focus__font_semibold =
    A.class "md:focus:font-semibold"


md__focus__font_bold : Html.Attribute msg
md__focus__font_bold =
    A.class "md:focus:font-bold"


md__focus__font_extrabold : Html.Attribute msg
md__focus__font_extrabold =
    A.class "md:focus:font-extrabold"


md__focus__font_black : Html.Attribute msg
md__focus__font_black =
    A.class "md:focus:font-black"


md__h_0 : Html.Attribute msg
md__h_0 =
    A.class "md:h-0"


md__h_1 : Html.Attribute msg
md__h_1 =
    A.class "md:h-1"


md__h_2 : Html.Attribute msg
md__h_2 =
    A.class "md:h-2"


md__h_3 : Html.Attribute msg
md__h_3 =
    A.class "md:h-3"


md__h_4 : Html.Attribute msg
md__h_4 =
    A.class "md:h-4"


md__h_5 : Html.Attribute msg
md__h_5 =
    A.class "md:h-5"


md__h_6 : Html.Attribute msg
md__h_6 =
    A.class "md:h-6"


md__h_8 : Html.Attribute msg
md__h_8 =
    A.class "md:h-8"


md__h_10 : Html.Attribute msg
md__h_10 =
    A.class "md:h-10"


md__h_12 : Html.Attribute msg
md__h_12 =
    A.class "md:h-12"


md__h_16 : Html.Attribute msg
md__h_16 =
    A.class "md:h-16"


md__h_20 : Html.Attribute msg
md__h_20 =
    A.class "md:h-20"


md__h_24 : Html.Attribute msg
md__h_24 =
    A.class "md:h-24"


md__h_32 : Html.Attribute msg
md__h_32 =
    A.class "md:h-32"


md__h_40 : Html.Attribute msg
md__h_40 =
    A.class "md:h-40"


md__h_48 : Html.Attribute msg
md__h_48 =
    A.class "md:h-48"


md__h_56 : Html.Attribute msg
md__h_56 =
    A.class "md:h-56"


md__h_64 : Html.Attribute msg
md__h_64 =
    A.class "md:h-64"


md__h_auto : Html.Attribute msg
md__h_auto =
    A.class "md:h-auto"


md__h_px : Html.Attribute msg
md__h_px =
    A.class "md:h-px"


md__h_full : Html.Attribute msg
md__h_full =
    A.class "md:h-full"


md__h_screen : Html.Attribute msg
md__h_screen =
    A.class "md:h-screen"


md__leading_3 : Html.Attribute msg
md__leading_3 =
    A.class "md:leading-3"


md__leading_4 : Html.Attribute msg
md__leading_4 =
    A.class "md:leading-4"


md__leading_5 : Html.Attribute msg
md__leading_5 =
    A.class "md:leading-5"


md__leading_6 : Html.Attribute msg
md__leading_6 =
    A.class "md:leading-6"


md__leading_7 : Html.Attribute msg
md__leading_7 =
    A.class "md:leading-7"


md__leading_8 : Html.Attribute msg
md__leading_8 =
    A.class "md:leading-8"


md__leading_9 : Html.Attribute msg
md__leading_9 =
    A.class "md:leading-9"


md__leading_10 : Html.Attribute msg
md__leading_10 =
    A.class "md:leading-10"


md__leading_none : Html.Attribute msg
md__leading_none =
    A.class "md:leading-none"


md__leading_tight : Html.Attribute msg
md__leading_tight =
    A.class "md:leading-tight"


md__leading_snug : Html.Attribute msg
md__leading_snug =
    A.class "md:leading-snug"


md__leading_normal : Html.Attribute msg
md__leading_normal =
    A.class "md:leading-normal"


md__leading_relaxed : Html.Attribute msg
md__leading_relaxed =
    A.class "md:leading-relaxed"


md__leading_loose : Html.Attribute msg
md__leading_loose =
    A.class "md:leading-loose"


md__list_inside : Html.Attribute msg
md__list_inside =
    A.class "md:list-inside"


md__list_outside : Html.Attribute msg
md__list_outside =
    A.class "md:list-outside"


md__list_none : Html.Attribute msg
md__list_none =
    A.class "md:list-none"


md__list_disc : Html.Attribute msg
md__list_disc =
    A.class "md:list-disc"


md__list_decimal : Html.Attribute msg
md__list_decimal =
    A.class "md:list-decimal"


md__m_0 : Html.Attribute msg
md__m_0 =
    A.class "md:m-0"


md__m_1 : Html.Attribute msg
md__m_1 =
    A.class "md:m-1"


md__m_2 : Html.Attribute msg
md__m_2 =
    A.class "md:m-2"


md__m_3 : Html.Attribute msg
md__m_3 =
    A.class "md:m-3"


md__m_4 : Html.Attribute msg
md__m_4 =
    A.class "md:m-4"


md__m_5 : Html.Attribute msg
md__m_5 =
    A.class "md:m-5"


md__m_6 : Html.Attribute msg
md__m_6 =
    A.class "md:m-6"


md__m_8 : Html.Attribute msg
md__m_8 =
    A.class "md:m-8"


md__m_10 : Html.Attribute msg
md__m_10 =
    A.class "md:m-10"


md__m_12 : Html.Attribute msg
md__m_12 =
    A.class "md:m-12"


md__m_16 : Html.Attribute msg
md__m_16 =
    A.class "md:m-16"


md__m_20 : Html.Attribute msg
md__m_20 =
    A.class "md:m-20"


md__m_24 : Html.Attribute msg
md__m_24 =
    A.class "md:m-24"


md__m_32 : Html.Attribute msg
md__m_32 =
    A.class "md:m-32"


md__m_40 : Html.Attribute msg
md__m_40 =
    A.class "md:m-40"


md__m_48 : Html.Attribute msg
md__m_48 =
    A.class "md:m-48"


md__m_56 : Html.Attribute msg
md__m_56 =
    A.class "md:m-56"


md__m_64 : Html.Attribute msg
md__m_64 =
    A.class "md:m-64"


md__m_auto : Html.Attribute msg
md__m_auto =
    A.class "md:m-auto"


md__m_px : Html.Attribute msg
md__m_px =
    A.class "md:m-px"


md__neg_m_1 : Html.Attribute msg
md__neg_m_1 =
    A.class "md:-m-1"


md__neg_m_2 : Html.Attribute msg
md__neg_m_2 =
    A.class "md:-m-2"


md__neg_m_3 : Html.Attribute msg
md__neg_m_3 =
    A.class "md:-m-3"


md__neg_m_4 : Html.Attribute msg
md__neg_m_4 =
    A.class "md:-m-4"


md__neg_m_5 : Html.Attribute msg
md__neg_m_5 =
    A.class "md:-m-5"


md__neg_m_6 : Html.Attribute msg
md__neg_m_6 =
    A.class "md:-m-6"


md__neg_m_8 : Html.Attribute msg
md__neg_m_8 =
    A.class "md:-m-8"


md__neg_m_10 : Html.Attribute msg
md__neg_m_10 =
    A.class "md:-m-10"


md__neg_m_12 : Html.Attribute msg
md__neg_m_12 =
    A.class "md:-m-12"


md__neg_m_16 : Html.Attribute msg
md__neg_m_16 =
    A.class "md:-m-16"


md__neg_m_20 : Html.Attribute msg
md__neg_m_20 =
    A.class "md:-m-20"


md__neg_m_24 : Html.Attribute msg
md__neg_m_24 =
    A.class "md:-m-24"


md__neg_m_32 : Html.Attribute msg
md__neg_m_32 =
    A.class "md:-m-32"


md__neg_m_40 : Html.Attribute msg
md__neg_m_40 =
    A.class "md:-m-40"


md__neg_m_48 : Html.Attribute msg
md__neg_m_48 =
    A.class "md:-m-48"


md__neg_m_56 : Html.Attribute msg
md__neg_m_56 =
    A.class "md:-m-56"


md__neg_m_64 : Html.Attribute msg
md__neg_m_64 =
    A.class "md:-m-64"


md__neg_m_px : Html.Attribute msg
md__neg_m_px =
    A.class "md:-m-px"


md__my_0 : Html.Attribute msg
md__my_0 =
    A.class "md:my-0"


md__mx_0 : Html.Attribute msg
md__mx_0 =
    A.class "md:mx-0"


md__my_1 : Html.Attribute msg
md__my_1 =
    A.class "md:my-1"


md__mx_1 : Html.Attribute msg
md__mx_1 =
    A.class "md:mx-1"


md__my_2 : Html.Attribute msg
md__my_2 =
    A.class "md:my-2"


md__mx_2 : Html.Attribute msg
md__mx_2 =
    A.class "md:mx-2"


md__my_3 : Html.Attribute msg
md__my_3 =
    A.class "md:my-3"


md__mx_3 : Html.Attribute msg
md__mx_3 =
    A.class "md:mx-3"


md__my_4 : Html.Attribute msg
md__my_4 =
    A.class "md:my-4"


md__mx_4 : Html.Attribute msg
md__mx_4 =
    A.class "md:mx-4"


md__my_5 : Html.Attribute msg
md__my_5 =
    A.class "md:my-5"


md__mx_5 : Html.Attribute msg
md__mx_5 =
    A.class "md:mx-5"


md__my_6 : Html.Attribute msg
md__my_6 =
    A.class "md:my-6"


md__mx_6 : Html.Attribute msg
md__mx_6 =
    A.class "md:mx-6"


md__my_8 : Html.Attribute msg
md__my_8 =
    A.class "md:my-8"


md__mx_8 : Html.Attribute msg
md__mx_8 =
    A.class "md:mx-8"


md__my_10 : Html.Attribute msg
md__my_10 =
    A.class "md:my-10"


md__mx_10 : Html.Attribute msg
md__mx_10 =
    A.class "md:mx-10"


md__my_12 : Html.Attribute msg
md__my_12 =
    A.class "md:my-12"


md__mx_12 : Html.Attribute msg
md__mx_12 =
    A.class "md:mx-12"


md__my_16 : Html.Attribute msg
md__my_16 =
    A.class "md:my-16"


md__mx_16 : Html.Attribute msg
md__mx_16 =
    A.class "md:mx-16"


md__my_20 : Html.Attribute msg
md__my_20 =
    A.class "md:my-20"


md__mx_20 : Html.Attribute msg
md__mx_20 =
    A.class "md:mx-20"


md__my_24 : Html.Attribute msg
md__my_24 =
    A.class "md:my-24"


md__mx_24 : Html.Attribute msg
md__mx_24 =
    A.class "md:mx-24"


md__my_32 : Html.Attribute msg
md__my_32 =
    A.class "md:my-32"


md__mx_32 : Html.Attribute msg
md__mx_32 =
    A.class "md:mx-32"


md__my_40 : Html.Attribute msg
md__my_40 =
    A.class "md:my-40"


md__mx_40 : Html.Attribute msg
md__mx_40 =
    A.class "md:mx-40"


md__my_48 : Html.Attribute msg
md__my_48 =
    A.class "md:my-48"


md__mx_48 : Html.Attribute msg
md__mx_48 =
    A.class "md:mx-48"


md__my_56 : Html.Attribute msg
md__my_56 =
    A.class "md:my-56"


md__mx_56 : Html.Attribute msg
md__mx_56 =
    A.class "md:mx-56"


md__my_64 : Html.Attribute msg
md__my_64 =
    A.class "md:my-64"


md__mx_64 : Html.Attribute msg
md__mx_64 =
    A.class "md:mx-64"


md__my_auto : Html.Attribute msg
md__my_auto =
    A.class "md:my-auto"


md__mx_auto : Html.Attribute msg
md__mx_auto =
    A.class "md:mx-auto"


md__my_px : Html.Attribute msg
md__my_px =
    A.class "md:my-px"


md__mx_px : Html.Attribute msg
md__mx_px =
    A.class "md:mx-px"


md__neg_my_1 : Html.Attribute msg
md__neg_my_1 =
    A.class "md:-my-1"


md__neg_mx_1 : Html.Attribute msg
md__neg_mx_1 =
    A.class "md:-mx-1"


md__neg_my_2 : Html.Attribute msg
md__neg_my_2 =
    A.class "md:-my-2"


md__neg_mx_2 : Html.Attribute msg
md__neg_mx_2 =
    A.class "md:-mx-2"


md__neg_my_3 : Html.Attribute msg
md__neg_my_3 =
    A.class "md:-my-3"


md__neg_mx_3 : Html.Attribute msg
md__neg_mx_3 =
    A.class "md:-mx-3"


md__neg_my_4 : Html.Attribute msg
md__neg_my_4 =
    A.class "md:-my-4"


md__neg_mx_4 : Html.Attribute msg
md__neg_mx_4 =
    A.class "md:-mx-4"


md__neg_my_5 : Html.Attribute msg
md__neg_my_5 =
    A.class "md:-my-5"


md__neg_mx_5 : Html.Attribute msg
md__neg_mx_5 =
    A.class "md:-mx-5"


md__neg_my_6 : Html.Attribute msg
md__neg_my_6 =
    A.class "md:-my-6"


md__neg_mx_6 : Html.Attribute msg
md__neg_mx_6 =
    A.class "md:-mx-6"


md__neg_my_8 : Html.Attribute msg
md__neg_my_8 =
    A.class "md:-my-8"


md__neg_mx_8 : Html.Attribute msg
md__neg_mx_8 =
    A.class "md:-mx-8"


md__neg_my_10 : Html.Attribute msg
md__neg_my_10 =
    A.class "md:-my-10"


md__neg_mx_10 : Html.Attribute msg
md__neg_mx_10 =
    A.class "md:-mx-10"


md__neg_my_12 : Html.Attribute msg
md__neg_my_12 =
    A.class "md:-my-12"


md__neg_mx_12 : Html.Attribute msg
md__neg_mx_12 =
    A.class "md:-mx-12"


md__neg_my_16 : Html.Attribute msg
md__neg_my_16 =
    A.class "md:-my-16"


md__neg_mx_16 : Html.Attribute msg
md__neg_mx_16 =
    A.class "md:-mx-16"


md__neg_my_20 : Html.Attribute msg
md__neg_my_20 =
    A.class "md:-my-20"


md__neg_mx_20 : Html.Attribute msg
md__neg_mx_20 =
    A.class "md:-mx-20"


md__neg_my_24 : Html.Attribute msg
md__neg_my_24 =
    A.class "md:-my-24"


md__neg_mx_24 : Html.Attribute msg
md__neg_mx_24 =
    A.class "md:-mx-24"


md__neg_my_32 : Html.Attribute msg
md__neg_my_32 =
    A.class "md:-my-32"


md__neg_mx_32 : Html.Attribute msg
md__neg_mx_32 =
    A.class "md:-mx-32"


md__neg_my_40 : Html.Attribute msg
md__neg_my_40 =
    A.class "md:-my-40"


md__neg_mx_40 : Html.Attribute msg
md__neg_mx_40 =
    A.class "md:-mx-40"


md__neg_my_48 : Html.Attribute msg
md__neg_my_48 =
    A.class "md:-my-48"


md__neg_mx_48 : Html.Attribute msg
md__neg_mx_48 =
    A.class "md:-mx-48"


md__neg_my_56 : Html.Attribute msg
md__neg_my_56 =
    A.class "md:-my-56"


md__neg_mx_56 : Html.Attribute msg
md__neg_mx_56 =
    A.class "md:-mx-56"


md__neg_my_64 : Html.Attribute msg
md__neg_my_64 =
    A.class "md:-my-64"


md__neg_mx_64 : Html.Attribute msg
md__neg_mx_64 =
    A.class "md:-mx-64"


md__neg_my_px : Html.Attribute msg
md__neg_my_px =
    A.class "md:-my-px"


md__neg_mx_px : Html.Attribute msg
md__neg_mx_px =
    A.class "md:-mx-px"


md__mt_0 : Html.Attribute msg
md__mt_0 =
    A.class "md:mt-0"


md__mr_0 : Html.Attribute msg
md__mr_0 =
    A.class "md:mr-0"


md__mb_0 : Html.Attribute msg
md__mb_0 =
    A.class "md:mb-0"


md__ml_0 : Html.Attribute msg
md__ml_0 =
    A.class "md:ml-0"


md__mt_1 : Html.Attribute msg
md__mt_1 =
    A.class "md:mt-1"


md__mr_1 : Html.Attribute msg
md__mr_1 =
    A.class "md:mr-1"


md__mb_1 : Html.Attribute msg
md__mb_1 =
    A.class "md:mb-1"


md__ml_1 : Html.Attribute msg
md__ml_1 =
    A.class "md:ml-1"


md__mt_2 : Html.Attribute msg
md__mt_2 =
    A.class "md:mt-2"


md__mr_2 : Html.Attribute msg
md__mr_2 =
    A.class "md:mr-2"


md__mb_2 : Html.Attribute msg
md__mb_2 =
    A.class "md:mb-2"


md__ml_2 : Html.Attribute msg
md__ml_2 =
    A.class "md:ml-2"


md__mt_3 : Html.Attribute msg
md__mt_3 =
    A.class "md:mt-3"


md__mr_3 : Html.Attribute msg
md__mr_3 =
    A.class "md:mr-3"


md__mb_3 : Html.Attribute msg
md__mb_3 =
    A.class "md:mb-3"


md__ml_3 : Html.Attribute msg
md__ml_3 =
    A.class "md:ml-3"


md__mt_4 : Html.Attribute msg
md__mt_4 =
    A.class "md:mt-4"


md__mr_4 : Html.Attribute msg
md__mr_4 =
    A.class "md:mr-4"


md__mb_4 : Html.Attribute msg
md__mb_4 =
    A.class "md:mb-4"


md__ml_4 : Html.Attribute msg
md__ml_4 =
    A.class "md:ml-4"


md__mt_5 : Html.Attribute msg
md__mt_5 =
    A.class "md:mt-5"


md__mr_5 : Html.Attribute msg
md__mr_5 =
    A.class "md:mr-5"


md__mb_5 : Html.Attribute msg
md__mb_5 =
    A.class "md:mb-5"


md__ml_5 : Html.Attribute msg
md__ml_5 =
    A.class "md:ml-5"


md__mt_6 : Html.Attribute msg
md__mt_6 =
    A.class "md:mt-6"


md__mr_6 : Html.Attribute msg
md__mr_6 =
    A.class "md:mr-6"


md__mb_6 : Html.Attribute msg
md__mb_6 =
    A.class "md:mb-6"


md__ml_6 : Html.Attribute msg
md__ml_6 =
    A.class "md:ml-6"


md__mt_8 : Html.Attribute msg
md__mt_8 =
    A.class "md:mt-8"


md__mr_8 : Html.Attribute msg
md__mr_8 =
    A.class "md:mr-8"


md__mb_8 : Html.Attribute msg
md__mb_8 =
    A.class "md:mb-8"


md__ml_8 : Html.Attribute msg
md__ml_8 =
    A.class "md:ml-8"


md__mt_10 : Html.Attribute msg
md__mt_10 =
    A.class "md:mt-10"


md__mr_10 : Html.Attribute msg
md__mr_10 =
    A.class "md:mr-10"


md__mb_10 : Html.Attribute msg
md__mb_10 =
    A.class "md:mb-10"


md__ml_10 : Html.Attribute msg
md__ml_10 =
    A.class "md:ml-10"


md__mt_12 : Html.Attribute msg
md__mt_12 =
    A.class "md:mt-12"


md__mr_12 : Html.Attribute msg
md__mr_12 =
    A.class "md:mr-12"


md__mb_12 : Html.Attribute msg
md__mb_12 =
    A.class "md:mb-12"


md__ml_12 : Html.Attribute msg
md__ml_12 =
    A.class "md:ml-12"


md__mt_16 : Html.Attribute msg
md__mt_16 =
    A.class "md:mt-16"


md__mr_16 : Html.Attribute msg
md__mr_16 =
    A.class "md:mr-16"


md__mb_16 : Html.Attribute msg
md__mb_16 =
    A.class "md:mb-16"


md__ml_16 : Html.Attribute msg
md__ml_16 =
    A.class "md:ml-16"


md__mt_20 : Html.Attribute msg
md__mt_20 =
    A.class "md:mt-20"


md__mr_20 : Html.Attribute msg
md__mr_20 =
    A.class "md:mr-20"


md__mb_20 : Html.Attribute msg
md__mb_20 =
    A.class "md:mb-20"


md__ml_20 : Html.Attribute msg
md__ml_20 =
    A.class "md:ml-20"


md__mt_24 : Html.Attribute msg
md__mt_24 =
    A.class "md:mt-24"


md__mr_24 : Html.Attribute msg
md__mr_24 =
    A.class "md:mr-24"


md__mb_24 : Html.Attribute msg
md__mb_24 =
    A.class "md:mb-24"


md__ml_24 : Html.Attribute msg
md__ml_24 =
    A.class "md:ml-24"


md__mt_32 : Html.Attribute msg
md__mt_32 =
    A.class "md:mt-32"


md__mr_32 : Html.Attribute msg
md__mr_32 =
    A.class "md:mr-32"


md__mb_32 : Html.Attribute msg
md__mb_32 =
    A.class "md:mb-32"


md__ml_32 : Html.Attribute msg
md__ml_32 =
    A.class "md:ml-32"


md__mt_40 : Html.Attribute msg
md__mt_40 =
    A.class "md:mt-40"


md__mr_40 : Html.Attribute msg
md__mr_40 =
    A.class "md:mr-40"


md__mb_40 : Html.Attribute msg
md__mb_40 =
    A.class "md:mb-40"


md__ml_40 : Html.Attribute msg
md__ml_40 =
    A.class "md:ml-40"


md__mt_48 : Html.Attribute msg
md__mt_48 =
    A.class "md:mt-48"


md__mr_48 : Html.Attribute msg
md__mr_48 =
    A.class "md:mr-48"


md__mb_48 : Html.Attribute msg
md__mb_48 =
    A.class "md:mb-48"


md__ml_48 : Html.Attribute msg
md__ml_48 =
    A.class "md:ml-48"


md__mt_56 : Html.Attribute msg
md__mt_56 =
    A.class "md:mt-56"


md__mr_56 : Html.Attribute msg
md__mr_56 =
    A.class "md:mr-56"


md__mb_56 : Html.Attribute msg
md__mb_56 =
    A.class "md:mb-56"


md__ml_56 : Html.Attribute msg
md__ml_56 =
    A.class "md:ml-56"


md__mt_64 : Html.Attribute msg
md__mt_64 =
    A.class "md:mt-64"


md__mr_64 : Html.Attribute msg
md__mr_64 =
    A.class "md:mr-64"


md__mb_64 : Html.Attribute msg
md__mb_64 =
    A.class "md:mb-64"


md__ml_64 : Html.Attribute msg
md__ml_64 =
    A.class "md:ml-64"


md__mt_auto : Html.Attribute msg
md__mt_auto =
    A.class "md:mt-auto"


md__mr_auto : Html.Attribute msg
md__mr_auto =
    A.class "md:mr-auto"


md__mb_auto : Html.Attribute msg
md__mb_auto =
    A.class "md:mb-auto"


md__ml_auto : Html.Attribute msg
md__ml_auto =
    A.class "md:ml-auto"


md__mt_px : Html.Attribute msg
md__mt_px =
    A.class "md:mt-px"


md__mr_px : Html.Attribute msg
md__mr_px =
    A.class "md:mr-px"


md__mb_px : Html.Attribute msg
md__mb_px =
    A.class "md:mb-px"


md__ml_px : Html.Attribute msg
md__ml_px =
    A.class "md:ml-px"


md__neg_mt_1 : Html.Attribute msg
md__neg_mt_1 =
    A.class "md:-mt-1"


md__neg_mr_1 : Html.Attribute msg
md__neg_mr_1 =
    A.class "md:-mr-1"


md__neg_mb_1 : Html.Attribute msg
md__neg_mb_1 =
    A.class "md:-mb-1"


md__neg_ml_1 : Html.Attribute msg
md__neg_ml_1 =
    A.class "md:-ml-1"


md__neg_mt_2 : Html.Attribute msg
md__neg_mt_2 =
    A.class "md:-mt-2"


md__neg_mr_2 : Html.Attribute msg
md__neg_mr_2 =
    A.class "md:-mr-2"


md__neg_mb_2 : Html.Attribute msg
md__neg_mb_2 =
    A.class "md:-mb-2"


md__neg_ml_2 : Html.Attribute msg
md__neg_ml_2 =
    A.class "md:-ml-2"


md__neg_mt_3 : Html.Attribute msg
md__neg_mt_3 =
    A.class "md:-mt-3"


md__neg_mr_3 : Html.Attribute msg
md__neg_mr_3 =
    A.class "md:-mr-3"


md__neg_mb_3 : Html.Attribute msg
md__neg_mb_3 =
    A.class "md:-mb-3"


md__neg_ml_3 : Html.Attribute msg
md__neg_ml_3 =
    A.class "md:-ml-3"


md__neg_mt_4 : Html.Attribute msg
md__neg_mt_4 =
    A.class "md:-mt-4"


md__neg_mr_4 : Html.Attribute msg
md__neg_mr_4 =
    A.class "md:-mr-4"


md__neg_mb_4 : Html.Attribute msg
md__neg_mb_4 =
    A.class "md:-mb-4"


md__neg_ml_4 : Html.Attribute msg
md__neg_ml_4 =
    A.class "md:-ml-4"


md__neg_mt_5 : Html.Attribute msg
md__neg_mt_5 =
    A.class "md:-mt-5"


md__neg_mr_5 : Html.Attribute msg
md__neg_mr_5 =
    A.class "md:-mr-5"


md__neg_mb_5 : Html.Attribute msg
md__neg_mb_5 =
    A.class "md:-mb-5"


md__neg_ml_5 : Html.Attribute msg
md__neg_ml_5 =
    A.class "md:-ml-5"


md__neg_mt_6 : Html.Attribute msg
md__neg_mt_6 =
    A.class "md:-mt-6"


md__neg_mr_6 : Html.Attribute msg
md__neg_mr_6 =
    A.class "md:-mr-6"


md__neg_mb_6 : Html.Attribute msg
md__neg_mb_6 =
    A.class "md:-mb-6"


md__neg_ml_6 : Html.Attribute msg
md__neg_ml_6 =
    A.class "md:-ml-6"


md__neg_mt_8 : Html.Attribute msg
md__neg_mt_8 =
    A.class "md:-mt-8"


md__neg_mr_8 : Html.Attribute msg
md__neg_mr_8 =
    A.class "md:-mr-8"


md__neg_mb_8 : Html.Attribute msg
md__neg_mb_8 =
    A.class "md:-mb-8"


md__neg_ml_8 : Html.Attribute msg
md__neg_ml_8 =
    A.class "md:-ml-8"


md__neg_mt_10 : Html.Attribute msg
md__neg_mt_10 =
    A.class "md:-mt-10"


md__neg_mr_10 : Html.Attribute msg
md__neg_mr_10 =
    A.class "md:-mr-10"


md__neg_mb_10 : Html.Attribute msg
md__neg_mb_10 =
    A.class "md:-mb-10"


md__neg_ml_10 : Html.Attribute msg
md__neg_ml_10 =
    A.class "md:-ml-10"


md__neg_mt_12 : Html.Attribute msg
md__neg_mt_12 =
    A.class "md:-mt-12"


md__neg_mr_12 : Html.Attribute msg
md__neg_mr_12 =
    A.class "md:-mr-12"


md__neg_mb_12 : Html.Attribute msg
md__neg_mb_12 =
    A.class "md:-mb-12"


md__neg_ml_12 : Html.Attribute msg
md__neg_ml_12 =
    A.class "md:-ml-12"


md__neg_mt_16 : Html.Attribute msg
md__neg_mt_16 =
    A.class "md:-mt-16"


md__neg_mr_16 : Html.Attribute msg
md__neg_mr_16 =
    A.class "md:-mr-16"


md__neg_mb_16 : Html.Attribute msg
md__neg_mb_16 =
    A.class "md:-mb-16"


md__neg_ml_16 : Html.Attribute msg
md__neg_ml_16 =
    A.class "md:-ml-16"


md__neg_mt_20 : Html.Attribute msg
md__neg_mt_20 =
    A.class "md:-mt-20"


md__neg_mr_20 : Html.Attribute msg
md__neg_mr_20 =
    A.class "md:-mr-20"


md__neg_mb_20 : Html.Attribute msg
md__neg_mb_20 =
    A.class "md:-mb-20"


md__neg_ml_20 : Html.Attribute msg
md__neg_ml_20 =
    A.class "md:-ml-20"


md__neg_mt_24 : Html.Attribute msg
md__neg_mt_24 =
    A.class "md:-mt-24"


md__neg_mr_24 : Html.Attribute msg
md__neg_mr_24 =
    A.class "md:-mr-24"


md__neg_mb_24 : Html.Attribute msg
md__neg_mb_24 =
    A.class "md:-mb-24"


md__neg_ml_24 : Html.Attribute msg
md__neg_ml_24 =
    A.class "md:-ml-24"


md__neg_mt_32 : Html.Attribute msg
md__neg_mt_32 =
    A.class "md:-mt-32"


md__neg_mr_32 : Html.Attribute msg
md__neg_mr_32 =
    A.class "md:-mr-32"


md__neg_mb_32 : Html.Attribute msg
md__neg_mb_32 =
    A.class "md:-mb-32"


md__neg_ml_32 : Html.Attribute msg
md__neg_ml_32 =
    A.class "md:-ml-32"


md__neg_mt_40 : Html.Attribute msg
md__neg_mt_40 =
    A.class "md:-mt-40"


md__neg_mr_40 : Html.Attribute msg
md__neg_mr_40 =
    A.class "md:-mr-40"


md__neg_mb_40 : Html.Attribute msg
md__neg_mb_40 =
    A.class "md:-mb-40"


md__neg_ml_40 : Html.Attribute msg
md__neg_ml_40 =
    A.class "md:-ml-40"


md__neg_mt_48 : Html.Attribute msg
md__neg_mt_48 =
    A.class "md:-mt-48"


md__neg_mr_48 : Html.Attribute msg
md__neg_mr_48 =
    A.class "md:-mr-48"


md__neg_mb_48 : Html.Attribute msg
md__neg_mb_48 =
    A.class "md:-mb-48"


md__neg_ml_48 : Html.Attribute msg
md__neg_ml_48 =
    A.class "md:-ml-48"


md__neg_mt_56 : Html.Attribute msg
md__neg_mt_56 =
    A.class "md:-mt-56"


md__neg_mr_56 : Html.Attribute msg
md__neg_mr_56 =
    A.class "md:-mr-56"


md__neg_mb_56 : Html.Attribute msg
md__neg_mb_56 =
    A.class "md:-mb-56"


md__neg_ml_56 : Html.Attribute msg
md__neg_ml_56 =
    A.class "md:-ml-56"


md__neg_mt_64 : Html.Attribute msg
md__neg_mt_64 =
    A.class "md:-mt-64"


md__neg_mr_64 : Html.Attribute msg
md__neg_mr_64 =
    A.class "md:-mr-64"


md__neg_mb_64 : Html.Attribute msg
md__neg_mb_64 =
    A.class "md:-mb-64"


md__neg_ml_64 : Html.Attribute msg
md__neg_ml_64 =
    A.class "md:-ml-64"


md__neg_mt_px : Html.Attribute msg
md__neg_mt_px =
    A.class "md:-mt-px"


md__neg_mr_px : Html.Attribute msg
md__neg_mr_px =
    A.class "md:-mr-px"


md__neg_mb_px : Html.Attribute msg
md__neg_mb_px =
    A.class "md:-mb-px"


md__neg_ml_px : Html.Attribute msg
md__neg_ml_px =
    A.class "md:-ml-px"


md__max_h_full : Html.Attribute msg
md__max_h_full =
    A.class "md:max-h-full"


md__max_h_screen : Html.Attribute msg
md__max_h_screen =
    A.class "md:max-h-screen"


md__max_w_none : Html.Attribute msg
md__max_w_none =
    A.class "md:max-w-none"


md__max_w_xs : Html.Attribute msg
md__max_w_xs =
    A.class "md:max-w-xs"


md__max_w_sm : Html.Attribute msg
md__max_w_sm =
    A.class "md:max-w-sm"


md__max_w_md : Html.Attribute msg
md__max_w_md =
    A.class "md:max-w-md"


md__max_w_lg : Html.Attribute msg
md__max_w_lg =
    A.class "md:max-w-lg"


md__max_w_xl : Html.Attribute msg
md__max_w_xl =
    A.class "md:max-w-xl"


md__max_w_2xl : Html.Attribute msg
md__max_w_2xl =
    A.class "md:max-w-2xl"


md__max_w_3xl : Html.Attribute msg
md__max_w_3xl =
    A.class "md:max-w-3xl"


md__max_w_4xl : Html.Attribute msg
md__max_w_4xl =
    A.class "md:max-w-4xl"


md__max_w_5xl : Html.Attribute msg
md__max_w_5xl =
    A.class "md:max-w-5xl"


md__max_w_6xl : Html.Attribute msg
md__max_w_6xl =
    A.class "md:max-w-6xl"


md__max_w_full : Html.Attribute msg
md__max_w_full =
    A.class "md:max-w-full"


md__max_w_screen_sm : Html.Attribute msg
md__max_w_screen_sm =
    A.class "md:max-w-screen-sm"


md__max_w_screen_md : Html.Attribute msg
md__max_w_screen_md =
    A.class "md:max-w-screen-md"


md__max_w_screen_lg : Html.Attribute msg
md__max_w_screen_lg =
    A.class "md:max-w-screen-lg"


md__max_w_screen_xl : Html.Attribute msg
md__max_w_screen_xl =
    A.class "md:max-w-screen-xl"


md__min_h_0 : Html.Attribute msg
md__min_h_0 =
    A.class "md:min-h-0"


md__min_h_full : Html.Attribute msg
md__min_h_full =
    A.class "md:min-h-full"


md__min_h_screen : Html.Attribute msg
md__min_h_screen =
    A.class "md:min-h-screen"


md__min_w_0 : Html.Attribute msg
md__min_w_0 =
    A.class "md:min-w-0"


md__min_w_full : Html.Attribute msg
md__min_w_full =
    A.class "md:min-w-full"


md__object_contain : Html.Attribute msg
md__object_contain =
    A.class "md:object-contain"


md__object_cover : Html.Attribute msg
md__object_cover =
    A.class "md:object-cover"


md__object_fill : Html.Attribute msg
md__object_fill =
    A.class "md:object-fill"


md__object_none : Html.Attribute msg
md__object_none =
    A.class "md:object-none"


md__object_scale_down : Html.Attribute msg
md__object_scale_down =
    A.class "md:object-scale-down"


md__object_bottom : Html.Attribute msg
md__object_bottom =
    A.class "md:object-bottom"


md__object_center : Html.Attribute msg
md__object_center =
    A.class "md:object-center"


md__object_left : Html.Attribute msg
md__object_left =
    A.class "md:object-left"


md__object_left_bottom : Html.Attribute msg
md__object_left_bottom =
    A.class "md:object-left-bottom"


md__object_left_top : Html.Attribute msg
md__object_left_top =
    A.class "md:object-left-top"


md__object_right : Html.Attribute msg
md__object_right =
    A.class "md:object-right"


md__object_right_bottom : Html.Attribute msg
md__object_right_bottom =
    A.class "md:object-right-bottom"


md__object_right_top : Html.Attribute msg
md__object_right_top =
    A.class "md:object-right-top"


md__object_top : Html.Attribute msg
md__object_top =
    A.class "md:object-top"


md__opacity_0 : Html.Attribute msg
md__opacity_0 =
    A.class "md:opacity-0"


md__opacity_25 : Html.Attribute msg
md__opacity_25 =
    A.class "md:opacity-25"


md__opacity_50 : Html.Attribute msg
md__opacity_50 =
    A.class "md:opacity-50"


md__opacity_75 : Html.Attribute msg
md__opacity_75 =
    A.class "md:opacity-75"


md__opacity_100 : Html.Attribute msg
md__opacity_100 =
    A.class "md:opacity-100"


md__hover__opacity_0 : Html.Attribute msg
md__hover__opacity_0 =
    A.class "md:hover:opacity-0"


md__hover__opacity_25 : Html.Attribute msg
md__hover__opacity_25 =
    A.class "md:hover:opacity-25"


md__hover__opacity_50 : Html.Attribute msg
md__hover__opacity_50 =
    A.class "md:hover:opacity-50"


md__hover__opacity_75 : Html.Attribute msg
md__hover__opacity_75 =
    A.class "md:hover:opacity-75"


md__hover__opacity_100 : Html.Attribute msg
md__hover__opacity_100 =
    A.class "md:hover:opacity-100"


md__focus__opacity_0 : Html.Attribute msg
md__focus__opacity_0 =
    A.class "md:focus:opacity-0"


md__focus__opacity_25 : Html.Attribute msg
md__focus__opacity_25 =
    A.class "md:focus:opacity-25"


md__focus__opacity_50 : Html.Attribute msg
md__focus__opacity_50 =
    A.class "md:focus:opacity-50"


md__focus__opacity_75 : Html.Attribute msg
md__focus__opacity_75 =
    A.class "md:focus:opacity-75"


md__focus__opacity_100 : Html.Attribute msg
md__focus__opacity_100 =
    A.class "md:focus:opacity-100"


md__outline_none : Html.Attribute msg
md__outline_none =
    A.class "md:outline-none"


md__focus__outline_none : Html.Attribute msg
md__focus__outline_none =
    A.class "md:focus:outline-none"


md__overflow_auto : Html.Attribute msg
md__overflow_auto =
    A.class "md:overflow-auto"


md__overflow_hidden : Html.Attribute msg
md__overflow_hidden =
    A.class "md:overflow-hidden"


md__overflow_visible : Html.Attribute msg
md__overflow_visible =
    A.class "md:overflow-visible"


md__overflow_scroll : Html.Attribute msg
md__overflow_scroll =
    A.class "md:overflow-scroll"


md__overflow_x_auto : Html.Attribute msg
md__overflow_x_auto =
    A.class "md:overflow-x-auto"


md__overflow_y_auto : Html.Attribute msg
md__overflow_y_auto =
    A.class "md:overflow-y-auto"


md__overflow_x_hidden : Html.Attribute msg
md__overflow_x_hidden =
    A.class "md:overflow-x-hidden"


md__overflow_y_hidden : Html.Attribute msg
md__overflow_y_hidden =
    A.class "md:overflow-y-hidden"


md__overflow_x_visible : Html.Attribute msg
md__overflow_x_visible =
    A.class "md:overflow-x-visible"


md__overflow_y_visible : Html.Attribute msg
md__overflow_y_visible =
    A.class "md:overflow-y-visible"


md__overflow_x_scroll : Html.Attribute msg
md__overflow_x_scroll =
    A.class "md:overflow-x-scroll"


md__overflow_y_scroll : Html.Attribute msg
md__overflow_y_scroll =
    A.class "md:overflow-y-scroll"


md__scrolling_touch : Html.Attribute msg
md__scrolling_touch =
    A.class "md:scrolling-touch"


md__scrolling_auto : Html.Attribute msg
md__scrolling_auto =
    A.class "md:scrolling-auto"


md__p_0 : Html.Attribute msg
md__p_0 =
    A.class "md:p-0"


md__p_1 : Html.Attribute msg
md__p_1 =
    A.class "md:p-1"


md__p_2 : Html.Attribute msg
md__p_2 =
    A.class "md:p-2"


md__p_3 : Html.Attribute msg
md__p_3 =
    A.class "md:p-3"


md__p_4 : Html.Attribute msg
md__p_4 =
    A.class "md:p-4"


md__p_5 : Html.Attribute msg
md__p_5 =
    A.class "md:p-5"


md__p_6 : Html.Attribute msg
md__p_6 =
    A.class "md:p-6"


md__p_8 : Html.Attribute msg
md__p_8 =
    A.class "md:p-8"


md__p_10 : Html.Attribute msg
md__p_10 =
    A.class "md:p-10"


md__p_12 : Html.Attribute msg
md__p_12 =
    A.class "md:p-12"


md__p_16 : Html.Attribute msg
md__p_16 =
    A.class "md:p-16"


md__p_20 : Html.Attribute msg
md__p_20 =
    A.class "md:p-20"


md__p_24 : Html.Attribute msg
md__p_24 =
    A.class "md:p-24"


md__p_32 : Html.Attribute msg
md__p_32 =
    A.class "md:p-32"


md__p_40 : Html.Attribute msg
md__p_40 =
    A.class "md:p-40"


md__p_48 : Html.Attribute msg
md__p_48 =
    A.class "md:p-48"


md__p_56 : Html.Attribute msg
md__p_56 =
    A.class "md:p-56"


md__p_64 : Html.Attribute msg
md__p_64 =
    A.class "md:p-64"


md__p_px : Html.Attribute msg
md__p_px =
    A.class "md:p-px"


md__py_0 : Html.Attribute msg
md__py_0 =
    A.class "md:py-0"


md__px_0 : Html.Attribute msg
md__px_0 =
    A.class "md:px-0"


md__py_1 : Html.Attribute msg
md__py_1 =
    A.class "md:py-1"


md__px_1 : Html.Attribute msg
md__px_1 =
    A.class "md:px-1"


md__py_2 : Html.Attribute msg
md__py_2 =
    A.class "md:py-2"


md__px_2 : Html.Attribute msg
md__px_2 =
    A.class "md:px-2"


md__py_3 : Html.Attribute msg
md__py_3 =
    A.class "md:py-3"


md__px_3 : Html.Attribute msg
md__px_3 =
    A.class "md:px-3"


md__py_4 : Html.Attribute msg
md__py_4 =
    A.class "md:py-4"


md__px_4 : Html.Attribute msg
md__px_4 =
    A.class "md:px-4"


md__py_5 : Html.Attribute msg
md__py_5 =
    A.class "md:py-5"


md__px_5 : Html.Attribute msg
md__px_5 =
    A.class "md:px-5"


md__py_6 : Html.Attribute msg
md__py_6 =
    A.class "md:py-6"


md__px_6 : Html.Attribute msg
md__px_6 =
    A.class "md:px-6"


md__py_8 : Html.Attribute msg
md__py_8 =
    A.class "md:py-8"


md__px_8 : Html.Attribute msg
md__px_8 =
    A.class "md:px-8"


md__py_10 : Html.Attribute msg
md__py_10 =
    A.class "md:py-10"


md__px_10 : Html.Attribute msg
md__px_10 =
    A.class "md:px-10"


md__py_12 : Html.Attribute msg
md__py_12 =
    A.class "md:py-12"


md__px_12 : Html.Attribute msg
md__px_12 =
    A.class "md:px-12"


md__py_16 : Html.Attribute msg
md__py_16 =
    A.class "md:py-16"


md__px_16 : Html.Attribute msg
md__px_16 =
    A.class "md:px-16"


md__py_20 : Html.Attribute msg
md__py_20 =
    A.class "md:py-20"


md__px_20 : Html.Attribute msg
md__px_20 =
    A.class "md:px-20"


md__py_24 : Html.Attribute msg
md__py_24 =
    A.class "md:py-24"


md__px_24 : Html.Attribute msg
md__px_24 =
    A.class "md:px-24"


md__py_32 : Html.Attribute msg
md__py_32 =
    A.class "md:py-32"


md__px_32 : Html.Attribute msg
md__px_32 =
    A.class "md:px-32"


md__py_40 : Html.Attribute msg
md__py_40 =
    A.class "md:py-40"


md__px_40 : Html.Attribute msg
md__px_40 =
    A.class "md:px-40"


md__py_48 : Html.Attribute msg
md__py_48 =
    A.class "md:py-48"


md__px_48 : Html.Attribute msg
md__px_48 =
    A.class "md:px-48"


md__py_56 : Html.Attribute msg
md__py_56 =
    A.class "md:py-56"


md__px_56 : Html.Attribute msg
md__px_56 =
    A.class "md:px-56"


md__py_64 : Html.Attribute msg
md__py_64 =
    A.class "md:py-64"


md__px_64 : Html.Attribute msg
md__px_64 =
    A.class "md:px-64"


md__py_px : Html.Attribute msg
md__py_px =
    A.class "md:py-px"


md__px_px : Html.Attribute msg
md__px_px =
    A.class "md:px-px"


md__pt_0 : Html.Attribute msg
md__pt_0 =
    A.class "md:pt-0"


md__pr_0 : Html.Attribute msg
md__pr_0 =
    A.class "md:pr-0"


md__pb_0 : Html.Attribute msg
md__pb_0 =
    A.class "md:pb-0"


md__pl_0 : Html.Attribute msg
md__pl_0 =
    A.class "md:pl-0"


md__pt_1 : Html.Attribute msg
md__pt_1 =
    A.class "md:pt-1"


md__pr_1 : Html.Attribute msg
md__pr_1 =
    A.class "md:pr-1"


md__pb_1 : Html.Attribute msg
md__pb_1 =
    A.class "md:pb-1"


md__pl_1 : Html.Attribute msg
md__pl_1 =
    A.class "md:pl-1"


md__pt_2 : Html.Attribute msg
md__pt_2 =
    A.class "md:pt-2"


md__pr_2 : Html.Attribute msg
md__pr_2 =
    A.class "md:pr-2"


md__pb_2 : Html.Attribute msg
md__pb_2 =
    A.class "md:pb-2"


md__pl_2 : Html.Attribute msg
md__pl_2 =
    A.class "md:pl-2"


md__pt_3 : Html.Attribute msg
md__pt_3 =
    A.class "md:pt-3"


md__pr_3 : Html.Attribute msg
md__pr_3 =
    A.class "md:pr-3"


md__pb_3 : Html.Attribute msg
md__pb_3 =
    A.class "md:pb-3"


md__pl_3 : Html.Attribute msg
md__pl_3 =
    A.class "md:pl-3"


md__pt_4 : Html.Attribute msg
md__pt_4 =
    A.class "md:pt-4"


md__pr_4 : Html.Attribute msg
md__pr_4 =
    A.class "md:pr-4"


md__pb_4 : Html.Attribute msg
md__pb_4 =
    A.class "md:pb-4"


md__pl_4 : Html.Attribute msg
md__pl_4 =
    A.class "md:pl-4"


md__pt_5 : Html.Attribute msg
md__pt_5 =
    A.class "md:pt-5"


md__pr_5 : Html.Attribute msg
md__pr_5 =
    A.class "md:pr-5"


md__pb_5 : Html.Attribute msg
md__pb_5 =
    A.class "md:pb-5"


md__pl_5 : Html.Attribute msg
md__pl_5 =
    A.class "md:pl-5"


md__pt_6 : Html.Attribute msg
md__pt_6 =
    A.class "md:pt-6"


md__pr_6 : Html.Attribute msg
md__pr_6 =
    A.class "md:pr-6"


md__pb_6 : Html.Attribute msg
md__pb_6 =
    A.class "md:pb-6"


md__pl_6 : Html.Attribute msg
md__pl_6 =
    A.class "md:pl-6"


md__pt_8 : Html.Attribute msg
md__pt_8 =
    A.class "md:pt-8"


md__pr_8 : Html.Attribute msg
md__pr_8 =
    A.class "md:pr-8"


md__pb_8 : Html.Attribute msg
md__pb_8 =
    A.class "md:pb-8"


md__pl_8 : Html.Attribute msg
md__pl_8 =
    A.class "md:pl-8"


md__pt_10 : Html.Attribute msg
md__pt_10 =
    A.class "md:pt-10"


md__pr_10 : Html.Attribute msg
md__pr_10 =
    A.class "md:pr-10"


md__pb_10 : Html.Attribute msg
md__pb_10 =
    A.class "md:pb-10"


md__pl_10 : Html.Attribute msg
md__pl_10 =
    A.class "md:pl-10"


md__pt_12 : Html.Attribute msg
md__pt_12 =
    A.class "md:pt-12"


md__pr_12 : Html.Attribute msg
md__pr_12 =
    A.class "md:pr-12"


md__pb_12 : Html.Attribute msg
md__pb_12 =
    A.class "md:pb-12"


md__pl_12 : Html.Attribute msg
md__pl_12 =
    A.class "md:pl-12"


md__pt_16 : Html.Attribute msg
md__pt_16 =
    A.class "md:pt-16"


md__pr_16 : Html.Attribute msg
md__pr_16 =
    A.class "md:pr-16"


md__pb_16 : Html.Attribute msg
md__pb_16 =
    A.class "md:pb-16"


md__pl_16 : Html.Attribute msg
md__pl_16 =
    A.class "md:pl-16"


md__pt_20 : Html.Attribute msg
md__pt_20 =
    A.class "md:pt-20"


md__pr_20 : Html.Attribute msg
md__pr_20 =
    A.class "md:pr-20"


md__pb_20 : Html.Attribute msg
md__pb_20 =
    A.class "md:pb-20"


md__pl_20 : Html.Attribute msg
md__pl_20 =
    A.class "md:pl-20"


md__pt_24 : Html.Attribute msg
md__pt_24 =
    A.class "md:pt-24"


md__pr_24 : Html.Attribute msg
md__pr_24 =
    A.class "md:pr-24"


md__pb_24 : Html.Attribute msg
md__pb_24 =
    A.class "md:pb-24"


md__pl_24 : Html.Attribute msg
md__pl_24 =
    A.class "md:pl-24"


md__pt_32 : Html.Attribute msg
md__pt_32 =
    A.class "md:pt-32"


md__pr_32 : Html.Attribute msg
md__pr_32 =
    A.class "md:pr-32"


md__pb_32 : Html.Attribute msg
md__pb_32 =
    A.class "md:pb-32"


md__pl_32 : Html.Attribute msg
md__pl_32 =
    A.class "md:pl-32"


md__pt_40 : Html.Attribute msg
md__pt_40 =
    A.class "md:pt-40"


md__pr_40 : Html.Attribute msg
md__pr_40 =
    A.class "md:pr-40"


md__pb_40 : Html.Attribute msg
md__pb_40 =
    A.class "md:pb-40"


md__pl_40 : Html.Attribute msg
md__pl_40 =
    A.class "md:pl-40"


md__pt_48 : Html.Attribute msg
md__pt_48 =
    A.class "md:pt-48"


md__pr_48 : Html.Attribute msg
md__pr_48 =
    A.class "md:pr-48"


md__pb_48 : Html.Attribute msg
md__pb_48 =
    A.class "md:pb-48"


md__pl_48 : Html.Attribute msg
md__pl_48 =
    A.class "md:pl-48"


md__pt_56 : Html.Attribute msg
md__pt_56 =
    A.class "md:pt-56"


md__pr_56 : Html.Attribute msg
md__pr_56 =
    A.class "md:pr-56"


md__pb_56 : Html.Attribute msg
md__pb_56 =
    A.class "md:pb-56"


md__pl_56 : Html.Attribute msg
md__pl_56 =
    A.class "md:pl-56"


md__pt_64 : Html.Attribute msg
md__pt_64 =
    A.class "md:pt-64"


md__pr_64 : Html.Attribute msg
md__pr_64 =
    A.class "md:pr-64"


md__pb_64 : Html.Attribute msg
md__pb_64 =
    A.class "md:pb-64"


md__pl_64 : Html.Attribute msg
md__pl_64 =
    A.class "md:pl-64"


md__pt_px : Html.Attribute msg
md__pt_px =
    A.class "md:pt-px"


md__pr_px : Html.Attribute msg
md__pr_px =
    A.class "md:pr-px"


md__pb_px : Html.Attribute msg
md__pb_px =
    A.class "md:pb-px"


md__pl_px : Html.Attribute msg
md__pl_px =
    A.class "md:pl-px"


md__placeholder_transparent : Html.Attribute msg
md__placeholder_transparent =
    A.class "md:placeholder-transparent"


md__placeholder_black : Html.Attribute msg
md__placeholder_black =
    A.class "md:placeholder-black"


md__placeholder_white : Html.Attribute msg
md__placeholder_white =
    A.class "md:placeholder-white"


md__placeholder_gray_100 : Html.Attribute msg
md__placeholder_gray_100 =
    A.class "md:placeholder-gray-100"


md__placeholder_gray_200 : Html.Attribute msg
md__placeholder_gray_200 =
    A.class "md:placeholder-gray-200"


md__placeholder_gray_300 : Html.Attribute msg
md__placeholder_gray_300 =
    A.class "md:placeholder-gray-300"


md__placeholder_gray_400 : Html.Attribute msg
md__placeholder_gray_400 =
    A.class "md:placeholder-gray-400"


md__placeholder_gray_500 : Html.Attribute msg
md__placeholder_gray_500 =
    A.class "md:placeholder-gray-500"


md__placeholder_gray_600 : Html.Attribute msg
md__placeholder_gray_600 =
    A.class "md:placeholder-gray-600"


md__placeholder_gray_700 : Html.Attribute msg
md__placeholder_gray_700 =
    A.class "md:placeholder-gray-700"


md__placeholder_gray_800 : Html.Attribute msg
md__placeholder_gray_800 =
    A.class "md:placeholder-gray-800"


md__placeholder_gray_900 : Html.Attribute msg
md__placeholder_gray_900 =
    A.class "md:placeholder-gray-900"


md__placeholder_red_100 : Html.Attribute msg
md__placeholder_red_100 =
    A.class "md:placeholder-red-100"


md__placeholder_red_200 : Html.Attribute msg
md__placeholder_red_200 =
    A.class "md:placeholder-red-200"


md__placeholder_red_300 : Html.Attribute msg
md__placeholder_red_300 =
    A.class "md:placeholder-red-300"


md__placeholder_red_400 : Html.Attribute msg
md__placeholder_red_400 =
    A.class "md:placeholder-red-400"


md__placeholder_red_500 : Html.Attribute msg
md__placeholder_red_500 =
    A.class "md:placeholder-red-500"


md__placeholder_red_600 : Html.Attribute msg
md__placeholder_red_600 =
    A.class "md:placeholder-red-600"


md__placeholder_red_700 : Html.Attribute msg
md__placeholder_red_700 =
    A.class "md:placeholder-red-700"


md__placeholder_red_800 : Html.Attribute msg
md__placeholder_red_800 =
    A.class "md:placeholder-red-800"


md__placeholder_red_900 : Html.Attribute msg
md__placeholder_red_900 =
    A.class "md:placeholder-red-900"


md__placeholder_orange_100 : Html.Attribute msg
md__placeholder_orange_100 =
    A.class "md:placeholder-orange-100"


md__placeholder_orange_200 : Html.Attribute msg
md__placeholder_orange_200 =
    A.class "md:placeholder-orange-200"


md__placeholder_orange_300 : Html.Attribute msg
md__placeholder_orange_300 =
    A.class "md:placeholder-orange-300"


md__placeholder_orange_400 : Html.Attribute msg
md__placeholder_orange_400 =
    A.class "md:placeholder-orange-400"


md__placeholder_orange_500 : Html.Attribute msg
md__placeholder_orange_500 =
    A.class "md:placeholder-orange-500"


md__placeholder_orange_600 : Html.Attribute msg
md__placeholder_orange_600 =
    A.class "md:placeholder-orange-600"


md__placeholder_orange_700 : Html.Attribute msg
md__placeholder_orange_700 =
    A.class "md:placeholder-orange-700"


md__placeholder_orange_800 : Html.Attribute msg
md__placeholder_orange_800 =
    A.class "md:placeholder-orange-800"


md__placeholder_orange_900 : Html.Attribute msg
md__placeholder_orange_900 =
    A.class "md:placeholder-orange-900"


md__placeholder_yellow_100 : Html.Attribute msg
md__placeholder_yellow_100 =
    A.class "md:placeholder-yellow-100"


md__placeholder_yellow_200 : Html.Attribute msg
md__placeholder_yellow_200 =
    A.class "md:placeholder-yellow-200"


md__placeholder_yellow_300 : Html.Attribute msg
md__placeholder_yellow_300 =
    A.class "md:placeholder-yellow-300"


md__placeholder_yellow_400 : Html.Attribute msg
md__placeholder_yellow_400 =
    A.class "md:placeholder-yellow-400"


md__placeholder_yellow_500 : Html.Attribute msg
md__placeholder_yellow_500 =
    A.class "md:placeholder-yellow-500"


md__placeholder_yellow_600 : Html.Attribute msg
md__placeholder_yellow_600 =
    A.class "md:placeholder-yellow-600"


md__placeholder_yellow_700 : Html.Attribute msg
md__placeholder_yellow_700 =
    A.class "md:placeholder-yellow-700"


md__placeholder_yellow_800 : Html.Attribute msg
md__placeholder_yellow_800 =
    A.class "md:placeholder-yellow-800"


md__placeholder_yellow_900 : Html.Attribute msg
md__placeholder_yellow_900 =
    A.class "md:placeholder-yellow-900"


md__placeholder_green_100 : Html.Attribute msg
md__placeholder_green_100 =
    A.class "md:placeholder-green-100"


md__placeholder_green_200 : Html.Attribute msg
md__placeholder_green_200 =
    A.class "md:placeholder-green-200"


md__placeholder_green_300 : Html.Attribute msg
md__placeholder_green_300 =
    A.class "md:placeholder-green-300"


md__placeholder_green_400 : Html.Attribute msg
md__placeholder_green_400 =
    A.class "md:placeholder-green-400"


md__placeholder_green_500 : Html.Attribute msg
md__placeholder_green_500 =
    A.class "md:placeholder-green-500"


md__placeholder_green_600 : Html.Attribute msg
md__placeholder_green_600 =
    A.class "md:placeholder-green-600"


md__placeholder_green_700 : Html.Attribute msg
md__placeholder_green_700 =
    A.class "md:placeholder-green-700"


md__placeholder_green_800 : Html.Attribute msg
md__placeholder_green_800 =
    A.class "md:placeholder-green-800"


md__placeholder_green_900 : Html.Attribute msg
md__placeholder_green_900 =
    A.class "md:placeholder-green-900"


md__placeholder_teal_100 : Html.Attribute msg
md__placeholder_teal_100 =
    A.class "md:placeholder-teal-100"


md__placeholder_teal_200 : Html.Attribute msg
md__placeholder_teal_200 =
    A.class "md:placeholder-teal-200"


md__placeholder_teal_300 : Html.Attribute msg
md__placeholder_teal_300 =
    A.class "md:placeholder-teal-300"


md__placeholder_teal_400 : Html.Attribute msg
md__placeholder_teal_400 =
    A.class "md:placeholder-teal-400"


md__placeholder_teal_500 : Html.Attribute msg
md__placeholder_teal_500 =
    A.class "md:placeholder-teal-500"


md__placeholder_teal_600 : Html.Attribute msg
md__placeholder_teal_600 =
    A.class "md:placeholder-teal-600"


md__placeholder_teal_700 : Html.Attribute msg
md__placeholder_teal_700 =
    A.class "md:placeholder-teal-700"


md__placeholder_teal_800 : Html.Attribute msg
md__placeholder_teal_800 =
    A.class "md:placeholder-teal-800"


md__placeholder_teal_900 : Html.Attribute msg
md__placeholder_teal_900 =
    A.class "md:placeholder-teal-900"


md__placeholder_blue_100 : Html.Attribute msg
md__placeholder_blue_100 =
    A.class "md:placeholder-blue-100"


md__placeholder_blue_200 : Html.Attribute msg
md__placeholder_blue_200 =
    A.class "md:placeholder-blue-200"


md__placeholder_blue_300 : Html.Attribute msg
md__placeholder_blue_300 =
    A.class "md:placeholder-blue-300"


md__placeholder_blue_400 : Html.Attribute msg
md__placeholder_blue_400 =
    A.class "md:placeholder-blue-400"


md__placeholder_blue_500 : Html.Attribute msg
md__placeholder_blue_500 =
    A.class "md:placeholder-blue-500"


md__placeholder_blue_600 : Html.Attribute msg
md__placeholder_blue_600 =
    A.class "md:placeholder-blue-600"


md__placeholder_blue_700 : Html.Attribute msg
md__placeholder_blue_700 =
    A.class "md:placeholder-blue-700"


md__placeholder_blue_800 : Html.Attribute msg
md__placeholder_blue_800 =
    A.class "md:placeholder-blue-800"


md__placeholder_blue_900 : Html.Attribute msg
md__placeholder_blue_900 =
    A.class "md:placeholder-blue-900"


md__placeholder_indigo_100 : Html.Attribute msg
md__placeholder_indigo_100 =
    A.class "md:placeholder-indigo-100"


md__placeholder_indigo_200 : Html.Attribute msg
md__placeholder_indigo_200 =
    A.class "md:placeholder-indigo-200"


md__placeholder_indigo_300 : Html.Attribute msg
md__placeholder_indigo_300 =
    A.class "md:placeholder-indigo-300"


md__placeholder_indigo_400 : Html.Attribute msg
md__placeholder_indigo_400 =
    A.class "md:placeholder-indigo-400"


md__placeholder_indigo_500 : Html.Attribute msg
md__placeholder_indigo_500 =
    A.class "md:placeholder-indigo-500"


md__placeholder_indigo_600 : Html.Attribute msg
md__placeholder_indigo_600 =
    A.class "md:placeholder-indigo-600"


md__placeholder_indigo_700 : Html.Attribute msg
md__placeholder_indigo_700 =
    A.class "md:placeholder-indigo-700"


md__placeholder_indigo_800 : Html.Attribute msg
md__placeholder_indigo_800 =
    A.class "md:placeholder-indigo-800"


md__placeholder_indigo_900 : Html.Attribute msg
md__placeholder_indigo_900 =
    A.class "md:placeholder-indigo-900"


md__placeholder_purple_100 : Html.Attribute msg
md__placeholder_purple_100 =
    A.class "md:placeholder-purple-100"


md__placeholder_purple_200 : Html.Attribute msg
md__placeholder_purple_200 =
    A.class "md:placeholder-purple-200"


md__placeholder_purple_300 : Html.Attribute msg
md__placeholder_purple_300 =
    A.class "md:placeholder-purple-300"


md__placeholder_purple_400 : Html.Attribute msg
md__placeholder_purple_400 =
    A.class "md:placeholder-purple-400"


md__placeholder_purple_500 : Html.Attribute msg
md__placeholder_purple_500 =
    A.class "md:placeholder-purple-500"


md__placeholder_purple_600 : Html.Attribute msg
md__placeholder_purple_600 =
    A.class "md:placeholder-purple-600"


md__placeholder_purple_700 : Html.Attribute msg
md__placeholder_purple_700 =
    A.class "md:placeholder-purple-700"


md__placeholder_purple_800 : Html.Attribute msg
md__placeholder_purple_800 =
    A.class "md:placeholder-purple-800"


md__placeholder_purple_900 : Html.Attribute msg
md__placeholder_purple_900 =
    A.class "md:placeholder-purple-900"


md__placeholder_pink_100 : Html.Attribute msg
md__placeholder_pink_100 =
    A.class "md:placeholder-pink-100"


md__placeholder_pink_200 : Html.Attribute msg
md__placeholder_pink_200 =
    A.class "md:placeholder-pink-200"


md__placeholder_pink_300 : Html.Attribute msg
md__placeholder_pink_300 =
    A.class "md:placeholder-pink-300"


md__placeholder_pink_400 : Html.Attribute msg
md__placeholder_pink_400 =
    A.class "md:placeholder-pink-400"


md__placeholder_pink_500 : Html.Attribute msg
md__placeholder_pink_500 =
    A.class "md:placeholder-pink-500"


md__placeholder_pink_600 : Html.Attribute msg
md__placeholder_pink_600 =
    A.class "md:placeholder-pink-600"


md__placeholder_pink_700 : Html.Attribute msg
md__placeholder_pink_700 =
    A.class "md:placeholder-pink-700"


md__placeholder_pink_800 : Html.Attribute msg
md__placeholder_pink_800 =
    A.class "md:placeholder-pink-800"


md__placeholder_pink_900 : Html.Attribute msg
md__placeholder_pink_900 =
    A.class "md:placeholder-pink-900"


md__focus__placeholder_transparent__focus : Html.Attribute msg
md__focus__placeholder_transparent__focus =
    A.class "md:focus:placeholder-transparent:focus"


md__focus__placeholder_black__focus : Html.Attribute msg
md__focus__placeholder_black__focus =
    A.class "md:focus:placeholder-black:focus"


md__focus__placeholder_white__focus : Html.Attribute msg
md__focus__placeholder_white__focus =
    A.class "md:focus:placeholder-white:focus"


md__focus__placeholder_gray_100__focus : Html.Attribute msg
md__focus__placeholder_gray_100__focus =
    A.class "md:focus:placeholder-gray-100:focus"


md__focus__placeholder_gray_200__focus : Html.Attribute msg
md__focus__placeholder_gray_200__focus =
    A.class "md:focus:placeholder-gray-200:focus"


md__focus__placeholder_gray_300__focus : Html.Attribute msg
md__focus__placeholder_gray_300__focus =
    A.class "md:focus:placeholder-gray-300:focus"


md__focus__placeholder_gray_400__focus : Html.Attribute msg
md__focus__placeholder_gray_400__focus =
    A.class "md:focus:placeholder-gray-400:focus"


md__focus__placeholder_gray_500__focus : Html.Attribute msg
md__focus__placeholder_gray_500__focus =
    A.class "md:focus:placeholder-gray-500:focus"


md__focus__placeholder_gray_600__focus : Html.Attribute msg
md__focus__placeholder_gray_600__focus =
    A.class "md:focus:placeholder-gray-600:focus"


md__focus__placeholder_gray_700__focus : Html.Attribute msg
md__focus__placeholder_gray_700__focus =
    A.class "md:focus:placeholder-gray-700:focus"


md__focus__placeholder_gray_800__focus : Html.Attribute msg
md__focus__placeholder_gray_800__focus =
    A.class "md:focus:placeholder-gray-800:focus"


md__focus__placeholder_gray_900__focus : Html.Attribute msg
md__focus__placeholder_gray_900__focus =
    A.class "md:focus:placeholder-gray-900:focus"


md__focus__placeholder_red_100__focus : Html.Attribute msg
md__focus__placeholder_red_100__focus =
    A.class "md:focus:placeholder-red-100:focus"


md__focus__placeholder_red_200__focus : Html.Attribute msg
md__focus__placeholder_red_200__focus =
    A.class "md:focus:placeholder-red-200:focus"


md__focus__placeholder_red_300__focus : Html.Attribute msg
md__focus__placeholder_red_300__focus =
    A.class "md:focus:placeholder-red-300:focus"


md__focus__placeholder_red_400__focus : Html.Attribute msg
md__focus__placeholder_red_400__focus =
    A.class "md:focus:placeholder-red-400:focus"


md__focus__placeholder_red_500__focus : Html.Attribute msg
md__focus__placeholder_red_500__focus =
    A.class "md:focus:placeholder-red-500:focus"


md__focus__placeholder_red_600__focus : Html.Attribute msg
md__focus__placeholder_red_600__focus =
    A.class "md:focus:placeholder-red-600:focus"


md__focus__placeholder_red_700__focus : Html.Attribute msg
md__focus__placeholder_red_700__focus =
    A.class "md:focus:placeholder-red-700:focus"


md__focus__placeholder_red_800__focus : Html.Attribute msg
md__focus__placeholder_red_800__focus =
    A.class "md:focus:placeholder-red-800:focus"


md__focus__placeholder_red_900__focus : Html.Attribute msg
md__focus__placeholder_red_900__focus =
    A.class "md:focus:placeholder-red-900:focus"


md__focus__placeholder_orange_100__focus : Html.Attribute msg
md__focus__placeholder_orange_100__focus =
    A.class "md:focus:placeholder-orange-100:focus"


md__focus__placeholder_orange_200__focus : Html.Attribute msg
md__focus__placeholder_orange_200__focus =
    A.class "md:focus:placeholder-orange-200:focus"


md__focus__placeholder_orange_300__focus : Html.Attribute msg
md__focus__placeholder_orange_300__focus =
    A.class "md:focus:placeholder-orange-300:focus"


md__focus__placeholder_orange_400__focus : Html.Attribute msg
md__focus__placeholder_orange_400__focus =
    A.class "md:focus:placeholder-orange-400:focus"


md__focus__placeholder_orange_500__focus : Html.Attribute msg
md__focus__placeholder_orange_500__focus =
    A.class "md:focus:placeholder-orange-500:focus"


md__focus__placeholder_orange_600__focus : Html.Attribute msg
md__focus__placeholder_orange_600__focus =
    A.class "md:focus:placeholder-orange-600:focus"


md__focus__placeholder_orange_700__focus : Html.Attribute msg
md__focus__placeholder_orange_700__focus =
    A.class "md:focus:placeholder-orange-700:focus"


md__focus__placeholder_orange_800__focus : Html.Attribute msg
md__focus__placeholder_orange_800__focus =
    A.class "md:focus:placeholder-orange-800:focus"


md__focus__placeholder_orange_900__focus : Html.Attribute msg
md__focus__placeholder_orange_900__focus =
    A.class "md:focus:placeholder-orange-900:focus"


md__focus__placeholder_yellow_100__focus : Html.Attribute msg
md__focus__placeholder_yellow_100__focus =
    A.class "md:focus:placeholder-yellow-100:focus"


md__focus__placeholder_yellow_200__focus : Html.Attribute msg
md__focus__placeholder_yellow_200__focus =
    A.class "md:focus:placeholder-yellow-200:focus"


md__focus__placeholder_yellow_300__focus : Html.Attribute msg
md__focus__placeholder_yellow_300__focus =
    A.class "md:focus:placeholder-yellow-300:focus"


md__focus__placeholder_yellow_400__focus : Html.Attribute msg
md__focus__placeholder_yellow_400__focus =
    A.class "md:focus:placeholder-yellow-400:focus"


md__focus__placeholder_yellow_500__focus : Html.Attribute msg
md__focus__placeholder_yellow_500__focus =
    A.class "md:focus:placeholder-yellow-500:focus"


md__focus__placeholder_yellow_600__focus : Html.Attribute msg
md__focus__placeholder_yellow_600__focus =
    A.class "md:focus:placeholder-yellow-600:focus"


md__focus__placeholder_yellow_700__focus : Html.Attribute msg
md__focus__placeholder_yellow_700__focus =
    A.class "md:focus:placeholder-yellow-700:focus"


md__focus__placeholder_yellow_800__focus : Html.Attribute msg
md__focus__placeholder_yellow_800__focus =
    A.class "md:focus:placeholder-yellow-800:focus"


md__focus__placeholder_yellow_900__focus : Html.Attribute msg
md__focus__placeholder_yellow_900__focus =
    A.class "md:focus:placeholder-yellow-900:focus"


md__focus__placeholder_green_100__focus : Html.Attribute msg
md__focus__placeholder_green_100__focus =
    A.class "md:focus:placeholder-green-100:focus"


md__focus__placeholder_green_200__focus : Html.Attribute msg
md__focus__placeholder_green_200__focus =
    A.class "md:focus:placeholder-green-200:focus"


md__focus__placeholder_green_300__focus : Html.Attribute msg
md__focus__placeholder_green_300__focus =
    A.class "md:focus:placeholder-green-300:focus"


md__focus__placeholder_green_400__focus : Html.Attribute msg
md__focus__placeholder_green_400__focus =
    A.class "md:focus:placeholder-green-400:focus"


md__focus__placeholder_green_500__focus : Html.Attribute msg
md__focus__placeholder_green_500__focus =
    A.class "md:focus:placeholder-green-500:focus"


md__focus__placeholder_green_600__focus : Html.Attribute msg
md__focus__placeholder_green_600__focus =
    A.class "md:focus:placeholder-green-600:focus"


md__focus__placeholder_green_700__focus : Html.Attribute msg
md__focus__placeholder_green_700__focus =
    A.class "md:focus:placeholder-green-700:focus"


md__focus__placeholder_green_800__focus : Html.Attribute msg
md__focus__placeholder_green_800__focus =
    A.class "md:focus:placeholder-green-800:focus"


md__focus__placeholder_green_900__focus : Html.Attribute msg
md__focus__placeholder_green_900__focus =
    A.class "md:focus:placeholder-green-900:focus"


md__focus__placeholder_teal_100__focus : Html.Attribute msg
md__focus__placeholder_teal_100__focus =
    A.class "md:focus:placeholder-teal-100:focus"


md__focus__placeholder_teal_200__focus : Html.Attribute msg
md__focus__placeholder_teal_200__focus =
    A.class "md:focus:placeholder-teal-200:focus"


md__focus__placeholder_teal_300__focus : Html.Attribute msg
md__focus__placeholder_teal_300__focus =
    A.class "md:focus:placeholder-teal-300:focus"


md__focus__placeholder_teal_400__focus : Html.Attribute msg
md__focus__placeholder_teal_400__focus =
    A.class "md:focus:placeholder-teal-400:focus"


md__focus__placeholder_teal_500__focus : Html.Attribute msg
md__focus__placeholder_teal_500__focus =
    A.class "md:focus:placeholder-teal-500:focus"


md__focus__placeholder_teal_600__focus : Html.Attribute msg
md__focus__placeholder_teal_600__focus =
    A.class "md:focus:placeholder-teal-600:focus"


md__focus__placeholder_teal_700__focus : Html.Attribute msg
md__focus__placeholder_teal_700__focus =
    A.class "md:focus:placeholder-teal-700:focus"


md__focus__placeholder_teal_800__focus : Html.Attribute msg
md__focus__placeholder_teal_800__focus =
    A.class "md:focus:placeholder-teal-800:focus"


md__focus__placeholder_teal_900__focus : Html.Attribute msg
md__focus__placeholder_teal_900__focus =
    A.class "md:focus:placeholder-teal-900:focus"


md__focus__placeholder_blue_100__focus : Html.Attribute msg
md__focus__placeholder_blue_100__focus =
    A.class "md:focus:placeholder-blue-100:focus"


md__focus__placeholder_blue_200__focus : Html.Attribute msg
md__focus__placeholder_blue_200__focus =
    A.class "md:focus:placeholder-blue-200:focus"


md__focus__placeholder_blue_300__focus : Html.Attribute msg
md__focus__placeholder_blue_300__focus =
    A.class "md:focus:placeholder-blue-300:focus"


md__focus__placeholder_blue_400__focus : Html.Attribute msg
md__focus__placeholder_blue_400__focus =
    A.class "md:focus:placeholder-blue-400:focus"


md__focus__placeholder_blue_500__focus : Html.Attribute msg
md__focus__placeholder_blue_500__focus =
    A.class "md:focus:placeholder-blue-500:focus"


md__focus__placeholder_blue_600__focus : Html.Attribute msg
md__focus__placeholder_blue_600__focus =
    A.class "md:focus:placeholder-blue-600:focus"


md__focus__placeholder_blue_700__focus : Html.Attribute msg
md__focus__placeholder_blue_700__focus =
    A.class "md:focus:placeholder-blue-700:focus"


md__focus__placeholder_blue_800__focus : Html.Attribute msg
md__focus__placeholder_blue_800__focus =
    A.class "md:focus:placeholder-blue-800:focus"


md__focus__placeholder_blue_900__focus : Html.Attribute msg
md__focus__placeholder_blue_900__focus =
    A.class "md:focus:placeholder-blue-900:focus"


md__focus__placeholder_indigo_100__focus : Html.Attribute msg
md__focus__placeholder_indigo_100__focus =
    A.class "md:focus:placeholder-indigo-100:focus"


md__focus__placeholder_indigo_200__focus : Html.Attribute msg
md__focus__placeholder_indigo_200__focus =
    A.class "md:focus:placeholder-indigo-200:focus"


md__focus__placeholder_indigo_300__focus : Html.Attribute msg
md__focus__placeholder_indigo_300__focus =
    A.class "md:focus:placeholder-indigo-300:focus"


md__focus__placeholder_indigo_400__focus : Html.Attribute msg
md__focus__placeholder_indigo_400__focus =
    A.class "md:focus:placeholder-indigo-400:focus"


md__focus__placeholder_indigo_500__focus : Html.Attribute msg
md__focus__placeholder_indigo_500__focus =
    A.class "md:focus:placeholder-indigo-500:focus"


md__focus__placeholder_indigo_600__focus : Html.Attribute msg
md__focus__placeholder_indigo_600__focus =
    A.class "md:focus:placeholder-indigo-600:focus"


md__focus__placeholder_indigo_700__focus : Html.Attribute msg
md__focus__placeholder_indigo_700__focus =
    A.class "md:focus:placeholder-indigo-700:focus"


md__focus__placeholder_indigo_800__focus : Html.Attribute msg
md__focus__placeholder_indigo_800__focus =
    A.class "md:focus:placeholder-indigo-800:focus"


md__focus__placeholder_indigo_900__focus : Html.Attribute msg
md__focus__placeholder_indigo_900__focus =
    A.class "md:focus:placeholder-indigo-900:focus"


md__focus__placeholder_purple_100__focus : Html.Attribute msg
md__focus__placeholder_purple_100__focus =
    A.class "md:focus:placeholder-purple-100:focus"


md__focus__placeholder_purple_200__focus : Html.Attribute msg
md__focus__placeholder_purple_200__focus =
    A.class "md:focus:placeholder-purple-200:focus"


md__focus__placeholder_purple_300__focus : Html.Attribute msg
md__focus__placeholder_purple_300__focus =
    A.class "md:focus:placeholder-purple-300:focus"


md__focus__placeholder_purple_400__focus : Html.Attribute msg
md__focus__placeholder_purple_400__focus =
    A.class "md:focus:placeholder-purple-400:focus"


md__focus__placeholder_purple_500__focus : Html.Attribute msg
md__focus__placeholder_purple_500__focus =
    A.class "md:focus:placeholder-purple-500:focus"


md__focus__placeholder_purple_600__focus : Html.Attribute msg
md__focus__placeholder_purple_600__focus =
    A.class "md:focus:placeholder-purple-600:focus"


md__focus__placeholder_purple_700__focus : Html.Attribute msg
md__focus__placeholder_purple_700__focus =
    A.class "md:focus:placeholder-purple-700:focus"


md__focus__placeholder_purple_800__focus : Html.Attribute msg
md__focus__placeholder_purple_800__focus =
    A.class "md:focus:placeholder-purple-800:focus"


md__focus__placeholder_purple_900__focus : Html.Attribute msg
md__focus__placeholder_purple_900__focus =
    A.class "md:focus:placeholder-purple-900:focus"


md__focus__placeholder_pink_100__focus : Html.Attribute msg
md__focus__placeholder_pink_100__focus =
    A.class "md:focus:placeholder-pink-100:focus"


md__focus__placeholder_pink_200__focus : Html.Attribute msg
md__focus__placeholder_pink_200__focus =
    A.class "md:focus:placeholder-pink-200:focus"


md__focus__placeholder_pink_300__focus : Html.Attribute msg
md__focus__placeholder_pink_300__focus =
    A.class "md:focus:placeholder-pink-300:focus"


md__focus__placeholder_pink_400__focus : Html.Attribute msg
md__focus__placeholder_pink_400__focus =
    A.class "md:focus:placeholder-pink-400:focus"


md__focus__placeholder_pink_500__focus : Html.Attribute msg
md__focus__placeholder_pink_500__focus =
    A.class "md:focus:placeholder-pink-500:focus"


md__focus__placeholder_pink_600__focus : Html.Attribute msg
md__focus__placeholder_pink_600__focus =
    A.class "md:focus:placeholder-pink-600:focus"


md__focus__placeholder_pink_700__focus : Html.Attribute msg
md__focus__placeholder_pink_700__focus =
    A.class "md:focus:placeholder-pink-700:focus"


md__focus__placeholder_pink_800__focus : Html.Attribute msg
md__focus__placeholder_pink_800__focus =
    A.class "md:focus:placeholder-pink-800:focus"


md__focus__placeholder_pink_900__focus : Html.Attribute msg
md__focus__placeholder_pink_900__focus =
    A.class "md:focus:placeholder-pink-900:focus"


md__pointer_events_none : Html.Attribute msg
md__pointer_events_none =
    A.class "md:pointer-events-none"


md__pointer_events_auto : Html.Attribute msg
md__pointer_events_auto =
    A.class "md:pointer-events-auto"


md__static : Html.Attribute msg
md__static =
    A.class "md:static"


md__fixed : Html.Attribute msg
md__fixed =
    A.class "md:fixed"


md__absolute : Html.Attribute msg
md__absolute =
    A.class "md:absolute"


md__relative : Html.Attribute msg
md__relative =
    A.class "md:relative"


md__sticky : Html.Attribute msg
md__sticky =
    A.class "md:sticky"


md__inset_0 : Html.Attribute msg
md__inset_0 =
    A.class "md:inset-0"


md__inset_auto : Html.Attribute msg
md__inset_auto =
    A.class "md:inset-auto"


md__inset_y_0 : Html.Attribute msg
md__inset_y_0 =
    A.class "md:inset-y-0"


md__inset_x_0 : Html.Attribute msg
md__inset_x_0 =
    A.class "md:inset-x-0"


md__inset_y_auto : Html.Attribute msg
md__inset_y_auto =
    A.class "md:inset-y-auto"


md__inset_x_auto : Html.Attribute msg
md__inset_x_auto =
    A.class "md:inset-x-auto"


md__top_0 : Html.Attribute msg
md__top_0 =
    A.class "md:top-0"


md__right_0 : Html.Attribute msg
md__right_0 =
    A.class "md:right-0"


md__bottom_0 : Html.Attribute msg
md__bottom_0 =
    A.class "md:bottom-0"


md__left_0 : Html.Attribute msg
md__left_0 =
    A.class "md:left-0"


md__top_auto : Html.Attribute msg
md__top_auto =
    A.class "md:top-auto"


md__right_auto : Html.Attribute msg
md__right_auto =
    A.class "md:right-auto"


md__bottom_auto : Html.Attribute msg
md__bottom_auto =
    A.class "md:bottom-auto"


md__left_auto : Html.Attribute msg
md__left_auto =
    A.class "md:left-auto"


md__resize_none : Html.Attribute msg
md__resize_none =
    A.class "md:resize-none"


md__resize_y : Html.Attribute msg
md__resize_y =
    A.class "md:resize-y"


md__resize_x : Html.Attribute msg
md__resize_x =
    A.class "md:resize-x"


md__resize : Html.Attribute msg
md__resize =
    A.class "md:resize"


md__shadow_xs : Html.Attribute msg
md__shadow_xs =
    A.class "md:shadow-xs"


md__shadow_sm : Html.Attribute msg
md__shadow_sm =
    A.class "md:shadow-sm"


md__shadow : Html.Attribute msg
md__shadow =
    A.class "md:shadow"


md__shadow_md : Html.Attribute msg
md__shadow_md =
    A.class "md:shadow-md"


md__shadow_lg : Html.Attribute msg
md__shadow_lg =
    A.class "md:shadow-lg"


md__shadow_xl : Html.Attribute msg
md__shadow_xl =
    A.class "md:shadow-xl"


md__shadow_2xl : Html.Attribute msg
md__shadow_2xl =
    A.class "md:shadow-2xl"


md__shadow_inner : Html.Attribute msg
md__shadow_inner =
    A.class "md:shadow-inner"


md__shadow_outline : Html.Attribute msg
md__shadow_outline =
    A.class "md:shadow-outline"


md__shadow_none : Html.Attribute msg
md__shadow_none =
    A.class "md:shadow-none"


md__hover__shadow_xs : Html.Attribute msg
md__hover__shadow_xs =
    A.class "md:hover:shadow-xs"


md__hover__shadow_sm : Html.Attribute msg
md__hover__shadow_sm =
    A.class "md:hover:shadow-sm"


md__hover__shadow : Html.Attribute msg
md__hover__shadow =
    A.class "md:hover:shadow"


md__hover__shadow_md : Html.Attribute msg
md__hover__shadow_md =
    A.class "md:hover:shadow-md"


md__hover__shadow_lg : Html.Attribute msg
md__hover__shadow_lg =
    A.class "md:hover:shadow-lg"


md__hover__shadow_xl : Html.Attribute msg
md__hover__shadow_xl =
    A.class "md:hover:shadow-xl"


md__hover__shadow_2xl : Html.Attribute msg
md__hover__shadow_2xl =
    A.class "md:hover:shadow-2xl"


md__hover__shadow_inner : Html.Attribute msg
md__hover__shadow_inner =
    A.class "md:hover:shadow-inner"


md__hover__shadow_outline : Html.Attribute msg
md__hover__shadow_outline =
    A.class "md:hover:shadow-outline"


md__hover__shadow_none : Html.Attribute msg
md__hover__shadow_none =
    A.class "md:hover:shadow-none"


md__focus__shadow_xs : Html.Attribute msg
md__focus__shadow_xs =
    A.class "md:focus:shadow-xs"


md__focus__shadow_sm : Html.Attribute msg
md__focus__shadow_sm =
    A.class "md:focus:shadow-sm"


md__focus__shadow : Html.Attribute msg
md__focus__shadow =
    A.class "md:focus:shadow"


md__focus__shadow_md : Html.Attribute msg
md__focus__shadow_md =
    A.class "md:focus:shadow-md"


md__focus__shadow_lg : Html.Attribute msg
md__focus__shadow_lg =
    A.class "md:focus:shadow-lg"


md__focus__shadow_xl : Html.Attribute msg
md__focus__shadow_xl =
    A.class "md:focus:shadow-xl"


md__focus__shadow_2xl : Html.Attribute msg
md__focus__shadow_2xl =
    A.class "md:focus:shadow-2xl"


md__focus__shadow_inner : Html.Attribute msg
md__focus__shadow_inner =
    A.class "md:focus:shadow-inner"


md__focus__shadow_outline : Html.Attribute msg
md__focus__shadow_outline =
    A.class "md:focus:shadow-outline"


md__focus__shadow_none : Html.Attribute msg
md__focus__shadow_none =
    A.class "md:focus:shadow-none"


md__fill_current : Html.Attribute msg
md__fill_current =
    A.class "md:fill-current"


md__stroke_current : Html.Attribute msg
md__stroke_current =
    A.class "md:stroke-current"


md__stroke_0 : Html.Attribute msg
md__stroke_0 =
    A.class "md:stroke-0"


md__stroke_1 : Html.Attribute msg
md__stroke_1 =
    A.class "md:stroke-1"


md__stroke_2 : Html.Attribute msg
md__stroke_2 =
    A.class "md:stroke-2"


md__table_auto : Html.Attribute msg
md__table_auto =
    A.class "md:table-auto"


md__table_fixed : Html.Attribute msg
md__table_fixed =
    A.class "md:table-fixed"


md__text_left : Html.Attribute msg
md__text_left =
    A.class "md:text-left"


md__text_center : Html.Attribute msg
md__text_center =
    A.class "md:text-center"


md__text_right : Html.Attribute msg
md__text_right =
    A.class "md:text-right"


md__text_justify : Html.Attribute msg
md__text_justify =
    A.class "md:text-justify"


md__text_transparent : Html.Attribute msg
md__text_transparent =
    A.class "md:text-transparent"


md__text_black : Html.Attribute msg
md__text_black =
    A.class "md:text-black"


md__text_white : Html.Attribute msg
md__text_white =
    A.class "md:text-white"


md__text_gray_100 : Html.Attribute msg
md__text_gray_100 =
    A.class "md:text-gray-100"


md__text_gray_200 : Html.Attribute msg
md__text_gray_200 =
    A.class "md:text-gray-200"


md__text_gray_300 : Html.Attribute msg
md__text_gray_300 =
    A.class "md:text-gray-300"


md__text_gray_400 : Html.Attribute msg
md__text_gray_400 =
    A.class "md:text-gray-400"


md__text_gray_500 : Html.Attribute msg
md__text_gray_500 =
    A.class "md:text-gray-500"


md__text_gray_600 : Html.Attribute msg
md__text_gray_600 =
    A.class "md:text-gray-600"


md__text_gray_700 : Html.Attribute msg
md__text_gray_700 =
    A.class "md:text-gray-700"


md__text_gray_800 : Html.Attribute msg
md__text_gray_800 =
    A.class "md:text-gray-800"


md__text_gray_900 : Html.Attribute msg
md__text_gray_900 =
    A.class "md:text-gray-900"


md__text_red_100 : Html.Attribute msg
md__text_red_100 =
    A.class "md:text-red-100"


md__text_red_200 : Html.Attribute msg
md__text_red_200 =
    A.class "md:text-red-200"


md__text_red_300 : Html.Attribute msg
md__text_red_300 =
    A.class "md:text-red-300"


md__text_red_400 : Html.Attribute msg
md__text_red_400 =
    A.class "md:text-red-400"


md__text_red_500 : Html.Attribute msg
md__text_red_500 =
    A.class "md:text-red-500"


md__text_red_600 : Html.Attribute msg
md__text_red_600 =
    A.class "md:text-red-600"


md__text_red_700 : Html.Attribute msg
md__text_red_700 =
    A.class "md:text-red-700"


md__text_red_800 : Html.Attribute msg
md__text_red_800 =
    A.class "md:text-red-800"


md__text_red_900 : Html.Attribute msg
md__text_red_900 =
    A.class "md:text-red-900"


md__text_orange_100 : Html.Attribute msg
md__text_orange_100 =
    A.class "md:text-orange-100"


md__text_orange_200 : Html.Attribute msg
md__text_orange_200 =
    A.class "md:text-orange-200"


md__text_orange_300 : Html.Attribute msg
md__text_orange_300 =
    A.class "md:text-orange-300"


md__text_orange_400 : Html.Attribute msg
md__text_orange_400 =
    A.class "md:text-orange-400"


md__text_orange_500 : Html.Attribute msg
md__text_orange_500 =
    A.class "md:text-orange-500"


md__text_orange_600 : Html.Attribute msg
md__text_orange_600 =
    A.class "md:text-orange-600"


md__text_orange_700 : Html.Attribute msg
md__text_orange_700 =
    A.class "md:text-orange-700"


md__text_orange_800 : Html.Attribute msg
md__text_orange_800 =
    A.class "md:text-orange-800"


md__text_orange_900 : Html.Attribute msg
md__text_orange_900 =
    A.class "md:text-orange-900"


md__text_yellow_100 : Html.Attribute msg
md__text_yellow_100 =
    A.class "md:text-yellow-100"


md__text_yellow_200 : Html.Attribute msg
md__text_yellow_200 =
    A.class "md:text-yellow-200"


md__text_yellow_300 : Html.Attribute msg
md__text_yellow_300 =
    A.class "md:text-yellow-300"


md__text_yellow_400 : Html.Attribute msg
md__text_yellow_400 =
    A.class "md:text-yellow-400"


md__text_yellow_500 : Html.Attribute msg
md__text_yellow_500 =
    A.class "md:text-yellow-500"


md__text_yellow_600 : Html.Attribute msg
md__text_yellow_600 =
    A.class "md:text-yellow-600"


md__text_yellow_700 : Html.Attribute msg
md__text_yellow_700 =
    A.class "md:text-yellow-700"


md__text_yellow_800 : Html.Attribute msg
md__text_yellow_800 =
    A.class "md:text-yellow-800"


md__text_yellow_900 : Html.Attribute msg
md__text_yellow_900 =
    A.class "md:text-yellow-900"


md__text_green_100 : Html.Attribute msg
md__text_green_100 =
    A.class "md:text-green-100"


md__text_green_200 : Html.Attribute msg
md__text_green_200 =
    A.class "md:text-green-200"


md__text_green_300 : Html.Attribute msg
md__text_green_300 =
    A.class "md:text-green-300"


md__text_green_400 : Html.Attribute msg
md__text_green_400 =
    A.class "md:text-green-400"


md__text_green_500 : Html.Attribute msg
md__text_green_500 =
    A.class "md:text-green-500"


md__text_green_600 : Html.Attribute msg
md__text_green_600 =
    A.class "md:text-green-600"


md__text_green_700 : Html.Attribute msg
md__text_green_700 =
    A.class "md:text-green-700"


md__text_green_800 : Html.Attribute msg
md__text_green_800 =
    A.class "md:text-green-800"


md__text_green_900 : Html.Attribute msg
md__text_green_900 =
    A.class "md:text-green-900"


md__text_teal_100 : Html.Attribute msg
md__text_teal_100 =
    A.class "md:text-teal-100"


md__text_teal_200 : Html.Attribute msg
md__text_teal_200 =
    A.class "md:text-teal-200"


md__text_teal_300 : Html.Attribute msg
md__text_teal_300 =
    A.class "md:text-teal-300"


md__text_teal_400 : Html.Attribute msg
md__text_teal_400 =
    A.class "md:text-teal-400"


md__text_teal_500 : Html.Attribute msg
md__text_teal_500 =
    A.class "md:text-teal-500"


md__text_teal_600 : Html.Attribute msg
md__text_teal_600 =
    A.class "md:text-teal-600"


md__text_teal_700 : Html.Attribute msg
md__text_teal_700 =
    A.class "md:text-teal-700"


md__text_teal_800 : Html.Attribute msg
md__text_teal_800 =
    A.class "md:text-teal-800"


md__text_teal_900 : Html.Attribute msg
md__text_teal_900 =
    A.class "md:text-teal-900"


md__text_blue_100 : Html.Attribute msg
md__text_blue_100 =
    A.class "md:text-blue-100"


md__text_blue_200 : Html.Attribute msg
md__text_blue_200 =
    A.class "md:text-blue-200"


md__text_blue_300 : Html.Attribute msg
md__text_blue_300 =
    A.class "md:text-blue-300"


md__text_blue_400 : Html.Attribute msg
md__text_blue_400 =
    A.class "md:text-blue-400"


md__text_blue_500 : Html.Attribute msg
md__text_blue_500 =
    A.class "md:text-blue-500"


md__text_blue_600 : Html.Attribute msg
md__text_blue_600 =
    A.class "md:text-blue-600"


md__text_blue_700 : Html.Attribute msg
md__text_blue_700 =
    A.class "md:text-blue-700"


md__text_blue_800 : Html.Attribute msg
md__text_blue_800 =
    A.class "md:text-blue-800"


md__text_blue_900 : Html.Attribute msg
md__text_blue_900 =
    A.class "md:text-blue-900"


md__text_indigo_100 : Html.Attribute msg
md__text_indigo_100 =
    A.class "md:text-indigo-100"


md__text_indigo_200 : Html.Attribute msg
md__text_indigo_200 =
    A.class "md:text-indigo-200"


md__text_indigo_300 : Html.Attribute msg
md__text_indigo_300 =
    A.class "md:text-indigo-300"


md__text_indigo_400 : Html.Attribute msg
md__text_indigo_400 =
    A.class "md:text-indigo-400"


md__text_indigo_500 : Html.Attribute msg
md__text_indigo_500 =
    A.class "md:text-indigo-500"


md__text_indigo_600 : Html.Attribute msg
md__text_indigo_600 =
    A.class "md:text-indigo-600"


md__text_indigo_700 : Html.Attribute msg
md__text_indigo_700 =
    A.class "md:text-indigo-700"


md__text_indigo_800 : Html.Attribute msg
md__text_indigo_800 =
    A.class "md:text-indigo-800"


md__text_indigo_900 : Html.Attribute msg
md__text_indigo_900 =
    A.class "md:text-indigo-900"


md__text_purple_100 : Html.Attribute msg
md__text_purple_100 =
    A.class "md:text-purple-100"


md__text_purple_200 : Html.Attribute msg
md__text_purple_200 =
    A.class "md:text-purple-200"


md__text_purple_300 : Html.Attribute msg
md__text_purple_300 =
    A.class "md:text-purple-300"


md__text_purple_400 : Html.Attribute msg
md__text_purple_400 =
    A.class "md:text-purple-400"


md__text_purple_500 : Html.Attribute msg
md__text_purple_500 =
    A.class "md:text-purple-500"


md__text_purple_600 : Html.Attribute msg
md__text_purple_600 =
    A.class "md:text-purple-600"


md__text_purple_700 : Html.Attribute msg
md__text_purple_700 =
    A.class "md:text-purple-700"


md__text_purple_800 : Html.Attribute msg
md__text_purple_800 =
    A.class "md:text-purple-800"


md__text_purple_900 : Html.Attribute msg
md__text_purple_900 =
    A.class "md:text-purple-900"


md__text_pink_100 : Html.Attribute msg
md__text_pink_100 =
    A.class "md:text-pink-100"


md__text_pink_200 : Html.Attribute msg
md__text_pink_200 =
    A.class "md:text-pink-200"


md__text_pink_300 : Html.Attribute msg
md__text_pink_300 =
    A.class "md:text-pink-300"


md__text_pink_400 : Html.Attribute msg
md__text_pink_400 =
    A.class "md:text-pink-400"


md__text_pink_500 : Html.Attribute msg
md__text_pink_500 =
    A.class "md:text-pink-500"


md__text_pink_600 : Html.Attribute msg
md__text_pink_600 =
    A.class "md:text-pink-600"


md__text_pink_700 : Html.Attribute msg
md__text_pink_700 =
    A.class "md:text-pink-700"


md__text_pink_800 : Html.Attribute msg
md__text_pink_800 =
    A.class "md:text-pink-800"


md__text_pink_900 : Html.Attribute msg
md__text_pink_900 =
    A.class "md:text-pink-900"


md__hover__text_transparent : Html.Attribute msg
md__hover__text_transparent =
    A.class "md:hover:text-transparent"


md__hover__text_black : Html.Attribute msg
md__hover__text_black =
    A.class "md:hover:text-black"


md__hover__text_white : Html.Attribute msg
md__hover__text_white =
    A.class "md:hover:text-white"


md__hover__text_gray_100 : Html.Attribute msg
md__hover__text_gray_100 =
    A.class "md:hover:text-gray-100"


md__hover__text_gray_200 : Html.Attribute msg
md__hover__text_gray_200 =
    A.class "md:hover:text-gray-200"


md__hover__text_gray_300 : Html.Attribute msg
md__hover__text_gray_300 =
    A.class "md:hover:text-gray-300"


md__hover__text_gray_400 : Html.Attribute msg
md__hover__text_gray_400 =
    A.class "md:hover:text-gray-400"


md__hover__text_gray_500 : Html.Attribute msg
md__hover__text_gray_500 =
    A.class "md:hover:text-gray-500"


md__hover__text_gray_600 : Html.Attribute msg
md__hover__text_gray_600 =
    A.class "md:hover:text-gray-600"


md__hover__text_gray_700 : Html.Attribute msg
md__hover__text_gray_700 =
    A.class "md:hover:text-gray-700"


md__hover__text_gray_800 : Html.Attribute msg
md__hover__text_gray_800 =
    A.class "md:hover:text-gray-800"


md__hover__text_gray_900 : Html.Attribute msg
md__hover__text_gray_900 =
    A.class "md:hover:text-gray-900"


md__hover__text_red_100 : Html.Attribute msg
md__hover__text_red_100 =
    A.class "md:hover:text-red-100"


md__hover__text_red_200 : Html.Attribute msg
md__hover__text_red_200 =
    A.class "md:hover:text-red-200"


md__hover__text_red_300 : Html.Attribute msg
md__hover__text_red_300 =
    A.class "md:hover:text-red-300"


md__hover__text_red_400 : Html.Attribute msg
md__hover__text_red_400 =
    A.class "md:hover:text-red-400"


md__hover__text_red_500 : Html.Attribute msg
md__hover__text_red_500 =
    A.class "md:hover:text-red-500"


md__hover__text_red_600 : Html.Attribute msg
md__hover__text_red_600 =
    A.class "md:hover:text-red-600"


md__hover__text_red_700 : Html.Attribute msg
md__hover__text_red_700 =
    A.class "md:hover:text-red-700"


md__hover__text_red_800 : Html.Attribute msg
md__hover__text_red_800 =
    A.class "md:hover:text-red-800"


md__hover__text_red_900 : Html.Attribute msg
md__hover__text_red_900 =
    A.class "md:hover:text-red-900"


md__hover__text_orange_100 : Html.Attribute msg
md__hover__text_orange_100 =
    A.class "md:hover:text-orange-100"


md__hover__text_orange_200 : Html.Attribute msg
md__hover__text_orange_200 =
    A.class "md:hover:text-orange-200"


md__hover__text_orange_300 : Html.Attribute msg
md__hover__text_orange_300 =
    A.class "md:hover:text-orange-300"


md__hover__text_orange_400 : Html.Attribute msg
md__hover__text_orange_400 =
    A.class "md:hover:text-orange-400"


md__hover__text_orange_500 : Html.Attribute msg
md__hover__text_orange_500 =
    A.class "md:hover:text-orange-500"


md__hover__text_orange_600 : Html.Attribute msg
md__hover__text_orange_600 =
    A.class "md:hover:text-orange-600"


md__hover__text_orange_700 : Html.Attribute msg
md__hover__text_orange_700 =
    A.class "md:hover:text-orange-700"


md__hover__text_orange_800 : Html.Attribute msg
md__hover__text_orange_800 =
    A.class "md:hover:text-orange-800"


md__hover__text_orange_900 : Html.Attribute msg
md__hover__text_orange_900 =
    A.class "md:hover:text-orange-900"


md__hover__text_yellow_100 : Html.Attribute msg
md__hover__text_yellow_100 =
    A.class "md:hover:text-yellow-100"


md__hover__text_yellow_200 : Html.Attribute msg
md__hover__text_yellow_200 =
    A.class "md:hover:text-yellow-200"


md__hover__text_yellow_300 : Html.Attribute msg
md__hover__text_yellow_300 =
    A.class "md:hover:text-yellow-300"


md__hover__text_yellow_400 : Html.Attribute msg
md__hover__text_yellow_400 =
    A.class "md:hover:text-yellow-400"


md__hover__text_yellow_500 : Html.Attribute msg
md__hover__text_yellow_500 =
    A.class "md:hover:text-yellow-500"


md__hover__text_yellow_600 : Html.Attribute msg
md__hover__text_yellow_600 =
    A.class "md:hover:text-yellow-600"


md__hover__text_yellow_700 : Html.Attribute msg
md__hover__text_yellow_700 =
    A.class "md:hover:text-yellow-700"


md__hover__text_yellow_800 : Html.Attribute msg
md__hover__text_yellow_800 =
    A.class "md:hover:text-yellow-800"


md__hover__text_yellow_900 : Html.Attribute msg
md__hover__text_yellow_900 =
    A.class "md:hover:text-yellow-900"


md__hover__text_green_100 : Html.Attribute msg
md__hover__text_green_100 =
    A.class "md:hover:text-green-100"


md__hover__text_green_200 : Html.Attribute msg
md__hover__text_green_200 =
    A.class "md:hover:text-green-200"


md__hover__text_green_300 : Html.Attribute msg
md__hover__text_green_300 =
    A.class "md:hover:text-green-300"


md__hover__text_green_400 : Html.Attribute msg
md__hover__text_green_400 =
    A.class "md:hover:text-green-400"


md__hover__text_green_500 : Html.Attribute msg
md__hover__text_green_500 =
    A.class "md:hover:text-green-500"


md__hover__text_green_600 : Html.Attribute msg
md__hover__text_green_600 =
    A.class "md:hover:text-green-600"


md__hover__text_green_700 : Html.Attribute msg
md__hover__text_green_700 =
    A.class "md:hover:text-green-700"


md__hover__text_green_800 : Html.Attribute msg
md__hover__text_green_800 =
    A.class "md:hover:text-green-800"


md__hover__text_green_900 : Html.Attribute msg
md__hover__text_green_900 =
    A.class "md:hover:text-green-900"


md__hover__text_teal_100 : Html.Attribute msg
md__hover__text_teal_100 =
    A.class "md:hover:text-teal-100"


md__hover__text_teal_200 : Html.Attribute msg
md__hover__text_teal_200 =
    A.class "md:hover:text-teal-200"


md__hover__text_teal_300 : Html.Attribute msg
md__hover__text_teal_300 =
    A.class "md:hover:text-teal-300"


md__hover__text_teal_400 : Html.Attribute msg
md__hover__text_teal_400 =
    A.class "md:hover:text-teal-400"


md__hover__text_teal_500 : Html.Attribute msg
md__hover__text_teal_500 =
    A.class "md:hover:text-teal-500"


md__hover__text_teal_600 : Html.Attribute msg
md__hover__text_teal_600 =
    A.class "md:hover:text-teal-600"


md__hover__text_teal_700 : Html.Attribute msg
md__hover__text_teal_700 =
    A.class "md:hover:text-teal-700"


md__hover__text_teal_800 : Html.Attribute msg
md__hover__text_teal_800 =
    A.class "md:hover:text-teal-800"


md__hover__text_teal_900 : Html.Attribute msg
md__hover__text_teal_900 =
    A.class "md:hover:text-teal-900"


md__hover__text_blue_100 : Html.Attribute msg
md__hover__text_blue_100 =
    A.class "md:hover:text-blue-100"


md__hover__text_blue_200 : Html.Attribute msg
md__hover__text_blue_200 =
    A.class "md:hover:text-blue-200"


md__hover__text_blue_300 : Html.Attribute msg
md__hover__text_blue_300 =
    A.class "md:hover:text-blue-300"


md__hover__text_blue_400 : Html.Attribute msg
md__hover__text_blue_400 =
    A.class "md:hover:text-blue-400"


md__hover__text_blue_500 : Html.Attribute msg
md__hover__text_blue_500 =
    A.class "md:hover:text-blue-500"


md__hover__text_blue_600 : Html.Attribute msg
md__hover__text_blue_600 =
    A.class "md:hover:text-blue-600"


md__hover__text_blue_700 : Html.Attribute msg
md__hover__text_blue_700 =
    A.class "md:hover:text-blue-700"


md__hover__text_blue_800 : Html.Attribute msg
md__hover__text_blue_800 =
    A.class "md:hover:text-blue-800"


md__hover__text_blue_900 : Html.Attribute msg
md__hover__text_blue_900 =
    A.class "md:hover:text-blue-900"


md__hover__text_indigo_100 : Html.Attribute msg
md__hover__text_indigo_100 =
    A.class "md:hover:text-indigo-100"


md__hover__text_indigo_200 : Html.Attribute msg
md__hover__text_indigo_200 =
    A.class "md:hover:text-indigo-200"


md__hover__text_indigo_300 : Html.Attribute msg
md__hover__text_indigo_300 =
    A.class "md:hover:text-indigo-300"


md__hover__text_indigo_400 : Html.Attribute msg
md__hover__text_indigo_400 =
    A.class "md:hover:text-indigo-400"


md__hover__text_indigo_500 : Html.Attribute msg
md__hover__text_indigo_500 =
    A.class "md:hover:text-indigo-500"


md__hover__text_indigo_600 : Html.Attribute msg
md__hover__text_indigo_600 =
    A.class "md:hover:text-indigo-600"


md__hover__text_indigo_700 : Html.Attribute msg
md__hover__text_indigo_700 =
    A.class "md:hover:text-indigo-700"


md__hover__text_indigo_800 : Html.Attribute msg
md__hover__text_indigo_800 =
    A.class "md:hover:text-indigo-800"


md__hover__text_indigo_900 : Html.Attribute msg
md__hover__text_indigo_900 =
    A.class "md:hover:text-indigo-900"


md__hover__text_purple_100 : Html.Attribute msg
md__hover__text_purple_100 =
    A.class "md:hover:text-purple-100"


md__hover__text_purple_200 : Html.Attribute msg
md__hover__text_purple_200 =
    A.class "md:hover:text-purple-200"


md__hover__text_purple_300 : Html.Attribute msg
md__hover__text_purple_300 =
    A.class "md:hover:text-purple-300"


md__hover__text_purple_400 : Html.Attribute msg
md__hover__text_purple_400 =
    A.class "md:hover:text-purple-400"


md__hover__text_purple_500 : Html.Attribute msg
md__hover__text_purple_500 =
    A.class "md:hover:text-purple-500"


md__hover__text_purple_600 : Html.Attribute msg
md__hover__text_purple_600 =
    A.class "md:hover:text-purple-600"


md__hover__text_purple_700 : Html.Attribute msg
md__hover__text_purple_700 =
    A.class "md:hover:text-purple-700"


md__hover__text_purple_800 : Html.Attribute msg
md__hover__text_purple_800 =
    A.class "md:hover:text-purple-800"


md__hover__text_purple_900 : Html.Attribute msg
md__hover__text_purple_900 =
    A.class "md:hover:text-purple-900"


md__hover__text_pink_100 : Html.Attribute msg
md__hover__text_pink_100 =
    A.class "md:hover:text-pink-100"


md__hover__text_pink_200 : Html.Attribute msg
md__hover__text_pink_200 =
    A.class "md:hover:text-pink-200"


md__hover__text_pink_300 : Html.Attribute msg
md__hover__text_pink_300 =
    A.class "md:hover:text-pink-300"


md__hover__text_pink_400 : Html.Attribute msg
md__hover__text_pink_400 =
    A.class "md:hover:text-pink-400"


md__hover__text_pink_500 : Html.Attribute msg
md__hover__text_pink_500 =
    A.class "md:hover:text-pink-500"


md__hover__text_pink_600 : Html.Attribute msg
md__hover__text_pink_600 =
    A.class "md:hover:text-pink-600"


md__hover__text_pink_700 : Html.Attribute msg
md__hover__text_pink_700 =
    A.class "md:hover:text-pink-700"


md__hover__text_pink_800 : Html.Attribute msg
md__hover__text_pink_800 =
    A.class "md:hover:text-pink-800"


md__hover__text_pink_900 : Html.Attribute msg
md__hover__text_pink_900 =
    A.class "md:hover:text-pink-900"


md__focus__text_transparent : Html.Attribute msg
md__focus__text_transparent =
    A.class "md:focus:text-transparent"


md__focus__text_black : Html.Attribute msg
md__focus__text_black =
    A.class "md:focus:text-black"


md__focus__text_white : Html.Attribute msg
md__focus__text_white =
    A.class "md:focus:text-white"


md__focus__text_gray_100 : Html.Attribute msg
md__focus__text_gray_100 =
    A.class "md:focus:text-gray-100"


md__focus__text_gray_200 : Html.Attribute msg
md__focus__text_gray_200 =
    A.class "md:focus:text-gray-200"


md__focus__text_gray_300 : Html.Attribute msg
md__focus__text_gray_300 =
    A.class "md:focus:text-gray-300"


md__focus__text_gray_400 : Html.Attribute msg
md__focus__text_gray_400 =
    A.class "md:focus:text-gray-400"


md__focus__text_gray_500 : Html.Attribute msg
md__focus__text_gray_500 =
    A.class "md:focus:text-gray-500"


md__focus__text_gray_600 : Html.Attribute msg
md__focus__text_gray_600 =
    A.class "md:focus:text-gray-600"


md__focus__text_gray_700 : Html.Attribute msg
md__focus__text_gray_700 =
    A.class "md:focus:text-gray-700"


md__focus__text_gray_800 : Html.Attribute msg
md__focus__text_gray_800 =
    A.class "md:focus:text-gray-800"


md__focus__text_gray_900 : Html.Attribute msg
md__focus__text_gray_900 =
    A.class "md:focus:text-gray-900"


md__focus__text_red_100 : Html.Attribute msg
md__focus__text_red_100 =
    A.class "md:focus:text-red-100"


md__focus__text_red_200 : Html.Attribute msg
md__focus__text_red_200 =
    A.class "md:focus:text-red-200"


md__focus__text_red_300 : Html.Attribute msg
md__focus__text_red_300 =
    A.class "md:focus:text-red-300"


md__focus__text_red_400 : Html.Attribute msg
md__focus__text_red_400 =
    A.class "md:focus:text-red-400"


md__focus__text_red_500 : Html.Attribute msg
md__focus__text_red_500 =
    A.class "md:focus:text-red-500"


md__focus__text_red_600 : Html.Attribute msg
md__focus__text_red_600 =
    A.class "md:focus:text-red-600"


md__focus__text_red_700 : Html.Attribute msg
md__focus__text_red_700 =
    A.class "md:focus:text-red-700"


md__focus__text_red_800 : Html.Attribute msg
md__focus__text_red_800 =
    A.class "md:focus:text-red-800"


md__focus__text_red_900 : Html.Attribute msg
md__focus__text_red_900 =
    A.class "md:focus:text-red-900"


md__focus__text_orange_100 : Html.Attribute msg
md__focus__text_orange_100 =
    A.class "md:focus:text-orange-100"


md__focus__text_orange_200 : Html.Attribute msg
md__focus__text_orange_200 =
    A.class "md:focus:text-orange-200"


md__focus__text_orange_300 : Html.Attribute msg
md__focus__text_orange_300 =
    A.class "md:focus:text-orange-300"


md__focus__text_orange_400 : Html.Attribute msg
md__focus__text_orange_400 =
    A.class "md:focus:text-orange-400"


md__focus__text_orange_500 : Html.Attribute msg
md__focus__text_orange_500 =
    A.class "md:focus:text-orange-500"


md__focus__text_orange_600 : Html.Attribute msg
md__focus__text_orange_600 =
    A.class "md:focus:text-orange-600"


md__focus__text_orange_700 : Html.Attribute msg
md__focus__text_orange_700 =
    A.class "md:focus:text-orange-700"


md__focus__text_orange_800 : Html.Attribute msg
md__focus__text_orange_800 =
    A.class "md:focus:text-orange-800"


md__focus__text_orange_900 : Html.Attribute msg
md__focus__text_orange_900 =
    A.class "md:focus:text-orange-900"


md__focus__text_yellow_100 : Html.Attribute msg
md__focus__text_yellow_100 =
    A.class "md:focus:text-yellow-100"


md__focus__text_yellow_200 : Html.Attribute msg
md__focus__text_yellow_200 =
    A.class "md:focus:text-yellow-200"


md__focus__text_yellow_300 : Html.Attribute msg
md__focus__text_yellow_300 =
    A.class "md:focus:text-yellow-300"


md__focus__text_yellow_400 : Html.Attribute msg
md__focus__text_yellow_400 =
    A.class "md:focus:text-yellow-400"


md__focus__text_yellow_500 : Html.Attribute msg
md__focus__text_yellow_500 =
    A.class "md:focus:text-yellow-500"


md__focus__text_yellow_600 : Html.Attribute msg
md__focus__text_yellow_600 =
    A.class "md:focus:text-yellow-600"


md__focus__text_yellow_700 : Html.Attribute msg
md__focus__text_yellow_700 =
    A.class "md:focus:text-yellow-700"


md__focus__text_yellow_800 : Html.Attribute msg
md__focus__text_yellow_800 =
    A.class "md:focus:text-yellow-800"


md__focus__text_yellow_900 : Html.Attribute msg
md__focus__text_yellow_900 =
    A.class "md:focus:text-yellow-900"


md__focus__text_green_100 : Html.Attribute msg
md__focus__text_green_100 =
    A.class "md:focus:text-green-100"


md__focus__text_green_200 : Html.Attribute msg
md__focus__text_green_200 =
    A.class "md:focus:text-green-200"


md__focus__text_green_300 : Html.Attribute msg
md__focus__text_green_300 =
    A.class "md:focus:text-green-300"


md__focus__text_green_400 : Html.Attribute msg
md__focus__text_green_400 =
    A.class "md:focus:text-green-400"


md__focus__text_green_500 : Html.Attribute msg
md__focus__text_green_500 =
    A.class "md:focus:text-green-500"


md__focus__text_green_600 : Html.Attribute msg
md__focus__text_green_600 =
    A.class "md:focus:text-green-600"


md__focus__text_green_700 : Html.Attribute msg
md__focus__text_green_700 =
    A.class "md:focus:text-green-700"


md__focus__text_green_800 : Html.Attribute msg
md__focus__text_green_800 =
    A.class "md:focus:text-green-800"


md__focus__text_green_900 : Html.Attribute msg
md__focus__text_green_900 =
    A.class "md:focus:text-green-900"


md__focus__text_teal_100 : Html.Attribute msg
md__focus__text_teal_100 =
    A.class "md:focus:text-teal-100"


md__focus__text_teal_200 : Html.Attribute msg
md__focus__text_teal_200 =
    A.class "md:focus:text-teal-200"


md__focus__text_teal_300 : Html.Attribute msg
md__focus__text_teal_300 =
    A.class "md:focus:text-teal-300"


md__focus__text_teal_400 : Html.Attribute msg
md__focus__text_teal_400 =
    A.class "md:focus:text-teal-400"


md__focus__text_teal_500 : Html.Attribute msg
md__focus__text_teal_500 =
    A.class "md:focus:text-teal-500"


md__focus__text_teal_600 : Html.Attribute msg
md__focus__text_teal_600 =
    A.class "md:focus:text-teal-600"


md__focus__text_teal_700 : Html.Attribute msg
md__focus__text_teal_700 =
    A.class "md:focus:text-teal-700"


md__focus__text_teal_800 : Html.Attribute msg
md__focus__text_teal_800 =
    A.class "md:focus:text-teal-800"


md__focus__text_teal_900 : Html.Attribute msg
md__focus__text_teal_900 =
    A.class "md:focus:text-teal-900"


md__focus__text_blue_100 : Html.Attribute msg
md__focus__text_blue_100 =
    A.class "md:focus:text-blue-100"


md__focus__text_blue_200 : Html.Attribute msg
md__focus__text_blue_200 =
    A.class "md:focus:text-blue-200"


md__focus__text_blue_300 : Html.Attribute msg
md__focus__text_blue_300 =
    A.class "md:focus:text-blue-300"


md__focus__text_blue_400 : Html.Attribute msg
md__focus__text_blue_400 =
    A.class "md:focus:text-blue-400"


md__focus__text_blue_500 : Html.Attribute msg
md__focus__text_blue_500 =
    A.class "md:focus:text-blue-500"


md__focus__text_blue_600 : Html.Attribute msg
md__focus__text_blue_600 =
    A.class "md:focus:text-blue-600"


md__focus__text_blue_700 : Html.Attribute msg
md__focus__text_blue_700 =
    A.class "md:focus:text-blue-700"


md__focus__text_blue_800 : Html.Attribute msg
md__focus__text_blue_800 =
    A.class "md:focus:text-blue-800"


md__focus__text_blue_900 : Html.Attribute msg
md__focus__text_blue_900 =
    A.class "md:focus:text-blue-900"


md__focus__text_indigo_100 : Html.Attribute msg
md__focus__text_indigo_100 =
    A.class "md:focus:text-indigo-100"


md__focus__text_indigo_200 : Html.Attribute msg
md__focus__text_indigo_200 =
    A.class "md:focus:text-indigo-200"


md__focus__text_indigo_300 : Html.Attribute msg
md__focus__text_indigo_300 =
    A.class "md:focus:text-indigo-300"


md__focus__text_indigo_400 : Html.Attribute msg
md__focus__text_indigo_400 =
    A.class "md:focus:text-indigo-400"


md__focus__text_indigo_500 : Html.Attribute msg
md__focus__text_indigo_500 =
    A.class "md:focus:text-indigo-500"


md__focus__text_indigo_600 : Html.Attribute msg
md__focus__text_indigo_600 =
    A.class "md:focus:text-indigo-600"


md__focus__text_indigo_700 : Html.Attribute msg
md__focus__text_indigo_700 =
    A.class "md:focus:text-indigo-700"


md__focus__text_indigo_800 : Html.Attribute msg
md__focus__text_indigo_800 =
    A.class "md:focus:text-indigo-800"


md__focus__text_indigo_900 : Html.Attribute msg
md__focus__text_indigo_900 =
    A.class "md:focus:text-indigo-900"


md__focus__text_purple_100 : Html.Attribute msg
md__focus__text_purple_100 =
    A.class "md:focus:text-purple-100"


md__focus__text_purple_200 : Html.Attribute msg
md__focus__text_purple_200 =
    A.class "md:focus:text-purple-200"


md__focus__text_purple_300 : Html.Attribute msg
md__focus__text_purple_300 =
    A.class "md:focus:text-purple-300"


md__focus__text_purple_400 : Html.Attribute msg
md__focus__text_purple_400 =
    A.class "md:focus:text-purple-400"


md__focus__text_purple_500 : Html.Attribute msg
md__focus__text_purple_500 =
    A.class "md:focus:text-purple-500"


md__focus__text_purple_600 : Html.Attribute msg
md__focus__text_purple_600 =
    A.class "md:focus:text-purple-600"


md__focus__text_purple_700 : Html.Attribute msg
md__focus__text_purple_700 =
    A.class "md:focus:text-purple-700"


md__focus__text_purple_800 : Html.Attribute msg
md__focus__text_purple_800 =
    A.class "md:focus:text-purple-800"


md__focus__text_purple_900 : Html.Attribute msg
md__focus__text_purple_900 =
    A.class "md:focus:text-purple-900"


md__focus__text_pink_100 : Html.Attribute msg
md__focus__text_pink_100 =
    A.class "md:focus:text-pink-100"


md__focus__text_pink_200 : Html.Attribute msg
md__focus__text_pink_200 =
    A.class "md:focus:text-pink-200"


md__focus__text_pink_300 : Html.Attribute msg
md__focus__text_pink_300 =
    A.class "md:focus:text-pink-300"


md__focus__text_pink_400 : Html.Attribute msg
md__focus__text_pink_400 =
    A.class "md:focus:text-pink-400"


md__focus__text_pink_500 : Html.Attribute msg
md__focus__text_pink_500 =
    A.class "md:focus:text-pink-500"


md__focus__text_pink_600 : Html.Attribute msg
md__focus__text_pink_600 =
    A.class "md:focus:text-pink-600"


md__focus__text_pink_700 : Html.Attribute msg
md__focus__text_pink_700 =
    A.class "md:focus:text-pink-700"


md__focus__text_pink_800 : Html.Attribute msg
md__focus__text_pink_800 =
    A.class "md:focus:text-pink-800"


md__focus__text_pink_900 : Html.Attribute msg
md__focus__text_pink_900 =
    A.class "md:focus:text-pink-900"


md__text_xs : Html.Attribute msg
md__text_xs =
    A.class "md:text-xs"


md__text_sm : Html.Attribute msg
md__text_sm =
    A.class "md:text-sm"


md__text_base : Html.Attribute msg
md__text_base =
    A.class "md:text-base"


md__text_lg : Html.Attribute msg
md__text_lg =
    A.class "md:text-lg"


md__text_xl : Html.Attribute msg
md__text_xl =
    A.class "md:text-xl"


md__text_2xl : Html.Attribute msg
md__text_2xl =
    A.class "md:text-2xl"


md__text_3xl : Html.Attribute msg
md__text_3xl =
    A.class "md:text-3xl"


md__text_4xl : Html.Attribute msg
md__text_4xl =
    A.class "md:text-4xl"


md__text_5xl : Html.Attribute msg
md__text_5xl =
    A.class "md:text-5xl"


md__text_6xl : Html.Attribute msg
md__text_6xl =
    A.class "md:text-6xl"


md__italic : Html.Attribute msg
md__italic =
    A.class "md:italic"


md__not_italic : Html.Attribute msg
md__not_italic =
    A.class "md:not-italic"


md__uppercase : Html.Attribute msg
md__uppercase =
    A.class "md:uppercase"


md__lowercase : Html.Attribute msg
md__lowercase =
    A.class "md:lowercase"


md__capitalize : Html.Attribute msg
md__capitalize =
    A.class "md:capitalize"


md__normal_case : Html.Attribute msg
md__normal_case =
    A.class "md:normal-case"


md__underline : Html.Attribute msg
md__underline =
    A.class "md:underline"


md__line_through : Html.Attribute msg
md__line_through =
    A.class "md:line-through"


md__no_underline : Html.Attribute msg
md__no_underline =
    A.class "md:no-underline"


md__hover__underline : Html.Attribute msg
md__hover__underline =
    A.class "md:hover:underline"


md__hover__line_through : Html.Attribute msg
md__hover__line_through =
    A.class "md:hover:line-through"


md__hover__no_underline : Html.Attribute msg
md__hover__no_underline =
    A.class "md:hover:no-underline"


md__focus__underline : Html.Attribute msg
md__focus__underline =
    A.class "md:focus:underline"


md__focus__line_through : Html.Attribute msg
md__focus__line_through =
    A.class "md:focus:line-through"


md__focus__no_underline : Html.Attribute msg
md__focus__no_underline =
    A.class "md:focus:no-underline"


md__antialiased : Html.Attribute msg
md__antialiased =
    A.class "md:antialiased"


md__subpixel_antialiased : Html.Attribute msg
md__subpixel_antialiased =
    A.class "md:subpixel-antialiased"


md__tracking_tighter : Html.Attribute msg
md__tracking_tighter =
    A.class "md:tracking-tighter"


md__tracking_tight : Html.Attribute msg
md__tracking_tight =
    A.class "md:tracking-tight"


md__tracking_normal : Html.Attribute msg
md__tracking_normal =
    A.class "md:tracking-normal"


md__tracking_wide : Html.Attribute msg
md__tracking_wide =
    A.class "md:tracking-wide"


md__tracking_wider : Html.Attribute msg
md__tracking_wider =
    A.class "md:tracking-wider"


md__tracking_widest : Html.Attribute msg
md__tracking_widest =
    A.class "md:tracking-widest"


md__select_none : Html.Attribute msg
md__select_none =
    A.class "md:select-none"


md__select_text : Html.Attribute msg
md__select_text =
    A.class "md:select-text"


md__select_all : Html.Attribute msg
md__select_all =
    A.class "md:select-all"


md__select_auto : Html.Attribute msg
md__select_auto =
    A.class "md:select-auto"


md__align_baseline : Html.Attribute msg
md__align_baseline =
    A.class "md:align-baseline"


md__align_top : Html.Attribute msg
md__align_top =
    A.class "md:align-top"


md__align_middle : Html.Attribute msg
md__align_middle =
    A.class "md:align-middle"


md__align_bottom : Html.Attribute msg
md__align_bottom =
    A.class "md:align-bottom"


md__align_text_top : Html.Attribute msg
md__align_text_top =
    A.class "md:align-text-top"


md__align_text_bottom : Html.Attribute msg
md__align_text_bottom =
    A.class "md:align-text-bottom"


md__visible : Html.Attribute msg
md__visible =
    A.class "md:visible"


md__invisible : Html.Attribute msg
md__invisible =
    A.class "md:invisible"


md__whitespace_normal : Html.Attribute msg
md__whitespace_normal =
    A.class "md:whitespace-normal"


md__whitespace_no_wrap : Html.Attribute msg
md__whitespace_no_wrap =
    A.class "md:whitespace-no-wrap"


md__whitespace_pre : Html.Attribute msg
md__whitespace_pre =
    A.class "md:whitespace-pre"


md__whitespace_pre_line : Html.Attribute msg
md__whitespace_pre_line =
    A.class "md:whitespace-pre-line"


md__whitespace_pre_wrap : Html.Attribute msg
md__whitespace_pre_wrap =
    A.class "md:whitespace-pre-wrap"


md__break_normal : Html.Attribute msg
md__break_normal =
    A.class "md:break-normal"


md__break_words : Html.Attribute msg
md__break_words =
    A.class "md:break-words"


md__break_all : Html.Attribute msg
md__break_all =
    A.class "md:break-all"


md__truncate : Html.Attribute msg
md__truncate =
    A.class "md:truncate"


md__w_0 : Html.Attribute msg
md__w_0 =
    A.class "md:w-0"


md__w_1 : Html.Attribute msg
md__w_1 =
    A.class "md:w-1"


md__w_2 : Html.Attribute msg
md__w_2 =
    A.class "md:w-2"


md__w_3 : Html.Attribute msg
md__w_3 =
    A.class "md:w-3"


md__w_4 : Html.Attribute msg
md__w_4 =
    A.class "md:w-4"


md__w_5 : Html.Attribute msg
md__w_5 =
    A.class "md:w-5"


md__w_6 : Html.Attribute msg
md__w_6 =
    A.class "md:w-6"


md__w_8 : Html.Attribute msg
md__w_8 =
    A.class "md:w-8"


md__w_10 : Html.Attribute msg
md__w_10 =
    A.class "md:w-10"


md__w_12 : Html.Attribute msg
md__w_12 =
    A.class "md:w-12"


md__w_16 : Html.Attribute msg
md__w_16 =
    A.class "md:w-16"


md__w_20 : Html.Attribute msg
md__w_20 =
    A.class "md:w-20"


md__w_24 : Html.Attribute msg
md__w_24 =
    A.class "md:w-24"


md__w_32 : Html.Attribute msg
md__w_32 =
    A.class "md:w-32"


md__w_40 : Html.Attribute msg
md__w_40 =
    A.class "md:w-40"


md__w_48 : Html.Attribute msg
md__w_48 =
    A.class "md:w-48"


md__w_56 : Html.Attribute msg
md__w_56 =
    A.class "md:w-56"


md__w_64 : Html.Attribute msg
md__w_64 =
    A.class "md:w-64"


md__w_auto : Html.Attribute msg
md__w_auto =
    A.class "md:w-auto"


md__w_px : Html.Attribute msg
md__w_px =
    A.class "md:w-px"


md__w_1over2 : Html.Attribute msg
md__w_1over2 =
    A.class "md:w-1/2"


md__w_1over3 : Html.Attribute msg
md__w_1over3 =
    A.class "md:w-1/3"


md__w_2over3 : Html.Attribute msg
md__w_2over3 =
    A.class "md:w-2/3"


md__w_1over4 : Html.Attribute msg
md__w_1over4 =
    A.class "md:w-1/4"


md__w_2over4 : Html.Attribute msg
md__w_2over4 =
    A.class "md:w-2/4"


md__w_3over4 : Html.Attribute msg
md__w_3over4 =
    A.class "md:w-3/4"


md__w_1over5 : Html.Attribute msg
md__w_1over5 =
    A.class "md:w-1/5"


md__w_2over5 : Html.Attribute msg
md__w_2over5 =
    A.class "md:w-2/5"


md__w_3over5 : Html.Attribute msg
md__w_3over5 =
    A.class "md:w-3/5"


md__w_4over5 : Html.Attribute msg
md__w_4over5 =
    A.class "md:w-4/5"


md__w_1over6 : Html.Attribute msg
md__w_1over6 =
    A.class "md:w-1/6"


md__w_2over6 : Html.Attribute msg
md__w_2over6 =
    A.class "md:w-2/6"


md__w_3over6 : Html.Attribute msg
md__w_3over6 =
    A.class "md:w-3/6"


md__w_4over6 : Html.Attribute msg
md__w_4over6 =
    A.class "md:w-4/6"


md__w_5over6 : Html.Attribute msg
md__w_5over6 =
    A.class "md:w-5/6"


md__w_1over12 : Html.Attribute msg
md__w_1over12 =
    A.class "md:w-1/12"


md__w_2over12 : Html.Attribute msg
md__w_2over12 =
    A.class "md:w-2/12"


md__w_3over12 : Html.Attribute msg
md__w_3over12 =
    A.class "md:w-3/12"


md__w_4over12 : Html.Attribute msg
md__w_4over12 =
    A.class "md:w-4/12"


md__w_5over12 : Html.Attribute msg
md__w_5over12 =
    A.class "md:w-5/12"


md__w_6over12 : Html.Attribute msg
md__w_6over12 =
    A.class "md:w-6/12"


md__w_7over12 : Html.Attribute msg
md__w_7over12 =
    A.class "md:w-7/12"


md__w_8over12 : Html.Attribute msg
md__w_8over12 =
    A.class "md:w-8/12"


md__w_9over12 : Html.Attribute msg
md__w_9over12 =
    A.class "md:w-9/12"


md__w_10over12 : Html.Attribute msg
md__w_10over12 =
    A.class "md:w-10/12"


md__w_11over12 : Html.Attribute msg
md__w_11over12 =
    A.class "md:w-11/12"


md__w_full : Html.Attribute msg
md__w_full =
    A.class "md:w-full"


md__w_screen : Html.Attribute msg
md__w_screen =
    A.class "md:w-screen"


md__z_0 : Html.Attribute msg
md__z_0 =
    A.class "md:z-0"


md__z_10 : Html.Attribute msg
md__z_10 =
    A.class "md:z-10"


md__z_20 : Html.Attribute msg
md__z_20 =
    A.class "md:z-20"


md__z_30 : Html.Attribute msg
md__z_30 =
    A.class "md:z-30"


md__z_40 : Html.Attribute msg
md__z_40 =
    A.class "md:z-40"


md__z_50 : Html.Attribute msg
md__z_50 =
    A.class "md:z-50"


md__z_auto : Html.Attribute msg
md__z_auto =
    A.class "md:z-auto"


md__gap_0 : Html.Attribute msg
md__gap_0 =
    A.class "md:gap-0"


md__gap_1 : Html.Attribute msg
md__gap_1 =
    A.class "md:gap-1"


md__gap_2 : Html.Attribute msg
md__gap_2 =
    A.class "md:gap-2"


md__gap_3 : Html.Attribute msg
md__gap_3 =
    A.class "md:gap-3"


md__gap_4 : Html.Attribute msg
md__gap_4 =
    A.class "md:gap-4"


md__gap_5 : Html.Attribute msg
md__gap_5 =
    A.class "md:gap-5"


md__gap_6 : Html.Attribute msg
md__gap_6 =
    A.class "md:gap-6"


md__gap_8 : Html.Attribute msg
md__gap_8 =
    A.class "md:gap-8"


md__gap_10 : Html.Attribute msg
md__gap_10 =
    A.class "md:gap-10"


md__gap_12 : Html.Attribute msg
md__gap_12 =
    A.class "md:gap-12"


md__gap_16 : Html.Attribute msg
md__gap_16 =
    A.class "md:gap-16"


md__gap_20 : Html.Attribute msg
md__gap_20 =
    A.class "md:gap-20"


md__gap_24 : Html.Attribute msg
md__gap_24 =
    A.class "md:gap-24"


md__gap_32 : Html.Attribute msg
md__gap_32 =
    A.class "md:gap-32"


md__gap_40 : Html.Attribute msg
md__gap_40 =
    A.class "md:gap-40"


md__gap_48 : Html.Attribute msg
md__gap_48 =
    A.class "md:gap-48"


md__gap_56 : Html.Attribute msg
md__gap_56 =
    A.class "md:gap-56"


md__gap_64 : Html.Attribute msg
md__gap_64 =
    A.class "md:gap-64"


md__gap_px : Html.Attribute msg
md__gap_px =
    A.class "md:gap-px"


md__col_gap_0 : Html.Attribute msg
md__col_gap_0 =
    A.class "md:col-gap-0"


md__col_gap_1 : Html.Attribute msg
md__col_gap_1 =
    A.class "md:col-gap-1"


md__col_gap_2 : Html.Attribute msg
md__col_gap_2 =
    A.class "md:col-gap-2"


md__col_gap_3 : Html.Attribute msg
md__col_gap_3 =
    A.class "md:col-gap-3"


md__col_gap_4 : Html.Attribute msg
md__col_gap_4 =
    A.class "md:col-gap-4"


md__col_gap_5 : Html.Attribute msg
md__col_gap_5 =
    A.class "md:col-gap-5"


md__col_gap_6 : Html.Attribute msg
md__col_gap_6 =
    A.class "md:col-gap-6"


md__col_gap_8 : Html.Attribute msg
md__col_gap_8 =
    A.class "md:col-gap-8"


md__col_gap_10 : Html.Attribute msg
md__col_gap_10 =
    A.class "md:col-gap-10"


md__col_gap_12 : Html.Attribute msg
md__col_gap_12 =
    A.class "md:col-gap-12"


md__col_gap_16 : Html.Attribute msg
md__col_gap_16 =
    A.class "md:col-gap-16"


md__col_gap_20 : Html.Attribute msg
md__col_gap_20 =
    A.class "md:col-gap-20"


md__col_gap_24 : Html.Attribute msg
md__col_gap_24 =
    A.class "md:col-gap-24"


md__col_gap_32 : Html.Attribute msg
md__col_gap_32 =
    A.class "md:col-gap-32"


md__col_gap_40 : Html.Attribute msg
md__col_gap_40 =
    A.class "md:col-gap-40"


md__col_gap_48 : Html.Attribute msg
md__col_gap_48 =
    A.class "md:col-gap-48"


md__col_gap_56 : Html.Attribute msg
md__col_gap_56 =
    A.class "md:col-gap-56"


md__col_gap_64 : Html.Attribute msg
md__col_gap_64 =
    A.class "md:col-gap-64"


md__col_gap_px : Html.Attribute msg
md__col_gap_px =
    A.class "md:col-gap-px"


md__row_gap_0 : Html.Attribute msg
md__row_gap_0 =
    A.class "md:row-gap-0"


md__row_gap_1 : Html.Attribute msg
md__row_gap_1 =
    A.class "md:row-gap-1"


md__row_gap_2 : Html.Attribute msg
md__row_gap_2 =
    A.class "md:row-gap-2"


md__row_gap_3 : Html.Attribute msg
md__row_gap_3 =
    A.class "md:row-gap-3"


md__row_gap_4 : Html.Attribute msg
md__row_gap_4 =
    A.class "md:row-gap-4"


md__row_gap_5 : Html.Attribute msg
md__row_gap_5 =
    A.class "md:row-gap-5"


md__row_gap_6 : Html.Attribute msg
md__row_gap_6 =
    A.class "md:row-gap-6"


md__row_gap_8 : Html.Attribute msg
md__row_gap_8 =
    A.class "md:row-gap-8"


md__row_gap_10 : Html.Attribute msg
md__row_gap_10 =
    A.class "md:row-gap-10"


md__row_gap_12 : Html.Attribute msg
md__row_gap_12 =
    A.class "md:row-gap-12"


md__row_gap_16 : Html.Attribute msg
md__row_gap_16 =
    A.class "md:row-gap-16"


md__row_gap_20 : Html.Attribute msg
md__row_gap_20 =
    A.class "md:row-gap-20"


md__row_gap_24 : Html.Attribute msg
md__row_gap_24 =
    A.class "md:row-gap-24"


md__row_gap_32 : Html.Attribute msg
md__row_gap_32 =
    A.class "md:row-gap-32"


md__row_gap_40 : Html.Attribute msg
md__row_gap_40 =
    A.class "md:row-gap-40"


md__row_gap_48 : Html.Attribute msg
md__row_gap_48 =
    A.class "md:row-gap-48"


md__row_gap_56 : Html.Attribute msg
md__row_gap_56 =
    A.class "md:row-gap-56"


md__row_gap_64 : Html.Attribute msg
md__row_gap_64 =
    A.class "md:row-gap-64"


md__row_gap_px : Html.Attribute msg
md__row_gap_px =
    A.class "md:row-gap-px"


md__grid_flow_row : Html.Attribute msg
md__grid_flow_row =
    A.class "md:grid-flow-row"


md__grid_flow_col : Html.Attribute msg
md__grid_flow_col =
    A.class "md:grid-flow-col"


md__grid_flow_row_dense : Html.Attribute msg
md__grid_flow_row_dense =
    A.class "md:grid-flow-row-dense"


md__grid_flow_col_dense : Html.Attribute msg
md__grid_flow_col_dense =
    A.class "md:grid-flow-col-dense"


md__grid_cols_1 : Html.Attribute msg
md__grid_cols_1 =
    A.class "md:grid-cols-1"


md__grid_cols_2 : Html.Attribute msg
md__grid_cols_2 =
    A.class "md:grid-cols-2"


md__grid_cols_3 : Html.Attribute msg
md__grid_cols_3 =
    A.class "md:grid-cols-3"


md__grid_cols_4 : Html.Attribute msg
md__grid_cols_4 =
    A.class "md:grid-cols-4"


md__grid_cols_5 : Html.Attribute msg
md__grid_cols_5 =
    A.class "md:grid-cols-5"


md__grid_cols_6 : Html.Attribute msg
md__grid_cols_6 =
    A.class "md:grid-cols-6"


md__grid_cols_7 : Html.Attribute msg
md__grid_cols_7 =
    A.class "md:grid-cols-7"


md__grid_cols_8 : Html.Attribute msg
md__grid_cols_8 =
    A.class "md:grid-cols-8"


md__grid_cols_9 : Html.Attribute msg
md__grid_cols_9 =
    A.class "md:grid-cols-9"


md__grid_cols_10 : Html.Attribute msg
md__grid_cols_10 =
    A.class "md:grid-cols-10"


md__grid_cols_11 : Html.Attribute msg
md__grid_cols_11 =
    A.class "md:grid-cols-11"


md__grid_cols_12 : Html.Attribute msg
md__grid_cols_12 =
    A.class "md:grid-cols-12"


md__grid_cols_none : Html.Attribute msg
md__grid_cols_none =
    A.class "md:grid-cols-none"


md__col_auto : Html.Attribute msg
md__col_auto =
    A.class "md:col-auto"


md__col_span_1 : Html.Attribute msg
md__col_span_1 =
    A.class "md:col-span-1"


md__col_span_2 : Html.Attribute msg
md__col_span_2 =
    A.class "md:col-span-2"


md__col_span_3 : Html.Attribute msg
md__col_span_3 =
    A.class "md:col-span-3"


md__col_span_4 : Html.Attribute msg
md__col_span_4 =
    A.class "md:col-span-4"


md__col_span_5 : Html.Attribute msg
md__col_span_5 =
    A.class "md:col-span-5"


md__col_span_6 : Html.Attribute msg
md__col_span_6 =
    A.class "md:col-span-6"


md__col_span_7 : Html.Attribute msg
md__col_span_7 =
    A.class "md:col-span-7"


md__col_span_8 : Html.Attribute msg
md__col_span_8 =
    A.class "md:col-span-8"


md__col_span_9 : Html.Attribute msg
md__col_span_9 =
    A.class "md:col-span-9"


md__col_span_10 : Html.Attribute msg
md__col_span_10 =
    A.class "md:col-span-10"


md__col_span_11 : Html.Attribute msg
md__col_span_11 =
    A.class "md:col-span-11"


md__col_span_12 : Html.Attribute msg
md__col_span_12 =
    A.class "md:col-span-12"


md__col_start_1 : Html.Attribute msg
md__col_start_1 =
    A.class "md:col-start-1"


md__col_start_2 : Html.Attribute msg
md__col_start_2 =
    A.class "md:col-start-2"


md__col_start_3 : Html.Attribute msg
md__col_start_3 =
    A.class "md:col-start-3"


md__col_start_4 : Html.Attribute msg
md__col_start_4 =
    A.class "md:col-start-4"


md__col_start_5 : Html.Attribute msg
md__col_start_5 =
    A.class "md:col-start-5"


md__col_start_6 : Html.Attribute msg
md__col_start_6 =
    A.class "md:col-start-6"


md__col_start_7 : Html.Attribute msg
md__col_start_7 =
    A.class "md:col-start-7"


md__col_start_8 : Html.Attribute msg
md__col_start_8 =
    A.class "md:col-start-8"


md__col_start_9 : Html.Attribute msg
md__col_start_9 =
    A.class "md:col-start-9"


md__col_start_10 : Html.Attribute msg
md__col_start_10 =
    A.class "md:col-start-10"


md__col_start_11 : Html.Attribute msg
md__col_start_11 =
    A.class "md:col-start-11"


md__col_start_12 : Html.Attribute msg
md__col_start_12 =
    A.class "md:col-start-12"


md__col_start_13 : Html.Attribute msg
md__col_start_13 =
    A.class "md:col-start-13"


md__col_start_auto : Html.Attribute msg
md__col_start_auto =
    A.class "md:col-start-auto"


md__col_end_1 : Html.Attribute msg
md__col_end_1 =
    A.class "md:col-end-1"


md__col_end_2 : Html.Attribute msg
md__col_end_2 =
    A.class "md:col-end-2"


md__col_end_3 : Html.Attribute msg
md__col_end_3 =
    A.class "md:col-end-3"


md__col_end_4 : Html.Attribute msg
md__col_end_4 =
    A.class "md:col-end-4"


md__col_end_5 : Html.Attribute msg
md__col_end_5 =
    A.class "md:col-end-5"


md__col_end_6 : Html.Attribute msg
md__col_end_6 =
    A.class "md:col-end-6"


md__col_end_7 : Html.Attribute msg
md__col_end_7 =
    A.class "md:col-end-7"


md__col_end_8 : Html.Attribute msg
md__col_end_8 =
    A.class "md:col-end-8"


md__col_end_9 : Html.Attribute msg
md__col_end_9 =
    A.class "md:col-end-9"


md__col_end_10 : Html.Attribute msg
md__col_end_10 =
    A.class "md:col-end-10"


md__col_end_11 : Html.Attribute msg
md__col_end_11 =
    A.class "md:col-end-11"


md__col_end_12 : Html.Attribute msg
md__col_end_12 =
    A.class "md:col-end-12"


md__col_end_13 : Html.Attribute msg
md__col_end_13 =
    A.class "md:col-end-13"


md__col_end_auto : Html.Attribute msg
md__col_end_auto =
    A.class "md:col-end-auto"


md__grid_rows_1 : Html.Attribute msg
md__grid_rows_1 =
    A.class "md:grid-rows-1"


md__grid_rows_2 : Html.Attribute msg
md__grid_rows_2 =
    A.class "md:grid-rows-2"


md__grid_rows_3 : Html.Attribute msg
md__grid_rows_3 =
    A.class "md:grid-rows-3"


md__grid_rows_4 : Html.Attribute msg
md__grid_rows_4 =
    A.class "md:grid-rows-4"


md__grid_rows_5 : Html.Attribute msg
md__grid_rows_5 =
    A.class "md:grid-rows-5"


md__grid_rows_6 : Html.Attribute msg
md__grid_rows_6 =
    A.class "md:grid-rows-6"


md__grid_rows_none : Html.Attribute msg
md__grid_rows_none =
    A.class "md:grid-rows-none"


md__row_auto : Html.Attribute msg
md__row_auto =
    A.class "md:row-auto"


md__row_span_1 : Html.Attribute msg
md__row_span_1 =
    A.class "md:row-span-1"


md__row_span_2 : Html.Attribute msg
md__row_span_2 =
    A.class "md:row-span-2"


md__row_span_3 : Html.Attribute msg
md__row_span_3 =
    A.class "md:row-span-3"


md__row_span_4 : Html.Attribute msg
md__row_span_4 =
    A.class "md:row-span-4"


md__row_span_5 : Html.Attribute msg
md__row_span_5 =
    A.class "md:row-span-5"


md__row_span_6 : Html.Attribute msg
md__row_span_6 =
    A.class "md:row-span-6"


md__row_start_1 : Html.Attribute msg
md__row_start_1 =
    A.class "md:row-start-1"


md__row_start_2 : Html.Attribute msg
md__row_start_2 =
    A.class "md:row-start-2"


md__row_start_3 : Html.Attribute msg
md__row_start_3 =
    A.class "md:row-start-3"


md__row_start_4 : Html.Attribute msg
md__row_start_4 =
    A.class "md:row-start-4"


md__row_start_5 : Html.Attribute msg
md__row_start_5 =
    A.class "md:row-start-5"


md__row_start_6 : Html.Attribute msg
md__row_start_6 =
    A.class "md:row-start-6"


md__row_start_7 : Html.Attribute msg
md__row_start_7 =
    A.class "md:row-start-7"


md__row_start_auto : Html.Attribute msg
md__row_start_auto =
    A.class "md:row-start-auto"


md__row_end_1 : Html.Attribute msg
md__row_end_1 =
    A.class "md:row-end-1"


md__row_end_2 : Html.Attribute msg
md__row_end_2 =
    A.class "md:row-end-2"


md__row_end_3 : Html.Attribute msg
md__row_end_3 =
    A.class "md:row-end-3"


md__row_end_4 : Html.Attribute msg
md__row_end_4 =
    A.class "md:row-end-4"


md__row_end_5 : Html.Attribute msg
md__row_end_5 =
    A.class "md:row-end-5"


md__row_end_6 : Html.Attribute msg
md__row_end_6 =
    A.class "md:row-end-6"


md__row_end_7 : Html.Attribute msg
md__row_end_7 =
    A.class "md:row-end-7"


md__row_end_auto : Html.Attribute msg
md__row_end_auto =
    A.class "md:row-end-auto"


md__transform : Html.Attribute msg
md__transform =
    A.class "md:transform"


md__transform_none : Html.Attribute msg
md__transform_none =
    A.class "md:transform-none"


md__origin_center : Html.Attribute msg
md__origin_center =
    A.class "md:origin-center"


md__origin_top : Html.Attribute msg
md__origin_top =
    A.class "md:origin-top"


md__origin_top_right : Html.Attribute msg
md__origin_top_right =
    A.class "md:origin-top-right"


md__origin_right : Html.Attribute msg
md__origin_right =
    A.class "md:origin-right"


md__origin_bottom_right : Html.Attribute msg
md__origin_bottom_right =
    A.class "md:origin-bottom-right"


md__origin_bottom : Html.Attribute msg
md__origin_bottom =
    A.class "md:origin-bottom"


md__origin_bottom_left : Html.Attribute msg
md__origin_bottom_left =
    A.class "md:origin-bottom-left"


md__origin_left : Html.Attribute msg
md__origin_left =
    A.class "md:origin-left"


md__origin_top_left : Html.Attribute msg
md__origin_top_left =
    A.class "md:origin-top-left"


md__scale_0 : Html.Attribute msg
md__scale_0 =
    A.class "md:scale-0"


md__scale_50 : Html.Attribute msg
md__scale_50 =
    A.class "md:scale-50"


md__scale_75 : Html.Attribute msg
md__scale_75 =
    A.class "md:scale-75"


md__scale_90 : Html.Attribute msg
md__scale_90 =
    A.class "md:scale-90"


md__scale_95 : Html.Attribute msg
md__scale_95 =
    A.class "md:scale-95"


md__scale_100 : Html.Attribute msg
md__scale_100 =
    A.class "md:scale-100"


md__scale_105 : Html.Attribute msg
md__scale_105 =
    A.class "md:scale-105"


md__scale_110 : Html.Attribute msg
md__scale_110 =
    A.class "md:scale-110"


md__scale_125 : Html.Attribute msg
md__scale_125 =
    A.class "md:scale-125"


md__scale_150 : Html.Attribute msg
md__scale_150 =
    A.class "md:scale-150"


md__scale_x_0 : Html.Attribute msg
md__scale_x_0 =
    A.class "md:scale-x-0"


md__scale_x_50 : Html.Attribute msg
md__scale_x_50 =
    A.class "md:scale-x-50"


md__scale_x_75 : Html.Attribute msg
md__scale_x_75 =
    A.class "md:scale-x-75"


md__scale_x_90 : Html.Attribute msg
md__scale_x_90 =
    A.class "md:scale-x-90"


md__scale_x_95 : Html.Attribute msg
md__scale_x_95 =
    A.class "md:scale-x-95"


md__scale_x_100 : Html.Attribute msg
md__scale_x_100 =
    A.class "md:scale-x-100"


md__scale_x_105 : Html.Attribute msg
md__scale_x_105 =
    A.class "md:scale-x-105"


md__scale_x_110 : Html.Attribute msg
md__scale_x_110 =
    A.class "md:scale-x-110"


md__scale_x_125 : Html.Attribute msg
md__scale_x_125 =
    A.class "md:scale-x-125"


md__scale_x_150 : Html.Attribute msg
md__scale_x_150 =
    A.class "md:scale-x-150"


md__scale_y_0 : Html.Attribute msg
md__scale_y_0 =
    A.class "md:scale-y-0"


md__scale_y_50 : Html.Attribute msg
md__scale_y_50 =
    A.class "md:scale-y-50"


md__scale_y_75 : Html.Attribute msg
md__scale_y_75 =
    A.class "md:scale-y-75"


md__scale_y_90 : Html.Attribute msg
md__scale_y_90 =
    A.class "md:scale-y-90"


md__scale_y_95 : Html.Attribute msg
md__scale_y_95 =
    A.class "md:scale-y-95"


md__scale_y_100 : Html.Attribute msg
md__scale_y_100 =
    A.class "md:scale-y-100"


md__scale_y_105 : Html.Attribute msg
md__scale_y_105 =
    A.class "md:scale-y-105"


md__scale_y_110 : Html.Attribute msg
md__scale_y_110 =
    A.class "md:scale-y-110"


md__scale_y_125 : Html.Attribute msg
md__scale_y_125 =
    A.class "md:scale-y-125"


md__scale_y_150 : Html.Attribute msg
md__scale_y_150 =
    A.class "md:scale-y-150"


md__hover__scale_0 : Html.Attribute msg
md__hover__scale_0 =
    A.class "md:hover:scale-0"


md__hover__scale_50 : Html.Attribute msg
md__hover__scale_50 =
    A.class "md:hover:scale-50"


md__hover__scale_75 : Html.Attribute msg
md__hover__scale_75 =
    A.class "md:hover:scale-75"


md__hover__scale_90 : Html.Attribute msg
md__hover__scale_90 =
    A.class "md:hover:scale-90"


md__hover__scale_95 : Html.Attribute msg
md__hover__scale_95 =
    A.class "md:hover:scale-95"


md__hover__scale_100 : Html.Attribute msg
md__hover__scale_100 =
    A.class "md:hover:scale-100"


md__hover__scale_105 : Html.Attribute msg
md__hover__scale_105 =
    A.class "md:hover:scale-105"


md__hover__scale_110 : Html.Attribute msg
md__hover__scale_110 =
    A.class "md:hover:scale-110"


md__hover__scale_125 : Html.Attribute msg
md__hover__scale_125 =
    A.class "md:hover:scale-125"


md__hover__scale_150 : Html.Attribute msg
md__hover__scale_150 =
    A.class "md:hover:scale-150"


md__hover__scale_x_0 : Html.Attribute msg
md__hover__scale_x_0 =
    A.class "md:hover:scale-x-0"


md__hover__scale_x_50 : Html.Attribute msg
md__hover__scale_x_50 =
    A.class "md:hover:scale-x-50"


md__hover__scale_x_75 : Html.Attribute msg
md__hover__scale_x_75 =
    A.class "md:hover:scale-x-75"


md__hover__scale_x_90 : Html.Attribute msg
md__hover__scale_x_90 =
    A.class "md:hover:scale-x-90"


md__hover__scale_x_95 : Html.Attribute msg
md__hover__scale_x_95 =
    A.class "md:hover:scale-x-95"


md__hover__scale_x_100 : Html.Attribute msg
md__hover__scale_x_100 =
    A.class "md:hover:scale-x-100"


md__hover__scale_x_105 : Html.Attribute msg
md__hover__scale_x_105 =
    A.class "md:hover:scale-x-105"


md__hover__scale_x_110 : Html.Attribute msg
md__hover__scale_x_110 =
    A.class "md:hover:scale-x-110"


md__hover__scale_x_125 : Html.Attribute msg
md__hover__scale_x_125 =
    A.class "md:hover:scale-x-125"


md__hover__scale_x_150 : Html.Attribute msg
md__hover__scale_x_150 =
    A.class "md:hover:scale-x-150"


md__hover__scale_y_0 : Html.Attribute msg
md__hover__scale_y_0 =
    A.class "md:hover:scale-y-0"


md__hover__scale_y_50 : Html.Attribute msg
md__hover__scale_y_50 =
    A.class "md:hover:scale-y-50"


md__hover__scale_y_75 : Html.Attribute msg
md__hover__scale_y_75 =
    A.class "md:hover:scale-y-75"


md__hover__scale_y_90 : Html.Attribute msg
md__hover__scale_y_90 =
    A.class "md:hover:scale-y-90"


md__hover__scale_y_95 : Html.Attribute msg
md__hover__scale_y_95 =
    A.class "md:hover:scale-y-95"


md__hover__scale_y_100 : Html.Attribute msg
md__hover__scale_y_100 =
    A.class "md:hover:scale-y-100"


md__hover__scale_y_105 : Html.Attribute msg
md__hover__scale_y_105 =
    A.class "md:hover:scale-y-105"


md__hover__scale_y_110 : Html.Attribute msg
md__hover__scale_y_110 =
    A.class "md:hover:scale-y-110"


md__hover__scale_y_125 : Html.Attribute msg
md__hover__scale_y_125 =
    A.class "md:hover:scale-y-125"


md__hover__scale_y_150 : Html.Attribute msg
md__hover__scale_y_150 =
    A.class "md:hover:scale-y-150"


md__focus__scale_0 : Html.Attribute msg
md__focus__scale_0 =
    A.class "md:focus:scale-0"


md__focus__scale_50 : Html.Attribute msg
md__focus__scale_50 =
    A.class "md:focus:scale-50"


md__focus__scale_75 : Html.Attribute msg
md__focus__scale_75 =
    A.class "md:focus:scale-75"


md__focus__scale_90 : Html.Attribute msg
md__focus__scale_90 =
    A.class "md:focus:scale-90"


md__focus__scale_95 : Html.Attribute msg
md__focus__scale_95 =
    A.class "md:focus:scale-95"


md__focus__scale_100 : Html.Attribute msg
md__focus__scale_100 =
    A.class "md:focus:scale-100"


md__focus__scale_105 : Html.Attribute msg
md__focus__scale_105 =
    A.class "md:focus:scale-105"


md__focus__scale_110 : Html.Attribute msg
md__focus__scale_110 =
    A.class "md:focus:scale-110"


md__focus__scale_125 : Html.Attribute msg
md__focus__scale_125 =
    A.class "md:focus:scale-125"


md__focus__scale_150 : Html.Attribute msg
md__focus__scale_150 =
    A.class "md:focus:scale-150"


md__focus__scale_x_0 : Html.Attribute msg
md__focus__scale_x_0 =
    A.class "md:focus:scale-x-0"


md__focus__scale_x_50 : Html.Attribute msg
md__focus__scale_x_50 =
    A.class "md:focus:scale-x-50"


md__focus__scale_x_75 : Html.Attribute msg
md__focus__scale_x_75 =
    A.class "md:focus:scale-x-75"


md__focus__scale_x_90 : Html.Attribute msg
md__focus__scale_x_90 =
    A.class "md:focus:scale-x-90"


md__focus__scale_x_95 : Html.Attribute msg
md__focus__scale_x_95 =
    A.class "md:focus:scale-x-95"


md__focus__scale_x_100 : Html.Attribute msg
md__focus__scale_x_100 =
    A.class "md:focus:scale-x-100"


md__focus__scale_x_105 : Html.Attribute msg
md__focus__scale_x_105 =
    A.class "md:focus:scale-x-105"


md__focus__scale_x_110 : Html.Attribute msg
md__focus__scale_x_110 =
    A.class "md:focus:scale-x-110"


md__focus__scale_x_125 : Html.Attribute msg
md__focus__scale_x_125 =
    A.class "md:focus:scale-x-125"


md__focus__scale_x_150 : Html.Attribute msg
md__focus__scale_x_150 =
    A.class "md:focus:scale-x-150"


md__focus__scale_y_0 : Html.Attribute msg
md__focus__scale_y_0 =
    A.class "md:focus:scale-y-0"


md__focus__scale_y_50 : Html.Attribute msg
md__focus__scale_y_50 =
    A.class "md:focus:scale-y-50"


md__focus__scale_y_75 : Html.Attribute msg
md__focus__scale_y_75 =
    A.class "md:focus:scale-y-75"


md__focus__scale_y_90 : Html.Attribute msg
md__focus__scale_y_90 =
    A.class "md:focus:scale-y-90"


md__focus__scale_y_95 : Html.Attribute msg
md__focus__scale_y_95 =
    A.class "md:focus:scale-y-95"


md__focus__scale_y_100 : Html.Attribute msg
md__focus__scale_y_100 =
    A.class "md:focus:scale-y-100"


md__focus__scale_y_105 : Html.Attribute msg
md__focus__scale_y_105 =
    A.class "md:focus:scale-y-105"


md__focus__scale_y_110 : Html.Attribute msg
md__focus__scale_y_110 =
    A.class "md:focus:scale-y-110"


md__focus__scale_y_125 : Html.Attribute msg
md__focus__scale_y_125 =
    A.class "md:focus:scale-y-125"


md__focus__scale_y_150 : Html.Attribute msg
md__focus__scale_y_150 =
    A.class "md:focus:scale-y-150"


md__rotate_0 : Html.Attribute msg
md__rotate_0 =
    A.class "md:rotate-0"


md__rotate_45 : Html.Attribute msg
md__rotate_45 =
    A.class "md:rotate-45"


md__rotate_90 : Html.Attribute msg
md__rotate_90 =
    A.class "md:rotate-90"


md__rotate_180 : Html.Attribute msg
md__rotate_180 =
    A.class "md:rotate-180"


md__neg_rotate_180 : Html.Attribute msg
md__neg_rotate_180 =
    A.class "md:-rotate-180"


md__neg_rotate_90 : Html.Attribute msg
md__neg_rotate_90 =
    A.class "md:-rotate-90"


md__neg_rotate_45 : Html.Attribute msg
md__neg_rotate_45 =
    A.class "md:-rotate-45"


md__hover__rotate_0 : Html.Attribute msg
md__hover__rotate_0 =
    A.class "md:hover:rotate-0"


md__hover__rotate_45 : Html.Attribute msg
md__hover__rotate_45 =
    A.class "md:hover:rotate-45"


md__hover__rotate_90 : Html.Attribute msg
md__hover__rotate_90 =
    A.class "md:hover:rotate-90"


md__hover__rotate_180 : Html.Attribute msg
md__hover__rotate_180 =
    A.class "md:hover:rotate-180"


md__hover__neg_rotate_180 : Html.Attribute msg
md__hover__neg_rotate_180 =
    A.class "md:hover:-rotate-180"


md__hover__neg_rotate_90 : Html.Attribute msg
md__hover__neg_rotate_90 =
    A.class "md:hover:-rotate-90"


md__hover__neg_rotate_45 : Html.Attribute msg
md__hover__neg_rotate_45 =
    A.class "md:hover:-rotate-45"


md__focus__rotate_0 : Html.Attribute msg
md__focus__rotate_0 =
    A.class "md:focus:rotate-0"


md__focus__rotate_45 : Html.Attribute msg
md__focus__rotate_45 =
    A.class "md:focus:rotate-45"


md__focus__rotate_90 : Html.Attribute msg
md__focus__rotate_90 =
    A.class "md:focus:rotate-90"


md__focus__rotate_180 : Html.Attribute msg
md__focus__rotate_180 =
    A.class "md:focus:rotate-180"


md__focus__neg_rotate_180 : Html.Attribute msg
md__focus__neg_rotate_180 =
    A.class "md:focus:-rotate-180"


md__focus__neg_rotate_90 : Html.Attribute msg
md__focus__neg_rotate_90 =
    A.class "md:focus:-rotate-90"


md__focus__neg_rotate_45 : Html.Attribute msg
md__focus__neg_rotate_45 =
    A.class "md:focus:-rotate-45"


md__translate_x_0 : Html.Attribute msg
md__translate_x_0 =
    A.class "md:translate-x-0"


md__translate_x_1 : Html.Attribute msg
md__translate_x_1 =
    A.class "md:translate-x-1"


md__translate_x_2 : Html.Attribute msg
md__translate_x_2 =
    A.class "md:translate-x-2"


md__translate_x_3 : Html.Attribute msg
md__translate_x_3 =
    A.class "md:translate-x-3"


md__translate_x_4 : Html.Attribute msg
md__translate_x_4 =
    A.class "md:translate-x-4"


md__translate_x_5 : Html.Attribute msg
md__translate_x_5 =
    A.class "md:translate-x-5"


md__translate_x_6 : Html.Attribute msg
md__translate_x_6 =
    A.class "md:translate-x-6"


md__translate_x_8 : Html.Attribute msg
md__translate_x_8 =
    A.class "md:translate-x-8"


md__translate_x_10 : Html.Attribute msg
md__translate_x_10 =
    A.class "md:translate-x-10"


md__translate_x_12 : Html.Attribute msg
md__translate_x_12 =
    A.class "md:translate-x-12"


md__translate_x_16 : Html.Attribute msg
md__translate_x_16 =
    A.class "md:translate-x-16"


md__translate_x_20 : Html.Attribute msg
md__translate_x_20 =
    A.class "md:translate-x-20"


md__translate_x_24 : Html.Attribute msg
md__translate_x_24 =
    A.class "md:translate-x-24"


md__translate_x_32 : Html.Attribute msg
md__translate_x_32 =
    A.class "md:translate-x-32"


md__translate_x_40 : Html.Attribute msg
md__translate_x_40 =
    A.class "md:translate-x-40"


md__translate_x_48 : Html.Attribute msg
md__translate_x_48 =
    A.class "md:translate-x-48"


md__translate_x_56 : Html.Attribute msg
md__translate_x_56 =
    A.class "md:translate-x-56"


md__translate_x_64 : Html.Attribute msg
md__translate_x_64 =
    A.class "md:translate-x-64"


md__translate_x_px : Html.Attribute msg
md__translate_x_px =
    A.class "md:translate-x-px"


md__neg_translate_x_1 : Html.Attribute msg
md__neg_translate_x_1 =
    A.class "md:-translate-x-1"


md__neg_translate_x_2 : Html.Attribute msg
md__neg_translate_x_2 =
    A.class "md:-translate-x-2"


md__neg_translate_x_3 : Html.Attribute msg
md__neg_translate_x_3 =
    A.class "md:-translate-x-3"


md__neg_translate_x_4 : Html.Attribute msg
md__neg_translate_x_4 =
    A.class "md:-translate-x-4"


md__neg_translate_x_5 : Html.Attribute msg
md__neg_translate_x_5 =
    A.class "md:-translate-x-5"


md__neg_translate_x_6 : Html.Attribute msg
md__neg_translate_x_6 =
    A.class "md:-translate-x-6"


md__neg_translate_x_8 : Html.Attribute msg
md__neg_translate_x_8 =
    A.class "md:-translate-x-8"


md__neg_translate_x_10 : Html.Attribute msg
md__neg_translate_x_10 =
    A.class "md:-translate-x-10"


md__neg_translate_x_12 : Html.Attribute msg
md__neg_translate_x_12 =
    A.class "md:-translate-x-12"


md__neg_translate_x_16 : Html.Attribute msg
md__neg_translate_x_16 =
    A.class "md:-translate-x-16"


md__neg_translate_x_20 : Html.Attribute msg
md__neg_translate_x_20 =
    A.class "md:-translate-x-20"


md__neg_translate_x_24 : Html.Attribute msg
md__neg_translate_x_24 =
    A.class "md:-translate-x-24"


md__neg_translate_x_32 : Html.Attribute msg
md__neg_translate_x_32 =
    A.class "md:-translate-x-32"


md__neg_translate_x_40 : Html.Attribute msg
md__neg_translate_x_40 =
    A.class "md:-translate-x-40"


md__neg_translate_x_48 : Html.Attribute msg
md__neg_translate_x_48 =
    A.class "md:-translate-x-48"


md__neg_translate_x_56 : Html.Attribute msg
md__neg_translate_x_56 =
    A.class "md:-translate-x-56"


md__neg_translate_x_64 : Html.Attribute msg
md__neg_translate_x_64 =
    A.class "md:-translate-x-64"


md__neg_translate_x_px : Html.Attribute msg
md__neg_translate_x_px =
    A.class "md:-translate-x-px"


md__neg_translate_x_full : Html.Attribute msg
md__neg_translate_x_full =
    A.class "md:-translate-x-full"


md__neg_translate_x_1over2 : Html.Attribute msg
md__neg_translate_x_1over2 =
    A.class "md:-translate-x-1/2"


md__translate_x_1over2 : Html.Attribute msg
md__translate_x_1over2 =
    A.class "md:translate-x-1/2"


md__translate_x_full : Html.Attribute msg
md__translate_x_full =
    A.class "md:translate-x-full"


md__translate_y_0 : Html.Attribute msg
md__translate_y_0 =
    A.class "md:translate-y-0"


md__translate_y_1 : Html.Attribute msg
md__translate_y_1 =
    A.class "md:translate-y-1"


md__translate_y_2 : Html.Attribute msg
md__translate_y_2 =
    A.class "md:translate-y-2"


md__translate_y_3 : Html.Attribute msg
md__translate_y_3 =
    A.class "md:translate-y-3"


md__translate_y_4 : Html.Attribute msg
md__translate_y_4 =
    A.class "md:translate-y-4"


md__translate_y_5 : Html.Attribute msg
md__translate_y_5 =
    A.class "md:translate-y-5"


md__translate_y_6 : Html.Attribute msg
md__translate_y_6 =
    A.class "md:translate-y-6"


md__translate_y_8 : Html.Attribute msg
md__translate_y_8 =
    A.class "md:translate-y-8"


md__translate_y_10 : Html.Attribute msg
md__translate_y_10 =
    A.class "md:translate-y-10"


md__translate_y_12 : Html.Attribute msg
md__translate_y_12 =
    A.class "md:translate-y-12"


md__translate_y_16 : Html.Attribute msg
md__translate_y_16 =
    A.class "md:translate-y-16"


md__translate_y_20 : Html.Attribute msg
md__translate_y_20 =
    A.class "md:translate-y-20"


md__translate_y_24 : Html.Attribute msg
md__translate_y_24 =
    A.class "md:translate-y-24"


md__translate_y_32 : Html.Attribute msg
md__translate_y_32 =
    A.class "md:translate-y-32"


md__translate_y_40 : Html.Attribute msg
md__translate_y_40 =
    A.class "md:translate-y-40"


md__translate_y_48 : Html.Attribute msg
md__translate_y_48 =
    A.class "md:translate-y-48"


md__translate_y_56 : Html.Attribute msg
md__translate_y_56 =
    A.class "md:translate-y-56"


md__translate_y_64 : Html.Attribute msg
md__translate_y_64 =
    A.class "md:translate-y-64"


md__translate_y_px : Html.Attribute msg
md__translate_y_px =
    A.class "md:translate-y-px"


md__neg_translate_y_1 : Html.Attribute msg
md__neg_translate_y_1 =
    A.class "md:-translate-y-1"


md__neg_translate_y_2 : Html.Attribute msg
md__neg_translate_y_2 =
    A.class "md:-translate-y-2"


md__neg_translate_y_3 : Html.Attribute msg
md__neg_translate_y_3 =
    A.class "md:-translate-y-3"


md__neg_translate_y_4 : Html.Attribute msg
md__neg_translate_y_4 =
    A.class "md:-translate-y-4"


md__neg_translate_y_5 : Html.Attribute msg
md__neg_translate_y_5 =
    A.class "md:-translate-y-5"


md__neg_translate_y_6 : Html.Attribute msg
md__neg_translate_y_6 =
    A.class "md:-translate-y-6"


md__neg_translate_y_8 : Html.Attribute msg
md__neg_translate_y_8 =
    A.class "md:-translate-y-8"


md__neg_translate_y_10 : Html.Attribute msg
md__neg_translate_y_10 =
    A.class "md:-translate-y-10"


md__neg_translate_y_12 : Html.Attribute msg
md__neg_translate_y_12 =
    A.class "md:-translate-y-12"


md__neg_translate_y_16 : Html.Attribute msg
md__neg_translate_y_16 =
    A.class "md:-translate-y-16"


md__neg_translate_y_20 : Html.Attribute msg
md__neg_translate_y_20 =
    A.class "md:-translate-y-20"


md__neg_translate_y_24 : Html.Attribute msg
md__neg_translate_y_24 =
    A.class "md:-translate-y-24"


md__neg_translate_y_32 : Html.Attribute msg
md__neg_translate_y_32 =
    A.class "md:-translate-y-32"


md__neg_translate_y_40 : Html.Attribute msg
md__neg_translate_y_40 =
    A.class "md:-translate-y-40"


md__neg_translate_y_48 : Html.Attribute msg
md__neg_translate_y_48 =
    A.class "md:-translate-y-48"


md__neg_translate_y_56 : Html.Attribute msg
md__neg_translate_y_56 =
    A.class "md:-translate-y-56"


md__neg_translate_y_64 : Html.Attribute msg
md__neg_translate_y_64 =
    A.class "md:-translate-y-64"


md__neg_translate_y_px : Html.Attribute msg
md__neg_translate_y_px =
    A.class "md:-translate-y-px"


md__neg_translate_y_full : Html.Attribute msg
md__neg_translate_y_full =
    A.class "md:-translate-y-full"


md__neg_translate_y_1over2 : Html.Attribute msg
md__neg_translate_y_1over2 =
    A.class "md:-translate-y-1/2"


md__translate_y_1over2 : Html.Attribute msg
md__translate_y_1over2 =
    A.class "md:translate-y-1/2"


md__translate_y_full : Html.Attribute msg
md__translate_y_full =
    A.class "md:translate-y-full"


md__hover__translate_x_0 : Html.Attribute msg
md__hover__translate_x_0 =
    A.class "md:hover:translate-x-0"


md__hover__translate_x_1 : Html.Attribute msg
md__hover__translate_x_1 =
    A.class "md:hover:translate-x-1"


md__hover__translate_x_2 : Html.Attribute msg
md__hover__translate_x_2 =
    A.class "md:hover:translate-x-2"


md__hover__translate_x_3 : Html.Attribute msg
md__hover__translate_x_3 =
    A.class "md:hover:translate-x-3"


md__hover__translate_x_4 : Html.Attribute msg
md__hover__translate_x_4 =
    A.class "md:hover:translate-x-4"


md__hover__translate_x_5 : Html.Attribute msg
md__hover__translate_x_5 =
    A.class "md:hover:translate-x-5"


md__hover__translate_x_6 : Html.Attribute msg
md__hover__translate_x_6 =
    A.class "md:hover:translate-x-6"


md__hover__translate_x_8 : Html.Attribute msg
md__hover__translate_x_8 =
    A.class "md:hover:translate-x-8"


md__hover__translate_x_10 : Html.Attribute msg
md__hover__translate_x_10 =
    A.class "md:hover:translate-x-10"


md__hover__translate_x_12 : Html.Attribute msg
md__hover__translate_x_12 =
    A.class "md:hover:translate-x-12"


md__hover__translate_x_16 : Html.Attribute msg
md__hover__translate_x_16 =
    A.class "md:hover:translate-x-16"


md__hover__translate_x_20 : Html.Attribute msg
md__hover__translate_x_20 =
    A.class "md:hover:translate-x-20"


md__hover__translate_x_24 : Html.Attribute msg
md__hover__translate_x_24 =
    A.class "md:hover:translate-x-24"


md__hover__translate_x_32 : Html.Attribute msg
md__hover__translate_x_32 =
    A.class "md:hover:translate-x-32"


md__hover__translate_x_40 : Html.Attribute msg
md__hover__translate_x_40 =
    A.class "md:hover:translate-x-40"


md__hover__translate_x_48 : Html.Attribute msg
md__hover__translate_x_48 =
    A.class "md:hover:translate-x-48"


md__hover__translate_x_56 : Html.Attribute msg
md__hover__translate_x_56 =
    A.class "md:hover:translate-x-56"


md__hover__translate_x_64 : Html.Attribute msg
md__hover__translate_x_64 =
    A.class "md:hover:translate-x-64"


md__hover__translate_x_px : Html.Attribute msg
md__hover__translate_x_px =
    A.class "md:hover:translate-x-px"


md__hover__neg_translate_x_1 : Html.Attribute msg
md__hover__neg_translate_x_1 =
    A.class "md:hover:-translate-x-1"


md__hover__neg_translate_x_2 : Html.Attribute msg
md__hover__neg_translate_x_2 =
    A.class "md:hover:-translate-x-2"


md__hover__neg_translate_x_3 : Html.Attribute msg
md__hover__neg_translate_x_3 =
    A.class "md:hover:-translate-x-3"


md__hover__neg_translate_x_4 : Html.Attribute msg
md__hover__neg_translate_x_4 =
    A.class "md:hover:-translate-x-4"


md__hover__neg_translate_x_5 : Html.Attribute msg
md__hover__neg_translate_x_5 =
    A.class "md:hover:-translate-x-5"


md__hover__neg_translate_x_6 : Html.Attribute msg
md__hover__neg_translate_x_6 =
    A.class "md:hover:-translate-x-6"


md__hover__neg_translate_x_8 : Html.Attribute msg
md__hover__neg_translate_x_8 =
    A.class "md:hover:-translate-x-8"


md__hover__neg_translate_x_10 : Html.Attribute msg
md__hover__neg_translate_x_10 =
    A.class "md:hover:-translate-x-10"


md__hover__neg_translate_x_12 : Html.Attribute msg
md__hover__neg_translate_x_12 =
    A.class "md:hover:-translate-x-12"


md__hover__neg_translate_x_16 : Html.Attribute msg
md__hover__neg_translate_x_16 =
    A.class "md:hover:-translate-x-16"


md__hover__neg_translate_x_20 : Html.Attribute msg
md__hover__neg_translate_x_20 =
    A.class "md:hover:-translate-x-20"


md__hover__neg_translate_x_24 : Html.Attribute msg
md__hover__neg_translate_x_24 =
    A.class "md:hover:-translate-x-24"


md__hover__neg_translate_x_32 : Html.Attribute msg
md__hover__neg_translate_x_32 =
    A.class "md:hover:-translate-x-32"


md__hover__neg_translate_x_40 : Html.Attribute msg
md__hover__neg_translate_x_40 =
    A.class "md:hover:-translate-x-40"


md__hover__neg_translate_x_48 : Html.Attribute msg
md__hover__neg_translate_x_48 =
    A.class "md:hover:-translate-x-48"


md__hover__neg_translate_x_56 : Html.Attribute msg
md__hover__neg_translate_x_56 =
    A.class "md:hover:-translate-x-56"


md__hover__neg_translate_x_64 : Html.Attribute msg
md__hover__neg_translate_x_64 =
    A.class "md:hover:-translate-x-64"


md__hover__neg_translate_x_px : Html.Attribute msg
md__hover__neg_translate_x_px =
    A.class "md:hover:-translate-x-px"


md__hover__neg_translate_x_full : Html.Attribute msg
md__hover__neg_translate_x_full =
    A.class "md:hover:-translate-x-full"


md__hover__neg_translate_x_1over2 : Html.Attribute msg
md__hover__neg_translate_x_1over2 =
    A.class "md:hover:-translate-x-1/2"


md__hover__translate_x_1over2 : Html.Attribute msg
md__hover__translate_x_1over2 =
    A.class "md:hover:translate-x-1/2"


md__hover__translate_x_full : Html.Attribute msg
md__hover__translate_x_full =
    A.class "md:hover:translate-x-full"


md__hover__translate_y_0 : Html.Attribute msg
md__hover__translate_y_0 =
    A.class "md:hover:translate-y-0"


md__hover__translate_y_1 : Html.Attribute msg
md__hover__translate_y_1 =
    A.class "md:hover:translate-y-1"


md__hover__translate_y_2 : Html.Attribute msg
md__hover__translate_y_2 =
    A.class "md:hover:translate-y-2"


md__hover__translate_y_3 : Html.Attribute msg
md__hover__translate_y_3 =
    A.class "md:hover:translate-y-3"


md__hover__translate_y_4 : Html.Attribute msg
md__hover__translate_y_4 =
    A.class "md:hover:translate-y-4"


md__hover__translate_y_5 : Html.Attribute msg
md__hover__translate_y_5 =
    A.class "md:hover:translate-y-5"


md__hover__translate_y_6 : Html.Attribute msg
md__hover__translate_y_6 =
    A.class "md:hover:translate-y-6"


md__hover__translate_y_8 : Html.Attribute msg
md__hover__translate_y_8 =
    A.class "md:hover:translate-y-8"


md__hover__translate_y_10 : Html.Attribute msg
md__hover__translate_y_10 =
    A.class "md:hover:translate-y-10"


md__hover__translate_y_12 =







