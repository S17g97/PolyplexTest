prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Project Prefix'
,p_alias=>'PROJECT-PREFIX'
,p_step_title=>'Project Prefix'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220829125248'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15461614902004899)
,p_plug_name=>'Project Prefix'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15461085591004894)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15461614902004899)
,p_button_name=>'cancel'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15461266552004895)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15461614902004899)
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
 p_id=>wwv_flow_api.id(15460210337004885)
,p_branch_action=>'f?p=&APP_ID.:19:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15461478960004898)
,p_name=>'P20_COMPANY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15461614902004899)
,p_use_cache_before_default=>'NO'
,p_item_default=>':GLOBAL_COMP_CODE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Company'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select COMPANY_NAME, ORG_ID R',
'from APPUA.VW_COMPANY_MASTER',
'WHERE PARENT_COMPANY_CODE = :GLOBAL_PARENT_COMP',
'order by 2 '))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_read_only_when=>'P20_MODE'
,p_read_only_when2=>'E'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15461406419004897)
,p_name=>'P20_PROJECT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15461614902004899)
,p_use_cache_before_default=>'NO'
,p_item_default=>':GLOBAL_PROJ_ID'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Project'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT  PROJECT_NAME D, PRJ_ID R',
'FROM APPUA.VW_USR_PRJ',
'where ORG_ID = :P20_COMPANY'))
,p_lov_cascade_parent_items=>'P20_COMPANY'
,p_ajax_items_to_submit=>'P20_COMPANY'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P20_MODE'
,p_read_only_when2=>'E'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15461279728004896)
,p_name=>'P20_PROJECT_PREFIX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15461614902004899)
,p_prompt=>'Project Prefix'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'u-textUpper'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15460512373004888)
,p_name=>'P20_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15461614902004899)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15461019661004893)
,p_validation_name=>'company not null'
,p_validation_sequence=>10
,p_validation=>'P20_COMPANY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Company'
,p_when_button_pressed=>wwv_flow_api.id(15461266552004895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15460949290004892)
,p_validation_name=>'Project'
,p_validation_sequence=>20
,p_validation=>'P20_PROJECT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Project'
,p_when_button_pressed=>wwv_flow_api.id(15461266552004895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15460851969004891)
,p_validation_name=>'Project Prefix'
,p_validation_sequence=>30
,p_validation=>'P20_PROJECT_PREFIX'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Project Prefix'
,p_when_button_pressed=>wwv_flow_api.id(15461266552004895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15459409890004877)
,p_validation_name=>'check duplicate'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'select count(*)',
'into v_chk',
'from MST_PROJ_PREFIX',
'WHERE VC_COMPANY_CODE = :P20_COMPANY',
'AND   VC_PROJ_CODE = :P20_PROJECT;',
'',
'if v_chk <> 0 then',
'return false;',
'else',
'return true;',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Prefix for this company and Project is Already Defined.'
,p_validation_condition=>'P20_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15461266552004895)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15460671026004890)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'insert into MST_PROJ_PREFIX',
'(',
'VC_COMPANY_CODE,',
'VC_PROJ_CODE,',
'VC_PROJ_PREFIX,',
'VC_CRT_CODE,',
'DT_CRT_DATE,',
'VC_AUTH_CODE,',
'DT_MOD_DATE,',
'VC_DEFAULT_COMP',
')',
'values',
'(',
':P20_COMPANY,',
':P20_PROJECT,',
'upper(:P20_PROJECT_PREFIX),',
':GLOBAL_USER_CODE,',
'SYSDATE,',
':GLOBAL_USER_CODE,',
'SYSDATE,',
':GLOBAL_PARENT_COMP);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15461266552004895)
,p_process_when=>'P20_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15460610799004889)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE MST_PROJ_PREFIX',
'SET',
'VC_PROJ_PREFIX = upper(:P20_PROJECT_PREFIX),',
'VC_AUTH_CODE   = :GLOBAL_USER_CODE,',
'DT_MOD_DATE    = SYSDATE',
'WHERE VC_COMPANY_CODE = :P20_COMPANY',
'AND   VC_PROJ_CODE = :P20_PROJECT',
';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15461266552004895)
,p_process_when=>'P20_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15460332086004886)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15461266552004895)
);
wwv_flow_api.component_end;
end;
/
