prompt --application/pages/page_00036
begin
--   Manifest
--     PAGE: 00036
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
 p_id=>36
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Upload Schedule'
,p_alias=>'UPLOAD-SCHEDULE'
,p_page_mode=>'MODAL'
,p_step_title=>'Upload'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220412140721'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12329559353910599)
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
 p_id=>wwv_flow_api.id(12328956565910593)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12329559353910599)
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
 p_id=>wwv_flow_api.id(12329111799910595)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12329559353910599)
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
 p_id=>wwv_flow_api.id(11940654277603824)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12329559353910599)
,p_button_name=>'Download_Sample_PROV'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Sample<br> for Provisional'
,p_button_position=>'HELP'
,p_button_redirect_url=>'#APP_IMAGES#schedule Provisional-sample.xlsx'
,p_button_condition=>'P36_MODE'
,p_button_condition2=>'P'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12007841557271181)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12329559353910599)
,p_button_name=>'Download_Sample_FINAL'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Sample<br> for Final'
,p_button_position=>'HELP'
,p_button_redirect_url=>'#APP_IMAGES#schedule final-sample.xlsx'
,p_button_condition=>'P36_MODE'
,p_button_condition2=>'F'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(12603874221129336)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12329559353910599)
,p_button_name=>'Download_Sample_IEX'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Sample<br> for IEX'
,p_button_position=>'HELP'
,p_button_redirect_url=>'#APP_IMAGES#Schedule-IEX-sample.xlsx'
,p_button_condition=>'P36_MODE'
,p_button_condition2=>'I'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12329217791910596)
,p_name=>'P36_UPLOAD_FILE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12329559353910599)
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
 p_id=>wwv_flow_api.id(12212224937792915)
,p_name=>'P36_MODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12329559353910599)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(12209278655792886)
,p_validation_name=>'file not null'
,p_validation_sequence=>10
,p_validation=>'P36_UPLOAD_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Choose File'
,p_when_button_pressed=>wwv_flow_api.id(12329111799910595)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(12329450004910598)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12329317425910597)
,p_event_id=>wwv_flow_api.id(12329450004910598)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(11431335446319181)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(12328956565910593)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(11431204692319180)
,p_event_id=>wwv_flow_api.id(11431335446319181)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12328848951910592)
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
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_MAIN'');',
'END IF;  ',
'',
'/*',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_MAIN'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_PROV_MAIN'');',
'END IF;',
' */',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_DETAIL'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_PROV_DETAIL'');',
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
'                where      f.name = :P36_UPLOAD_FILE ',
'                )',
'',
'        loop',
'',
'        IF r1.LINE_NUMBER between 2 and 7 then',
'            ',
'',
'',
'                if r1.LINE_NUMBER = 2 then',
'                   ',
'                  if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                    insert into TEMP_SCHEDULE_PROV (vc_from_State,nu_id)',
'                    values ( r1.col003,  v_cnt );',
'                ',
'        ',
'                end if;',
'',
'                if r1.LINE_NUMBER = 3 then',
'                   if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                  begin',
'                    update TEMP_SCHEDULE_PROV',
'                    set    vc_From_Utility = r1.col003',
'                    where  nu_id = v_cnt;',
'                  exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'                end if;',
'                ',
'                if r1.LINE_NUMBER = 4 then',
'                  if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                    begin',
'                    update TEMP_SCHEDULE_PROV',
'                    set    vc_To_State = r1.col003',
'                    where  nu_id = v_cnt;',
'                   exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'                end if;',
'',
'                if r1.LINE_NUMBER = 5 then',
'                  if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                  begin',
'                    update TEMP_SCHEDULE_PROV',
'                    set    vc_To_Utility = r1.col003',
'                    where  nu_id = v_cnt;',
'                    exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'                end if;',
'                if r1.LINE_NUMBER = 6 then',
'                  if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                  begin',
'                    update TEMP_SCHEDULE_PROV',
'                    set    vc_IR_Link = r1.col003',
'                    where  nu_id = v_cnt;',
'                  exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'                end if;',
'',
'                if r1.LINE_NUMBER = 7 then',
'                  if  r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'                begin',
'                    update TEMP_SCHEDULE_PROV',
'                    set    vc_Appr_No = r1.col003',
'                    where  nu_id = v_cnt;',
'                  exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'                end if;',
'            ',
'',
'        end if;',
'            if r1.LINE_NUMBER between 9 and 104 then',
'              if  r1.col001 is null or r1.col002 is null or r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;',
'',
'                    APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_PROV_DETAIL'',',
'                                            p_c001            => r1.col001,',
'                                            p_c002            => r1.col002,',
'                                            P_C003            => r1.col003',
'                                            );',
'            end if;',
'',
'                ',
'        END LOOP; ',
'    end;',
'        IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'         begin',
'            select sum(C003),max(C003),min(c003),avg(c003)',
'            into  v_sum,v_max,v_min,v_avg',
'            from APEX_COLLECTIONS ',
'            where COLLECTION_NAME=''FILE_PROV_DETAIL'';',
'        exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'          begin',
'            update TEMP_SCHEDULE_PROV',
'             set    NU_MWHR = v_sum/4,',
'                    NU_MAX  = v_max,',
'                    NU_MIN  = v_min,',
'                    nu_avg  = v_avg',
'             where  nu_id = v_cnt;',
'             exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                  end;',
'        ',
'        end if;',
'',
'if :P36_UPLOAD_FILE  is not  null then',
'l_query:=''SELECT VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, VC_TO_UTILITY, VC_IR_LINK, VC_APPR_NO,NU_MWHR,NU_MAX,NU_MIN,NU_AVG',
'  FROM TEMP_SCHEDULE_PROV ',
' WHERE NU_ID = ''||v_cnt ||'''';',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''FILE_PROV_MAIN'',',
'        p_query => l_query',
'    );',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(12329111799910595)
,p_process_when=>'P36_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'P'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12212121778792914)
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
'          where      f.name = :P36_UPLOAD_FILE ',
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
,p_process_when_button_id=>wwv_flow_api.id(12329111799910595)
,p_process_when=>'P36_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'F'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12603099224129328)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert -IEX'
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
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SCH_IEX'');',
'END IF;  ',
'',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''SCH_IEX'');',
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
'          where      f.name = :P36_UPLOAD_FILE ',
'          )',
'',
'loop',
'',
'  IF r1.LINE_NUMBER > 1 then',
'  /*begin',
'  select to_number( r1.col005)',
'  into v_check_num',
'  from dual;',
'   exception when others then raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'  end;',
'*/',
'   if r1.col001 is null or r1.col002 is null or r1.col003 is null --or r1.col004 is null or r1.col005 is null or r1.col006 is null or r1.col007 is null ',
'   then',
'     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'  end if;',
'',
'',
'begin ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''SCH_IEX'',',
'                                       p_c001            => r1.col001,',
'                                       p_c002            => r1.col002,',
'                                       P_C003            => ROUND(r1.col003,2)',
'                                      ',
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
,p_process_when_button_id=>wwv_flow_api.id(12329111799910595)
,p_process_when=>'P36_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'I'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(12329059630910594)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
