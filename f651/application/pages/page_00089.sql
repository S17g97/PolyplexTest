prompt --application/pages/page_00089
begin
--   Manifest
--     PAGE: 00089
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
 p_id=>89
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Details'
,p_alias=>'METER-DETAILS'
,p_step_title=>'Meter Details'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'div#METER {',
'    width: 100% !important;',
'}',
'',
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
'div#METER_ig_report_settings {',
'    display: none !important;',
'}',
'',
'div#t_Alert_Success {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230530125909'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107964147104320861)
,p_plug_name=>'Meter Details'
,p_region_name=>'METER'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_08'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ORG_ID,',
'       PRJ_ID,',
'       NU_DETAILS_NO,',
'       VC_PARTICULARS,',
'       VC_MAIN_METER,',
'       VC_MAIN_CAL_TYPE,',
'       VC_MAIN_CAL,',
'       VC_CHK_METER,',
'       VC_CHK_CAL_TYPE,',
'       VC_CHK_CAL,',
'       VC_USER_CODE,',
'       DT_CREATED_DATE,',
'       DT_MOD_DATE',
'  from MST_METER_DETAILS',
' where org_id = :GLOBAL_COMP_CODE',
'and prj_id = :GLOBAL_PROJ_ID'))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Meter Details'
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
 p_id=>wwv_flow_api.id(107962354104320843)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962450436320844)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962506406320845)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>160
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962623563320846)
,p_name=>'DT_MOD_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_MOD_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>150
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962746494320847)
,p_name=>'DT_CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_CREATED_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>140
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'sysdate'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962845699320848)
,p_name=>'VC_USER_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_USER_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GLOBAL_USER_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962950436320849)
,p_name=>'VC_CHK_CAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_CHK_CAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Meter Calculation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'VC_CHK_CAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107962988224320850)
,p_name=>'VC_CHK_CAL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_CHK_CAL_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Check Meter Calculation Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>20
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(42209746519138057)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'<---Select--->'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'VC_CHK_CAL_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963137043320851)
,p_name=>'VC_CHK_METER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_CHK_METER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Check Meter'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'VC_CHK_METER'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963232651320852)
,p_name=>'VC_MAIN_CAL'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_MAIN_CAL'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Main Meter Calculation'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'VC_MAIN_CAL'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963334922320853)
,p_name=>'VC_MAIN_CAL_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_MAIN_CAL_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Main Meter Calculation Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>50
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(42209746519138057)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'<---Select--->'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'VC_MAIN_CAL_TYPE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963451661320854)
,p_name=>'VC_MAIN_METER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_MAIN_METER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Main Meter'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>20
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_static_id=>'VC_MAIN_METER'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963560473320855)
,p_name=>'VC_PARTICULARS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_PARTICULARS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Particulars'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>true
,p_max_length=>100
,p_lov_type=>'STATIC'
,p_lov_source=>'STATIC2:Class of Meter;Class of Meter,Meter Sr. No.;Meter Sr. No.,Accuracy Class;Accuracy Class,Line Voltage;Line Voltage,Line CT Ratio;Line CT Ratio,Line PT Ratio;Line PT Ratio,Meter CT Ratio;Meter CT Ratio,Meter PT Ratio;Meter PT Ratio,Multiplier F'
||'actor;Multiplier Factor,Meter M.F.;Meter M.F.'
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'VC_PARTICULARS'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963590737320856)
,p_name=>'NU_DETAILS_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_DETAILS_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963752010320857)
,p_name=>'PRJ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRJ_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attribute_01=>'N'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107963836718320858)
,p_name=>'ORG_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ORG_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':GLOBAL_COMP_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(107963929511320859)
,p_internal_uid=>126316796898583184
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
 p_id=>wwv_flow_api.id(106833949501950205)
,p_interactive_grid_id=>wwv_flow_api.id(107963929511320859)
,p_static_id=>'139978'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(106833689727950204)
,p_report_id=>wwv_flow_api.id(106833949501950205)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106818075965933976)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(107962450436320844)
,p_is_visible=>true
,p_is_frozen=>true
,p_width=>10
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106821543105950160)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>14
,p_column_id=>wwv_flow_api.id(107962506406320845)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106822432153950162)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>13
,p_column_id=>wwv_flow_api.id(107962623563320846)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106823286442950165)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>12
,p_column_id=>wwv_flow_api.id(107962746494320847)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106824192419950168)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(107962845699320848)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106825147663950171)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(107962950436320849)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106825963776950173)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(107962988224320850)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106826867513950176)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(107963137043320851)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>70
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106827788120950179)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(107963232651320852)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>80
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106828687191950182)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(107963334922320853)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>100
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106829568273950184)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(107963451661320854)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106830487671950187)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(107963560473320855)
,p_is_visible=>true
,p_is_frozen=>false
,p_width=>60
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106831457231950190)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(107963590737320856)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106832316157950193)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(107963752010320857)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106833247103950200)
,p_view_id=>wwv_flow_api.id(106833689727950204)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(107963836718320858)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42201282357138044)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107964147104320861)
,p_button_name=>'Save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42200926505138044)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(107964147104320861)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42201712356138045)
,p_name=>'P89_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(107964147104320861)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42202120809138046)
,p_name=>'P89_DUPLICATE_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(107964147104320861)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42202439497138046)
,p_name=>'P89_DUPLICATE_1_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(107964147104320861)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42205232748138050)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107964147104320861)
,p_triggering_element=>'VC_PARTICULARS'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42205773246138051)
,p_event_id=>wwv_flow_api.id(42205232748138050)
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
':P89_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''METER_DETAILS'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS ',
'        WHERE COLLECTION_NAME=''METER_DETAILS''',
'        AND C001 =:VC_PARTICULARS',
'        -- AND C002 =:VC_MAIN_CAL_TYPE',
'        -- AND C003 =:VC_CHK_CAL_TYPE ',
'       ;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P89_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS'',',
'                                       P_C001            => :VC_PARTICULARS',
'                                    --    P_C002           =>  :VC_MAIN_CAL_TYPE,',
'                                    --   P_C003           =>  :VC_CHK_CAL_TYPE',
'                        ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'VC_PARTICULARS'
,p_attribute_03=>'P89_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42206139935138051)
,p_name=>'ALERT'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P89_DUPLICATE'
,p_condition_element=>'P89_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42206537923138052)
,p_event_id=>wwv_flow_api.id(42206139935138051)
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
'        		message:    ''Duplicate Value'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42207119738138052)
,p_event_id=>wwv_flow_api.id(42206139935138051)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_PARTICULARS,VC_CHK_CAL_TYPE,VC_MAIN_CAL_TYPE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42207563382138053)
,p_event_id=>wwv_flow_api.id(42206139935138051)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P89_DUPLICATE'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42207951792138053)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107964147104320861)
,p_triggering_element=>'VC_MAIN_CAL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42208458540138054)
,p_event_id=>wwv_flow_api.id(42207951792138053)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'A NUMBER:=0;',
'',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P89_DUPLICATE_1:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS1'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''METER_DETAILS1'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS ',
'        WHERE COLLECTION_NAME=''METER_DETAILS1''',
'        -- AND C001 =:VC_PARTICULARS',
'        AND C002 =:VC_MAIN_CAL_TYPE',
'        -- AND C003 =:VC_CHK_CAL_TYPE ',
'       ;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P89_DUPLICATE_1:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS1'',',
'                                    --    P_C001            => :VC_PARTICULARS',
'                                        P_C002           =>  :VC_MAIN_CAL_TYPE',
'                                    --   P_C003           =>  :VC_CHK_CAL_TYPE',
'                        ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'VC_MAIN_CAL_TYPE'
,p_attribute_03=>'P89_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42208888965138054)
,p_name=>'New_2'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107964147104320861)
,p_triggering_element=>'VC_CHK_CAL_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42209372244138055)
,p_event_id=>wwv_flow_api.id(42208888965138054)
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
':P89_DUPLICATE_1_1:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS2'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''METER_DETAILS2'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS ',
'        WHERE COLLECTION_NAME=''METER_DETAILS2''',
'        AND C003 =:VC_CHK_CAL_TYPE',
'        -- AND C002 =:VC_MAIN_CAL_TYPE',
'        -- AND C003 =:VC_CHK_CAL_TYPE ',
'       ;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P89_DUPLICATE_1_1:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS2'',',
'                                    --    P_C001            => :VC_PARTICULARS',
'                                        -- P_C002           =>  :VC_MAIN_CAL_TYPE',
'                                      P_C003           =>  :VC_CHK_CAL_TYPE',
'                        ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'VC_CHK_CAL_TYPE'
,p_attribute_03=>'P89_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42203264035138047)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(107964147104320861)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'New - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42201282357138044)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42202887836138047)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(107964147104320861)
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''METER_DETAILS'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42200926505138044)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42204460485138049)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Collection_1'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42200926505138044)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42204880842138049)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'METER DETAILS'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'DECLARE',
'cursor c1 is SELECT VC_PARTICULARS',
'',
'                        ',
'  FROM MST_METER_DETAILS',
' WHERE ORG_ID = :GLOBAL_COMP_CODE',
' and  prj_id = :GLOBAL_PROJ_ID;',
'BEGIN',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''METER_DETAILS'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS'') THEN',
'    APEX_COLLECTION.Create_COLLECTION(''METER_DETAILS'');',
'END IF;',
'  FOR I IN C1 LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS'',',
'                                        P_C001            => I.VC_PARTICULARS',
'                                        -- P_C002            => I.VC_MAIN_CAL_TYPE,',
'                                        -- P_C003            => I.VC_CHK_CAL_TYPE',
'                        ',
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
 p_id=>wwv_flow_api.id(42204126488138049)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'METER DETAILS_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'DECLARE',
'cursor c1 is SELECT VC_MAIN_CAL_TYPE',
'                                      ',
'                        ',
'  FROM MST_METER_DETAILS',
' WHERE ORG_ID = :GLOBAL_COMP_CODE',
' and  prj_id = :GLOBAL_PROJ_ID;',
'BEGIN',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS1'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''METER_DETAILS1'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS1'') THEN',
'    APEX_COLLECTION.Create_COLLECTION(''METER_DETAILS1'');',
'END IF;',
'  FOR I IN C1 LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS1'',',
'                                        -- P_C001            => I.VC_PARTICULARS',
'                                        P_C002            => I.VC_MAIN_CAL_TYPE',
'                                        -- P_C003            => I.VC_CHK_CAL_TYPE',
'                        ',
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
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42203716624138048)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'METER DETAILS_1_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'	',
'DECLARE',
'cursor c1 is SELECT  VC_CHK_CAL_TYPE',
'                        ',
'  FROM MST_METER_DETAILS',
' WHERE ORG_ID = :GLOBAL_COMP_CODE',
' and  prj_id = :GLOBAL_PROJ_ID;',
'BEGIN',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS2'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''METER_DETAILS2'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''METER_DETAILS2'') THEN',
'    APEX_COLLECTION.Create_COLLECTION(''METER_DETAILS2'');',
'END IF;',
'  FOR I IN C1 LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''METER_DETAILS2'',',
'                                        -- P_C001            => I.VC_PARTICULARS',
'                                        -- -- P_C002            => I.VC_MAIN_CAL_TYPE,',
'                                         P_C003            => I.VC_CHK_CAL_TYPE',
'                        ',
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
null;
wwv_flow_api.component_end;
end;
/
