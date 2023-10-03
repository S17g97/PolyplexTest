prompt --application/pages/page_00070
begin
--   Manifest
--     PAGE: 00070
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
 p_id=>70
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Surcharge and Rebate'
,p_alias=>'SURCHARGE_AND_REBATE'
,p_page_mode=>'MODAL'
,p_step_title=>'Surcharge and Rebate'
,p_warn_on_unsaved_changes=>'N'
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
'        });'))
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_step_template=>wwv_flow_api.id(16329988279492201)
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230916183711'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13929662613746096)
,p_plug_name=>'Rebate and Surcharge'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15353097201169051)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13929662613746096)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13930055651746100)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13929662613746096)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>' fa-save fa-2x'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929675702746097)
,p_name=>'P70_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_REBATE_SURCHARGE'
,p_lov=>'.'||wwv_flow_api.id(2677877294388320)||'.'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929789596746098)
,p_name=>'P70_DAYS'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Days'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'allownumeric'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929911728746099)
,p_name=>'P70_PERCENTAGE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Percentage'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15354483150169065)
,p_name=>'P70_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15354648402169066)
,p_name=>'P70_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15606349016956254)
,p_name=>'P70_PERIOD'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(13929662613746096)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Month;M,Annual;A,Flat;F'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15354364486169063)
,p_validation_name=>'duplicate not null'
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_count number;',
'',
'begin',
'select count(*)',
'',
'into v_count',
'      ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''SURCHARGE_REBATE_DETAIL''',
'and C002 = :P70_TYPE',
'and   C003  = :P70_DAYS;',
'',
'',
'if v_count > 0 then',
'',
'return ''Duplicate Type and Days'';',
'',
'end if;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(13930055651746100)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15354776473169068)
,p_validation_name=>'Period NOT NULL'
,p_validation_sequence=>20
,p_validation=>'P70_PERIOD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period'
,p_when_button_pressed=>wwv_flow_api.id(13930055651746100)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14422915666913557)
,p_validation_name=>'Type NOT NULL_1'
,p_validation_sequence=>30
,p_validation=>'P70_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type !!'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15354865568169069)
,p_validation_name=>'days not null'
,p_validation_sequence=>40
,p_validation=>'P70_DAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Days'
,p_when_button_pressed=>wwv_flow_api.id(13930055651746100)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15355029823169070)
,p_validation_name=>'Percentage not null'
,p_validation_sequence=>50
,p_validation=>'P70_PERCENTAGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Percentage'
,p_when_button_pressed=>wwv_flow_api.id(13930055651746100)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15353185009169052)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15353325608169053)
,p_event_id=>wwv_flow_api.id(15353185009169052)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14422684261913555)
,p_name=>'close'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15353097201169051)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14422775499913556)
,p_event_id=>wwv_flow_api.id(14422684261913555)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CLOSE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15353559696169055)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_ID NUMBER;',
'BEGIN',
'',
'SELECT max(nvl(to_number(C001),0))+1 ',
'into  V_ID',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''SURCHARGE_REBATE_DETAIL'';',
'',
'',
'IF V_ID IS NULL OR V_ID = '''' THEN',
'V_ID := ''1'';',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'END IF;',
' ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''SURCHARGE_REBATE_DETAIL'',',
'                                       p_c001            =>  V_ID,',
'                                       P_C002            => :P70_TYPE,',
'                                       P_C003            => :P70_DAYS,',
'                                       P_C004            =>  to_char(:P70_PERCENTAGE,''999G999G999G999G990D00''),',
'                                       P_C005            => :P70_PERIOD',
'                             ',
'                                     ',
'                                       );',
'     ',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(13930055651746100)
,p_process_when=>'P70_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15354411983169064)
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
'  IF  APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'            begin',
'                  select Seq_id',
'                  into v_seq',
'                  from apex_collections ',
'                  where COLLECTION_NAME=''SURCHARGE_REBATE_DETAIL''',
'                  and c001 = :P70_ID;',
'                  exception when no_data_found then null;',
'            end;',
'',
'    if nvl(v_seq,''xx'') <> ''xx'' then',
'                 begin',
'                             APEX_COLLECTION.UPDATE_MEMBER (',
'                                p_collection_name => ''SURCHARGE_REBATE_DETAIL'',',
'                                       p_seq             =>  v_seq,',
'                                       p_c001            =>  :P70_ID,',
'                                       P_C002            => :P70_TYPE,',
'                                       P_C003            => :P70_DAYS,',
'                                       P_C004            =>  :P70_PERCENTAGE,',
'                                       P_C005            => :P70_PERIOD                            ',
'                            ',
'                              );',
'                  end;',
'    end if;',
'',
'  END IF;     ',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P70_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15353404784169054)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close dialog'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
