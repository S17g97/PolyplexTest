prompt --application/pages/page_00069
begin
--   Manifest
--     PAGE: 00069
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
 p_id=>69
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice Subject Master'
,p_alias=>'INVOICE-NOTES-MASTER'
,p_step_title=>'Invoice Subject Master'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220902111214'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17307443607859118)
,p_plug_name=>'Invoice Notes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17306213777859105)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17307443607859118)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17306127097859104)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17307443607859118)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15379986744303364)
,p_branch_name=>'goto 71'
,p_branch_action=>'f?p=&APP_ID.:71:&SESSION.::&DEBUG.:69::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17307111299859114)
,p_name=>'P69_VC_DOC_ID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(17307443607859118)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17306977648859113)
,p_name=>'P69_DT_DOC_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(17307443607859118)
,p_item_default=>'to_date(sysdate)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17306930585859112)
,p_name=>'P69_VC_INV_SUBJECT_DESC'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(17307443607859118)
,p_prompt=>'Invoice Notes'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>4000
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17306331341859106)
,p_name=>'P69_VC_STATUS'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(17307443607859118)
,p_item_default=>'Y'
,p_prompt=>'Active'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15380118903303365)
,p_name=>'P69_ACTION'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(17307443607859118)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15380340834303367)
,p_validation_name=>'invoice val'
,p_validation_sequence=>10
,p_validation=>'P69_VC_INV_SUBJECT_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Enter Invoice Subject'
,p_when_button_pressed=>wwv_flow_api.id(17306127097859104)
,p_associated_item=>wwv_flow_api.id(17306930585859112)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15606236231956253)
,p_validation_name=>'New'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'CNT NUMBER;',
'BEGIN ',
'SELECT COUNT(VC_DOC_ID) INTO CNT ',
'FROM DT_INV_SUBJECT_JMR ',
'WHERE  ORG_ID = :global_comp_code',
'and PRJ_ID = :GLOBAL_PROJ_ID',
' and VC_DOC_ID = :P69_VC_DOC_ID',
'and DT_DOC_DATE = :P69_DT_DOC_DATE',
';',
'',
'IF NVL(CNT,0) = 0 THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'That invoice Notes already used in invoices.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(17306127097859104)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17306019967859103)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_DOC varchar2(10);',
'BEGIN ',
'select nvl(max(TO_NUMBER(VC_DOC_ID)),0) + 1  into V_DOC',
'                      from mst_INVOICE_SUBJECT',
'                      WHERE ORG_ID = :GLOBAL_COMP_CODE',
'                      AND HO_ORG_ID = :GLOBAL_PARENT_COMP;',
'',
'insert INTO mst_INVOICE_SUBJECT(',
'ORG_ID,',
'PRJ_ID,',
'VC_DOC_ID,',
'DT_DOC_DATE,',
'VC_INV_SUBJECT_DESC,',
'USR_ID_CREATE,',
'USR_ID_CREATE_DT,',
'VC_AUTH_CODE,',
'USR_ID_MOD_DT,',
'HO_ORG_ID,',
'VC_STATUS',
'    )',
'values(',
':GLOBAL_COMP_CODE,',
':GLOBAL_PROJ_ID,',
'V_DOC,',
':P69_DT_DOC_DATE,',
':P69_VC_INV_SUBJECT_DESC,',
':GLOBAL_USER_CODE,',
'SYSDATE,',
':GLOBAL_USER_CODE,',
'SYSDATE,',
':GLOBAL_PARENT_COMP,',
':P69_VC_STATUS',
');',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17306127097859104)
,p_process_when=>'P69_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15380187474303366)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update mst_INVOICE_SUBJECT',
'set VC_INV_SUBJECT_DESC = :P69_VC_INV_SUBJECT_DESC , vc_status = :P69_VC_STATUS,',
'USR_ID_MOD_DT = sysdate',
'WHERE ORG_ID = :global_comp_code',
' AND HO_ORG_ID = :global_parent_comp',
' and VC_DOC_ID = :P69_VC_DOC_ID',
'and DT_DOC_DATE = :P69_DT_DOC_DATE',
'and PRJ_ID = :GLOBAL_PROJ_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17306127097859104)
,p_process_when=>'P69_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15605982956956251)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
' VC_INV_SUBJECT_DESC  into :P69_VC_INV_SUBJECT_DESC  ',
'from mst_INVOICE_SUBJECT',
'WHERE ORG_ID = :global_comp_code',
' AND HO_ORG_ID = :global_parent_comp',
' and VC_DOC_ID = :P69_VC_DOC_ID',
'and DT_DOC_DATE = :P69_DT_DOC_DATE',
'and PRJ_ID = :GLOBAL_PROJ_ID;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P69_ACTION'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
