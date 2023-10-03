prompt --application/pages/page_00068
begin
--   Manifest
--     PAGE: 00068
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
 p_id=>68
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Trading margin PPA'
,p_alias=>'TRADING-MARGIN-PPA'
,p_page_mode=>'MODAL'
,p_step_title=>'Trading margin PPA'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parent.$(''.ui-dialog-titlebar.ui-corner-all.ui-widget-header.ui-helper-clearfix'').hide();',
'',
'// disable:',
'    $(''#P68_METHOD_OF_SALE'').attr(''readonly'', true);',
'    $(''#P68_METHOD_OF_SALE'').css(''pointer-events'',''none'');',
'    $(''#P68_METHOD_OF_SALE'').css(''opacity'',''1.5'');',
'    $(''#P68_METHOD_OF_SALE'').off(''keydown'');',
'',
'',
'    $(".allownumeric").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'   ',
'        });',
''))
,p_step_template=>wwv_flow_api.id(16329988279492201)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230606131854'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3133334665852048)
,p_plug_name=>'Trading Margin '
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3132634371852041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3133334665852048)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3132659348852042)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(3133334665852048)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3133170742852047)
,p_name=>'P68_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3133046969852046)
,p_name=>'P68_METHOD_OF_SALE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_prompt=>'Method of Sale'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Through Collective Transaction ;P,Through Bilatrel Transcation;T'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3133007379852045)
,p_name=>'P68_NET_EX_BUS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_prompt=>'Net Ex Bus Realization of BHPL(Rs/Unit) A'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumeric'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3132900996852044)
,p_name=>'P68_TRADE_MARGIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_prompt=>'Trade Margin of TPTCL (B=% OF A)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumeric'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3132829025852043)
,p_name=>'P68_TYPE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Greater Then;1,Less Then;2,Fixed;3'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3132384566852039)
,p_name=>'P68_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43744383175546402)
,p_name=>'P68_NU_FIXED'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3133334665852048)
,p_prompt=>'Fixed Trading Margin'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumeric'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3130712129852022)
,p_validation_name=>'method of sale not null'
,p_validation_sequence=>10
,p_validation=>'P68_METHOD_OF_SALE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Method of sale'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3130562235852021)
,p_validation_name=>'Type'
,p_validation_sequence=>20
,p_validation=>'P68_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Select Type'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_associated_item=>wwv_flow_api.id(3132829025852043)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3130492789852020)
,p_validation_name=>'check net EX Bus'
,p_validation_sequence=>30
,p_validation=>'P68_NET_EX_BUS'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Net Ex Bus Realization'
,p_validation_condition=>'P68_TYPE'
,p_validation_condition2=>'3'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_associated_item=>wwv_flow_api.id(3133007379852045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3130381848852019)
,p_validation_name=>'Trade Margin not null'
,p_validation_sequence=>40
,p_validation=>'P68_TRADE_MARGIN'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Trade Margin'
,p_validation_condition=>'P68_TYPE'
,p_validation_condition2=>'3'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_associated_item=>wwv_flow_api.id(3132900996852044)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3129852469852014)
,p_validation_name=>'CHECK DUPLICATE'
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_CHK NUMBER;',
'',
'BEGIN',
'',
'select',
'count(*)',
'into',
'V_CHK',
'',
' from apex_collections ',
' where COLLECTION_NAME=''TRADE_MARGIN_PPA''',
' AND  C002 = :P68_METHOD_OF_SALE',
' AND C003 = :P68_TYPE',
' ',
' ;',
'',
'IF V_CHK >0 THEN',
'',
'',
'RETURN FALSE;',
'',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'',
'',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Method of sales is already defined'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43745010152546408)
,p_validation_name=>'P68_NU_FIXED'
,p_validation_sequence=>60
,p_validation=>'P68_NU_FIXED'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Enter the value !!'
,p_validation_condition=>'P68_TYPE'
,p_validation_condition2=>'3'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(3132659348852042)
,p_associated_item=>wwv_flow_api.id(43744383175546402)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3130322361852018)
,p_name=>'HIDE'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3130138340852017)
,p_event_id=>wwv_flow_api.id(3130322361852018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43744530535546403)
,p_name=>'HIde and show'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P68_TYPE'
,p_condition_element=>'P68_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'3'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43744596347546404)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NU_FIXED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43744822273546406)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NET_EX_BUS,P68_TRADE_MARGIN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43744661848546405)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NET_EX_BUS,P68_TRADE_MARGIN'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43744900811546407)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NU_FIXED'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43745192095546410)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NET_EX_BUS,P68_TRADE_MARGIN'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43745313566546411)
,p_event_id=>wwv_flow_api.id(43744530535546403)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P68_NU_FIXED'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3132525303852040)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert into Trade Margin'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER;',
'BEGIN',
'',
'SELECT max(nvl(to_number(C001),0))+1 ',
'into  V_ID',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''TRADE_MARGIN_PPA'';',
'',
'',
'IF V_ID IS NULL OR V_ID = '''' THEN',
'V_ID := ''1'';',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
' ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''TRADE_MARGIN_PPA'',',
'                                       p_c001            =>  V_ID,',
'                                       P_C002            => :P68_METHOD_OF_SALE,',
'                                       P_C003            => :P68_TYPE,',
'                                       P_C004            =>  :P68_NET_EX_BUS,',
'                                       P_C005            => :P68_TRADE_MARGIN,',
'                                       p_C006            => :P68_NU_FIXED',
'                                    ',
'                                     ',
'                                       );',
'     ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3132659348852042)
,p_process_when=>'P68_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3132312120852038)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'uPDATE tRADE mARGIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_seq varchar2(100);',
'',
'',
'BEGIN',
'  IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'            begin',
'                  select Seq_id',
'                  into v_seq',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''TRADE_MARGIN_PPA''',
'                  and c001 = :P68_ID;',
'                  exception when no_data_found then null;',
'            end;',
'',
'    if nvl(v_seq,''xx'') <> ''xx'' then',
'                 begin',
'                             APEX_COLLECTION.UPDATE_MEMBER (',
'                                p_collection_name => ''TRADE_MARGIN_PPA'',',
'                                  p_seq             =>  v_seq,',
'                                       p_c001            =>  :P68_ID,',
'                                       P_C002            => :P68_METHOD_OF_SALE,',
'                                       P_C003            => :P68_TYPE,',
'                                       P_C004            =>  :P68_NET_EX_BUS,',
'                                       P_C005            => :P68_TRADE_MARGIN,',
'                                       P_C006            => :P68_NU_FIXED',
'                                    ',
'                            ',
'                              );',
'                  end;',
'    end if;',
'',
'  END IF;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3132659348852042)
,p_process_when=>'P68_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3130798291852023)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3129963158852015)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'C002,',
'C003,',
'C004,',
'C005,',
'c006',
'',
'INTO',
':P68_METHOD_OF_SALE,',
':P68_TYPE,',
':P68_NET_EX_BUS,',
':P68_TRADE_MARGIN,:P68_NU_FIXED',
'',
' from apex_collections ',
' where COLLECTION_NAME=''TRADE_MARGIN_PPA''',
' AND C001 = :P68_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P68_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.component_end;
end;
/
