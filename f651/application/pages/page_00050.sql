prompt --application/pages/page_00050
begin
--   Manifest
--     PAGE: 00050
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
 p_id=>50
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Upload Finalize Schedule'
,p_alias=>'UPLOAD-FINALIZE-SCHEDULE'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload Finalize Schedule'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220117144008'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5912293198764621)
,p_plug_name=>'Upload'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18242448434675229)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(5912293198764621)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18242824580675230)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(5912293198764621)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18244046416675232)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5912293198764621)
,p_button_name=>'Download_Sample_IEX'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Sample<br> for Final'
,p_button_position=>'HELP'
,p_button_redirect_url=>'#APP_IMAGES#Schedule-IEX-sample.xlsx'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18244887260675238)
,p_name=>'P50_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5912293198764621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18244486691675235)
,p_name=>'P50_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5912293198764621)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_BLOCK'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18068961060503335)
,p_name=>'P50_STATUS'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5912293198764621)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18245350446675255)
,p_validation_name=>'file not null'
,p_validation_sequence=>10
,p_validation=>'P50_UPLOAD_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Choose File'
,p_when_button_pressed=>wwv_flow_api.id(18242824580675230)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18247144527675259)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18247678463675261)
,p_event_id=>wwv_flow_api.id(18247144527675259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18248070645675262)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(18242448434675229)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18248516905675263)
,p_event_id=>wwv_flow_api.id(18248070645675262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18246322504675257)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert-prov-detail'
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
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;  ',
'',
'/*',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_MAIN'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_PROV_MAIN'');',
'END IF;',
' */',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_SCH'');',
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
'                where      f.name = :P50_UPLOAD_FILE ',
'                )',
'',
'        loop',
'',
'            if r1.LINE_NUMBER between 13 and 108 then',
'             /* if  r1.col001 is null or r1.col002 is null or r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;*/',
'',
'                    if :P50_STATUS = ''R'' THEN',
'',
'                     UPDATE DT_FINALIZE_SCHEDULE',
'                     SET  NU_QUANT_RN   =  r1.col004--DECODE(:P50_STATUS,''R'',r1.col004,NULL) , ',
'                        --  NU_QUANT_RNX = r1.col004--DECODE (:P50_STATUS,''A'',r1.col004,NULL)',
'                      WHERE  NU_DOC_NO =  :P49_DOC_NO  ',
'                      AND   NU_BLOCK   = to_number(r1.col001);',
'',
'',
'                    END IF;',
'',
'                    if :P50_STATUS = ''A'' THEN',
'',
'                    UPDATE DT_FINALIZE_SCHEDULE',
'                     SET -- NU_QUANT_RN   =  r1.col004--DECODE(:P50_STATUS,''R'',r1.col004,NULL) , ',
'                          NU_QUANT_RNX = r1.col004--DECODE (:P50_STATUS,''A'',r1.col004,NULL)',
'                      WHERE  NU_DOC_NO =  :P49_DOC_NO  ',
'                      AND   NU_BLOCK   = to_number(r1.col001);',
'',
'                    END IF;',
'',
'',
'                  /*  APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_SCH'',',
'                                            p_c001            => to_char(r1.col001),',
'                                            p_c002            => to_char(r1.col002),',
'                                            P_C003            => to_char(r1.col003),',
'                                            P_C004            => to_char(r1.col004),',
'                                            P_c005            => to_char(r1.col005)',
'                                            );*/',
'            end if;',
'',
' end loop;',
'end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18242824580675230)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18246781718675258)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert - prov- final'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_error_log_exists boolean := false;',
'    l_data             raw(32767);',
'    ermsg varchar2(2000);',
'    v_cnt number :=0;',
'    v_badge number;',
'    v_logdate date;',
'    v_checkdate date;',
'    l_query   varchar2(3000);',
'    v_check_num number;',
'   ',
'begin',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;  ',
'',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;',
'',
'',
' ',
'',
'',
'select nvl(max(nu_id),0) +1 into  v_cnt  from TEMP_SCHEDULE_PROV ;',
'',
'for r1 in (select *  from',
'            apex_application_temp_files f, table( apex_data_parser.parse(',
'                              p_content                     => f.blob_content,',
'                              p_add_headers_row             => ''Y'',',
'                           --   p_xlsx_sheet_name             => :P31_XLSX_WORKSHEET,',
'                           --   p_max_rows                    => 9999,',
'                              p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                              p_file_name                   => f.filename ) ) p',
'          where      f.name = :P50_UPLOAD_FILE ',
'          )',
'',
'loop',
'',
'  IF r1.LINE_NUMBER > 1 then',
'  begin',
'  select to_number( r1.col005)',
'  into v_check_num',
'  from dual;',
'   exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'  end;',
'',
'   if r1.col001 is null or r1.col002 is null or r1.col003 is null or r1.col004 is null or r1.col005 is null or r1.col006 is null or r1.col007 is null then',
'     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'  end if;',
'',
'',
'begin ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_FINAL_MAIN'',',
'                                       p_c001            => r1.col001,',
'                                       p_c002            => r1.col002,',
'                                       P_C003            => r1.col003,',
'                                       P_C004            => r1.col004,',
'                                       P_C005            => round(r1.col005,4),',
'                                       P_C006            => r1.col006,',
'                                       P_C007            => r1.col007',
'                                    );',
'  exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
' end;',
'  end if;',
' ',
'end loop;',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18242824580675230)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18245915963675257)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
