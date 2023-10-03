prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Document Upload'
,p_alias=>'DOCUMENT-UPLOAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Document Upload'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide()'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region .t-Region-body {',
'    padding: 16px;',
'    background: linear-gradient(145deg, #c6e5f7, transparent);',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210709111755'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107526561893791597)
,p_plug_name=>'&P28_DOCUMENT_TITLES.'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14602527321031375)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107526561893791597)
,p_button_name=>'CLOSED'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Closed'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14602157602031373)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(107526561893791597)
,p_button_name=>'CLEAR'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Clear'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14601754713031373)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(107526561893791597)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'CLOSE'
,p_button_condition=>'AAAAAAAA'
,p_button_condition_type=>'REQUEST_EQUALS_CONDITION'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14601291658031373)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(107526561893791597)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Upload'
,p_button_position=>'DELETE'
,p_button_condition=>'P28_ACTION'
,p_button_condition2=>'I'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14600942607031372)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(107526561893791597)
,p_button_name=>'Update'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Update'
,p_button_position=>'DELETE'
,p_button_condition=>'P28_ACTION'
,p_button_condition2=>'U'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14669224122569483)
,p_name=>'P28_PRJ_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_source=>'VC_PRJ_ID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14600545993031372)
,p_name=>'P28_VC_COMP_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14600082691031371)
,p_name=>'P28_VC_DOC_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_prompt=>'Document No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14599739980031371)
,p_name=>'P28_DT_DOC_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_prompt=>'Document Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14599315863031370)
,p_name=>'P28_DOC_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14598903625031370)
,p_name=>'P28_DOCUMENT_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P28_DOC_TYPE,''PPA'',''PPA'') INTO :P28_DOCUMENT_TYPE',
'              FROM DUAL;',
' RETURN :P28_DOCUMENT_TYPE;',
' '))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Document Type'
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
 p_id=>wwv_flow_api.id(14598501006031370)
,p_name=>'P28_VC_REFERENCE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Doc. Reference'
,p_source=>'VC_REFERENCE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
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
 p_id=>wwv_flow_api.id(14598073155031369)
,p_name=>'P28_VC_REF_DOC_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ref. Doc. No'
,p_source=>'VC_REF_DOC_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>20
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14597679646031368)
,p_name=>'P28_DT_REF_DOC_DATE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Ref. Doc. Date'
,p_source=>'DT_REF_DOC_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER'
,p_cSize=>24
,p_cMaxlength=>255
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_04=>'button'
,p_attribute_05=>'N'
,p_attribute_07=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14597361572031368)
,p_name=>'P28_VC_REF_DOC_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Doc. Name'
,p_source=>'VC_REF_DOC_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14596944086031367)
,p_name=>'P28_NU_VALUE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Value'
,p_source=>'NU_VALUE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14596521511031367)
,p_name=>'P28_VC_REMARK'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Remark'
,p_source=>'VC_REMARK'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>74
,p_cMaxlength=>100
,p_cHeight=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14596105296031367)
,p_name=>'P28_VC_LOGO'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Choose File'
,p_source=>'VC_LOGO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DB_COLUMN'
,p_attribute_03=>'VC_FILE_NAME'
,p_attribute_05=>'DT_MOD_DATE'
,p_attribute_06=>'N'
,p_attribute_12=>'NATIVE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14595737106031366)
,p_name=>'P28_VC_PATH'
,p_is_required=>true
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Path'
,p_source=>'VC_PATH'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(14595303525031365)
,p_name=>'P28_DT_CREATED_DATE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RETURN SYSDATE;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'DT_CREATED_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14594884590031365)
,p_name=>'P28_VC_USER_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_item_default=>'RETURN :GLOBAL_USER_CODE;'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'VC_USER_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14594537544031364)
,p_name=>'P28_NU_SR_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_source=>'NU_SR_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14594105810031364)
,p_name=>'P28_VC_MOD_USERCODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_source=>'VC_MOD_USERCODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14593682769031364)
,p_name=>'P28_NU_SEQ_NO'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF(:P28_ACTION=''I'') THEN',
'RETURN UPLOAD_DMS.NEXTVAL;',
'END IF;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_source=>'NU_SEQ_NO'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14593355957031364)
,p_name=>'P28_ACTION'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14592935895031363)
,p_name=>'P28_DOCUMENT_TITLES'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(:P28_ACTION=''U'') THEN',
'RETURN ''Document Update'';',
'elsE',
'RETURN ''Document Upload'';',
'end if;'))
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14592506631031362)
,p_name=>'P28_DT_MOD_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(107526561893791597)
,p_use_cache_before_default=>'NO'
,p_source=>'DT_MOD_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14529090451438818)
,p_validation_name=>'doc name not null on save'
,p_validation_sequence=>10
,p_validation=>'P28_VC_REF_DOC_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Document Name'
,p_when_button_pressed=>wwv_flow_api.id(14601291658031373)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14528798605438815)
,p_validation_name=>'doc name not null on update'
,p_validation_sequence=>20
,p_validation=>'P28_VC_REF_DOC_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Document Name'
,p_when_button_pressed=>wwv_flow_api.id(14600942607031372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14528934300438816)
,p_validation_name=>'select file'
,p_validation_sequence=>30
,p_validation=>'P28_VC_LOGO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select File'
,p_when_button_pressed=>wwv_flow_api.id(14601291658031373)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14587705402031355)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(14602527321031375)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14587234239031355)
,p_event_id=>wwv_flow_api.id(14587705402031355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14586796082031355)
,p_name=>'GET_PATH'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P28_VC_LOGO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14586294946031353)
,p_event_id=>wwv_flow_api.id(14586796082031355)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_VC_PATH'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var filename = $v(''P28_VC_LOGO'');    //.split(''\\'').pop().split(''/'').pop();  ',
'//Copy Path',
'//$s("FILE_NAME",filename);',
'$s("P28_VC_PATH",filename);'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14585894519031353)
,p_name=>'PATH_DISABLE'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14585417651031353)
,p_event_id=>wwv_flow_api.id(14585894519031353)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P28_VC_PATH,P28_VC_DOC_NO,P28_DT_DOC_DATE,P28_DOC_TYPE,P28_DOCUMENT_TYPE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.item("P28_VC_PATH").node.readOnly=true;  ',
'',
'apex.item("P28_VC_DOC_NO").node.readOnly=true;',
'',
'apex.item("P28_DT_DOC_DATE").node.readOnly=true;',
'',
'apex.item("P28_DOC_TYPE").node.readOnly=true;',
'',
'apex.item("P28_DOCUMENT_TYPE").node.readOnly=true;'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14669396278569485)
,p_name=>'HIDE'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14669345606569484)
,p_event_id=>wwv_flow_api.id(14669396278569485)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14589356503031357)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Fetch Row from DT_UPLOAD_DMS'
,p_attribute_02=>'DT_UPLOAD_DMS'
,p_attribute_03=>'P28_NU_SEQ_NO'
,p_attribute_04=>'NU_SEQ_NO'
,p_attribute_11=>'I'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'dfghjkkjh'
,p_process_when_type=>'REQUEST_EQUALS_CONDITION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14590125347031359)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Hdr_Entry'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'a number;',
'begin',
'select count(*) into a from hd_upload_dms ',
'where vc_comp_code=:P28_VC_COMP_CODE ',
'and vc_prj_id = :GLOBAL_PROJ_ID and vc_doc_no=:P28_VC_DOC_NO',
'and dt_doc_date=:P28_DT_DOC_DATE and vc_doc_type=:P28_DOC_TYPE;',
'if (a=0) then',
'insert into hd_upload_dms (VC_COMP_CODE,VC_DOC_NO,DT_DOC_DATE,DT_CREATED_DATE,VC_USER_CODE,DT_MOD_DATE,VC_DOC_TYPE,vc_prj_id)',
'VALUES',
'(:P28_VC_COMP_CODE,:P28_VC_DOC_NO,:P28_DT_DOC_DATE,SYSDATE,:GLOBAL_USER_CODE,SYSDATE,:P28_DOC_TYPE,:GLOBAL_PROJ_ID);',
'END IF;',
'end;',
'',
'/*',
'insert into dt_upload_dms (VC_COMP_CODE,VC_DOC_NO,DT_DOC_DATE)',
'VALUES',
'(:P28_VC_COMP_CODE,:P28_VC_DOC_NO,:P28_DT_DOC_DATE);',
'--*/',
'UPDATE DT_UPLOAD_DMS ',
'SET VC_COMP_CODE=:P28_VC_COMP_CODE,VC_DOC_NO=:P28_VC_DOC_NO,DT_DOC_DATE=:P28_DT_DOC_DATE',
'WHERE NU_SEQ_NO=:P28_NU_SEQ_NO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14601291658031373)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14591275204031360)
,p_process_sequence=>15
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SET GLOBAL VALUE'
,p_process_sql_clob=>':GLOBAL_DMS_ITEM:=:P28_NU_SR_NO;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14588914949031357)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of DT_UPLOAD_DMS'
,p_attribute_02=>'DT_UPLOAD_DMS'
,p_attribute_03=>'P28_NU_SEQ_NO'
,p_attribute_04=>'NU_SEQ_NO'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Data Successfully Uploaded'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14589679246031358)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'dtl updt'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'a number;',
'b number;',
'begin',
'select count(*) into a from DT_UPLOAD_DMS ',
'where VC_COMP_CODE=:P28_VC_COMP_CODE ',
'and vc_prj_id = :GLOBAL_PROJ_ID ',
'AND VC_DOC_NO=:P28_VC_DOC_NO ',
'AND DT_DOC_DATE=:P28_DT_DOC_DATE;',
'',
'if(a=0) then',
'UPDATE DT_UPLOAD_DMS SET VC_COMP_CODE=:P28_VC_COMP_CODE,VC_DOC_NO=:P28_VC_DOC_NO,DT_DOC_DATE=:P28_DT_DOC_DATE,NU_SR_NO=1,DT_MOD_DATE=''''',
'WHERE NU_SEQ_NO=:P28_NU_SEQ_NO;',
'ELSE',
'select max(NVL(NU_SR_NO,0)+1) into B from DT_UPLOAD_DMS',
' where VC_COMP_CODE=:P28_VC_COMP_CODE ',
' and vc_prj_id = :GLOBAL_PROJ_ID ',
' AND VC_DOC_NO=:P28_VC_DOC_NO ',
'AND DT_DOC_DATE=:P28_DT_DOC_DATE;',
'',
'UPDATE DT_UPLOAD_DMS SET VC_COMP_CODE=:P28_VC_COMP_CODE,VC_DOC_NO=:P28_VC_DOC_NO,DT_DOC_DATE=:P28_DT_DOC_DATE,NU_SR_NO=B,DT_MOD_DATE=''''',
'WHERE NU_SEQ_NO=:P28_NU_SEQ_NO;',
'END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14601291658031373)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14588543783031357)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset item'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P28_VC_REFERENCE,P28_VC_REF_DOC_NAME,P28_VC_REF_DOC_NO,P28_DT_REF_DOC_DATE,P28_NU_VALUE,P28_VC_REMARK,P28_VC_LOGO,P28_VC_PATH,P28_NU_SR_NO,P28_VC_MOD_USERCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14602157602031373)
,p_process_is_stateful_y_n=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14588156274031357)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14602527321031375)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14590521828031359)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear_Data'
,p_attribute_01=>'CLEAR_CACHE_FOR_ITEMS'
,p_attribute_03=>'P28_VC_REFERENCE,P28_VC_REF_DOC_NAME,P28_VC_REF_DOC_NO,P28_DT_REF_DOC_DATE,P28_NU_VALUE,P28_VC_REMARK,P28_VC_LOGO,P28_VC_PATH,P28_NU_SR_NO,P28_VC_MOD_USERCODE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14601291658031373)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14591738670031360)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*DELETE FROM DT_UPLOAD_DMS',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE AND NU_SR_NO=:P28_NU_SR_NO;',
'*/',
'',
'declare',
'a number;',
'B number;',
'begin',
'select MAX(NU_SR_NO) into B from DT_UPLOAD_DMS',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE  and vc_prj_id = :GLOBAL_PROJ_ID AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE;',
'IF(B>:GLOBAL_DMS_ITEM) THEN',
'UPDATE DT_UPLOAD_DMS SET NU_SR_NO=NU_SR_NO-1 ',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE  and vc_prj_id = :GLOBAL_PROJ_ID AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE',
'AND NU_SR_NO>:GLOBAL_DMS_ITEM;',
'END IF;',
'------------HEADER DATA DELETE------------',
'select count(*) into a from DT_UPLOAD_DMS',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE  and vc_prj_id = :GLOBAL_PROJ_ID AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE;',
'if (a=0) then',
'DELETE FROM HD_UPLOAD_DMS',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE  and vc_prj_id = :GLOBAL_PROJ_ID AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE;',
'END IF;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14601754713031373)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14590939697031359)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF(:P28_ACTION=''U'') THEN',
'UPDATE DT_UPLOAD_DMS SET VC_USER_CODE=:P28_VC_USER_CODE,DT_CREATED_DATE=:P28_DT_CREATED_DATE,',
'DT_MOD_DATE=sysdate --to_char(sysdate,''DD/MM/YYYY HH24:MI:SS'')',
'WHERE VC_COMP_CODE=:P28_VC_COMP_CODE  and vc_prj_id = :GLOBAL_PROJ_ID AND VC_DOC_NO=:P28_VC_DOC_NO AND DT_DOC_DATE=:P28_DT_DOC_DATE',
'AND NU_SR_NO=:P28_NU_SR_NO;',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14600942607031372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14592143658031361)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE_DIALOG'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(14602527321031375)
);
wwv_flow_api.component_end;
end;
/
