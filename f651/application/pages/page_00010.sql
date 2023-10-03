prompt --application/pages/page_00010
begin
--   Manifest
--     PAGE: 00010
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
 p_id=>10
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Other Charges'
,p_alias=>'OTHER-CHARGES'
,p_step_title=>'Other Charges'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210922145150'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16177310985290076)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P10_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16023745851789518)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16177310985290076)
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
 p_id=>wwv_flow_api.id(16177228003290075)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16177310985290076)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16023780059789519)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16177310985290076)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P10_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16021590570789497)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16024191578789523)
,p_name=>'P10_CHARGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16024145956789522)
,p_name=>'P10_CHARGE_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_prompt=>'Charge Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'u-textInitCap'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16024049370789521)
,p_name=>'P10_CHARGE_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_prompt=>'Charge Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''C''',
'and ch_ACTIVE = ''Y'' ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16023894697789520)
,p_name=>'P10_ACCOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_prompt=>'Account'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_ACCOUNT_CODE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select "Account Name" D ,"COA_ID" R ',
'from APPUA.vw_coa',
'where ORG_ID =:GLOBAL_PARENT_COMP'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_cSize=>30
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Account'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16023423300789515)
,p_name=>'P10_MODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13705457799871989)
,p_name=>'P10_STATUS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16177310985290076)
,p_item_default=>'Y'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;Y,Inactive;N'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16023358623789514)
,p_validation_name=>'NAME NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P10_CHARGE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Charge Name.'
,p_when_button_pressed=>wwv_flow_api.id(16023780059789519)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16023237697789513)
,p_validation_name=>'Charge Type'
,p_validation_sequence=>20
,p_validation=>'P10_CHARGE_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Charge Type'
,p_when_button_pressed=>wwv_flow_api.id(16023780059789519)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16023152816789512)
,p_validation_name=>'Acc name not null'
,p_validation_sequence=>30
,p_validation=>'P10_ACCOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Account.'
,p_when_button_pressed=>wwv_flow_api.id(16023780059789519)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16022272962789504)
,p_validation_name=>'DUPLICATE'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CHK NUMBER;',
'',
'BEGIN',
'',
'if :P10_MODE = ''A'' THEN',
'',
'SELECT COUNT(*)',
'INTO   V_CHK',
'FROM  MST_OTHER_CHARGES',
'WHERE org_id = :GLOBAL_COMP_CODE',
'AND   VC_CHARGE_NAME = :P10_CHARGE_NAME',
'AND  VC_CHARGE_TYPE  = :P10_CHARGE_TYPE;',
'END IF;',
'',
'if :P10_MODE = ''E'' THEN',
'',
'SELECT COUNT(*)',
'INTO   V_CHK',
'FROM  MST_OTHER_CHARGES',
'WHERE org_id = :GLOBAL_COMP_CODE',
'AND   VC_CHARGE_NAME = :P10_CHARGE_NAME',
'AND   VC_CHARGE_TYPE  = :P10_CHARGE_TYPE',
'AND   NU_CHARGE_ID<>:P10_CHARGE_ID;',
'END IF;',
'',
'',
'IF V_CHK >0  THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'DUplicate Charge Name.'
,p_when_button_pressed=>wwv_flow_api.id(16023780059789519)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16023652643789517)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_code NUMBER;',
'',
'BEGIN',
'',
'select nvl(max(NU_CHARGE_ID),0) +1 into  v_code from MST_OTHER_CHARGES where ORG_ID = :global_comp_code;',
'',
'',
'insert into MST_OTHER_CHARGES',
'(',
'ORG_ID  , ',
'NU_CHARGE_ID,',
'vc_CHARGE_NAME   ,',
'VC_CHARGE_TYPE  , ',
'USR_ID_CREATE   ,',
'USR_ID_CREATE_DT    ,',
'VC_AUTH_CODE   ,',
'USR_ID_MOD_DT     ,',
'HO_ORG_ID   ,',
'COA_ID  ,',
'VC_ACTIVE',
')',
'values',
'(',
':GLOBAL_COMP_CODE,',
'v_code,',
':P10_CHARGE_NAME,',
':P10_CHARGE_TYPE,',
':GLOBAL_USER_CODE,',
'sysdate,',
':GLOBAL_USER_CODE,',
'SYSDATE,',
':GLOBAL_PARENT_COMP,',
':P10_ACCOUNT,',
':P10_STATUS',
'',
');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16023780059789519)
,p_process_when=>'P10_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16023490822789516)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update MST_OTHER_CHARGES',
'SET VC_CHARGE_NAME = :P10_CHARGE_NAME,',
'    VC_CHARGE_TYPE = :P10_CHARGE_TYPE,',
'    COA_ID = :P10_ACCOUNT,',
'    VC_AUTH_CODE    = :GLOBAL_USER_CODE,',
'    USR_ID_MOD_DT     =  SYSDATE,',
'    vc_active      = :P10_STATUS',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   NU_CHARGE_ID = :P10_CHARGE_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16023780059789519)
,p_process_when=>'P10_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16021759690789498)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
