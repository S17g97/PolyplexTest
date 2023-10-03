prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Workflow-Master'
,p_alias=>'WORKFLOW'
,p_step_title=>'Workflow'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230927170035'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12221915575897484)
,p_plug_name=>'View'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_WORKFLOW_NO,NU_LEVEL_SEQ,VC_USER_CODE,VC_COMP_CODE',
'FROM DT_WORKFLOW',
'WHERE VC_COMP_CODE=:global_comp_code',
'AND   VC_PRJ_ID  = :GLOBAL_PROJ_ID',
'AND VC_WORKFLOW_NO=:P22_VC_WORKFLOW_NO'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P22_VC_WORKFLOW_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P22_NEW'
,p_plug_display_when_cond2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>8.5
,p_prn_height=>11
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#9bafde'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'normal'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#efefef'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(12221762316897483)
,p_max_row_count=>'1000000'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'ADMIN'
,p_internal_uid=>6131105070364842
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15127603596781323)
,p_db_column_name=>'VC_WORKFLOW_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Workflow No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15127208585781323)
,p_db_column_name=>'NU_LEVEL_SEQ'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Level Seq'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15126849749781322)
,p_db_column_name=>'VC_USER_CODE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Username'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15126434965781321)
,p_db_column_name=>'VC_COMP_CODE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Vc Comp Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11144619413285685)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32268'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VC_WORKFLOW_NO:NU_LEVEL_SEQ:VC_USER_CODE:VC_COMP_CODE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11334649334329102)
,p_plug_name=>'Workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'HD_WORKFLOW'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11330339798329074)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317032401492176)
,p_plug_display_sequence=>60
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P22_NEW'
,p_plug_display_when_cond2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11267258464730390)
,p_plug_name=>'Add'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID as rk_id,',
'       VC_WORKFLOW_NO,',
'       NU_LEVEL_SEQ,',
'       VC_USER_CODE,',
'       VC_USER_NAME',
'  from TEMP_LEVEL',
'where NU_LEVEL_SEQ between 1 and :P22_NU_LEVEL'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P22_NU_LEVEL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P22_NEW'
,p_plug_display_when_cond2=>'A'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12222106204897486)
,p_name=>'VC_USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'VC_USER_NAME'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11266122080730382)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'Y'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11265575261730382)
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
 p_id=>wwv_flow_api.id(11264408648730380)
,p_name=>'VC_WORKFLOW_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_WORKFLOW_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>':P22_VC_WORKFLOW_NO'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11263762535730380)
,p_name=>'NU_LEVEL_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_LEVEL_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Level Seq'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>40
,p_value_alignment=>'RIGHT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'NU_LEVEL_SEQ'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11263191729730380)
,p_name=>'VC_USER_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_USER_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'User'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select usr_name d,usr_id r from APPUA.VW_USER',
'where org_id=:global_comp_code'))
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'VC_USER_CODE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(1814597330468338)
,p_name=>'RK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RK_ID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11266832194730382)
,p_internal_uid=>7086035192531943
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SET'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(11266451659730382)
,p_interactive_grid_id=>wwv_flow_api.id(11266832194730382)
,p_static_id=>'32064'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(11266300845730382)
,p_report_id=>wwv_flow_api.id(11266451659730382)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11265215534730380)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(11265575261730382)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11264025327730380)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(11264408648730380)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11263413348730380)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11263762535730380)
,p_is_visible=>true
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11262818591730380)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11263191729730380)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11198254714408882)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(12222106204897486)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(1051609431067242)
,p_view_id=>wwv_flow_api.id(11266300845730382)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(1814597330468338)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11143275027206358)
,p_plug_name=>'EDIT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       VC_WORKFLOW_NO,',
'       NU_LEVEL_SEQ,',
'       VC_USER_CODE,',
'       get_user_name(vc_comp_code,vc_user_code)User_name,',
'       VC_COMP_CODE',
'  from DT_WORKFLOW a',
'  WHERE VC_COMP_CODE=:global_comp_code',
'AND   VC_PRJ_ID  = :GLOBAL_PROJ_ID',
'AND VC_WORKFLOW_NO=:P22_VC_WORKFLOW_NO'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P22_VC_WORKFLOW_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P22_NEW'
,p_plug_display_when_cond2=>'E'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(12221270235897478)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11142326287206269)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11141806650206258)
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
 p_id=>wwv_flow_api.id(11140652465206147)
,p_name=>'VC_WORKFLOW_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_WORKFLOW_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Workflow No'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'VC_WORKFLOW_NO'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11140106889206099)
,p_name=>'NU_LEVEL_SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_LEVEL_SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Level Seq'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>50
,p_value_alignment=>'RIGHT'
,p_attribute_02=>'VALUE'
,p_attribute_05=>'PLAIN'
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11139586013206097)
,p_name=>'VC_USER_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_USER_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'User Code'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>60
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_is_required=>false
,p_max_length=>10
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15088353366781243)
,p_lov_display_extra=>true
,p_lov_display_null=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'VC_USER_CODE1'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11139022619206096)
,p_name=>'VC_COMP_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_COMP_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(11085106635474619)
,p_name=>'USER_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'User Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'USER_NAME'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(11142883094206322)
,p_internal_uid=>7209984293056003
,p_is_editable=>true
,p_edit_operations=>'u:d'
,p_lost_update_check_type=>'VALUES'
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>false
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(11142659819206305)
,p_interactive_grid_id=>wwv_flow_api.id(11142883094206322)
,p_static_id=>'32065'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(11142548823206302)
,p_report_id=>wwv_flow_api.id(11142659819206305)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11141410331206254)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(11141806650206258)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11140285706206146)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(11140652465206147)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11139840182206097)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(11140106889206099)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11139199660206097)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(11139586013206097)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11138603192206096)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(11139022619206096)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11135251958189527)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(12221270235897478)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(11068136953803513)
,p_view_id=>wwv_flow_api.id(11142548823206302)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(11085106635474619)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15124925819781318)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(11334649334329102)
,p_button_name=>'Generates_Levels'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Generate Levels'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P22_NEW'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
,p_grid_column_span=>3
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15113731857781302)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11330339798329074)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P22_VC_WORKFLOW_NO'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15114880812781303)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11330339798329074)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--noUI:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'DELETE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15114525267781302)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(11330339798329074)
,p_button_name=>'DELETE'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--danger:t-Button--simple'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15125294481781319)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11334649334329102)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15114115997781302)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11330339798329074)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>save'
,p_button_position=>'NEXT'
,p_button_condition=>'P22_VC_WORKFLOW_NO'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15088664834781244)
,p_branch_name=>'page21'
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'CREATE,SAVE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15281825110151599)
,p_branch_action=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15114880812781303)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15124542611781317)
,p_name=>'P22_VC_WORKFLOW_NO'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_prompt=>'Workflow No'
,p_source=>'VC_WORKFLOW_NO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15124163589781315)
,p_name=>'P22_VC_WORKFLOW_NAME'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_prompt=>'Workflow Name'
,p_source=>'VC_WORKFLOW_NAME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P22_NEW'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15123684177781314)
,p_name=>'P22_VC_DOC_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_prompt=>'Document Type'
,p_source=>'VC_DOC_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:PPA;PPA,JMR;JMR,Invoice-JMR;IJMR,SCHEDULE;SCH,Invoice Schedule-Provisonal;IPSCH,Invoice Schedule-FInal;IFSCH,Invoice-IEX;IEX,Meter Replacement;MTR,REC;REC,CDM;CDM,Meter Calibration;CALIB'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_read_only_when=>'P22_NEW'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15123307022781314)
,p_name=>'P22_VC_DOC_SUBTYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_source=>'VC_DOC_SUBTYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15122936867781314)
,p_name=>'P22_NU_EAP_TIME'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_source=>'NU_EAP_TIME'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15122509473781313)
,p_name=>'P22_CH_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_default=>'Y'
,p_prompt=>'Active Status'
,p_source=>'CH_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_CHECKBOX'
,p_lov=>'STATIC:Yes;Y'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P22_NEW'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15122126708781312)
,p_name=>'P22_VC_COMP_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_source=>'VC_COMP_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15121729689781312)
,p_name=>'P22_DT_CRT_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_default=>'return sysdate;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'DT_CRT_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15121346555781312)
,p_name=>'P22_DT_MOD_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_source=>'DT_MOD_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15120929636781311)
,p_name=>'P22_NU_LEVEL'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_prompt=>'Workflow Level'
,p_source=>'NU_LEVEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:1;1,2;2,3;3,4;4,5;5,6;6,7;7,8;8,9;9'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>6
,p_read_only_when=>'P22_NEW'
,p_read_only_when2=>'A'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15120499990781310)
,p_name=>'P22_ROWID'
,p_source_data_type=>'ROWID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_item_source_plug_id=>wwv_flow_api.id(11334649334329102)
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15120104923781310)
,p_name=>'P22_NEW'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15119692512781310)
,p_name=>'P22_DUP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(11334649334329102)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15104043380781278)
,p_validation_name=>'P22_VC_WORKFLOW_NAME'
,p_validation_sequence=>10
,p_validation=>'P22_VC_WORKFLOW_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Workflow Name must some Value!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15103588803781277)
,p_validation_name=>'P22_VC_DOC_TYPE'
,p_validation_sequence=>20
,p_validation=>'P22_VC_DOC_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Document type must have some value!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15103242140781277)
,p_validation_name=>'P22_NU_LEVEL'
,p_validation_sequence=>30
,p_validation=>'P22_NU_LEVEL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Level must have some value!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15102848698781276)
,p_validation_name=>'New'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_count number;',
'begin',
'if  :APEX$ROW_STATUS =''U'' then -- You can use ''C'' OR ''I''',
'select count(1) into l_count FROM dt_workflow where vc_user_code=:vc_user_code;',
'end if;',
'if l_count>=1 then',
'return ''User ''||:vc_user_code||'' is duplicate'';',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_always_execute=>'Y'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15113731857781302)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15109454423781286)
,p_tabular_form_region_id=>wwv_flow_api.id(11267258464730390)
,p_validation_name=>'VC_USER_CODE'
,p_validation_sequence=>50
,p_validation=>'VC_USER_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'USER HAVE SOME VALUES!!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15102407802781276)
,p_validation_name=>'All level users'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_count number;',
'begin',
'',
'select count(*) into v_count from apex_collections where collection_name=''STATUS_NOT_NULL'';',
'',
'if v_count = :P22_NU_LEVEL then',
'return true;',
'else return false;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Please Enter all level username!!'
,p_when_button_pressed=>wwv_flow_api.id(15114115997781302)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15102057704781275)
,p_validation_name=>'Duplicate document type'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_workflow number;',
'begin',
'select count(*) into v_workflow from hd_workflow ',
'where vc_comp_code=:global_comp_code',
'AND   VC_PRJ_ID  = :GLOBAL_PROJ_ID',
'and VC_DOC_TYPE =:P22_VC_DOC_TYPE',
'and nvl(CH_ACTIVE,''N'') = ''Y'';',
'',
'',
'if v_workflow = 0 then ',
'return true;',
'else ',
'return false;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Document type &P22_VC_DOC_TYPE. is already in active stage!!'
,p_when_button_pressed=>wwv_flow_api.id(15114115997781302)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15100470158781273)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15114880812781303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15100016292781273)
,p_event_id=>wwv_flow_api.id(15100470158781273)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P22_VC_WORKFLOW_NAME,P22_VC_DOC_TYPE,P22_VC_DOC_SUBTYPE,P22_NU_EAP_TIME,P22_NU_LEVEL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15099539147781272)
,p_event_id=>wwv_flow_api.id(15100470158781273)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11267258464730390)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15099167159781271)
,p_name=>'duplicate_add'
,p_event_sequence=>10
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11267258464730390)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15098594612781271)
,p_event_id=>wwv_flow_api.id(15099167159781271)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P22_DUP:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''COLL1'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''COLL1'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''COLL1'' AND C001=:RK_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'        SELECT SEQ_ID INTO COLL_SEQ FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''COLL1'' AND C001=:RK_ID;',
'        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''COLL1'', P_SEQ => COLL_SEQ);',
'        SELECT COUNT(*) INTO B FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''COLL1'' AND C002=:VC_USER_CODE;',
'        IF(B>0) THEN',
'            :P22_DUP:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLL1'',',
'                                       P_C001            => :RK_ID,',
'                                       P_C002            => :VC_USER_CODE',
'                                       );',
'        END IF;',
'    ELSE',
'        SELECT COUNT(*) INTO C FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''COLL1'' AND C002=:VC_USER_CODE;  ',
'        IF(C>0) THEN',
'            :P22_DUP:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''COLL1'',',
'                                       P_C001            => :RK_ID,',
'                                       P_C002            => :VC_USER_CODE',
'                                       );',
'        END IF;',
'END IF;',
'END;'))
,p_attribute_02=>'VC_USER_CODE,RK_ID'
,p_attribute_03=>'P22_DUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15098173623781270)
,p_name=>'username_add'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11267258464730390)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15097722824781269)
,p_event_id=>wwv_flow_api.id(15098173623781270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USR_NAME from APPUA.VW_USER ',
'where ORG_ID=:global_comp_code',
'and USR_ID=:vc_user_code'))
,p_attribute_07=>'VC_USER_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15097358148781269)
,p_name=>'DISABLE ITEMS'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15096829390781269)
,p_event_id=>wwv_flow_api.id(15097358148781269)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("NU_LEVEL_SEQ").node.readOnly = true;',
'',
'apex.item("VC_USER_NAME").node.readOnly = true;',
'',
'apex.item("USER_NAME").node.readOnly = true;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15096405667781268)
,p_name=>'username_edit'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11143275027206358)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15095871534781267)
,p_event_id=>wwv_flow_api.id(15096405667781268)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'USER_NAME'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select USR_NAME from APPUA.VW_USER ',
'where ORG_ID=:global_comp_code',
'and USR_ID=:vc_user_code'))
,p_attribute_07=>'VC_USER_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15095498175781267)
,p_name=>'Refresh region'
,p_event_sequence=>50
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15124925819781318)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15094992257781267)
,p_event_id=>wwv_flow_api.id(15095498175781267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11267258464730390)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15094590549781267)
,p_name=>'alert'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P22_DUP'
,p_condition_element=>'P22_DUP'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15094111095781265)
,p_event_id=>wwv_flow_api.id(15094590549781267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Duplicate user!!'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15093650971781265)
,p_event_id=>wwv_flow_api.id(15094590549781267)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_USER_CODE,VC_USER_NAME'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15093227646781265)
,p_name=>'duplicate_edit'
,p_event_sequence=>80
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11143275027206358)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15092713151781264)
,p_event_id=>wwv_flow_api.id(15093227646781265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_USER_CODE VARCHAR2(100);',
'V_SEQ NUMBER;',
'BEGIN',
':P22_dup := null;',
'begin',
'      SELECT C001,SEQ_ID INTO V_USER_CODE,V_SEQ ',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''COLL2''',
'      AND C001=:VC_USER_CODE;',
'      ',
'      exception when no_data_found then',
'      null;',
'end;      ',
'      IF V_USER_CODE=:VC_USER_CODE THEN',
'    --  RETURN ''DUBLICATE USER'';',
'     :P22_dup :=''Y'';',
'      ELSE',
'  --    APEX_COLLECTION.CREATE_COLLECTION(''COLL2'');',
'      APEX_COLLECTION.ADD_MEMBER(',
'      P_COLLECTION_NAME => ''COLL2'',',
'      P_C001  =>:VC_USER_CODE',
'      );',
'      END IF;',
'      ',
'     ',
'      END;',
'      '))
,p_attribute_02=>'VC_USER_CODE'
,p_attribute_03=>'P22_DUP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15092300038781264)
,p_name=>'DISABLE'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15091836592781263)
,p_event_id=>wwv_flow_api.id(15092300038781264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15114115997781302)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15091375435781263)
,p_name=>'ENABLE'
,p_event_sequence=>100
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11267258464730390)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15090906501781263)
,p_event_id=>wwv_flow_api.id(15091375435781263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(15114115997781302)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15090467475781262)
,p_name=>'New_1'
,p_event_sequence=>110
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(11267258464730390)
,p_triggering_element=>'VC_USER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15090036216781245)
,p_event_id=>wwv_flow_api.id(15090467475781262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''STATUS_NOT_NULL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''STATUS_NOT_NULL'');',
'    END IF;',
'    ',
' BEGIN',
' SELECT COUNT(*)',
' INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''STATUS_NOT_NULL'' AND C001=:RK_ID;',
' EXCEPTION',
' WHEN NO_DATA_FOUND THEN',
'    NULL;',
'    END;',
'    IF(A>0) THEN',
'        SELECT SEQ_ID INTO COLL_SEQ FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''STATUS_NOT_NULL'' AND C001=:RK_ID;',
'        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''STATUS_NOT_NULL'', P_SEQ => COLL_SEQ);',
'         APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''STATUS_NOT_NULL'',',
'                                    P_C001            => :RK_ID',
'                           );',
'ELSE',
'APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''STATUS_NOT_NULL'',',
'                           P_C001            => :RK_ID',
'                           );',
'END IF;',
'END;'))
,p_attribute_02=>'RK_ID'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15089623918781245)
,p_name=>'clear collection'
,p_event_sequence=>120
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15114880812781303)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15089088387781244)
,p_event_id=>wwv_flow_api.id(15089623918781245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''STATUS_NOT_NULL'') THEN',
'APEX_COLLECTION.DELETE_COLLECTION(''STATUS_NOT_NULL'');',
'--V_MSG:=''COLLECTION_DELETED'';',
'END IF;',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''COLL1'') THEN',
'APEX_COLLECTION.DELETE_COLLECTION(''COLL1'');',
'--V_MSG:=''COLLECTION_DELETED'';',
'END IF;',
'',
'END;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15101725853781275)
,p_process_sequence=>5
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'HD_WORKFLOW'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'l_workflow_no VARCHAR2(100);',
'l_workflow_no_dtl number;',
'begin',
'	IF :P22_NEW=''A'' THEN',
'   /* SELECT NU_END_NUMBER + 1',
'		 							INTO   l_workflow_no ',
'		 							FROM invent.MST_CONTROL',
'		 							WHERE VC_COMP_CODE=:global_comp_code',
'		 							AND VC_CONTROL_CODE=''M'';',
'*/',
'    SELECT  nvl(max(VC_WORKFLOW_NO),0) +1 ',
'    INTO   l_workflow_no ',
'    FROM   hd_workflow',
'    WHERE  VC_COMP_CODE = :GLOBAL_COMP_CODE;',
'                                       ',
'                                    ',
'	insert into hd_workflow(VC_COMP_CODE,VC_PRJ_ID,VC_WORKFLOW_NO,VC_WORKFLOW_NAME,VC_DOC_TYPE,VC_DOC_SUBTYPE,NU_LEVEL,DT_CRT_DATE,CH_ACTIVE,NU_EAP_TIME)	',
'                values(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,l_workflow_no,:P22_VC_WORKFLOW_NAME,:P22_VC_DOC_TYPE,:P22_VC_DOC_SUBTYPE,:P22_NU_LEVEL,SYSDATE,''Y'',:P22_NU_EAP_TIME) ;',
'                ',
'              ',
'              ',
'              BEGIN',
'               IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''WORKFLOW_NO'') THEN',
'               APEX_COLLECTION.CREATE_COLLECTION(''WORKFLOW_NO'');',
'               END IF;',
'               APEX_COLLECTION.TRUNCATE_COLLECTION(''WORKFLOW_NO'');',
'',
'               APEX_COLLECTION.ADD_MEMBER(',
'                   P_COLLECTION_NAME =>''WORKFLOW_NO'',',
'                   P_C001 => l_workflow_no',
'                   ',
'                  ',
'               );',
'                 END;',
'							',
' 								 /*	UPDATE invent.MST_CONTROL',
'		 							SET NU_END_NUMBER=NU_END_NUMBER + 1,',
'	       					vc_auth_code = ''01'',',
'       						dt_mod_date = sysdate',
'		 							WHERE VC_COMP_CODE=:global_comp_code',
'		 							AND VC_CONTROL_CODE=''M'';*/',
'                                    ',
'  ELSIF :P22_NEW=''E'' THEN',
'  ',
'  UPDATE HD_WORKFLOW SET VC_WORKFLOW_NAME=:P22_VC_WORKFLOW_NAME, ',
'                         VC_DOC_TYPE=:P22_VC_DOC_TYPE,',
'                         VC_DOC_SUBTYPE=:P22_VC_DOC_SUBTYPE,',
'                         CH_ACTIVE=:P22_CH_ACTIVE,',
'                         NU_EAP_TIME=:P22_NU_EAP_TIME',
'                         WHERE VC_COMP_CODE = :GLOBAL_COMP_CODE',
'                         AND   VC_PRJ_ID    = :GLOBAL_PROJ_ID ',
'                         AND VC_WORKFLOW_NO=:P22_VC_WORKFLOW_NO;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Workflow Created!!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15109141106781286)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11267258464730390)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Detail - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_workflow_no varchar2(10);',
'',
'begin',
'select C001 into v_workflow_no from apex_collections where collection_name=''WORKFLOW_NO'';',
'',
'begin',
'    case :APEX$ROW_STATUS',
'           ',
'    when ''U'' then',
'        insert into DT_WORKFLOW (VC_WORKFLOW_NO	,NU_LEVEL_SEQ, VC_COMP_CODE,VC_USER_CODE,VC_PRJ_ID)',
'        values (v_workflow_no,:NU_LEVEL_SEQ, :global_comp_code, :VC_USER_CODE,:GLOBAL_PROJ_ID );',
'     --   returning rowid into :VC_WORKFLOW_NO;',
'    ',
'    end case;',
'end;',
'end;',
''))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15114115997781302)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15115611818781304)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11334649334329102)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Workflow'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14552519303810066)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15104538570781279)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(11143275027206358)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'EDIT WORKFLOW - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15113731857781302)
,p_process_success_message=>'updated!!'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11422841422460947)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update level in  Hd workflow'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_lvl NUMBER;',
'BEGIN ',
'select count(*)  INTO v_lvl from DT_WORKFLOW where VC_COMP_CODE = :GLOBAL_COMP_CODE AND VC_WORKFLOW_NO = :P22_VC_WORKFLOW_NO;',
'',
'UPDATE HD_WORKFLOW',
'SET NU_LEVEL = v_lvl',
'where VC_COMP_CODE = :GLOBAL_COMP_CODE AND VC_WORKFLOW_NO = :P22_VC_WORKFLOW_NO;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15113731857781302)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15100915420781274)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''COLL1'') THEN',
'APEX_COLLECTION.DELETE_COLLECTION(''COLL1'');',
'--V_MSG:=''COLLECTION_DELETED'';',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15116037654781304)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(11334649334329102)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Workflow'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11422794089460946)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  VC_WORKFLOW_NAME,VC_DOC_TYPE,VC_DOC_SUBTYPE,NU_LEVEL,CH_ACTIVE,NU_EAP_TIME',
'INTO      :P22_VC_WORKFLOW_NAME,:P22_VC_DOC_TYPE,:P22_VC_DOC_SUBTYPE,:P22_NU_LEVEL,:P22_CH_ACTIVE,:P22_NU_EAP_TIME',
'from HD_WORKFLOW',
'where 	VC_COMP_CODE = :GLOBAL_COMP_CODE',
'and     VC_PRJ_ID    = :GLOBAL_PROJ_ID',
'and     VC_WORKFLOW_NO = :P22_VC_WORKFLOW_NO',
';',
'                ',
'              ',
'              '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P22_NEW'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15101282970781274)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_msg varchar2(1000);',
'V_MSG1 varchar2(1000);',
'begin',
'begin',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''COLL1'') THEN',
'APEX_COLLECTION.DELETE_COLLECTION(''COLL1'');',
'V_MSG:=''COLLECTION_DELETED'';',
'END IF;',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''STATUS_NOT_NULL'') THEN',
'APEX_COLLECTION.DELETE_COLLECTION(''STATUS_NOT_NULL'');',
'--V_MSG:=''COLLECTION_DELETED'';',
'END IF;',
'',
'',
'END;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
