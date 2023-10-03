prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'User Role Assign'
,p_alias=>'USER-ROLE-ASSIGN'
,p_step_title=>'User Role Assign'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210726160052'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16179502751290098)
,p_plug_name=>'User Role Assign '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16179084122290094)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(16179502751290098)
,p_button_name=>'Cancel'
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
 p_id=>wwv_flow_api.id(15571663429756219)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16179502751290098)
,p_button_name=>'Back'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16179251139290095)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16179502751290098)
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
 p_id=>wwv_flow_api.id(16178542798290088)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16179368126290097)
,p_name=>'P8_USER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16179502751290098)
,p_prompt=>'User'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DIstinct usr_name d ,usr_id r',
'from appua.vw_user',
'where get_parent_comp(ORG_ID) = :GLOBAL_PARENT_COMP',
'order by 1',
';',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_read_only_when=>'P8_MODE'
,p_read_only_when2=>'E'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16179315189290096)
,p_name=>'P8_ROLE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16179502751290098)
,p_prompt=>'Role'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_ROLE_NAME D,VC_ROLE_CODE R',
'from mst_role',
'where vc_comp_code = :GLOBAL_PARENT_COMP'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--SELECT----'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16178965553290092)
,p_name=>'P8_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16179502751290098)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13339483282615584)
,p_name=>'P8_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16179502751290098)
,p_item_default=>'A'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Active;A,Inactive;I'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16178699089290090)
,p_validation_name=>'user id not null'
,p_validation_sequence=>10
,p_validation=>'P8_USER_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select User'
,p_when_button_pressed=>wwv_flow_api.id(16179251139290095)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16178617229290089)
,p_validation_name=>'role not null'
,p_validation_sequence=>20
,p_validation=>'P8_ROLE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Role'
,p_when_button_pressed=>wwv_flow_api.id(16179251139290095)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16177817366290081)
,p_validation_name=>'check duplicate'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'select count(*)',
'into  v_chk',
'from mst_user_role',
'where vc_parent_comp = :GLOBAL_PARENT_COMP',
'and nu_user_id= :P8_USER_ID;',
'',
'if  v_chk >0 then',
'',
'return ''Role for this user is already defined.'';',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P8_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(16179251139290095)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16179021517290093)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'iNSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'INSERT into mst_user_role',
'(',
'VC_PARENT_COMP,',
'NU_USER_ID,',
'VC_ROLE_CODE,',
'VC_CRT_CODE,',
'DT_CRT_DATE,',
'DT_MOD_DATE,',
'VC_AUTH_CODE,',
'VC_STATUS',
'',
')',
'values',
'(',
':GLOBAL_PARENT_COMP,',
':P8_USER_ID,',
':P8_ROLE,',
':GLOBAL_USER_CODE,',
'sysdate,',
'sysdate,',
':GLOBAL_USER_CODE,',
':P8_STATUS',
'',
');'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16179251139290095)
,p_process_when=>'P8_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16178803556290091)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update  mst_user_role',
'set      VC_ROLE_CODE      =  :P8_ROLE,',
'         DT_MOD_DATE       =  sysdate,',
'         VC_AUTH_CODE      =  :global_user_code,',
'         vc_status         =  :P8_STATUS',
' where   VC_PARENT_COMP    =  :GLOBAL_PARENT_COMP',
' AND     NU_USER_ID        =  :P8_USER_ID   ',
';'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16179251139290095)
,p_process_when=>'P8_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16177737551290080)
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
