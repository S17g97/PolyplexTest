prompt --application/pages/page_00015
begin
--   Manifest
--     PAGE: 00015
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
 p_id=>15
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'File Upload'
,p_alias=>'FILE-UPLOAD'
,p_page_mode=>'MODAL'
,p_step_title=>'Attachment'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div#P15_FILE_DROPZONE {',
'    background-color: white !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210823123340'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15723310271126985)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15722933621126981)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15723310271126985)
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
 p_id=>wwv_flow_api.id(15722979436126982)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15723310271126985)
,p_button_name=>'Upload'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Upload'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15723190509126984)
,p_name=>'P15_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15723310271126985)
,p_prompt=>'File Upload'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_11=>'image/png,image/jpg,image/jpeg,application/pdf,text/csv,application/vnd.ms-excel,application/vnd.openxmlformats-officedocument.spreadsheetml.sheet,application/msword,application/vnd.openxmlformats-officedocument.wordprocessingml.document'
,p_attribute_12=>'INLINE'
,p_attribute_15=>'5000'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11432329524319191)
,p_name=>'P15_ERR'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15723310271126985)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15722775129126980)
,p_validation_name=>'file browse not null'
,p_validation_sequence=>10
,p_validation=>'P15_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select File'
,p_when_button_pressed=>wwv_flow_api.id(15722979436126982)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15722533182126977)
,p_name=>'HIDE GLOBAL'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15722455376126976)
,p_event_id=>wwv_flow_api.id(15722533182126977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15722760952126979)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'SEQ_ID NUMBER;',
'arr apex_application_global.vc_arr2;',
'BL_FILE BLOB;',
'MIME_TYPE VARCHAR2(1000);',
'FILENAME VARCHAR2(1000);',
'V_ID  NUMBER  := 0;',
'v_length number;',
'e_error exception;',
'begin',
'',
' IF (:P15_FILE is not null) THEN',
'    arr := apex_util.string_to_table(:P15_FILE);',
'    for i in 1..arr.count loop',
'    ',
'      ',
'     select t.BLOB_CONTENT,MIME_TYPE,FILENAME,dbms_lob.getlength(t.BLOB_CONTENT)',
'     into BL_FILE,MIME_TYPE,FILENAME,v_length',
'     from apex_application_temp_files t',
'     where t.name = arr(i);',
'      ',
'      if v_length > 5200000 then',
'       --  raise_application_error(-20000, ''File ''||FILENAME||'' should not be greater than 5mb'');',
'         ',
'          apex_util.set_session_state(''P15_ERR'',''File ''||FILENAME||'' should not be greater than 5mb'');',
'',
'     raise e_error;',
'         ',
'      else',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;',
'         ',
'         if MIME_TYPE in (''image/png'',''image/jpg'',''image/jpeg'',''application/pdf'',''text/csv'',''application/vnd.ms-excel'',''application/vnd.openxmlformats-officedocument.spreadsheetml.sheet'',''application/msword'',''application/vnd.openxmlformats-officedocu'
||'ment.wordprocessingml.document'') then ',
'          ',
'         SELECT nvl(max(C003),0) +1',
'         INTO  V_ID',
'         FROM    apex_collections',
'         where COLLECTION_NAME = ''FILE_UPLOAD'';',
'         ',
'       IF MIME_TYPE IN (''image/png'',''image/jpg'',''image/jpeg'') THEN',
'        ',
'        SELECT RESIZEBLOB(BL_FILE,75,75) INTO BL_FILE FROM DUAL;',
'     ',
'         ',
'         end if;',
'         ',
'           APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''FILE_UPLOAD'',',
'                                P_BLOB001            => BL_FILE,',
'                                P_C001           =>   FILENAME,',
'                                P_C002           =>  MIME_TYPE,',
'                                P_C003           =>   V_ID      ',
'                                ',
'                            ',
'                               ',
'                              );',
'            else',
'             apex_util.set_session_state(''P15_ERR'',''Only *Pdf , *jpeg,* png,*jpeg type files are allowed'');',
'',
'           raise e_error;',
'            ',
'            end if;',
'   ',
'       end if;',
'        end loop;',
'     ',
' end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P15_ERR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15722979436126982)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15722365842126975)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
