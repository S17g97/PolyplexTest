prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Bill Payment Schedule'
,p_alias=>'BILL-PAYMENT-SCHEDULE'
,p_page_mode=>'MODAL'
,p_step_title=>'Bill Schedule'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230916180339'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15571529503756218)
,p_plug_name=>'Billing Schedule '
,p_region_name=>'BILL_PAY'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'c001 as FROM_DATE,',
'c002 as TO_DATE,',
'c003 as BILL_DATE,',
'c004 as PAYMENT_DATE,',
'C005 as PENALTY_DATE,',
'C006 AS PK_ID,',
'seq_id',
'',
' from apex_collections ',
' where COLLECTION_NAME=''BILLING_SCHEDULE''; ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P18_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Billing Schedule '
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
 p_id=>wwv_flow_api.id(15570060736756203)
,p_name=>'FROM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'From Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_attributes=>'readonly=true'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'FROM_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P18_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15569910414756202)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'To Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TO_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15569796110756201)
,p_name=>'BILL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'BILL_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Bill Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'BILL_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15569722038756200)
,p_name=>'PAYMENT_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PAYMENT_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Payment Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PAYMENT_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15569656682756199)
,p_name=>'PENALTY_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PENALTY_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'Penalty Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PENALTY_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15568025180756183)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15567940692756182)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15567718325756180)
,p_name=>'PK_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'PK_ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'PK_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P18_ROW_ID'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15567197120756175)
,p_name=>'SEQ_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(15570212668756205)
,p_internal_uid=>2782654718506120
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
,p_show_toolbar=>false
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'REGION'
,p_fixed_header_max_height=>300
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(15520062772445421)
,p_interactive_grid_id=>wwv_flow_api.id(15570212668756205)
,p_static_id=>'28329'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(15519854910445421)
,p_report_id=>wwv_flow_api.id(15520062772445421)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15518401008445406)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(15570060736756203)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15517522250445400)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(15569910414756202)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15516641309445395)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(15569796110756201)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15515681687445390)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(15569722038756200)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15514859778445385)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(15569656682756199)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15490524060113425)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(15568025180756183)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15485871237098957)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(15567718325756180)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15474617301858251)
,p_view_id=>wwv_flow_api.id(15519854910445421)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(15567197120756175)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10393100034598704)
,p_button_sequence=>110
,p_button_plug_id=>wwv_flow_api.id(15571529503756218)
,p_button_name=>'Add_row'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--padLeft:t-Button--padBottom'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P18_BILLING_PERIOD'
,p_button_condition2=>'C'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15569220313756195)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15571529503756218)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15568920545756192)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15571529503756218)
,p_button_name=>'save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P18_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15571464494756217)
,p_name=>'P18_PENALTY_DAYS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15571325564756216)
,p_name=>'P18_REBATE_DAYS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15571217121756215)
,p_name=>'P18_PERIOD_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15571068675756214)
,p_name=>'P18_PERIOD_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15570922200756212)
,p_name=>'P18_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15567660113756179)
,p_name=>'P18_BILLING_PERIOD'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_prompt=>'Billing Period'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_lov=>'STATIC:Daily;D,Monthly;M,Weekly;W,Fortnightly;F,Custom;C'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'LOV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10397020548598743)
,p_name=>'P18_DUPLICATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10395216400598725)
,p_name=>'P18_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10394596838598718)
,p_name=>'P18_ROW_ID'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10394430891598717)
,p_name=>'P18_CHECK_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15571529503756218)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10396574927598738)
,p_tabular_form_region_id=>wwv_flow_api.id(15571529503756218)
,p_validation_name=>'check bill date greater than to date'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :APEX$ROW_STATUS in (''C'',''U'') then',
'       If to_date(:TO_DATE,''DD-MM-YYYY'') > to_date(:BILL_DATE,''DD-MM-YYYY'') then ',
'            return ''Bill date cannot be less than To date'';',
'',
'        end if;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15568920545756192)
,p_associated_column=>'BILL_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10396870381598741)
,p_tabular_form_region_id=>wwv_flow_api.id(15571529503756218)
,p_validation_name=>'check PAYMENT_DATE date greater than to date'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :APEX$ROW_STATUS in (''C'',''U'') then',
'    if to_date(:TO_DATE,''DD-MM-YYYY'') > to_date(:PAYMENT_DATE,''DD-MM-YYYY'') then ',
'            return ''Payment date cannot be less than To date'';',
'       ',
'        end if;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15568920545756192)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'PAYMENT_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10396992973598742)
,p_tabular_form_region_id=>wwv_flow_api.id(15571529503756218)
,p_validation_name=>'check Penalty date greater than to date'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'if :APEX$ROW_STATUS in (''C'',''U'') then',
'       If to_date(:TO_DATE,''DD-MM-YYYY'') > to_date(:PENALTY_DATE,''DD-MM-YYYY'') then ',
'            return ''Penalty date cannot be less than To date'';',
'        end if;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15568920545756192)
,p_exec_cond_for_each_row=>'Y'
,p_associated_column=>'PENALTY_DATE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15569439840756197)
,p_name=>'HIIDE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15569326037756196)
,p_event_id=>wwv_flow_api.id(15569439840756197)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10396215669598735)
,p_event_id=>wwv_flow_api.id(15569439840756197)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10393100034598704)
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'v_chk2 number;',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'',
'  IF  nvl(v_chk,0) = 0 then',
'   return TRUE ;',
'   ELSE',
'   RETURN FALSE;',
'  end if;',
'',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10394672775598719)
,p_name=>'Add row'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10393100034598704)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10394727227598720)
,p_event_id=>wwv_flow_api.id(10394672775598719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P18_ROW_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'P_ROW_SEQ.NEXTVAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10394870356598721)
,p_event_id=>wwv_flow_api.id(10394672775598719)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("BILL_PAY").widget().interactiveGrid("getViews", "grid");',
'',
'var model = grid.model;',
'',
'model.getOption("fields").PK_ID.defaultValue = $v("P18_ROW_ID"); ',
'    '))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10394972722598722)
,p_event_id=>wwv_flow_api.id(10394672775598719)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("BILL_PAY").widget().interactiveGrid( "getActions" ).invoke( "selection-add-row" );'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10396309742598736)
,p_event_id=>wwv_flow_api.id(10394672775598719)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10393100034598704)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10395003431598723)
,p_name=>'check from and to date'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15571529503756218)
,p_triggering_element=>'TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10395140913598724)
,p_event_id=>wwv_flow_api.id(10395003431598723)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If to_date(:FROM_DATE,''DD-MM-YYYY'') > to_date(:TO_DATE,''DD-MM-YYYY'') then ',
':P18_CHECK_DATE:= ''Y'';',
'Else ',
':P18_CHECK_DATE:= ''X'';',
'',
':BILL_DATE  := to_date(:TO_DATE,''DD-MM-YYYY'')+1 ;',
':PAYMENT_DATE := to_date(:TO_DATE,''DD-MM-YYYY'')+1+:P18_REBATE_DAYS ;',
':PENALTY_DATE := to_date(:TO_DATE,''DD-MM-YYYY'')+1+:P18_PENALTY_DAYS  ;',
'',
'End if; ',
''))
,p_attribute_02=>'FROM_DATE,TO_DATE,P18_PENALTY_DAYS,P18_REBATE_DAYS'
,p_attribute_03=>'P18_CHECK_DATE,PENALTY_DATE,PAYMENT_DATE,BILL_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10395398798598726)
,p_name=>'ERR MSG FROM AND TO DATE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_CHECK_DATE'
,p_condition_element=>'P18_CHECK_DATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10395425194598727)
,p_event_id=>wwv_flow_api.id(10395398798598726)
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
'        		message:    ''To Date should be greater than From Date'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10395545344598728)
,p_event_id=>wwv_flow_api.id(10395398798598726)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TO_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10396481315598737)
,p_event_id=>wwv_flow_api.id(10395398798598726)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10393100034598704)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10395838450598731)
,p_name=>'Set To Date'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15571529503756218)
,p_triggering_element=>'TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10395912766598732)
,p_event_id=>wwv_flow_api.id(10395838450598731)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P18_DATE:= to_date(:TO_DATE,''DD-MM-YYYY'')+1;'
,p_attribute_02=>'TO_DATE'
,p_attribute_03=>'P18_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10396094799598733)
,p_event_id=>wwv_flow_api.id(10395838450598731)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("BILL_PAY").widget().interactiveGrid("getViews", "grid");',
'',
'var model = grid.model;',
'',
'model.getOption("fields").FROM_DATE.defaultValue = $v("P18_DATE");',
'    '))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10396159649598734)
,p_event_id=>wwv_flow_api.id(10395838450598731)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10393100034598704)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10397194388598744)
,p_name=>'check duplicate'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_CHECK_DATE'
,p_condition_element=>'P18_CHECK_DATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'X'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10397240959598745)
,p_event_id=>wwv_flow_api.id(10397194388598744)
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
':P18_DUPLICATE:=NULL;',
'IF NVL(:FROM_DATE,''XX'') <> ''XX'' AND NVL(:TO_DATE,''XX'') <> ''XX''   THEN',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'    END IF;',
'     BEGIN',
'        SELECT COUNT(*) INTO B FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILL_DATE_DUPLICATE'' AND C004= :PK_ID;',
'     EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'     END;',
'',
'     IF   (B >0) THEN',
'        SELECT SEQ_ID INTO COLL_SEQ FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILL_DATE_DUPLICATE'' AND C004=:PK_ID;',
'          APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''BILL_DATE_DUPLICATE'', P_SEQ => COLL_SEQ);',
'',
'           ',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILL_DATE_DUPLICATE'' AND C001 = :FROM_DATE  AND C002=:TO_DATE;',
'        IF(A>0) THEN',
'            :P18_DUPLICATE:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILL_DATE_DUPLICATE'',',
'                                            P_C001            => :FROM_DATE,',
'                                            P_C002            => :TO_DATE,',
'                                            P_C003            => :SEQ_ID,',
'                                            p_c004           =>  :PK_ID',
'                                        );',
'        END IF;',
'    ELSE',
'         SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILL_DATE_DUPLICATE'' AND C001 = :FROM_DATE  AND C002=:TO_DATE;',
'        IF(A>0) THEN',
'            :P18_DUPLICATE:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILL_DATE_DUPLICATE'',',
'                                            P_C001            => :FROM_DATE,',
'                                            P_C002            => :TO_DATE,',
'                                            P_C003            => :SEQ_ID,',
'                                            p_c004           =>  :PK_ID',
'                                     );',
'        END IF;',
'    END IF;',
'END IF;',
'END;'))
,p_attribute_02=>'FROM_DATE,TO_DATE,SEQ_ID,PK_ID'
,p_attribute_03=>'P18_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10397391595598746)
,p_name=>'ERR MSG Duplicate'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P18_DUPLICATE'
,p_condition_element=>'P18_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10397432851598747)
,p_event_id=>wwv_flow_api.id(10397391595598746)
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
'        		message:    ''Duplicate From Date and To Date'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10397566364598748)
,p_event_id=>wwv_flow_api.id(10397391595598746)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TO_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15464095334004924)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET DaIly DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk NUMBER;',
' cursor c1 is  ( SELECT ROWNUM,  start_date, start_date end_date,',
'                         start_date+1 bill_date /*, ',
'                        start_date+1+:P18_REBATE_DAYS payment_date,',
'                        start_date+1+:P18_PENALTY_DAYS  penalty_date*/',
'                FROM (',
'                        SELECT to_date(:P18_PERIOD_FROM,''dd-mm-rrrr'')+ LEVEL-1 as start_date',
'                        FROM dual',
'                        CONNECT BY LEVEL <= TO_DATE(:P18_PERIOD_TO,''DD-MM-RRRR'')+1-TO_DATE(:P18_PERIOD_FROM,''dd-mm-rrrr'')',
'                        )',
'                 DUAL) ; ',
'                ',
'                     ',
'          ',
'begin',
'',
'',
'if :P18_MODE <> ''V''  THEN',
'',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'        APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'    end if;',
'',
'    BEGIN',
'            SELECT  nvl(max(TO_NUMBER(c006)),0)  INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'            ',
'                ',
'    END;',
'',
'',
'     if v_chk = 0 then',
'',
'        for i in c1 loop',
'             APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILLING_SCHEDULE'',',
'                                       p_c001            => I.start_date,',
'                                       P_C002            => I.end_date,',
'                                       P_C003            => I.bill_date,',
'                                      -- P_C004            => I.payment_date,',
'                                      -- P_C005            => I.penalty_date,',
'                                       p_c006           => I.ROWNUM',
'                                         );',
'        end loop;',
'    end if;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P18_BILLING_PERIOD'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'D'
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
 p_id=>wwv_flow_api.id(15571026368756213)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET Monthly DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk NUMBER;',
' cursor c1 is  ( SELECT ROWNUM,  start_date,end_date, end_date+1 bill_date /*, ',
'                        end_date+1+:P18_REBATE_DAYS payment_date,',
'                        end_date+1+:P18_PENALTY_DAYS penalty_date*/',
'                FROM (',
'                    with mths as (  ',
'                        select level as rn,',
'                                add_months (:P18_PERIOD_FROM , level - 1   ) as dt',
'                        from   dual  ',
'                        connect by level <= months_between (  :P18_PERIOD_TO  ,   :P18_PERIOD_FROM  ) +1  )  ',
'                        select   rn,dt start_date,  ',
'                            CASE WHEN add_months (:P18_PERIOD_FROM , rn   )-1 < to_date(:P18_PERIOD_TO,''dd-mm-yyyy'') THEN',
'                                add_months (:P18_PERIOD_FROM , rn   )-1',
'                            ELSE  to_date(:P18_PERIOD_TO,''dd-mm-yyyy'') END AS END_DATE',
'                         from   mths ',
'                        )',
'                 DUAL) ;              ',
'begin',
'',
'',
'if :P18_MODE <> ''V''  THEN',
'',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'        APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'    end if;',
'',
'    BEGIN',
'            SELECT  nvl(max(TO_NUMBER(c006)),0)  INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'            ',
'                ',
'    END;',
'',
'',
'     if v_chk = 0 then',
'',
'        for i in c1 loop',
'             APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILLING_SCHEDULE'',',
'                                       p_c001            => I.start_date,',
'                                       P_C002            => I.end_date,',
'                                       P_C003            => I.bill_date,',
'                                     --  P_C004            => I.payment_date,',
'                                      -- P_C005            => I.penalty_date,',
'                                       p_c006           => I.ROWNUM',
'                                         );',
'        end loop;',
'    end if;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P18_BILLING_PERIOD'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'M'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15463435524004917)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET Fortnightly DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
' cursor c1 is  ( SELECT ROWNUM,  start_date,end_date, end_date+1 bill_date /*, ',
'                        end_date+1+:P18_REBATE_DAYS payment_date,',
'                        end_date+1+:P18_PENALTY_DAYS penalty_date*/',
'                FROM (',
'              ',
'                    with input as (',
'                    select to_date(:P18_PERIOD_FROM,''dd-mm-yyyy'') Date_from, ',
'                            to_date(:P18_PERIOD_TO,''dd-mm-yyyy'') Date_to',
'                    from   dual',
'                    ), rws as (  ',
'                    select   Date_from + ( level - 1 ) * 14 as start_date,',
'                            CASE WHEN to_date(Date_from + ( level - 1 ) * 14+13,''dd-mm-yyyy'')  < to_date(Date_to,''dd-mm-yyyy'') THEN',
'                            Date_from + ( level - 1 ) * 14+13 ',
'                            else ',
'                            Date_to end as end_date',
'                    from   input  ',
'                    connect by level <= (  ',
'                        ( Date_to -  ( Date_from  ) + 14) / 14 )    ',
'                    )  ',
'                    select * from rws)',
'',
'                        ',
'                 DUAL) ;              ',
'begin',
'',
'',
'if :P18_MODE <> ''V''  THEN',
'',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'        APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'    end if;',
'',
'    BEGIN',
'            SELECT  nvl(max(TO_NUMBER(c006)),0)  INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'            ',
'                ',
'    END;',
'',
'',
'     if v_chk = 0 then',
'',
'        for i in c1 loop',
'             APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILLING_SCHEDULE'',',
'                                       p_c001            => I.start_date,',
'                                       P_C002            => I.end_date,',
'                                       P_C003            => I.bill_date,',
'                                    --   P_C004            => I.payment_date,',
'                                    --   P_C005            => I.penalty_date,',
'                                       p_c006           => I.ROWNUM',
'                                         );',
'        end loop;',
'    end if;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P18_BILLING_PERIOD'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'F'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15463241774004915)
,p_process_sequence=>40
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET Weekly DATA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk NUMBER;',
' cursor c1 is  ( SELECT ROWNUM, nxt_day start_date, end_day end_date, end_day+1 bill_date /*, ',
'                        end_day+1+:P18_REBATE_DAYS payment_date,',
'                        end_day+1+:P18_PENALTY_DAYS penalty_date*/',
'                FROM (',
'              ',
'                ',
'                        with input as (',
'                        select to_date(:P18_PERIOD_FROM,''dd-mm-yyyy'') start_date, ',
'                                to_date(:P18_PERIOD_TO,''dd-mm-yyyy'') end_date',
'                        from   dual',
'                        ), rws as (  ',
'                        select   start_date + ( level - 1 ) * 7 as nxt_day,',
'                                CASE WHEN to_date(start_date + ( level - 1 ) * 7+6,''dd-mm-yyyy'')  < to_date(end_date,''dd-mm-yyyy'') THEN',
'                                start_date + ( level - 1 ) * 7+6',
'                                else ',
'                                end_date end as end_day',
'                        from   input  ',
'                        connect by level <= (  ',
'                            ( end_date -  ( start_date  ) + 7) / 7 )    ',
'                        )  ',
'                        select * from rws)dual);',
'',
'                        ',
'                    ',
'BEGIN',
'',
'if :P18_MODE <> ''V''  THEN',
'',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'        APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'    end if;',
'',
'    BEGIN',
'            SELECT  nvl(max(TO_NUMBER(c006)),0)  INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'            ',
'                ',
'    END;',
'',
'',
'     if v_chk = 0 then',
'',
'        for i in c1 loop',
'             APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILLING_SCHEDULE'',',
'                                       p_c001            => I.start_date,',
'                                       P_C002            => I.end_date,',
'                                       P_C003            => I.bill_date,',
'                                     --  P_C004            => I.payment_date,',
'                                     --  P_C005            => I.penalty_date,',
'                                       p_c006           => I.ROWNUM',
'                                         );',
'        end loop;',
'    end if;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P18_BILLING_PERIOD'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'W'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10396631391598739)
,p_process_sequence=>50
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get to date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'begin',
'SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'',
'IF  nvl(v_chk,0) <> 0 then',
'  SELECT MAX(TO_DATE(c002,''DD-MM-YYYY''))+1',
'INTO :P18_DATE',
'from apex_collections ',
'where COLLECTION_NAME=''BILLING_SCHEDULE'';',
'',
'  end if;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15567821294756181)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(15571529503756218)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Bill Payment Schedule - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_seq varchar2(100);',
'',
'begin',
'    case v(''APEX$ROW_STATUS'')',
' when ''C'' then',
' ',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'            APEX_COLLECTION.ADD_MEMBER(  P_COLLECTION_NAME => ''BILLING_SCHEDULE'',',
'                                       p_c001            => :FROM_DATE,',
'                                       P_C002            => :TO_DATE,',
'                                       P_C003            => :bill_date,',
'                                       P_C004            => :PAYMENT_DATE,',
'                                       P_C005            => :PENALTY_DATE,',
'                                       p_c006            => :PK_ID',
'                                     );',
'    when ''U'' then',
'  ',
'    ',
'',
'                 begin',
'                             APEX_COLLECTION.UPDATE_MEMBER (',
'                                p_collection_name => ''BILLING_SCHEDULE'',',
'                                       p_seq             =>  :SEQ_ID,',
'                                       p_c001            => :FROM_DATE,',
'                                       P_C002            => :TO_DATE,',
'                                       P_C003            => :bill_date,',
'                                       P_C004            => :PAYMENT_DATE,',
'                                       P_C005            => :PENALTY_DATE,',
'                                       p_c006            => :PK_ID',
'                            ',
'                              );',
'                  end;',
'',
'   when ''D'' then',
' ',
'',
'                    IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'                        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''RATE_SLAB'', P_SEQ => :SEQ_ID);',
'',
'                    end if;',
' ',
'    ',
'',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15568920545756192)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10397667031598749)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection on cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'',
'',
'  IF  nvl(v_chk,0) = 0 then',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'END IF;',
'',
'',
'  end if;',
'',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15569220313756195)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15569148917756194)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
