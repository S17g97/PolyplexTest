prompt --application/pages/page_00072
begin
--   Manifest
--     PAGE: 00072
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
 p_id=>72
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice Notes Jmr'
,p_alias=>'INVOICE-NOTES-JMR'
,p_page_mode=>'MODAL'
,p_step_title=>'Invoice Notes Jmr'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix'').hide();'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GAURAV'
,p_last_upd_yyyymmddhh24miss=>'20221202155639'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15381415618303378)
,p_plug_name=>'Invoice Notes JMR'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15381854545303382)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15381415618303378)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15381890479303383)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15381415618303378)
,p_button_name=>'save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15383485853303399)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(15381415618303378)
,p_button_name=>'DELETE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Delete'
,p_button_position=>'CREATE'
,p_button_condition=>'P72_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-trash fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15381556138303379)
,p_name=>'P72_INVOICE_NOTES'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_prompt=>'Invoice Notes'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_INVOICE_NOTES '
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_doc_id , dt_doc_date , vc_inv_subject_desc ',
'from mst_INVOICE_SUBJECT',
'WHERE ORG_ID = :global_comp_code',
'AND HO_ORG_ID = :global_parent_comp',
'and PRJ_ID = :GLOBAL_PROJ_ID',
'and nvl(vc_status,''N'') = ''Y'';'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'VC_DOC_ID:P72_DOC_ID,DT_DOC_DATE:P72_DOC_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15381645898303380)
,p_name=>'P72_DOC_ID'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15381699138303381)
,p_name=>'P72_DOC_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15382450666303388)
,p_name=>'P72_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15382679761303391)
,p_name=>'P72_SERIAL_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(76899984552870653)
,p_name=>'P72_ALPHA'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15381415618303378)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15383056177303394)
,p_validation_name=>'INVOICE_NOTE'
,p_validation_sequence=>10
,p_validation=>'P72_INVOICE_NOTES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'please select Invoice note.'
,p_when_button_pressed=>wwv_flow_api.id(15381890479303383)
,p_associated_item=>wwv_flow_api.id(15381556138303379)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15383097727303395)
,p_validation_name=>'duplicate'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cnt number;',
'begin',
'select count(c001) into cnt ',
'from apex_collections',
'where collection_name = ''INVOICE_NOTES''',
'AND C001 = :P72_DOC_ID;',
'',
'IF NVL(CNT,0) > 0 THEN',
'RETURN false;',
'ELSE',
'RETURN true;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'This invoice note already exists.'
,p_when_button_pressed=>wwv_flow_api.id(15381890479303383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15382808196303392)
,p_name=>'HIDE GLOBAL'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15382872710303393)
,p_event_id=>wwv_flow_api.id(15382808196303392)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15382295144303387)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_NUM NUMBER;',
'letter VARCHAR2(10);',
'begin ',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'          APEX_COLLECTION.CREATE_COLLECTION(''INVOICE_NOTES'');',
'     END IF;',
'',
'SELECT NVL(COUNT(C001),0) + 1 INTO V_NUM ',
'FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME = ''INVOICE_NOTES''; ',
'',
'   select chr( ascii(''a'')+level-1 ) INTO letter',
'      from dual',
'       where level = V_NUM',
'    connect by level <= V_NUM;',
'',
'',
'',
'',
'         APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''INVOICE_NOTES'',',
'                                P_C001           =>   :P72_DOC_ID,',
'                                P_C002           =>  :P72_DOC_DATE,',
'                                P_C003           =>   :P72_INVOICE_NOTES   ,   ',
'                                P_C004           =>   V_NUM,',
'                                p_c005           =>   letter       ',
'                               ',
'                               ',
'                              );',
'',
' END;    '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15381890479303383)
,p_process_when=>'P72_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15382517000303389)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_seq varchar2(100);',
'',
'',
'BEGIN',
'  IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'            begin',
'                  select Seq_id',
'                  into v_seq',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''INVOICE_NOTES''',
'                  and C004 = :P72_SERIAL_NO; ',
'              --    exception when no_data_found then null;',
'            end;',
'',
'    if nvl(v_seq,''xx'') <> ''xx'' then',
'                 begin',
'                             APEX_COLLECTION.UPDATE_MEMBER (',
'                                p_collection_name => ''INVOICE_NOTES'',',
'                                   p_seq             =>  v_seq,',
'                                    P_C001           =>  :P72_DOC_ID,',
'                                    P_C002           =>  :P72_DOC_DATE,',
'                                    P_C003           =>  :P72_INVOICE_NOTES,',
'                                    P_C004           =>  :P72_SERIAL_NO,',
'                                    P_C005           =>  :P72_ALPHA',
'                                    ',
'                                ',
'                            ',
'                            ',
'                              );',
'                  end;',
'    end if;',
'',
'  END IF;     ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15381890479303383)
,p_process_when=>'P72_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15383627110303400)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_seq varchar2(100);',
'',
'',
'BEGIN',
'  IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'            begin',
'                  select Seq_id',
'                  into v_seq',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''INVOICE_NOTES''',
'                  and C004 = :P72_SERIAL_NO; ',
'                  exception when no_data_found then null;',
'            end;',
'',
'if v_seq>0 then',
'APEX_COLLECTION.DELETE_MEMBER (p_collection_name =>''INVOICE_NOTES'' , p_seq => v_seq);',
'end if;',
'',
'',
'    end if;',
'',
'    ',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15383485853303399)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15382124271303385)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15606123620956252)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'    select c003',
'                  into :P72_INVOICE_NOTES',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''INVOICE_NOTES''',
'                  and c001 = :P72_DOC_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15381854545303382)
,p_process_when=>'P72_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
