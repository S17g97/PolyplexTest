prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Authorized Signatory '
,p_alias=>'AUTHORIZED-SIGNATORY1'
,p_step_title=>'Authorized Signatory '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230920125630'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(88086360061848811)
,p_plug_name=>'System  Parameter'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MST_AUTHORIZED_SIGN'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ORG_ID =:GLOBAL_COMP_CODE',
'AND PROJ_ID =:GLOBAL_PROJ_ID'))
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2887035398273781)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(88086360061848811)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P94_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2887519894273780)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(88086360061848811)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2887854171273780)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(88086360061848811)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2888314113273779)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(88086360061848811)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P94_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2888639897273779)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(88086360061848811)
,p_button_name=>'DELETE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE'');'
,p_button_execute_validations=>'N'
,p_button_condition=>'P94_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash fa-2x'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2897444790273764)
,p_branch_name=>'Go To Page 93'
,p_branch_action=>'f?p=&APP_ID.:93:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1737677058090715)
,p_name=>'P94_PROJ_ID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_default=>'GLOBAL_PROJ_ID'
,p_item_default_type=>'ITEM'
,p_source=>'PROJ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1737828693090716)
,p_name=>'P94_VC_AUTH_CODE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_default=>'A'
,p_prompt=>'Parameter Type'
,p_source=>'VC_AUTH_CODE_TYPE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Authorized Signatory;A'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1737917911090717)
,p_name=>'P94_VC_AUTH_CODE'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_source=>'VC_AUTH_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1738018531090718)
,p_name=>'P94_VC_AUTH_CODE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_prompt=>'Description'
,p_source=>'VC_AUTH_CODE_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2889047461273778)
,p_name=>'P94_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2890693315273776)
,p_name=>'P94_ORG_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_default=>'GLOBAL_COMP_CODE'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2891032684273775)
,p_name=>'P94_USR_ID_CREATE_DT'
,p_source_data_type=>'DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_source=>'USR_ID_CREATE_DT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2891448786273775)
,p_name=>'P94_USR_ID_MOD_DT'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_source=>'USR_ID_MOD_DT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2891890970273774)
,p_name=>'P94_USR_ID_CREATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_default=>'GLOBAL_USER_CODE'
,p_item_default_type=>'ITEM'
,p_source=>'USR_ID_CREATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2892326837273774)
,p_name=>'P94_CH_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_source_plug_id=>wwv_flow_api.id(88086360061848811)
,p_item_default=>'Y'
,p_prompt=>'Status'
,p_source=>'CH_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;Y,Inactive;N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2896284632273766)
,p_validation_name=>'Check Duplicate'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'',
'select count(*)',
'INTO v_chk',
'from MST_AUTHORIZED_SIGN',
'where org_id  = :GLOBAL_COMP_CODE',
'AND PROJ_ID = :GLOBAL_PROJ_ID',
'and   upper(VC_AUTH_CODE_DESC)  = upper(:P94_VC_AUTH_CODE_DESC)',
'AND   VC_AUTH_CODE_TYPE  = :P94_VC_AUTH_CODE_TYPE;',
'',
'IF V_CHK > 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Prameter is already exists.'
,p_when_button_pressed=>wwv_flow_api.id(2888314113273779)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(2896676262273766)
,p_validation_name=>'CHECK DUPLICATE 2'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'',
'select count(*)',
'INTO v_chk',
'from MST_AUTHORIZED_SIGN',
'where org_id  = :GLOBAL_COMP_CODE',
'AND PROJ_ID = :GLOBAL_PROJ_ID',
'and   upper(VC_AUTH_CODE_DESC)  = upper(:P94_VC_AUTH_CODE_DESC)',
'AND   VC_AUTH_CODE_TYPE  = :P94_VC_AUTH_CODE_TYPE',
'AND   VC_AUTH_CODE <> :P94_VC_AUTH_CODE;',
'',
'IF V_CHK > 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Prameter is already exists.'
,p_when_button_pressed=>wwv_flow_api.id(2887035398273781)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2895389114273769)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_region_id=>wwv_flow_api.id(88086360061848811)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Fetch Row from MST_CODE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2896950730273765)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2888639897273779)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2895770551273768)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(88086360061848811)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Others Parameter'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
