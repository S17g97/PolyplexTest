prompt --application/pages/page_09999
begin
--   Manifest
--     PAGE: 09999
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
 p_id=>9999
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Login Page'
,p_alias=>'LOGIN'
,p_step_title=>'Sales - Polyplex - Sign In'
,p_warn_on_unsaved_changes=>'N'
,p_first_item=>'AUTO_FIRST_ITEM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'.t-PageBody--login{',
'background: url(#APP_IMAGES#texture-11.png);',
'',
'}',
'',
'div#P0_SELECTION_CONTAINER {',
'    display: none;',
'}',
'',
'',
'',
'body {',
'    background-color: #00dcff94 !important;',
'}',
'',
'',
'',
'span.t-Login-logo {',
'    background-image: url(#APP_IMAGES#polyplex-logo-removebg-preview.png);',
'    background-size: contain;',
'    width: 180px;',
'    background-color: transparent;',
'}',
''))
,p_step_template=>wwv_flow_api.id(16337919923492217)
,p_page_template_options=>'#DEFAULT#'
,p_page_is_public_y_n=>'Y'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210929113518'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16193452108491872)
,p_plug_name=>'<u>Sales</u>'
,p_region_template_options=>'#DEFAULT#:margin-top-none'
,p_plug_template=>wwv_flow_api.id(16288288154492134)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16188701108491843)
,p_plug_name=>'Language Selector'
,p_parent_plug_id=>wwv_flow_api.id(16193452108491872)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_source=>'apex_lang.emit_language_selector_list;'
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_num_rows=>15
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16181695196290120)
,p_plug_name=>'Login Message'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>4
,p_plug_display_column=>5
,p_plug_source=>'&LOGIN_MESSAGE.'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'ITEM_IS_NOT_NULL'
,p_plug_display_when_condition=>'LOGIN_MESSAGE'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16190587384491847)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(16193452108491872)
,p_button_name=>'LOGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Sign In'
,p_button_position=>'NEXT'
,p_button_alignment=>'LEFT'
,p_grid_new_row=>'Y'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16193041971491865)
,p_name=>'P9999_USERNAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16193452108491872)
,p_prompt=>'Username'
,p_placeholder=>'Username'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>40
,p_cMaxlength=>100
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_icon_css_classes=>'fa-user'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16192585959491862)
,p_name=>'P9999_PASSWORD'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(16193452108491872)
,p_prompt=>'Password'
,p_placeholder=>'Password'
,p_display_as=>'NATIVE_PASSWORD'
,p_cSize=>40
,p_cMaxlength=>100
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_icon_css_classes=>'fa-key'
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16191530590491856)
,p_name=>'P9999_REMEMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(16193452108491872)
,p_prompt=>'Remember username'
,p_display_as=>'NATIVE_CHECKBOX'
,p_named_lov=>'LOGIN_REMEMBER_USERNAME'
,p_lov=>'.'||wwv_flow_api.id(16192367256491862)||'.'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<p>',
'If you select this checkbox, the application will save your username in a persistent browser cookie named "LOGIN_USERNAME_COOKIE".',
'When you go to the login page the next time,',
'the username field will be automatically populated with this value.',
'</p>',
'<p>',
'If you deselect this checkbox and your username is already saved in the cookie,',
'the application will overwrite it with an empty value.',
'You can also use your browser''s developer tools to completely remove the cookie.',
'</p>'))
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16182144569290124)
,p_name=>'P9999_COMPANY'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(16193452108491872)
,p_prompt=>'Company'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select a.company_name D ,a.org_id r',
'from APPUA.vw_company_master a',
'WHERE EXISTS (SELECT 1 from APPUA.vw_user b',
'            where b.org_id = a.org_id',
'            and   b.usr_name = :P9999_USERNAME',
'              )',
'order by 2'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select Company---'
,p_lov_cascade_parent_items=>'P9999_USERNAME'
,p_ajax_items_to_submit=>'P9999_USERNAME'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1.5
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_icon_css_classes=>'fa-building'
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13340759521615596)
,p_name=>'P9999_ERROR'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(16193452108491872)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16181975702290123)
,p_validation_name=>'Select Company'
,p_validation_sequence=>10
,p_validation=>'P9999_COMPANY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Copmany.'
,p_when_button_pressed=>wwv_flow_api.id(16190587384491847)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16181895289290122)
,p_validation_name=>'Usernamr'
,p_validation_sequence=>20
,p_validation=>'P9999_USERNAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Username.'
,p_when_button_pressed=>wwv_flow_api.id(16190587384491847)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16181806557290121)
,p_validation_name=>'Password'
,p_validation_sequence=>30
,p_validation=>'P9999_PASSWORD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Password'
,p_when_button_pressed=>wwv_flow_api.id(16190587384491847)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16181579166290119)
,p_validation_name=>'Check Credentials'
,p_validation_sequence=>40
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'v_chk1 number;',
'begin',
'',
'select count(*)',
'into   v_chk',
'From   APPUA.VW_USER',
'Where  USR_NAME = :P9999_USERNAME',
'and ORG_ID= :P9999_COMPANY;',
'',
'',
'select count(*)',
'into   v_chk1',
'From   APPUA.VW_USER',
'Where  USR_NAME = :P9999_USERNAME',
'and    ORG_ID= :P9999_COMPANY',
'and    USR_PWD = :P9999_PASSWORD',
';',
'',
'IF :P9999_USERNAME IS NOT NULL THEN',
'if nvl(v_chk,0)= 0 then ',
'return ''Invalid Login Name.'';',
'end if;',
'END IF;',
'',
'',
'IF :P9999_USERNAME IS NOT NULL  AND :P9999_PASSWORD IS NOT NULL   THEN',
'if nvl(v_chk1,0)= 0 then ',
'return ''Invalid Password'';',
'end if;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13340869107615598)
,p_name=>'get info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_USERNAME,P9999_PASSWORD'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P9999_USERNAME'') != "" ||  $v(''P9999_PASSWORD'')  != "" '
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13340830390615597)
,p_event_id=>wwv_flow_api.id(13340869107615598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'ID NUMBER;',
'PASS NUMBER;',
'begin',
'select count(*) into ID from APPUA.VW_USER where USR_NAME =:P9999_USERNAME;',
'',
'IF ID=0 THEN',
':P9999_ERROR:=''Invalid User'';',
'ELSE',
'if  :P9999_PASSWORD is not null then',
'select count(*) into PASS from APPUA.VW_USER where USR_NAME=:P9999_USERNAME AND USR_PWD = :P9999_PASSWORD;',
'IF(PASS=0) THEN',
':P9999_ERROR:=NULL;',
':P9999_ERROR:=''Invalid Password'';',
'end if;',
'ELSE',
':P9999_ERROR:=NULL;',
'END IF;',
'END IF;',
'exception when others then',
':P9999_ERROR:=sqlerrm;',
'--Apex_Util.Set_Session_State(''LOGIN_MESSAGE'',''Error''||sqlerrm);',
'end;'))
,p_attribute_02=>'P9999_USERNAME,P9999_PASSWORD'
,p_attribute_03=>'P9999_ERROR'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13340620448615595)
,p_name=>'SHOW  Invalid  User ALERT '
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_ERROR'
,p_condition_element=>'P9999_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Invalid User'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13340519713615594)
,p_event_id=>wwv_flow_api.id(13340620448615595)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Invalid User'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13340399031615593)
,p_name=>'Show invalid Password Alert'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P9999_ERROR'
,p_condition_element=>'P9999_ERROR'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Invalid Password'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13340358253615592)
,p_event_id=>wwv_flow_api.id(13340399031615593)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Invalid Password'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16189802678491845)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Set Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex_authentication.send_login_username_cookie (',
'    p_username => lower(:P9999_USERNAME),',
'    p_consent  => :P9999_REMEMBER = ''Y'' );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16190202247491845)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Login'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Pkg_Security.Process_Login(:P9999_USERNAME,:P9999_PASSWORD,:APP_ID,:P9999_COMPANY)',
'/*',
'apex_authentication.login(',
'    p_username => :P9999_USERNAME,',
'    p_password => :P9999_PASSWORD );',
'    */',
';',
'    end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16189036666491844)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear Page(s) Cache'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16189446861491844)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Username Cookie'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P9999_USERNAME := apex_authentication.get_login_username_cookie;',
':P9999_REMEMBER := case when :P9999_USERNAME is not null then ''Y'' end;'))
,p_process_clob_language=>'PLSQL'
);
wwv_flow_api.component_end;
end;
/
