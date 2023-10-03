prompt --application/pages/page_00032
begin
--   Manifest
--     PAGE: 00032
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
 p_id=>32
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice-Jmr Other Charges'
,p_alias=>'INVOICE-JMR-OTHER-CHARGES'
,p_page_mode=>'MODAL'
,p_step_title=>'Other Charges'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allownumericwithdecimal").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'      var text = $(this).val();',
'    if ((text.indexOf(''.'') != -1) &&',
'        (text.substring(text.indexOf(''.'')).length > 4) &&',
'        (event.which != 0 && event.which != 8) &&',
'        ($(this)[0].selectionStart >= text.length - 4)) {',
'        event.preventDefault();',
'        }',
'        });',
'',
'$(".addzero").on("keypress keyup blur",function (event) {',
'         var text1 = $(this).val();',
'         if (text1 == ''.''){',
'             $(this).val(''0.00'');',
'',
'         }',
'               });'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();',
'',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220902163558'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13706757419872002)
,p_plug_name=>'Other Charge'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13601229610128816)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13706757419872002)
,p_button_name=>'DELETE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<BR>Delete'
,p_button_position=>'CHANGE'
,p_button_condition=>'P32_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-trash fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13704982634871985)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(13706757419872002)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13705110998871986)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13706757419872002)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706394044871999)
,p_name=>'P32_CHARGE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_prompt=>'Charges'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_MST_CHARGE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_charge_name D ,nu_charge_id R ,vc_charge_name, vc_charge_type , get_codedesc(HO_ORG_ID,vc_charge_type) charge_type_name,COA_ID',
'',
'from mst_other_charges',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and    vc_active = ''Y''; '))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_read_only_when=>'P32_MODE'
,p_read_only_when2=>'E'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'VC_CHARGE_TYPE:P32_CHARGE_TYPE,COA_ID:P32_ACCOUNT_CODE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706347976871998)
,p_name=>'P32_CHARGE_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_prompt=>'Charges Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_CHARGE_TYPE'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''C'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706253766871997)
,p_name=>'P32_RATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_item_default=>'0'
,p_prompt=>'Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706081159871996)
,p_name=>'P32_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_prompt=>unistr('Amount (\20B9)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13706008054871995)
,p_name=>'P32_REMARK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13705880496871994)
,p_name=>'P32_MAIN_NET_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13705848923871993)
,p_name=>'P32_ENERGY_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13705749222871992)
,p_name=>'P32_ACCOUNT_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13705484410871990)
,p_name=>'P32_MODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13601873405128823)
,p_name=>'P32_CHECK_NET_UNIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13601863995128822)
,p_name=>'P32_METER_WORK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13706757419872002)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13704779371871983)
,p_validation_name=>'Charge Id not null'
,p_validation_sequence=>10
,p_validation=>'P32_CHARGE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Charge'
,p_when_button_pressed=>wwv_flow_api.id(13705110998871986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13704762791871982)
,p_validation_name=>'Charge Type not null'
,p_validation_sequence=>20
,p_validation=>'P32_CHARGE_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Charge Type Not found.Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(13705110998871986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13704642949871981)
,p_validation_name=>'Rate'
,p_validation_sequence=>30
,p_validation=>'P32_RATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Rate'
,p_when_button_pressed=>wwv_flow_api.id(13705110998871986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13704544544871980)
,p_validation_name=>'Amount not null'
,p_validation_sequence=>40
,p_validation=>'P32_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Amount Cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(13705110998871986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13601766604128821)
,p_validation_name=>'Duplicate'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk NUMBER:=0;',
'begin',
'',
' SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''OTHER_CHARGE'' AND C001=:P32_CHARGE_ID;',
'',
'',
'if v_chk <> 0 then',
'return false;',
'else',
'return true;',
'',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Duplicate Charge'
,p_validation_condition=>'P32_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(13705110998871986)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13706583039872001)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13706551604872000)
,p_event_id=>wwv_flow_api.id(13706583039872001)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13704055060871975)
,p_name=>'disable'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13602008700128824)
,p_event_id=>wwv_flow_api.id(13704055060871975)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'   $(''#P32_CHARGE_TYPE'').attr(''readonly'', true);',
'    $(''#P32_CHARGE_TYPE'').css(''pointer-events'',''none'');',
'  ',
'    $(''#P32_CHARGE_TYPE'').off(''keydown'');'))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(13601596651128820)
,p_name=>'calculate  amount'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P32_RATE,P32_CHARGE_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13601488489128819)
,p_event_id=>wwv_flow_api.id(13601596651128820)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  :P32_CHARGE_TYPE = ''1'' THEN',
':P32_AMOUNT := (nvl(:P32_ENERGY_AMOUNT,0) *  :P32_RATE)/100 ;',
'',
'ELSIF :P32_CHARGE_TYPE =  ''2'' THEN',
':P32_AMOUNT := :P32_RATE ;  ',
'',
'ELSIF :P32_CHARGE_TYPE =  ''3'' THEN',
'  IF :P32_METER_WORK = ''Y'' THEN',
'    :P32_AMOUNT := (nvl(:P32_MAIN_NET_UNIT,0) *  :P32_RATE);',
'  ELSIF :P32_METER_WORK = ''N'' THEN',
'      :P32_AMOUNT := (nvl(:P32_CHECK_NET_UNIT,0) *  :P32_RATE);',
'   END IF;',
'END IF;'))
,p_attribute_02=>'P32_CHARGE_TYPE,P32_RATE,P32_ENERGY_AMOUNT,P32_CHECK_NET_UNIT,P32_MAIN_NET_UNIT'
,p_attribute_03=>'P32_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13705213369871987)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  :P32_CHARGE_ID,',
'                                P_C002           =>  :P32_CHARGE_TYPE,',
'                                P_C003           =>  :P32_RATE ,',
'                                P_C004          =>   :P32_AMOUNT,',
'                                P_C005           =>  :P32_REMARK,',
'                                P_C006           =>  :P32_ACCOUNT_CODE',
'                              ',
'                            ',
'                               ',
'                              );',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13705110998871986)
,p_process_when=>'P32_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13704919044871984)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_seq varchar2(100);',
'',
'',
'BEGIN',
'  IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'            begin',
'                  select Seq_id',
'                  into v_seq',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''OTHER_CHARGE''',
'                  and c001 = :P32_CHARGE_ID;',
'                  exception when no_data_found then null;',
'            end;',
'',
'    if nvl(v_seq,''xx'') <> ''xx'' then',
'                 begin',
'                             APEX_COLLECTION.UPDATE_MEMBER (',
'                                p_collection_name => ''OTHER_CHARGE'',',
'                                   p_seq             =>  v_seq,',
'                                    P_C001           =>  :P32_CHARGE_ID,',
'                                    P_C002           =>  :P32_CHARGE_TYPE,',
'                                    P_C003           =>  :P32_RATE ,',
'                                    P_C004           =>   :P32_AMOUNT,',
'                                    P_C005           =>  :P32_REMARK,',
'                                    P_C006           =>  :P32_ACCOUNT_CODE',
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
,p_process_when_button_id=>wwv_flow_api.id(13705110998871986)
,p_process_when=>'P32_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13601297404128817)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'declare',
'',
'COLL_SEQ varchar2(10);',
'begin',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    SELECT SEQ_ID INTO COLL_SEQ FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''OTHER_CHARGE'' and c001 = :P32_CHARGE_ID;',
'    APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''OTHER_CHARGE'', P_SEQ => COLL_SEQ);',
'',
'end if;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13601229610128816)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13704320699871978)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13704387789871979)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'C002 ,',
'C003 ,',
'C004 ,',
'C005 ,',
'C006',
'',
'into ',
'',
':P32_CHARGE_TYPE,',
':P32_RATE ,',
':P32_AMOUNT,',
':P32_REMARK,',
':P32_ACCOUNT_CODE',
'                                ',
'',
'                            ',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''OTHER_CHARGE''',
'AND   C001  = :P32_CHARGE_ID',
';',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P32_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.component_end;
end;
/
