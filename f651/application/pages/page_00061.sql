prompt --application/pages/page_00061
begin
--   Manifest
--     PAGE: 00061
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
 p_id=>61
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'CDM/REC Master'
,p_alias=>'CDM-REC-MASTER'
,p_step_title=>'CDM/REC Master'
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
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220328171303'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17156310964471715)
,p_plug_name=>'REC/CDM Master'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P61_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17154859745471701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17156310964471715)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17155423659471706)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17156310964471715)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P61_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7726769075187149)
,p_branch_action=>'f?p=&APP_ID.:60:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17156196801471714)
,p_name=>'P61_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17156076423471713)
,p_name=>'P61_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:REC;R,CDM;C'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155997517471712)
,p_name=>'P61_REGISTRATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Registration Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155892928471711)
,p_name=>'P61_REGISTRATION_ISSUE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Registration Issue Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155765982471710)
,p_name=>'P61_REGISTARTION_EXPIRE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Registartion Expire Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155657350471709)
,p_name=>'P61_ACCREDITATION_NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Accreditation Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155570017471708)
,p_name=>'P61_ACCREDITATION_ISSUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Accreditation Issue Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155479324471707)
,p_name=>'P61_ACCREDITAION_EXPIRE_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Accreditaion Expire Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17155278787471705)
,p_name=>'P61_STATUS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_item_default=>'O'
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Open;O,Closed;C'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17154832395471700)
,p_name=>'P61_MODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5593216917114115)
,p_name=>'P61_EMISSION_FACTOR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(17156310964471715)
,p_prompt=>'Emission Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7724361942187125)
,p_validation_name=>'tYPE NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P61_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17156076423471713)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7724261152187124)
,p_validation_name=>'Number not null'
,p_validation_sequence=>20
,p_validation=>'P61_REGISTRATION_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Registration Number'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155997517471712)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7724200800187123)
,p_validation_name=>'Reg issue Date'
,p_validation_sequence=>30
,p_validation=>'P61_REGISTRATION_ISSUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Registration Isue Date'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155892928471711)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7724077919187122)
,p_validation_name=>'Reg Expire Date'
,p_validation_sequence=>40
,p_validation=>'P61_REGISTARTION_EXPIRE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Registartion Expire Date'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155765982471710)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7724019741187121)
,p_validation_name=>'Accer number'
,p_validation_sequence=>50
,p_validation=>'P61_ACCREDITATION_NUMBER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Accreditation Number'
,p_validation_condition=>'P61_TYPE'
,p_validation_condition2=>'R'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155657350471709)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7723922110187120)
,p_validation_name=>'ACER ISSUE DATE'
,p_validation_sequence=>60
,p_validation=>'P61_ACCREDITATION_ISSUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Accreditation Issue Date'
,p_validation_condition=>'P61_TYPE'
,p_validation_condition2=>'R'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155570017471708)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7723808689187119)
,p_validation_name=>'Enter Exipre date'
,p_validation_sequence=>70
,p_validation=>'P61_ACCREDITAION_EXPIRE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Accreditaion Expire Date'
,p_validation_condition=>'P61_TYPE'
,p_validation_condition2=>'R'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_associated_item=>wwv_flow_api.id(17155479324471707)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7723036175187112)
,p_validation_name=>'REG DATE CHECK'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P61_REGISTRATION_ISSUE_DATE) > to_date(:P61_REGISTARTION_EXPIRE_DATE) then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Registration Issue date Cannot be Graeter than Registartion Expire Date'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7723022934187111)
,p_validation_name=>'ACC DATE CHECK_1'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P61_ACCREDITATION_ISSUE_DATE) > to_date(:P61_ACCREDITAION_EXPIRE_DATE) then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Accreditation Issue date Cannot be Graeter than Accreditation Expire Date'
,p_validation_condition=>'P61_TYPE'
,p_validation_condition2=>'R'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(7248826283712709)
,p_validation_name=>'CHEck rec/cdm open'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk varchar2(2);',
'begin',
'',
'select COUNT(*)',
'INTO V_CHK',
'from MST_REC_CDM',
'where ORG_ID  = :GLOBAL_COMP_CODE ',
'AND PRJ_ID    = :GLOBAL_PROJ_ID ',
'AND CH_TYPE   = :P61_TYPE',
'AND VC_STATUS = ''O'';',
'',
'IF V_CHK > 0 THEN ',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Registration Number already open for this REC/CDM.'
,p_validation_condition=>'P61_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(17155423659471706)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17155211689471704)
,p_name=>'hide accitem'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P61_TYPE'
,p_condition_element=>'P61_TYPE'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'R'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17155040095471703)
,p_event_id=>wwv_flow_api.id(17155211689471704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_ACCREDITATION_NUMBER,P61_ACCREDITATION_ISSUE_DATE,P61_ACCREDITAION_EXPIRE_DATE,P61_EMISSION_FACTOR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17155028751471702)
,p_event_id=>wwv_flow_api.id(17155211689471704)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_ACCREDITATION_NUMBER,P61_ACCREDITATION_ISSUE_DATE,P61_ACCREDITAION_EXPIRE_DATE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5593106595114114)
,p_event_id=>wwv_flow_api.id(17155211689471704)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_EMISSION_FACTOR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5593009960114113)
,p_event_id=>wwv_flow_api.id(17155211689471704)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P61_EMISSION_FACTOR'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7723636985187118)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'iNSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'',
'V_ID NUMBER;',
'',
'BEGIN',
'',
'select nvl(max(NU_ID),0) +1 into  V_ID from  MST_REC_CDM',
' where ORG_ID = :global_comp_code;',
'',
'INSERT INTO MST_REC_CDM',
'(',
'ORG_ID, PRJ_ID, NU_ID, CH_TYPE, VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, VC_ACCRE_NO, DT_ACCRE_ISS_DATE, ',
'DT_ACCRE_EXP_DATE, VC_STATUS, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,NU_EMISSION_FAC',
')',
'VALUES',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, V_ID,:P61_TYPE,:P61_REGISTRATION_NO, :P61_REGISTRATION_ISSUE_DATE, :P61_REGISTARTION_EXPIRE_DATE,:P61_ACCREDITATION_NUMBER,:P61_ACCREDITATION_ISSUE_DATE,',
':P61_ACCREDITAION_EXPIRE_DATE,:P61_STATUS,:GLOBAL_USER_CODE,SYSDATE,:GLOBAL_PARENT_COMP,:P61_EMISSION_FACTOR',
');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17155423659471706)
,p_process_when=>'P61_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7723584924187117)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update MST_REC_CDM',
'',
'SET ',
'CH_TYPE               =  :P61_TYPE, ',
'VC_REG_NO             =  :P61_REGISTRATION_NO,  ',
'DT_REG_ISS_DATE       =  :P61_REGISTRATION_ISSUE_DATE, ',
'DT_REG_EXP_DATE       =   :P61_REGISTARTION_EXPIRE_DATE, ',
'VC_ACCRE_NO           =  :P61_ACCREDITATION_NUMBER, ',
'DT_ACCRE_ISS_DATE     =  :P61_ACCREDITATION_ISSUE_DATE, ',
'DT_ACCRE_EXP_DATE     =   :P61_ACCREDITAION_EXPIRE_DATE, ',
'VC_STATUS             =  :P61_STATUS,',
'USR_ID_MOD_DT	      =   SYSDATE,',
'USR_ID_MOD	          =   :GLOBAL_USER_CODE,',
'NU_EMISSION_FAC       =   :P61_EMISSION_FACTOR',
'',
'where ORG_ID  = :GLOBAL_COMP_CODE',
'and   PRJ_ID  = :GLOBAL_PROJ_ID',
'and   NU_ID   =  :P61_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17155423659471706)
,p_process_when=>'P61_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7723442323187116)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7723412809187115)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
' CH_TYPE, VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, VC_ACCRE_NO, DT_ACCRE_ISS_DATE, ',
'DT_ACCRE_EXP_DATE, VC_STATUS,NU_EMISSION_FAC',
'into',
':P61_TYPE,:P61_REGISTRATION_NO, :P61_REGISTRATION_ISSUE_DATE, :P61_REGISTARTION_EXPIRE_DATE,:P61_ACCREDITATION_NUMBER,:P61_ACCREDITATION_ISSUE_DATE,',
':P61_ACCREDITAION_EXPIRE_DATE,:P61_STATUS,:P61_EMISSION_FACTOR',
'',
'from MST_REC_CDM',
'where ORG_ID  = :GLOBAL_COMP_CODE',
'and   PRJ_ID  = :GLOBAL_PROJ_ID',
'and   NU_ID   =  :P61_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P61_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
