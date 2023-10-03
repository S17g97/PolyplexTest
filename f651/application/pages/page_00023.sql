prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Workflow forward(not used)'
,p_alias=>'WORKFLOW-FORWARD'
,p_step_title=>'Workflow'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210707213609'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12364045524381422)
,p_plug_name=>'workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15043704553989431)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12364045524381422)
,p_button_name=>'Clear'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>CANCEL'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P23_LAST_PAGE.:&SESSION.::&DEBUG.:RP,&P23_LAST_PAGE.::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15043992537989432)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12364045524381422)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15040421593989426)
,p_branch_name=>'Go To Page &23_LAST_PAGE.'
,p_branch_action=>'f?p=&APP_ID.:&23_LAST_PAGE.:&SESSION.::&DEBUG.:RP,::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15043992537989432)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15051514048989440)
,p_name=>'P23_REQ_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15051166004989439)
,p_name=>'P23_ANSWER'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_item_default=>'F'
,p_prompt=>'Workflow Status'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Forward;F'
,p_cHeight=>1
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15050674638989439)
,p_name=>'P23_USER'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select get_uSER_NAME(a.vc_comp_code,a.vc_user_code) vc_user_name,vc_user_code',
'    from dt_workflow a    ',
'    where a.vc_comp_code    =:GLOBAL_COMP_CODE',
'    and     vc_workflow_no   =:P23_WORKFLOW',
'    and NU_LEVEL_SEQ        =1;',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P23_WORKFLOW'
,p_ajax_items_to_submit=>'P23_WORKFLOW'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15050282933989439)
,p_name=>'P23_REMARKS'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15049944445989439)
,p_name=>'P23_DOC_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15049538466989438)
,p_name=>'P23_DOC_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Document Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15049111384989437)
,p_name=>'P23_DOC_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Document Type'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15048749543989437)
,p_name=>'P23_DOC_SUBTYPE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Document Subtype'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15048309519989436)
,p_name=>'P23_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15047967233989436)
,p_name=>'P23_FAMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'SP Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15047496832989436)
,p_name=>'P23_CURRENCY'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Currency'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15047118258989435)
,p_name=>'P23_WORKFLOW'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_prompt=>'Workflow'
,p_source=>'P23_WORKFLOW'
,p_source_type=>'ITEM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_grid_column_css_classes=>'col-xxs-6'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15046761879989435)
,p_name=>'P23_LEVEL'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_item_default=>'0'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15046324830989434)
,p_name=>'P23_CURR_LEVEL'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15045922877989434)
,p_name=>'P23_MAX_LEVEL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15045542884989433)
,p_name=>'P23_NEXT_LEVEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15045137446989432)
,p_name=>'P23_LAST_PAGE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_item_default=>'1'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15044763253989432)
,p_name=>'P23_ERP_USER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(12364045524381422)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15042921571989430)
,p_name=>'populate_wkf'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15042452779989428)
,p_event_id=>wwv_flow_api.id(15042921571989430)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_WORKFLOW,P23_MAX_LEVEL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'				select vc_workflow_no,NU_LEVEL ',
'				from hd_workflow',
'				where vc_comp_code=:GLOBAL_COMP_CODE',
'				and vc_doc_type=:P23_doc_type	 ',
'				and CH_ACTIVE=''Y''',
'			  and nvl(vc_doc_subtype,'' '')=nvl(:P23_doc_subtype,'' '')	;'))
,p_attribute_07=>'GLOBAL_COMP_CODE,P23_DOC_TYPE,P23_DOC_SUBTYPE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15041884116989428)
,p_event_id=>wwv_flow_api.id(15042921571989430)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_ERP_USER'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'			/*	select vc_erp_code',
'				from APPUA',
'				where vc_comp_code=:GLOBAL_COMP_CODE',
'				and vc_user_code=:GLOBAL_USER_CODE	;*/',
'                SELECT :GLOBAL_USER_CODE FROM DUAL;'))
,p_attribute_07=>'GLOBAL_COMP_CODE,GLOBAL_USER_CODE'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15041424398989428)
,p_event_id=>wwv_flow_api.id(15042921571989430)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(12364045524381422)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15040927345989426)
,p_event_id=>wwv_flow_api.id(15042921571989430)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P23_ANSWER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15043356319989430)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DT_INSERT_UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN		',
'gen_workflow_request (:GLOBAL_COMP_CODE,:P23_REQ_NO,trim(:P23_doc_type),nvl(:P23_doc_subtype,''''),trim(:P23_doc_no),:P23_doc_date,',
'                        :P23_curr_level,:P23_next_level ,:P23_USER,:P23_ERP_USER,:P23_remark,:P23_answer); ',
'END;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'&P6_ORDER_NO. / &P6_ORDER_DATE. Order No saved Successfully!'
);
wwv_flow_api.component_end;
end;
/