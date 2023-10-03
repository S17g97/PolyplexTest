prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Delete Uploaded File '
,p_alias=>'DELETE-UPLOADED-FILE'
,p_page_mode=>'MODAL'
,p_step_title=>'Delete Uploaded File '
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20210630123247'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15676948978016317)
,p_plug_name=>'File'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15676323053016311)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15676948978016317)
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
 p_id=>wwv_flow_api.id(15676414965016312)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15676948978016317)
,p_button_name=>'Delete'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Delete '
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-trash fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15676807696016316)
,p_name=>'P16_MESSAGE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15676948978016317)
,p_item_default=>'Are you Sure you want to delete?'
,p_prompt=>'Message'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16224713271492034)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15676677585016315)
,p_name=>'P16_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15676948978016317)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15676575474016314)
,p_name=>'P16_DOC_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15676948978016317)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15676097091016309)
,p_name=>'hide global'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15675985441016308)
,p_event_id=>wwv_flow_api.id(15676097091016309)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15676500217016313)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete from collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_count varchar (10);',
'v_seq varchar (10);',
'v_rank number;',
'begin',
'',
'',
'begin',
'select Seq_id into v_seq',
'from apex_collections',
'where COLLECTION_NAME = ''FILE_UPLOAD''',
'and C003 = :P16_ID;',
'exception when no_data_found then null;',
'end;',
'',
'if v_seq>0 then',
'APEX_COLLECTION.DELETE_MEMBER (p_collection_name =>''FILE_UPLOAD'' , p_seq => v_seq);',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15676414965016312)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15676206853016310)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
