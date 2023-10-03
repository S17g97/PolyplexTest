prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Holiday Master'
,p_alias=>'HOLIDAY-MASTER'
,p_step_title=>'Holiday Master'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-button.a-IRR-sortWidget-button{',
'',
'   display:none  !important;',
'    pointer-events: none !important;',
'',
'}',
'.apexir-icon-sort-asc,',
'.apexir-icon-sort-desc {',
'  display: none !important;',
'}',
'.a-Icon.icon-menu {',
'  display: none !important;',
'}',
'',
'',
'.a-GV-columnWidthHandle {',
'/* cursor: none !important; */',
' pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'span.a-Icon.icon-irr-sort-asc {',
'    display: none !important;',
'}',
'th.a-GV-header.is-required {',
'    pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'.a-GV-header{',
'    pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'div#REPORT_ig_report_settings {',
'    display: none !important;',
'}',
'',
'div#t_Alert_Success {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230530150929'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114137579069217197)
,p_plug_name=>'Holiday List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       VC_HOLIDAY_ID,',
'       ORG_ID,',
'       to_date(DT_HOLIDAY,''DD-MM-YYYY'') DT_HOLIDAY,',
'       VC_DESCRIPTION,',
'       VC_DEFAULT_COMP,',
'       DT_MOD_DATE,',
'       VC_AUTH_CODE,',
'       DT_CRT_DATE,',
'    --    CH_STAT_FLAG,',
'    --    CH_STAT_UP_FLAG,',
'    --    VC_FIELD1,',
'    --    VC_FIELD2,',
'    --    VC_FIELD3,',
'    --    VC_FIELD4,',
'    --    DT_FIELD1,',
'    --    DT_FIELD2,',
'    --    NU_FIELD1,',
'    --    NU_FIELD2,',
'       VC_FIN_YEAR,',
'       vc_proj_id',
'  from MST_HOLIDAY',
'  where ORG_ID = :GLOBAL_COMP_CODE',
'  --and vc_proj_id = :GLOBAL_PROJ_ID',
'  --and VC_FIN_YEAR between  to_char(TO_DATE(:P84_START_FIN_YEAR,''DD-MM-YYYY''),''YYYY'') and TO_CHAR(TO_DATE(:P84_END_FIN_YEAR,''DD-MM-YYYY''),''YYYY'') ',
'  AND DT_HOLIDAY between TO_DATE(:P84_START_FIN_YEAR,''DD-MM-YYYY'') and TO_DATE(:P84_END_FIN_YEAR,''DD-MM-YYYY'')'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Holiday List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114123712612217178)
,p_name=>'VC_FIN_YEAR'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_FIN_YEAR'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'VC_FIN_YEAR'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P84_YEAR'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114126753963217182)
,p_name=>'DT_CRT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_CRT_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114127744377217183)
,p_name=>'VC_AUTH_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_AUTH_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GLOBAL_USER_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114128788369217184)
,p_name=>'DT_MOD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_MOD_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>90
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114129739811217185)
,p_name=>'VC_DEFAULT_COMP'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_DEFAULT_COMP'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114130807835217187)
,p_name=>'VC_DESCRIPTION'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>50
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'VC_DESCRIPTION'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114131725666217188)
,p_name=>'DT_HOLIDAY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_HOLIDAY'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Holiday Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>60
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>'P84_END_FIN_YEAR'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_item_width=>100
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'DT_HOLIDAY'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114132759974217189)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GLOBAL_COMP_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114133748716217191)
,p_name=>'VC_HOLIDAY_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_HOLIDAY_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114134736226217192)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114135728123217194)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114136238910217195)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(114321651261658286)
,p_name=>'VC_PROJ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_PROJ_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>230
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GLOBAL_PROJ_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(114137036888217196)
,p_internal_uid=>132489904275479521
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>false
,p_define_chart_view=>false
,p_enable_download=>false
,p_download_formats=>null
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(114136620971217195)
,p_interactive_grid_id=>wwv_flow_api.id(114137036888217196)
,p_static_id=>'68071'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(114136454977217195)
,p_report_id=>wwv_flow_api.id(114136620971217195)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114111240665179383)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>21
,p_column_id=>wwv_flow_api.id(114321651261658286)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114123323325217178)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(114123712612217178)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114126360615217181)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(114126753963217182)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114127365514217182)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(114127744377217183)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114128382302217184)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(114128788369217184)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114129355281217185)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(114129739811217185)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114130382312217186)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(114130807835217187)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114131393627217187)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(114131725666217188)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>317
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114132344388217189)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(114132759974217189)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114133320640217190)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(114133748716217191)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114134402105217191)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(114134736226217192)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(114135334903217194)
,p_view_id=>wwv_flow_api.id(114136454977217195)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(114135728123217194)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>47
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(114322638074658296)
,p_plug_name=>'Holiday Master'
,p_region_name=>'REPORT'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42312501528920050)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114137579069217197)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CHANGE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42312873011920051)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(114137579069217197)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42305882456920035)
,p_name=>'P84_DUPLICATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(114322638074658296)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42313263592920051)
,p_name=>'P84_START_FIN_YEAR'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(114137579069217197)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42313584362920052)
,p_name=>'P84_END_FIN_YEAR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(114137579069217197)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42313982766920052)
,p_name=>'P84_YEAR'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(114137579069217197)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select (EXTRACT(year FROM FY_STRT) || ''-'' || EXTRACT(year FROM FY_END)) yr',
'',
'FROM     APPUA.VW_FY',
'WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'Year'
,p_source=>'VC_FIN_YEAR'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42315304325920055)
,p_validation_name=>'year'
,p_validation_sequence=>10
,p_validation=>'P84_YEAR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Year'
,p_when_button_pressed=>wwv_flow_api.id(42312501528920050)
,p_associated_item=>wwv_flow_api.id(42313982766920052)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42314445456920053)
,p_tabular_form_region_id=>wwv_flow_api.id(114137579069217197)
,p_validation_name=>'New'
,p_validation_sequence=>20
,p_validation=>'DT_HOLIDAY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'#COLUMN_HEADER# must have a value.'
,p_associated_column=>'DT_HOLIDAY'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42316780897920057)
,p_name=>'duplicate collection'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(114137579069217197)
,p_triggering_element=>'DT_HOLIDAY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42317239021920058)
,p_event_id=>wwv_flow_api.id(42316780897920057)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'A NUMBER:=0;',
'',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P84_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''DT_HOLIDAY'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DT_HOLIDAY'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DT_HOLIDAY'' AND C001=:DT_HOLIDAY;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P84_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DT_HOLIDAY'',',
'                                       P_C001            => :DT_HOLIDAY',
'                        ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'DT_HOLIDAY'
,p_attribute_03=>'P84_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42317644394920059)
,p_name=>'messgae'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P84_DUPLICATE'
,p_condition_element=>'P84_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42318179168920059)
,p_event_id=>wwv_flow_api.id(42317644394920059)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'		apex.message.showErrors([',
'   		 {',
'       		 type:       "error",',
'        		location:   [ "page", "inline" ],',
'        		pageItem:   "",',
'        		message:    ''Duplicate Date'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42318638442920060)
,p_event_id=>wwv_flow_api.id(42317644394920059)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'DT_HOLIDAY,VC_DESCRIPTION'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'NULL;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42314771289920054)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(114137579069217197)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'holiday master - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        insert into mst_holiday (VC_HOLIDAY_ID,',
'       ORG_ID,',
'       DT_HOLIDAY,',
'       VC_DESCRIPTION,',
'       VC_AUTH_CODE,',
'       DT_CRT_DATE,',
'       VC_FIN_YEAR,',
'       VC_PROJ_ID )',
'        values (',
'            SEQ_HOLIDAY.NEXTVAL,',
'       :GLOBAL_COMP_CODE,',
'       :DT_HOLIDAY,',
'       :VC_DESCRIPTION,',
'       :GLOBAL_USER_CODE,',
'       sysdate,',
'       :P84_YEAR,',
'       :GLOBAL_PROJ_ID )',
'        returning rowid into :ROWID;',
'    when ''U'' then',
'        update mst_holiday',
'           set DT_HOLIDAY  = :DT_HOLIDAY,',
'               VC_DESCRIPTION = :VC_DESCRIPTION,',
'               DT_MOD_DATE = SYSDATE',
'         where rowid  = :ROWID;',
'    when ''D'' then',
'        delete mst_holiday',
'         where rowid = :ROWID;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42312501528920050)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42315968071920056)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DT_HOLIDAY'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DT_HOLIDAY'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42312873011920051)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42316358444920056)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'collection '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'DECLARE',
'cursor c1 is SELECT DT_HOLIDAY',
'  FROM MST_HOLIDAY',
' WHERE ORG_ID = :GLOBAL_COMP_CODE',
' and vc_proj_id = :GLOBAL_PROJ_ID;',
'BEGIN',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''DT_HOLIDAY'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DT_HOLIDAY'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''DT_HOLIDAY'') THEN',
'    APEX_COLLECTION.Create_COLLECTION(''DT_HOLIDAY'');',
'END IF;',
'  FOR I IN C1 LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DT_HOLIDAY'',',
'                                       P_C001            => I.DT_HOLIDAY',
'                                      ',
'                                     ',
'                                       );',
'   END LOOP;',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42315630042920055)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'FINANCIAL YEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT TO_DATE(FY_STRT,''DD-MM-YYYY'')START_FIN_YEAR_DATE,TO_DATE(FY_END,''DD-MM-YYYY'')END_FIN_YEAR_DATE',
'INTO',
':P84_START_FIN_YEAR,',
':P84_END_FIN_YEAR',
'FROM     APPUA.VW_FY',
'WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ;',
'    --   and      :P84_INV_SCH_DATE  BETWEEN FY_STRT AND  FY_END ;',
'       exception when others then null;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
