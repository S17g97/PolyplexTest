prompt --application/pages/page_00056
begin
--   Manifest
--     PAGE: 00056
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
 p_id=>56
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'DSM Attachment'
,p_alias=>'DSM-ATTACHMENT'
,p_page_mode=>'MODAL'
,p_step_title=>'DSM Attachment'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220127202651'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(20523499997084428)
,p_plug_name=>'DSM File'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17505237890057553)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(20523499997084428)
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
 p_id=>wwv_flow_api.id(17455681233354627)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(20523499997084428)
,p_button_name=>'Download_Sample_PROV'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Sample<br> for DSM'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'#APP_IMAGES#DSM/DSM_Templete - Copy.xlsx'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17505024735055300)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(20523499997084428)
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
 p_id=>wwv_flow_api.id(17516544027275552)
,p_name=>'P56_FILE_BROWSER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(20523499997084428)
,p_prompt=>'File Browser'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17504756671050267)
,p_name=>'HIDE GLOBAL'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17504352385050264)
,p_event_id=>wwv_flow_api.id(17504756671050267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17513079663243064)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_error_log_exists  boolean := false;',
'    l_data              raw(32767);',
'    ermsg               varchar2(2000);',
'    v_cnt               number :=0;',
'    v_badge             number;',
'    v_logdate           date;',
'    v_checkdate         date;',
'    l_query             varchar2(3000);',
'    v_sum               number;',
'    v_min               number;',
'    v_max               number;',
'    v_avg               number;',
'   ',
'begin',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DSM'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DSM'');',
'END IF;',
' ',
'',
'',
'select nvl(max(nu_id),0) +1 into  v_cnt  from TEMP_SCHEDULE_PROV ;',
'    begin',
'        for r1 in (select *  from',
'                    apex_application_temp_files f, table( apex_data_parser.parse(',
'                                    p_content                     => f.blob_content,',
'                                    p_add_headers_row             => ''Y'',',
'                                --   p_xlsx_sheet_name             => :P31_XLSX_WORKSHEET,',
'                                --   p_max_rows                    => 9999,',
'                                    p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                                    p_file_name                   => f.filename ) ) p',
'                where      f.name = :P56_FILE_BROWSER ',
'                )',
'',
'        loop',
'',
'            if r1.LINE_NUMBER between 5 and 100 then',
'            ',
'',
'                   APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DSM'',',
'                                            p_c001            => r1.col001,',
'                                            p_c002            => substr(r1.col002,11,6),',
'                                            P_C003            => substr(r1.col003,11,6),',
'                                            P_C004            => r1.col004,',
'                                            P_c005            => r1.col005,',
'                                            P_c006            => r1.col006,',
'                                            P_c007            => round(r1.col007,3),',
'                                            P_c008            => round(r1.col008,3),',
'                                            P_c009            => round(r1.col009,3),',
'                                            P_c010            => round(r1.col010,3),',
'                                            P_c011            => round(r1.col011,2),',
'                                            P_c012            => r1.col012,',
'                                            P_c013            => round(r1.col013,1),',
'                                            P_c014            => round(r1.col014,1),',
'                                            P_c015            => round(r1.col015,1),',
'                                            P_c016            => round(r1.col016*100,2),',
'                                            P_c017            => round(r1.col017*100,2),',
'                                            P_c018            => round(r1.col018,4),',
'                                            P_c019            => round(r1.col019,4),',
'                                            P_c020            => round(r1.col020,2),',
'                                            P_c021            => round(r1.col021,2),',
'                                            P_c022            => round(r1.col022,2),',
'                                            P_c023            => round(r1.col023,2),',
'                                            P_c024            => round(r1.col024,7),',
'                                            P_c025            => round(r1.col025,2),',
'                                            P_c026            => round(r1.col026,2),',
'                                            P_c027            => round(r1.col027,2),',
'                                            P_c028            => round(r1.col028,2)',
'',
'                                            );',
'            end if;',
'',
' end loop;',
'end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17505024735055300)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17526896890361440)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'dialog close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
