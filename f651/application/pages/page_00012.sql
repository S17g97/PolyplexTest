prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Energy FLow'
,p_alias=>'ENERGY-FLOW'
,p_step_title=>'Energy FLow'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allownumericwithdecimal").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'      var text = $(this).val();',
'    if ((text.indexOf(''.'') != -1) &&',
'        (text.substring(text.indexOf(''.'')).length > 4) &&',
'        (event.which != 0 && event.which != 8) &&',
'        ($(this)[0].selectionStart >= text.length - 4)) {',
'        event.preventDefault();',
'        }',
'        });'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GAURAV'
,p_last_upd_yyyymmddhh24miss=>'20221107123401'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16021423205789495)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P12_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15970775394908117)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'',
'NU_DOC_NO,',
'DT_DOC_DATE,',
'NU_CHARGE_ID,',
'VC_CHARGE_TYPE,',
'NU_RATE,',
'VC_REMARKS,',
'ROWID AS PK_ROW,',
'COA_ID NU_ACCOUNT_CODE',
'',
'from DT_OTHER_CHARGES_ENERGY_FLOW',
'where ORG_ID = :global_comp_code',
'and   PRJ_ID  = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P12_DOC_NO;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P12_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Charges'
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
 p_id=>wwv_flow_api.id(15970370181908113)
,p_name=>'NU_DOC_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_DOC_NO'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>50
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15970303220908112)
,p_name=>'DT_DOC_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_DOC_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15970168504908111)
,p_name=>'NU_CHARGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_CHARGE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Charge '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Charge List'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15924160876825127)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'---Select----'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'NU_CHARGE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15970086722908110)
,p_name=>'VC_CHARGE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_CHARGE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Charge Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15919740120763963)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'NU_CHARGE_ID'
,p_ajax_items_to_submit=>'NU_CHARGE_ID'
,p_ajax_optimize_refresh=>false
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15969970818908109)
,p_name=>'NU_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_RATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_static_id=>'allownumericwithdecimal'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15969769939908107)
,p_name=>'VC_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>110
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15969738095908106)
,p_name=>'PK_ROW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_ROW'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attribute_01=>'N'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15969659010908105)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15969499857908104)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15463662299004919)
,p_name=>'NU_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_ACCOUNT_CODE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Account Code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>130
,p_value_alignment=>'LEFT'
,p_attribute_03=>'right'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(15970704811908116)
,p_internal_uid=>2382162575354209
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_no_data_found_message=>'No Data Found'
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_add_button_label=>'Add Charge'
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
 p_id=>wwv_flow_api.id(15961071161688877)
,p_interactive_grid_id=>wwv_flow_api.id(15970704811908116)
,p_static_id=>'23918'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(15960879751688877)
,p_report_id=>wwv_flow_api.id(15961071161688877)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15958643310688850)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(15970370181908113)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15957671616688844)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(15970303220908112)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15956778756688782)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(15970168504908111)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15955986382688775)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(15970086722908110)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15955125348688766)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(15969970818908109)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15953271472688751)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(15969769939908107)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15951424228685617)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(15969738095908106)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15949879476684673)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(15969659010908105)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15434458997234648)
,p_view_id=>wwv_flow_api.id(15960879751688877)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(15463662299004919)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15969303074908102)
,p_plug_name=>'Region Display'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15968959213908098)
,p_plug_name=>'Energy Flow'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6022133851018781)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6022114589018780)
,p_plug_name=>'Other charge'
,p_parent_plug_id=>wwv_flow_api.id(6022133851018781)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
''''' edit,',
'c001 as Charge_Name,',
'c002 as Charge_type,',
'c003 as rate,',
'c004 as REMARKS,',
'c005 as account_code,',
'c001 as charge_id',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE'';           '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other charge'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(6022028646018779)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>12330838741243546
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10775534667152307)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_CHARGE_ID,P33_MODE:#CHARGE_ID#,E'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P12_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10775072031152306)
,p_db_column_name=>'CHARGE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Charge Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15924160876825127)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10774717891152306)
,p_db_column_name=>'CHARGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Charge Type'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16005262649557334)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10774354026152305)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10773893240152305)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>'Remarks'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10773489614152304)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(10773114069152304)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(5938429634092823)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'75801'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:REMARKS:ACCOUNT_CODE:CHARGE_ID'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15968728236908096)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16021423205789495)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15968772355908097)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16021423205789495)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P12_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10776177878152312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(6022133851018781)
,p_button_name=>'Add_charge'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_MODE:A'
,p_button_condition=>'P12_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15968578756908095)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16021237701789493)
,p_name=>'P12_DOC_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16021094074789492)
,p_name=>'P12_DOC_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16021034854789491)
,p_name=>'P12_LEVEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Level'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020942340789490)
,p_name=>'P12_LOCATION'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020798210789489)
,p_name=>'P12_DEL_POINT'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Delivery Point'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020689447789488)
,p_name=>'P12_METERING_POINT'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020662856789487)
,p_name=>'P12_TRANS_LOSS'
,p_is_required=>true
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Transmission Loss'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020523876789486)
,p_name=>'P12_OPTION'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Option'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Calculated;C,Percentage;P'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020373861789485)
,p_name=>'P12_LOSS'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'0'
,p_prompt=>'Loss'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16020023085789481)
,p_name=>'P12_METER_INSTALL'
,p_is_required=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Meter Installed'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019890838789480)
,p_name=>'P12_MAIN_MTR_NO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Main Meter Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019864553789479)
,p_name=>'P12_MAIN_MTR_FAC'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Main Meter Multiplying  Factor'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019677305789478)
,p_name=>'P12_MAIN_MTR_INST_DATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Main Meter Installation Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019649034789477)
,p_name=>'P12_MAIN_MTR_REPLA_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Main Meter Removal/Replacement Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019537809789476)
,p_name=>'P12_CHK_MTR_NO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Check Meter Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16019437422789475)
,p_name=>'P12_CHK_MTR_FAC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Check Meter Multiplying   Factor'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15971480176908124)
,p_name=>'P12_CHK_MTR_INST_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Check Meter Installation Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15971406964908123)
,p_name=>'P12_CHK_MTR_REPLC_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Check Meter Removal/Replacement Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15971009370908119)
,p_name=>'P12_OTHER_CHARGES'
,p_is_required=>true
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Other Charges'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
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
 p_id=>wwv_flow_api.id(15970903449908118)
,p_name=>'P12_AUTHORIZED'
,p_is_required=>true
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'N'
,p_prompt=>'Authorized'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15968238338908091)
,p_name=>'P12_MODE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15912656796469418)
,p_name=>'P12_DUPLICATE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15911638732469408)
,p_name=>'P12_CALCULATED_FORMULA'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Calculated Formula'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15909813331469390)
,p_name=>'P12_IMPORT_ENERGY'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'N'
,p_prompt=>'Import Energy Applicable'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3129583819852011)
,p_name=>'P12_DELIVERY_CHARGES'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_prompt=>'Delivery Charges'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13927557702746075)
,p_name=>'P12_MAIN_METER_INSTALL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'N'
,p_prompt=>'Main Meter Install'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13927570198746076)
,p_name=>'P12_CHECK_METER_INSTALL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(16021423205789495)
,p_item_default=>'N'
,p_prompt=>'Check Meter Install'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15967890935908088)
,p_validation_name=>'Location not null'
,p_validation_sequence=>10
,p_validation=>'P12_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Location'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15967768859908087)
,p_validation_name=>'Duplicate Location'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'deCLARE',
'V_CHK NUMBER;',
'',
'BEGIN',
'',
'IF :P12_MODE = ''A'' THEN ',
'',
'SELECT COUNT(*)',
'INTO   V_CHK',
'FROM DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   =  :GLOBAL_PROJ_ID',
'AND   UPPER(VC_LOCATION)  =  UPPER(:P12_LOCATION);',
'',
'END IF;',
'',
'IF :P12_MODE = ''E'' THEN ',
'',
'SELECT COUNT(*)',
'INTO   V_CHK',
'FROM DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   =  :GLOBAL_PROJ_ID',
'AND   UPPER(VC_LOCATION) =  UPPER(:P12_LOCATION)',
'AND   NU_DOC_NO <> :P12_DOC_NO;',
'END IF;',
'',
'',
'IF V_CHK > 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'',
'',
'END IF;',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Location Already Exists.'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15967611026908085)
,p_validation_name=>'option not null'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_TRANS_LOSS = ''Y'' and :P12_OPTION is null then',
'return false;',
'else ',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Select Option'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_associated_item=>wwv_flow_api.id(16020523876789486)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15967492166908084)
,p_validation_name=>'Loss'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_TRANS_LOSS = ''Y'' and :P12_LOSS is null then',
'return false;',
'else ',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Loss'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15967408814908083)
,p_validation_name=>'check meter detail'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_METER_INSTALL = ''Y'' AND :P12_MAIN_METER_INSTALL=''Y'' then ',
'    If :P12_MAIN_MTR_NO is null then',
'    return ''Enter Main Meter No'';',
'    end if;',
'    if :P12_MAIN_MTR_FAC is null then',
'     return ''Enter Main Meter Multplying Factor'';',
'    end if;',
'    if :P12_MAIN_MTR_INST_DATE is null then',
'     return ''Enter Main Meter Installation Date'';',
'    end if;',
'    END IF;',
'/*    if :P12_MAIN_MTR_REPLA_DATE is null then',
'      return ''Enter Main Meter Removal/Replacement Date'';',
'    end if;',
'*/ if :P12_METER_INSTALL = ''Y'' AND :P12_CHECK_METER_INSTALL=''Y'' then ',
'     If :P12_CHK_MTR_NO is null THEN',
'    return ''Enter Check Meter No'';',
'    end if;',
'    if :P12_CHK_MTR_FAC is null then',
'     return ''Enter Main Meter Multplying Factor'';',
'    end if;',
'    if :P12_CHK_MTR_INST_DATE is null then',
'     return ''Enter Main Meter Installation Date'';',
'    end if;',
'/*    if :P12_CHK_MTR_REPLC_DATE is null then',
'      return ''Enter Main Meter Removal/Replacement Date'';',
'    end if;',
'    */',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15966942493908078)
,p_validation_name=>'Check Meter Install on level 1'
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_LEVEL = ''1'' and :P12_METER_INSTALL = ''N'' then',
'return ''Meter Installed Should be Yes On Level 1'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15912098600469413)
,p_validation_name=>'Chck Other Charge'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'Select',
'count(*)',
'into v_chk',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; ',
'',
'if v_chk = 0 and :P12_OTHER_CHARGES = ''Y'' then',
'return false;',
'else',
'return true;',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Select at Least One charge If Other Charge Option is Yes.'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15910833895469400)
,p_validation_name=>'Chk Percentage Loss'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :P12_OPTION = ''P'' and :P12_LOSS is null then',
'return ''Enter Loss Value'';',
'end if;',
'',
'If :P12_OPTION = ''P'' and :P12_LOSS = ''0'' then',
'return ''Loss Value Cannot be Zero'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_associated_item=>wwv_flow_api.id(16020373861789485)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15910686548469399)
,p_validation_name=>'Chk Calculated Formula not null'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If :P12_OPTION = ''C'' and :P12_CALCULATED_FORMULA is null then',
'return ''Error to Calculated Formula.'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_associated_item=>wwv_flow_api.id(15911638732469408)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15909954356469391)
,p_validation_name=>'Chk level and Option '
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_LEVEL = ''1'' and :P12_OPTION = ''C'' then',
'return ''In level 1 Option cannot be select as Calculated.Please Selct Percentage'' ;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_associated_item=>wwv_flow_api.id(16020523876789486)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15909758076469389)
,p_validation_name=>'Chk Import Energy Applicable'
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P12_METER_INSTALL= ''Y'' and :P12_IMPORT_ENERGY Is null then',
'return ''Select Import Energy Applicable'' ;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15968772355908097)
,p_associated_item=>wwv_flow_api.id(15909813331469390)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16020332228789484)
,p_name=>'Show/Hide Trans Option'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_TRANS_LOSS'
,p_condition_element=>'P12_TRANS_LOSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16020186646789483)
,p_event_id=>wwv_flow_api.id(16020332228789484)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_OPTION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910643457469398)
,p_event_id=>wwv_flow_api.id(16020332228789484)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_OPTION,P12_LOSS,P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16020067518789482)
,p_event_id=>wwv_flow_api.id(16020332228789484)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_OPTION,P12_LOSS,P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15971332289908122)
,p_name=>'Show/Hide Meter Detail'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_METER_INSTALL'
,p_condition_element=>'P12_METER_INSTALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15971258361908121)
,p_event_id=>wwv_flow_api.id(15971332289908122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_IMPORT_ENERGY,,P12_MAIN_METER_INSTALL,P12_CHECK_METER_INSTALL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15971140007908120)
,p_event_id=>wwv_flow_api.id(15971332289908122)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_IMPORT_ENERGY,,P12_MAIN_METER_INSTALL,P12_CHECK_METER_INSTALL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910512424469397)
,p_event_id=>wwv_flow_api.id(15971332289908122)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_MAIN_MTR_NO,P12_MAIN_MTR_INST_DATE,P12_MAIN_MTR_FAC,P12_MAIN_MTR_REPLA_DATE,P12_CHK_MTR_NO,P12_CHK_MTR_INST_DATE,P12_CHK_MTR_FAC,P12_CHK_MTR_REPLC_DATE,P12_IMPORT_ENERGY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13928571925746086)
,p_event_id=>wwv_flow_api.id(15971332289908122)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P12_MAIN_METER_INSTALL := ''N'';',
':P12_CHECK_METER_INSTALL := ''N'';'))
,p_attribute_03=>'P12_MAIN_METER_INSTALL,P12_CHECK_METER_INSTALL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15969201997908101)
,p_name=>'Show/hide other charges'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_OTHER_CHARGES'
,p_condition_element=>'P12_OTHER_CHARGES'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15969087593908100)
,p_event_id=>wwv_flow_api.id(15969201997908101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6022133851018781)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11261908514548978)
,p_event_id=>wwv_flow_api.id(15969201997908101)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15969049367908099)
,p_event_id=>wwv_flow_api.id(15969201997908101)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6022133851018781)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15911902887469411)
,p_name=>'gET DUPLICATE VALUE'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15970775394908117)
,p_triggering_element=>'NU_CHARGE_ID'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15912701628469419)
,p_event_id=>wwv_flow_api.id(15911902887469411)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P12_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''CHARGE_DUPLICATE'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''CHARGE_DUPLICATE'' AND C001=:NU_CHARGE_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P12_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''CHARGE_DUPLICATE'',',
'                                       P_C001            => :NU_CHARGE_ID',
'                                    ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;'))
,p_attribute_02=>'NU_CHARGE_ID'
,p_attribute_03=>'P12_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15967223674908081)
,p_name=>'Set Charge Type'
,p_event_sequence=>40
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15970775394908117)
,p_triggering_element=>'NU_CHARGE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'NU_CHARGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15967093911908080)
,p_event_id=>wwv_flow_api.id(15967223674908081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_CHARGE_TYPE,NU_ACCOUNT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select vc_charge_type,COA_ID',
'from mst_other_charges',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and  nu_charge_id = :NU_CHARGE_ID'))
,p_attribute_07=>'NU_CHARGE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15912532706469417)
,p_name=>'Show Error Duplicate Charge'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_DUPLICATE'
,p_condition_element=>'P12_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15912412665469416)
,p_event_id=>wwv_flow_api.id(15912532706469417)
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
'        		message:    ''Duplicate Charge'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15912358467469415)
,p_event_id=>wwv_flow_api.id(15912532706469417)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NU_CHARGE_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15911515274469407)
,p_name=>'Show / Hide loss and cal formula'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_OPTION'
,p_condition_element=>'P12_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911413920469406)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911251643469404)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_LOSS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911338953469405)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15911155523469403)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_LOSS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910397522469396)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_LOSS'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910274138469395)
,p_event_id=>wwv_flow_api.id(15911515274469407)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15911016995469402)
,p_name=>'Hide Option Page Load '
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910897464469401)
,p_event_id=>wwv_flow_api.id(15911016995469402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_LOSS,P12_CALCULATED_FORMULA'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15910211073469394)
,p_name=>'Calculate Formula'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_OPTION'
,p_condition_element=>'P12_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15910118693469393)
,p_event_id=>wwv_flow_api.id(15910211073469394)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'AA number;',
'BB Number;',
'',
'begin ',
'',
'AA := :P12_LEVEL -1 ;',
'BB := :P12_LEVEL +1 ;',
'',
':P12_CALCULATED_FORMULA := ''(Level '' || AA || '' Meter Reading - '' || ''Level '' || BB ||  '' Meter Reading )* .3542'' ;',
'',
'END;',
'',
''))
,p_attribute_02=>'P12_LEVEL'
,p_attribute_03=>'P12_CALCULATED_FORMULA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15909986855469392)
,p_event_id=>wwv_flow_api.id(15910211073469394)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CALCULATED_FORMULA'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11262079775548980)
,p_name=>'REFRESH'
,p_event_sequence=>90
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11261977552548979)
,p_event_id=>wwv_flow_api.id(11262079775548980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(6022114589018780)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13927802325746078)
,p_name=>'Show/hide main detail'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_MAIN_METER_INSTALL'
,p_condition_element=>'P12_MAIN_METER_INSTALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13927925185746079)
,p_event_id=>wwv_flow_api.id(13927802325746078)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_MAIN_MTR_NO,P12_MAIN_MTR_INST_DATE,P12_MAIN_MTR_FAC,P12_MAIN_MTR_REPLA_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13927968763746080)
,p_event_id=>wwv_flow_api.id(13927802325746078)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_MAIN_MTR_NO,P12_MAIN_MTR_INST_DATE,P12_MAIN_MTR_FAC,P12_MAIN_MTR_REPLA_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13928378197746084)
,p_event_id=>wwv_flow_api.id(13927802325746078)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_MAIN_MTR_NO,P12_MAIN_MTR_INST_DATE,P12_MAIN_MTR_FAC,P12_MAIN_MTR_REPLA_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13928077787746081)
,p_name=>'show/hide check detail'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P12_CHECK_METER_INSTALL'
,p_condition_element=>'P12_CHECK_METER_INSTALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13928189816746082)
,p_event_id=>wwv_flow_api.id(13928077787746081)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CHK_MTR_NO,P12_CHK_MTR_INST_DATE,P12_CHK_MTR_FAC,P12_CHK_MTR_REPLC_DATE,P12_IMPORT_ENERGY'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13928287577746083)
,p_event_id=>wwv_flow_api.id(13928077787746081)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CHK_MTR_NO,P12_CHK_MTR_INST_DATE,P12_CHK_MTR_FAC,P12_CHK_MTR_REPLC_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13928552928746085)
,p_event_id=>wwv_flow_api.id(13928077787746081)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P12_CHK_MTR_NO,P12_CHK_MTR_INST_DATE,P12_CHK_MTR_FAC,P12_CHK_MTR_REPLC_DATE,P12_IMPORT_ENERGY'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15968144513908090)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_id number;',
'',
'begin',
'',
'IF :P12_MODE = ''A'' THEN',
'',
'select nvl(max(NU_DOC_NO),0) +1 ',
'into  v_id ',
'from DT_ENERGY_FLOW ',
'where ORG_ID = :global_comp_code',
'and    PRJ_ID  =  :GLOBAL_PROJ_ID;',
'',
':P12_DOC_NO := V_ID;',
'',
'END IF;',
'',
'insert into DT_ENERGY_FLOW',
'(',
'ORG_ID, PRJ_ID, NU_DOC_NO, DT_DOC_DATE, NU_LEVEL, VC_LOCATION, CH_DELIVERY_POINT, CH_METERING_POINT, ',
'CH_METER_INSTALLED, VC_MAIN_METER_NO, NU_MAIN_FACTOR, DT_MAIN_INSTALL_DATE, DT_MAIN_REMOVAL_DATE, ',
'VC_CHK_METER_NO, NU_CHK_FACTOR, DT_CHK_INSTALL_DATE, DT_CHK_REMOVAL_DATE, CH_TRANSMISSION_LOSS, CH_OPTION, ',
'NU_LOSS, CH_OTHER_CHARGES,CH_AUTH_FLAG, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID,',
'VC_CALC_FORMULA,CH_IMPORT_ENERGY,NU_DELIVERY_CHARGES,CH_MAIN_MTR_INSTALL,CH_CHK_MTR_INSTALL',
')',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID, :P12_DOC_NO, :P12_DOC_DATE, :P12_LEVEL ,  :P12_LOCATION,:P12_DEL_POINT,:P12_METERING_POINT,',
':P12_METER_INSTALL, upper(:P12_MAIN_MTR_NO),:P12_MAIN_MTR_FAC , :P12_MAIN_MTR_INST_DATE, :P12_MAIN_MTR_REPLA_DATE,',
'upper(:P12_CHK_MTR_NO ), :P12_CHK_MTR_FAC , :P12_CHK_MTR_INST_DATE , :P12_CHK_MTR_REPLC_DATE , :P12_TRANS_LOSS,:P12_OPTION,',
':P12_LOSS , :P12_OTHER_CHARGES, :P12_AUTHORIZED , :GLOBAL_USER_CODE, SYSDATE, :GLOBAL_USER_CODE , SYSDATE ,:GLOBAL_PARENT_COMP,',
':P12_CALCULATED_FORMULA, :P12_IMPORT_ENERGY,:P12_DELIVERY_CHARGES,:P12_MAIN_METER_INSTALL,:P12_CHECK_METER_INSTALL',
'',
'',
');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15968772355908097)
,p_process_when=>'P12_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15967356202908082)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update  DT_ENERGY_FLOW',
'set ',
'VC_LOCATION         =  :P12_LOCATION,',
'CH_DELIVERY_POINT   = :P12_DEL_POINT,',
'CH_METERING_POINT   = :P12_METERING_POINT,',
'CH_METER_INSTALLED  = :P12_METER_INSTALL,',
'CH_IMPORT_ENERGY    =  :P12_IMPORT_ENERGY,',
'VC_MAIN_METER_NO    = UPPER(:P12_MAIN_MTR_NO),',
'NU_MAIN_FACTOR     =  :P12_MAIN_MTR_FAC,',
'DT_MAIN_INSTALL_DATE = :P12_MAIN_MTR_INST_DATE,',
'DT_MAIN_REMOVAL_DATE =  :P12_MAIN_MTR_REPLA_DATE, ',
'VC_CHK_METER_NO      =  :P12_CHK_MTR_NO , ',
'NU_CHK_FACTOR       = :P12_CHK_MTR_FAC, ',
'DT_CHK_INSTALL_DATE = :P12_CHK_MTR_INST_DATE, ',
'DT_CHK_REMOVAL_DATE = :P12_CHK_MTR_REPLC_DATE,',
'CH_TRANSMISSION_LOSS = :P12_TRANS_LOSS,',
'CH_OPTION            = :P12_OPTION,',
'NU_LOSS             = :P12_LOSS,',
'CH_OTHER_CHARGES    = :P12_OTHER_CHARGES,',
'CH_AUTH_FLAG        = :P12_AUTHORIZED,',
'USR_ID_MOD_DT         =  SYSDATE,',
'VC_AUTH_CODE        =  :GLOBAL_USER_CODE,',
'VC_CALC_FORMULA     =  :P12_CALCULATED_FORMULA,',
'USR_ID_MOD          =  :GLOBAL_USER_CODE,',
'NU_DELIVERY_CHARGES = :P12_DELIVERY_CHARGES,',
'',
'CH_MAIN_MTR_INSTALL  = :P12_MAIN_METER_INSTALL,',
'CH_CHK_MTR_INSTALL   = :P12_CHECK_METER_INSTALL',
'where  ORG_ID = :GLOBAL_COMP_CODE',
'AND    PRJ_ID   = :GLOBAL_PROJ_ID',
'AND    NU_DOC_NO    = :P12_DOC_NO',
'AND    DT_DOC_DATE  = :P12_DOC_DATE',
'AND    NU_LEVEL     = :P12_LEVEL',
';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15968772355908097)
,p_process_when=>'P12_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
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
 p_id=>wwv_flow_api.id(15969374859908103)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(15970775394908117)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Other Charges - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    case :APEX$ROW_STATUS',
'    when ''C'' then',
'        insert into DT_OTHER_CHARGES_ENERGY_FLOW ( ORG_ID, PRJ_ID, NU_DOC_NO, DT_DOC_DATE, NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE,',
'                             VC_REMARKS, COA_ID, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID )',
'        values ( :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P12_DOC_NO,:P12_DOC_DATE , :NU_CHARGE_ID , :VC_CHARGE_TYPE , :NU_RATE ,',
'                :VC_REMARKS,:NU_ACCOUNT_CODE, :GLOBAL_USER_CODE, SYSDATE , :GLOBAL_USER_CODE , SYSDATE,:GLOBAL_PARENT_COMP',
'               );',
'        --returning rowid into :PK_ROW;',
'    when ''U'' then',
'        update DT_OTHER_CHARGES_ENERGY_FLOW',
'           set NU_CHARGE_ID     = :NU_CHARGE_ID,',
'               VC_CHARGE_TYPE   = :VC_CHARGE_TYPE,',
'               NU_RATE          = :NU_RATE,',
'               VC_REMARKS       = :VC_REMARKS,',
'               COA_ID          = :NU_ACCOUNT_CODE',
'         where rowid            = :PK_ROW;',
'    when ''D'' then',
'        delete DT_OTHER_CHARGES_ENERGY_FLOW',
'         where rowid = :PK_ROW;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15968772355908097)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11262311555548982)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'other charges insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (Select c001 as NU_CHARGE_ID ,c002 as VC_CHARGE_TYPE ,c003 as NU_RATE ,c004 as VC_REMARKS ,c005  as NU_ACCOUNT_CODE',
'              from apex_collections ',
'             where COLLECTION_NAME=''OTHER_CHARGE'');   ',
'begin',
'',
'if :P14_MODE = ''E'' THEN',
'DELETE  from  DT_OTHER_CHARGES_ENERGY_FLOW',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   NU_DOC_NO   = :P12_DOC_NO ',
'               AND   DT_DOC_DATE   = :P12_DOC_DATE;',
'',
'END IF;',
'',
'for i in c1 loop',
'',
'        insert into DT_OTHER_CHARGES_ENERGY_FLOW ( ORG_ID, PRJ_ID, NU_DOC_NO, DT_DOC_DATE, NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE,',
'                                                    VC_REMARKS, COA_ID, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID )',
'        values ( :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P12_DOC_NO,:P12_DOC_DATE ,  I.NU_CHARGE_ID , I.VC_CHARGE_TYPE ,I.NU_RATE ,',
'                I.VC_REMARKS,I.NU_ACCOUNT_CODE, :GLOBAL_USER_CODE, SYSDATE , :GLOBAL_USER_CODE , SYSDATE,:GLOBAL_PARENT_COMP',
'               );',
'',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15968772355908097)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15968560642908094)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15912244167469414)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15968274003908092)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get level'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nvl(max(NU_LEVEL),0) +1 ',
'into  :P12_LEVEL ',
'from DT_ENERGY_FLOW ',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID   = :GLOBAL_PROJ_ID;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P12_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15912832757469420)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  ',
'',
'NU_LEVEL, VC_LOCATION, CH_DELIVERY_POINT, CH_METERING_POINT, ',
'CH_METER_INSTALLED, VC_MAIN_METER_NO, NU_MAIN_FACTOR, DT_MAIN_INSTALL_DATE, DT_MAIN_REMOVAL_DATE, ',
'VC_CHK_METER_NO, NU_CHK_FACTOR, DT_CHK_INSTALL_DATE, DT_CHK_REMOVAL_DATE, CH_TRANSMISSION_LOSS, CH_OPTION, ',
'NU_LOSS, CH_OTHER_CHARGES,CH_AUTH_FLAG,VC_CALC_FORMULA ,CH_IMPORT_ENERGY  ,NU_DELIVERY_CHARGES',
',CH_MAIN_MTR_INSTALL,CH_CHK_MTR_INSTALL    ',
'INTO',
':P12_LEVEL , :P12_LOCATION ,:P12_DEL_POINT,:P12_METERING_POINT,',
':P12_METER_INSTALL,:P12_MAIN_MTR_NO,:P12_MAIN_MTR_FAC , :P12_MAIN_MTR_INST_DATE, :P12_MAIN_MTR_REPLA_DATE,',
':P12_CHK_MTR_NO , :P12_CHK_MTR_FAC , :P12_CHK_MTR_INST_DATE , :P12_CHK_MTR_REPLC_DATE , :P12_TRANS_LOSS,:P12_OPTION,',
':P12_LOSS , :P12_OTHER_CHARGES, :P12_AUTHORIZED ,:P12_CALCULATED_FORMULA ,:P12_IMPORT_ENERGY,  :P12_DELIVERY_CHARGES,',
':P12_MAIN_METER_INSTALL,:P12_CHECK_METER_INSTALL',
'',
'from DT_ENERGY_FLOW',
'where ORG_ID = :global_comp_code',
'and   PRJ_ID   = :global_proj_id',
'and   NU_doc_no    =  :P12_DOC_NO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P12_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15912048240469412)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get other charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Declare',
'Cursor C1 is (select NU_CHARGE_ID from DT_OTHER_CHARGES_ENERGY_FLOW ',
'                                  where ORG_ID = :global_comp_code',
'                                  and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                                  AND   NU_DOC_NO  = :P12_DOC_NO);',
' ',
'begin',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.Delete_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
' ',
'For i in c1 loop',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''CHARGE_DUPLICATE'',',
'                                       p_c001            =>  I.NU_CHARGE_ID                                  ',
'                                     ',
'                                       );',
'end loop;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11262231351548981)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Other Charges Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is ( select NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE, VC_REMARKS, COA_ID',
'               from DT_OTHER_CHARGES_ENERGY_FLOW ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID  = :GLOBAL_PROJ_ID',
'               AND   NU_DOC_NO  = :P12_DOC_NO',
'               );',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'FOR I IN C1 LOOP',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001          =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE,',
'                                P_C004           =>  I.VC_REMARKS ,     ',
'                                P_C005           =>  I.COA_ID  ',
'                                ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P12_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
