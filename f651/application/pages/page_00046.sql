prompt --application/pages/page_00046
begin
--   Manifest
--     PAGE: 00046
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
 p_id=>46
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Rate Slab Wise'
,p_alias=>'RATE-SLAB-WISE'
,p_page_mode=>'MODAL'
,p_step_title=>'Rate Slab Wise'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230916180512'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(9170720520329239)
,p_plug_name=>'Rate Slab Wise'
,p_region_name=>'RATE'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 as FROM_DATE,',
'c002 as TO_DATE,',
'c003 as RATE,',
'C004 as ROW_ID,',
'SEQ_ID  AS seq',
'',
' from apex_collections ',
' where COLLECTION_NAME=''RATE_SLAB''; ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P46_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Rate Slab Wise'
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
 p_id=>wwv_flow_api.id(10197224731309534)
,p_name=>'ROW_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROW_ID'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'ROW ID'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'ROW_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P46_ROW_ID'
,p_duplicate_value=>false
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(10194105045309503)
,p_name=>'SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SEQ'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'P_ROW_SEQ.NEXTVAL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9171392639329245)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9171268319329244)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9171108091329243)
,p_name=>'RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'RATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>unistr('Rate (\20B9/kWh)')
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_item_css_classes=>'allownumericwithdecimal'
,p_is_required=>true
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'rate'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9171008628329242)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'To Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
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
,p_default_type=>'ITEM'
,p_default_expression=>'P46_FROM_DATE_1'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(9170944229329241)
,p_name=>'FROM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'From Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
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
,p_static_id=>'FROM_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P46_TO_DATE'
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(9170836647329240)
,p_internal_uid=>9170836647329240
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
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
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(10181122994226313)
,p_interactive_grid_id=>wwv_flow_api.id(9170836647329240)
,p_static_id=>'101812'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(10181320308226313)
,p_report_id=>wwv_flow_api.id(10181122994226313)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10305309045449223)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(10197224731309534)
,p_is_visible=>false
,p_is_frozen=>false
,p_sort_order=>1
,p_sort_direction=>'ASC'
,p_sort_nulls=>'LAST'
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10205673856050984)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(10194105045309503)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10185926084232107)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(9171268319329244)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10183638546226327)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(9171108091329243)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10182785598226323)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(9171008628329242)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(10181818821226315)
,p_view_id=>wwv_flow_api.id(10181320308226313)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(9170944229329241)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10193932899309501)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(9170720520329239)
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
 p_id=>wwv_flow_api.id(9171820524329250)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(9170720520329239)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P46_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(10196862758309530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(9170720520329239)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P46_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10198337016309545)
,p_name=>'P46_MODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10197167329309533)
,p_name=>'P46_ROW_ID'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_item_default=>'P_ROW_SEQ.NEXTVAL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10196474493309526)
,p_name=>'P46_CHK_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10195365989309515)
,p_name=>'P46_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10194604450309508)
,p_name=>'P46_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1567241241481692)
,p_name=>'P46_TO_DATE_PPA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1567375735481693)
,p_name=>'P46_TO_DATE_PPA_1'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14422616909913554)
,p_name=>'P46_FROM_DATE_1'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(9170720520329239)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10393422164598707)
,p_validation_name=>'check collection rate slab'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'v_chk2 number;',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RATE_SLAB'' ;',
'  SELECT COUNT(*) INTO v_chk2 FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' ;',
'',
'',
'if nvl(v_chk2 ,0)=0 then',
'  IF  nvl(v_chk,0) = 0 then',
'   return ''Enter complete detail of Rate'';',
'',
'  end if;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(9171820524329250)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9171612563329248)
,p_name=>'hide global page'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9171789174329249)
,p_event_id=>wwv_flow_api.id(9171612563329248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10196228950309524)
,p_name=>'check from and to date'
,p_event_sequence=>15
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(9170720520329239)
,p_triggering_element=>'TO_DATE,FROM_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10196385221309525)
,p_event_id=>wwv_flow_api.id(10196228950309524)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If to_date(:FROM_DATE,''DD-MM-YYYY'') > to_date(:TO_DATE,''DD-MM-YYYY'') then ',
':P46_CHK_DATE := ''Y'';',
'Else ',
':P46_CHK_DATE := ''X'';',
'End if; ',
'',
''))
,p_attribute_02=>'TO_DATE,FROM_DATE'
,p_attribute_03=>'P46_CHK_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10196542932309527)
,p_name=>'ERR MSG FROM AND TO DATE'
,p_event_sequence=>16
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_CHK_DATE'
,p_condition_element=>'P46_CHK_DATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10196689328309528)
,p_event_id=>wwv_flow_api.id(10196542932309527)
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
 p_id=>wwv_flow_api.id(10196731073309529)
,p_event_id=>wwv_flow_api.id(10196542932309527)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10194403439309506)
,p_name=>'check duplicate'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_CHK_DATE'
,p_condition_element=>'P46_CHK_DATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'X'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10194549643309507)
,p_event_id=>wwv_flow_api.id(10194403439309506)
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
':P46_DUPLICATE:=NULL;',
'IF NVL(:FROM_DATE,''XX'') <> ''XX'' AND NVL(:TO_DATE,''XX'') <> ''XX''   THEN',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DATE_DUPLICATE'');',
'    END IF;',
'     BEGIN',
'        SELECT COUNT(*) INTO B FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' AND C004 = :ROW_ID;',
'     EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'     END;',
'',
'     IF   (B >0) THEN',
'        SELECT SEQ_ID INTO COLL_SEQ FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' AND C004=:ROW_ID;',
'          APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''DATE_DUPLICATE'', P_SEQ => COLL_SEQ);',
'',
'           ',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' AND C001 = :FROM_DATE  AND C002=:TO_DATE;',
'        IF(A>0) THEN',
'            :P46_DUPLICATE:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DATE_DUPLICATE'',',
'                                            P_C001            => :FROM_DATE,',
'                                            P_C002            => :TO_DATE,',
'                                            P_C003            => :SEQ,',
'                                            p_c004           =>  :ROW_ID',
'                                        );',
'        END IF;',
'    ELSE',
'         SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' AND C001 = :FROM_DATE  AND C002=:TO_DATE;',
'        IF(A>0) THEN',
'            :P46_DUPLICATE:=''Y'';',
'        ELSE',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DATE_DUPLICATE'',',
'                                            P_C001            => :FROM_DATE,',
'                                            P_C002            => :TO_DATE,',
'                                            P_C003            => :SEQ,',
'                                            p_c004           =>  :ROW_ID',
'                                     );',
'        END IF;',
'    END IF;',
'END IF;',
'END;'))
,p_attribute_02=>'FROM_DATE,TO_DATE,P46_CHK_DATE,SEQ,ROW_ID'
,p_attribute_03=>'P46_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10194791840309509)
,p_name=>'ERR MSG Duplicate'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_DUPLICATE'
,p_condition_element=>'P46_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10194899682309510)
,p_event_id=>wwv_flow_api.id(10194791840309509)
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
 p_id=>wwv_flow_api.id(10194986218309511)
,p_event_id=>wwv_flow_api.id(10194791840309509)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1567721018481696)
,p_name=>'ERR MSG Duplicate_1'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_DUPLICATE'
,p_condition_element=>'P46_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'YY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1567821622481697)
,p_event_id=>wwv_flow_api.id(1567721018481696)
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
'        		message:    ''Rate Slab should be in PPA from date and to date Range'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1567929211481698)
,p_event_id=>wwv_flow_api.id(1567721018481696)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10195425407309516)
,p_name=>'Set To Date'
,p_event_sequence=>50
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(9170720520329239)
,p_triggering_element=>'TO_DATE'
,p_condition_element_type=>'ITEM'
,p_condition_element=>'P46_CHK_DATE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10195588950309517)
,p_event_id=>wwv_flow_api.id(10195425407309516)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P46_TO_DATE:= to_date(:TO_DATE,''DD-MM-YYYY'')+1;',
'',
':P46_TO_DATE_PPA_1:= to_date(:TO_DATE,''DD-MM-YYYY'');'))
,p_attribute_02=>'TO_DATE'
,p_attribute_03=>'P46_TO_DATE,P46_TO_DATE_PPA_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10196119526309523)
,p_event_id=>wwv_flow_api.id(10195425407309516)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("RATE").widget().interactiveGrid("getViews", "grid");',
'',
'var model = grid.model;',
'',
'model.getOption("fields").FROM_DATE.defaultValue = $v("P46_TO_DATE");',
'    '))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10393715837598710)
,p_event_id=>wwv_flow_api.id(10195425407309516)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10196862758309530)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10196911184309531)
,p_name=>'ADD ROW'
,p_event_sequence=>60
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(10196862758309530)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10197443147309536)
,p_event_id=>wwv_flow_api.id(10196911184309531)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P46_ROW_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'P_ROW_SEQ.NEXTVAL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10197319908309535)
,p_event_id=>wwv_flow_api.id(10196911184309531)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var grid = apex.region("RATE").widget().interactiveGrid("getViews", "grid");',
'',
'var model = grid.model;',
'',
'model.getOption("fields").ROW_ID.defaultValue = $v("P46_ROW_ID"); ',
'    '))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10197032403309532)
,p_event_id=>wwv_flow_api.id(10196911184309531)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'apex.region("RATE").widget().interactiveGrid( "getActions" ).invoke( "selection-add-row" );'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10393685360598709)
,p_event_id=>wwv_flow_api.id(10196911184309531)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10196862758309530)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(10393810874598711)
,p_name=>'disable button add row'
,p_event_sequence=>70
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P46_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(10393926084598712)
,p_event_id=>wwv_flow_api.id(10393810874598711)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(10196862758309530)
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'v_chk2 number;',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RATE_SLAB'' ;',
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
 p_id=>wwv_flow_api.id(1567510841481694)
,p_name=>'Greater value'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P46_TO_DATE_PPA_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1567588387481695)
,p_event_id=>wwv_flow_api.id(1567510841481694)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P46_TO_DATE_PPA_1,''DD-MM-YYYY'') > to_date(:P46_TO_DATE_PPA,''DD-MM-YYYY'') then',
':P46_DUPLICATE:=''YY'';',
'else',
':P46_DUPLICATE:=''X'';',
'end if;'))
,p_attribute_02=>'P46_TO_DATE_PPA,P46_TO_DATE_PPA_1'
,p_attribute_03=>'P46_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(9171415957329246)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(9170720520329239)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Rate Slab Wise - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_ID number;',
'v_seq number;',
'begin',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'   case :APEX$ROW_STATUS',
'',
'    when ''C'' then',
'            APEX_COLLECTION.ADD_MEMBER(  P_COLLECTION_NAME => ''RATE_SLAB'',',
'                                       p_c001            =>  :FROM_DATE,',
'                                       P_C002            =>  :TO_DATE,',
'                                       P_C003            =>  :RATE,',
'                                       P_C004            =>  :ROW_ID',
'                                     );',
'    when ''U'' then',
'   ',
'                                    APEX_COLLECTION.UPDATE_MEMBER (',
'                                        p_collection_name => ''RATE_SLAB'',',
'                                        p_seq             =>  :SEQ,',
'                                        p_c001            =>  :FROM_DATE,',
'                                        P_C002            => :TO_DATE,',
'                                        P_C003            => :RATE,',
'                                        P_C004            => :ROW_ID',
'                                    ',
'                                    );',
'                    ',
'        when ''D'' then',
' ',
'',
'                    IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'                        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''RATE_SLAB'', P_SEQ => :SEQ);',
'',
'                    end if;',
'                    ',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(9171820524329250)
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
 p_id=>wwv_flow_api.id(10194232058309504)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(10193932899309501)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10393340428598706)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RATE_SLAB'' ;',
'',
'',
'  IF  nvl(v_chk,0) = 0 then',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
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
,p_process_when_button_id=>wwv_flow_api.id(10193932899309501)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10194010367309502)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10393246768598705)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET TO DATE on edit mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT MAX(TO_DATE(c002,''DD-MM-YYYY''))+1',
'INTO :P46_TO_DATE',
'from apex_collections ',
'where COLLECTION_NAME=''RATE_SLAB''',
'',
'',
'/*',
'Select ',
'TO_DATE(c002,''DD-MM-YYYY'')+1',
'INTO :P46_TO_DATE',
'from apex_collections ',
' where COLLECTION_NAME=''RATE_SLAB''',
' AND  c004 = (SELECT MAX(c004)',
'              from apex_collections ',
'              where COLLECTION_NAME=''RATE_SLAB'')*/',
' ; ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P46_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'Erwerw'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10393502855598708)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET TO DATE on add mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'begin',
'SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RATE_SLAB'' ;',
'',
'IF  nvl(v_chk,0) <> 0 then',
'  SELECT MAX(TO_DATE(c002,''DD-MM-YYYY''))+1',
'INTO :P46_TO_DATE',
'from apex_collections ',
'where COLLECTION_NAME=''RATE_SLAB'';',
'',
'  end if;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P46_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
