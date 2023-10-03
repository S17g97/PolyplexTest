prompt --application/pages/page_00096
begin
--   Manifest
--     PAGE: 00096
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
 p_id=>96
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Authorized Sign'
,p_alias=>'AUTHORIZED-SIGN'
,p_step_title=>'Authorized Sign'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230921102524'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2918619835957240)
,p_plug_name=>'Authorized Sign'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'MST_AUTHORIZED_SIGN'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2926888084957223)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(2918619835957240)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Apply Changes'
,p_button_position=>'CHANGE'
,p_button_condition=>'P96_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save  fa-2x'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2925919957957224)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(2918619835957240)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove  fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2927262686957223)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2918619835957240)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'CREATE'
,p_button_condition=>'P96_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-plus  fa-2x'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2926442011957223)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(2918619835957240)
,p_button_name=>'DELETE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P96_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-trash-o  fa-2x'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(2927596924957222)
,p_branch_action=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2918916381957239)
,p_name=>'P96_ROWID'
,p_source_data_type=>'ROWID'
,p_is_primary_key=>true
,p_is_query_only=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
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
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2919261056957235)
,p_name=>'P96_ORG_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_default=>'GLOBAL_COMP_CODE'
,p_item_default_type=>'ITEM'
,p_source=>'ORG_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2919696455957233)
,p_name=>'P96_PROJ_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_default=>'GLOBAL_PROJ_ID'
,p_item_default_type=>'ITEM'
,p_source=>'PROJ_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2920108346957232)
,p_name=>'P96_VC_AUTH_CODE_TYPE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
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
 p_id=>wwv_flow_api.id(2920487952957231)
,p_name=>'P96_VC_AUTH_CODE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_source=>'VC_AUTH_CODE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2920877030957231)
,p_name=>'P96_VC_AUTH_CODE_DESC'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_prompt=>'Description'
,p_source=>'VC_AUTH_CODE_DESC'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>100
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2921293714957230)
,p_name=>'P96_USR_ID_CREATE_DT'
,p_source_data_type=>'DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_source=>'USR_ID_CREATE_DT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2921703388957230)
,p_name=>'P96_USR_ID_MOD_DT'
,p_source_data_type=>'DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_source=>'USR_ID_MOD_DT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2922106694957230)
,p_name=>'P96_USR_ID_CREATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_default=>'GLOBAL_USER_CODE'
,p_item_default_type=>'ITEM'
,p_source=>'USR_ID_CREATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(2922458078957229)
,p_name=>'P96_CH_ACTIVE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_source_plug_id=>wwv_flow_api.id(2918619835957240)
,p_item_default=>'Y'
,p_prompt=>'Status'
,p_source=>'CH_ACTIVE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1738109637090719)
,p_validation_name=>'DUPLICATE_CHECK'
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
'and   upper(VC_AUTH_CODE_DESC)  = upper(:P96_VC_AUTH_CODE_DESC)',
'AND   VC_AUTH_CODE_TYPE  = :P96_VC_AUTH_CODE_TYPE;',
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
,p_error_message=>'Parameter is already exists.'
,p_when_button_pressed=>wwv_flow_api.id(2927262686957223)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1738136381090720)
,p_validation_name=>'duplicate check on edit'
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
'and   upper(VC_AUTH_CODE_DESC)  = upper(:P96_VC_AUTH_CODE_DESC)',
'AND   VC_AUTH_CODE_TYPE  = :P96_VC_AUTH_CODE_TYPE',
'AND   VC_AUTH_CODE <> :P96_VC_AUTH_CODE;',
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
,p_error_message=>'Parameter already exists.'
,p_when_button_pressed=>wwv_flow_api.id(2926888084957223)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1738252570090721)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(2926442011957223)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2928481810957222)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(2918619835957240)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Authorized Sign'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(2928036222957222)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(2918619835957240)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Authorized Sign'
);
wwv_flow_api.component_end;
end;
/
