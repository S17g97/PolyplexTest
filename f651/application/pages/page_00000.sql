prompt --application/pages/page_00000
begin
--   Manifest
--     PAGE: 00000
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
 p_id=>0
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Global Page - Desktop'
,p_step_title=>'Global Page - Desktop'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'D'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220920143019'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16180883833290112)
,p_plug_name=>'LOV'
,p_region_name=>'GLOBAL_LOV'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>100
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16180792487290111)
,p_name=>'P0_SELECTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(16180883833290112)
,p_prompt=>'Selection'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROJECT_NAME D ,PRj_id R',
'FROM APPUA.VW_USR_PRJ',
'WHERE ORG_ID =:GLOBAL_COMP_CODE',
'AND  USR_ID = :GLOBAL_USER_CODE',
'order by 2 desc'))
,p_cHeight=>1
,p_tag_css_classes=>'P0_SELECTION'
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'SUBMIT'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16181150177290114)
,p_name=>'Append SUB DIVISION name'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16181063593290113)
,p_event_id=>wwv_flow_api.id(16181150177290114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".P0_SELECTION").appendTo(".SELECTIONPOSITION");',
' $(".SELECTIONPOSITION").prepend(''<span id="subdiv" >Project Name</span>'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16180361029290106)
,p_name=>'Enter Global Proj ID'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P0_SELECTION'
,p_condition_element=>'P0_SELECTION'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16180264044290105)
,p_event_id=>wwv_flow_api.id(16180361029290106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':GLOBAL_PROJ_ID := :P0_SELECTION;',
'',
'  SELECT DISTINCT PROJECT_NAME',
'  INTO :GLOBAL_PROJ_NAME',
'            FROM APPUA.VW_USR_PRJ',
'            WHERE ORG_ID =:GLOBAL_COMP_CODE',
'            AND   PRj_id= :GLOBAL_PROJ_ID;',
'END;'))
,p_attribute_02=>'P0_SELECTION,GLOBAL_PROJ_ID'
,p_attribute_03=>'GLOBAL_PROJ_ID,GLOBAL_PROJ_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
