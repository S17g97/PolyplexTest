prompt --application/pages/page_00064
begin
--   Manifest
--     PAGE: 00064
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
 p_id=>64
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'REC'
,p_alias=>'REC'
,p_step_title=>'REC'
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
'        });',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
')'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220704194143'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7722885909187110)
,p_plug_name=>'Invoice REC'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P64_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7250143268712723)
,p_plug_name=>'MAIN_INFO'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(7722885909187110)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7250075526712722)
,p_plug_name=>'Customer and iteminfo'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(7722885909187110)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7250013180712721)
,p_plug_name=>'sale'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(7722885909187110)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7249860935712720)
,p_plug_name=>'Calculation'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(7722885909187110)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7249778996712719)
,p_plug_name=>'Other info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(7722885909187110)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6808463252492625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7249860935712720)
,p_button_name=>'FORWARD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P64_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_AUTH_FLAG,P25_LAST_PAGE:&P64_REQ_NO.,&P64_INVOICE_NO.,&P64_INVOICE_DATE.,REC,&P64_AUTH_FLAG.,&P64_LAST_PAGE.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7249539025712717)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(7249860935712720)
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
 p_id=>wwv_flow_api.id(7249733297712718)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(7249860935712720)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P64_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(7249418055712715)
,p_branch_action=>'f?p=&APP_ID.:63:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7722827031187109)
,p_name=>'P64_INVOICE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7722670100187108)
,p_name=>'P64_INVOICE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7722600699187107)
,p_name=>'P64_REGISTRATION_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Registration No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7252766151712749)
,p_name=>'P64_REG_ISSUE_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Registration Issue Date'
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
 p_id=>wwv_flow_api.id(7252670586712748)
,p_name=>'P64_REG_EXP_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Registration Expire Date'
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
 p_id=>wwv_flow_api.id(7252618173712747)
,p_name=>'P64_ACC_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Accreditation No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7252440632712746)
,p_name=>'P64_ACC_ISSUE_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Accreditation Issue Date'
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
 p_id=>wwv_flow_api.id(7252334964712745)
,p_name=>'P64_ACC_EXP_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(7250143268712723)
,p_prompt=>'Accreditation ExpIre Date'
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
 p_id=>wwv_flow_api.id(7252276963712744)
,p_name=>'P64_PERIOD_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Period To'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(7252192371712743)
,p_name=>'P64_PERIOD_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Period From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_10=>'showDropdowns'
,p_attribute_14=>'P64_PERIOD_TO'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7252117983712742)
,p_name=>'P64_CONVENTIONAL_SALE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7250013180712721)
,p_item_default=>'0'
,p_prompt=>'Eligible  for Conventional Sale'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
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
 p_id=>wwv_flow_api.id(7252011965712741)
,p_name=>'P64_ADJUSMENT_SALE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(7250013180712721)
,p_item_default=>'0'
,p_prompt=>'Adjusment Sale'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(7251740615712739)
,p_name=>'P64_FINAL_SALE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(7250013180712721)
,p_item_default=>'0'
,p_prompt=>'Eligible  for Final Sale'
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
 p_id=>wwv_flow_api.id(7251639709712738)
,p_name=>'P64_SALE_INV_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(7249778996712719)
,p_prompt=>'Sale Invoice Number'
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
 p_id=>wwv_flow_api.id(7251565532712737)
,p_name=>'P64_REC_TYPE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(7249778996712719)
,p_prompt=>'Rec Type'
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
 p_id=>wwv_flow_api.id(7251497367712736)
,p_name=>'P64_BILL_MONTH'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(7249778996712719)
,p_prompt=>'Bill Month'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_named_lov=>'LOV_MONTH'
,p_lov=>'.'||wwv_flow_api.id(6765346016873115)||'.'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
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
 p_id=>wwv_flow_api.id(7251426257712735)
,p_name=>'P64_CUSTOMER_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'and :P64_MODE <> ''V''',
'',
'union all',
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and :P64_MODE = ''V''',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_lov_cascade_parent_items=>'P64_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7251285997712734)
,p_name=>'P64_ITEM_GROUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Item Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and ACTIVE = ''Y''',
'and :P64_MODE <> ''V''',
'union all',
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and :P64_MODE  = ''V''',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7251170440712733)
,p_name=>'P64_ITEM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'AND   "ITEM_GRP_ID" = :P64_ITEM_GROUP',
'and :P64_MODE <> ''V''',
'',
'union all',
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'AND   "ITEM_GRP_ID" = :P64_ITEM_GROUP',
'and :P64_MODE = ''V''',
'order by 1',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_lov_cascade_parent_items=>'P64_ITEM_GROUP'
,p_ajax_items_to_submit=>'P64_ITEM_GROUP,P64_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7251053329712732)
,p_name=>'P64_UOM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_prompt=>'Uom'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(7250957978712731)
,p_name=>'P64_ITEM_ACC_CODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7250862329712730)
,p_name=>'P64_ACC_CUST_CODE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7250816664712729)
,p_name=>'P64_QTY'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Bill Qty'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_attributes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7250667021712728)
,p_name=>'P64_RATE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_attributes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(7250610386712727)
,p_name=>'P64_SUB_AMOUNT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Sub Amount'
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
 p_id=>wwv_flow_api.id(7250455519712726)
,p_name=>'P64_TAX_AMOUNT'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Tax Amount'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
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
 p_id=>wwv_flow_api.id(7250407810712725)
,p_name=>'P64_NET_AMOUNT'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Net Amount'
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
 p_id=>wwv_flow_api.id(7250272453712724)
,p_name=>'P64_TAX_APPLICABLE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_item_default=>'N'
,p_prompt=>'Tax Applicable'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7249494596712716)
,p_name=>'P64_SALE_INVOICE_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(7249778996712719)
,p_prompt=>'Sale Invoice Date'
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
,p_attribute_09=>'Y'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7248840609712710)
,p_name=>'P64_MODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(7247987046712701)
,p_name=>'P64_INVOICE_ID'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6810793153492648)
,p_name=>'P64_TAX_RULE_ID'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6808953781492630)
,p_name=>'P64_REQ_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6808850618492629)
,p_name=>'P64_WKF_STAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6808775308492628)
,p_name=>'P64_LAST_PAGE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6808724452492627)
,p_name=>'P64_AUTH_FLAG'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6808611682492626)
,p_name=>'P64_LABEL_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(7722885909187110)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P44_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6806876779492609)
,p_name=>'P64_REMARKS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(7249860935712720)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13925627712746056)
,p_name=>'P64_ERROR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(7250075526712722)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6810286623492643)
,p_validation_name=>'Tax Rule Id not null'
,p_validation_sequence=>10
,p_validation=>'P64_TAX_RULE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Tax ID Not found for this Customer.'
,p_validation_condition=>'P64_TAX_APPLICABLE'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(6810793153492648)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6806710318492607)
,p_validation_name=>'Registartion No not null'
,p_validation_sequence=>20
,p_validation=>'P64_REGISTRATION_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Registartion No Not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7722600699187107)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6806613034492606)
,p_validation_name=>'Reg Issue date'
,p_validation_sequence=>30
,p_validation=>'P64_REG_ISSUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Registration Issue Date Not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252766151712749)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6806501055492605)
,p_validation_name=>'Reg Exp Date'
,p_validation_sequence=>40
,p_validation=>'P64_REG_EXP_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Registration Expiration date not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252670586712748)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6806413336492604)
,p_validation_name=>'acc not null'
,p_validation_sequence=>50
,p_validation=>'P64_ACC_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Accreditation No not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252618173712747)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075710571427422)
,p_validation_name=>'Acc Issue date not found'
,p_validation_sequence=>60
,p_validation=>'P64_ACC_ISSUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Accreditation Issue date not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252440632712746)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075628622427421)
,p_validation_name=>'Acc exp date not found'
,p_validation_sequence=>70
,p_validation=>'P64_ACC_EXP_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Accreditation Expire date not found'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252334964712745)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075513231427420)
,p_validation_name=>'Customer cannot be null'
,p_validation_sequence=>80
,p_validation=>'P64_CUSTOMER_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Customer'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7251426257712735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075353712427419)
,p_validation_name=>'Period from Date'
,p_validation_sequence=>90
,p_validation=>'P64_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period From Date'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252192371712743)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075309385427418)
,p_validation_name=>'Period to date not null'
,p_validation_sequence=>100
,p_validation=>'P64_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period to date'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252276963712744)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075192835427417)
,p_validation_name=>'Item group'
,p_validation_sequence=>110
,p_validation=>'P64_ITEM_GROUP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Item group'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7251285997712734)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075101984427416)
,p_validation_name=>'Item not null'
,p_validation_sequence=>120
,p_validation=>'P64_ITEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Item'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7251170440712733)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074981523427415)
,p_validation_name=>'qty not null or zeo'
,p_validation_sequence=>130
,p_validation=>'P64_QTY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Quantity Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7250816664712729)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074888412427414)
,p_validation_name=>'Conventional sale cannot be null or zero'
,p_validation_sequence=>140
,p_validation=>'P64_CONVENTIONAL_SALE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Conventional Sale Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7252117983712742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074346603427409)
,p_validation_name=>'proj prefix not null'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'      begin',
'     select VC_PROJ_PREFIX',
'      into v_chk  ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     exception  when no_data_found then  null;',
'    end;',
'      ',
'      if nvl(v_chk,''XX'') = ''XX'' THEN',
'       RETURN ''Project Prefix not defined.Contact Administration'';',
'      END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074808266427413)
,p_validation_name=>'Final Sale'
,p_validation_sequence=>150
,p_validation=>'P64_FINAL_SALE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Final sale Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7251740615712739)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074298348427408)
,p_validation_name=>'Financial open or not'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'',
'      SELECT    count(*)',
'       INTO     v_chk',
'       FROM     APPUA.VW_FY',
'       WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ',
'       and      :P64_INVOICE_DATE  BETWEEN FY_STRT AND  FY_END ;',
'       ',
'',
'if v_chk = 0 then',
'return false;',
'else',
'return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Financial year not open. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074636174427412)
,p_validation_name=>'Rate cannot be null or zero'
,p_validation_sequence=>160
,p_validation=>'P64_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7250667021712728)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074631695427411)
,p_validation_name=>'Sub amount cannot be null or zero'
,p_validation_sequence=>170
,p_validation=>'P64_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7250610386712727)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074448061427410)
,p_validation_name=>'Net Amount cannot be null'
,p_validation_sequence=>180
,p_validation=>'P64_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Amount cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(7249733297712718)
,p_associated_item=>wwv_flow_api.id(7250407810712725)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7248717554712708)
,p_name=>'Get item info'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ITEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7248541431712707)
,p_event_id=>wwv_flow_api.id(7248717554712708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_ITEM_ACC_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COA_ID',
'FROM APPUA.VW_ITM_COA',
'WHERE HO_ORG_ID = :GLOBAL_PARENT_COMP',
'AND   "ITM_ID"  = :P64_ITEM',
'AND   "ACCOUNT_FOR_ID" = ''145'''))
,p_attribute_07=>'P64_ITEM'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7248501789712706)
,p_event_id=>wwv_flow_api.id(7248717554712708)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_UOM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT get_item_uom(:GLOBAL_COMP_CODE,:P64_ITEM_GROUP,:P64_ITEM)uom  FROM DUAL;'
,p_attribute_07=>'P64_ITEM_GROUP,P64_ITEM'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7248414282712705)
,p_name=>'GET CUSTOMER ACCOUNT CODE'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_CUSTOMER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7248276278712704)
,p_event_id=>wwv_flow_api.id(7248414282712705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_ACC_CUST_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct"COA_ID"',
'from APPUA.vw_customer',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'AND "EO_ID" = :P64_CUSTOMER_CODE'))
,p_attribute_07=>'P64_CUSTOMER_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6808176403492622)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>20
,p_condition_element=>'P64_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6808083835492621)
,p_event_id=>wwv_flow_api.id(6808176403492622)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6808463252492625)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P64_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7248163170712703)
,p_name=>'get sub amount'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_RATE,P64_QTY'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(7248045256712702)
,p_event_id=>wwv_flow_api.id(7248163170712703)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P64_SUB_AMOUNT := NVL(REPLACE(:P64_RATE,'','','''') ,0)*NVL(REPLACE(:P64_QTY,'','','''') ,0);'
,p_attribute_02=>'P64_RATE,P64_QTY'
,p_attribute_03=>'P64_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(7247917299712700)
,p_name=>'GET TAX AMOUNT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_TAX_APPLICABLE,P64_SUB_AMOUNT'
,p_condition_element=>'P64_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6810921741492649)
,p_event_id=>wwv_flow_api.id(7247917299712700)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'begin',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P64_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P64_ITEM;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P64_ITEM, ',
'                            :P64_CUSTOMER_CODE,:P64_INVOICE_ID,NULL,''1153'' ,replace(:P64_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P64_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P64_INVOICE_ID, :P64_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P64_SUB_AMOUNT,'','',''''),replace(:P64_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P64_ACC_CUST_CODE, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P64_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P64_CUSTOMER_CODE,P64_INVOICE_ID,P64_ITEM,P64_ACC_CUST_CODE'
,p_attribute_03=>'P64_TAX_AMOUNT,P64_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6810696162492647)
,p_event_id=>wwv_flow_api.id(7247917299712700)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P64_TAX_AMOUNT  := 0;',
'',
':P64_TAX_RULE_ID := NULL;',
''))
,p_attribute_03=>'P64_TAX_AMOUNT,P64_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6810229211492642)
,p_name=>'GET NET AMOUNT'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6810129405492641)
,p_event_id=>wwv_flow_api.id(6810229211492642)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P64_NET_AMOUNT:= NVL(REPLACE(:P64_SUB_AMOUNT,'','','''') ,0)+NVL(REPLACE(:P64_TAX_AMOUNT,'','','''') ,0);'
,p_attribute_02=>'P64_SUB_AMOUNT,P64_TAX_AMOUNT'
,p_attribute_03=>'P64_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6809789147492638)
,p_name=>'GET CONV SALE'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_PERIOD_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6809690562492637)
,p_event_id=>wwv_flow_api.id(6809789147492638)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P64_CONVENTIONAL_SALE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(NU_TOTAL_UNIT)',
'FROM HD_FINALIZE_SCHEDULE',
'WHERE ',
'ORG_ID  = :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'AND VC_POWER_TYPE = ''C''  ',
'AND DT_SCHEDULED_DATE BETWEEN :P64_PERIOD_FROM AND :P64_PERIOD_TO',
''))
,p_attribute_07=>'P64_PERIOD_FROM,P64_PERIOD_TO'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6809561116492636)
,p_name=>'SET FINAL SALE'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P64_ADJUSMENT_SALE,P64_CONVENTIONAL_SALE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6809530040492635)
,p_event_id=>wwv_flow_api.id(6809561116492636)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P64_FINAL_SALE:= NVL(REPLACE(:P64_CONVENTIONAL_SALE,'','','''') ,0)-NVL(REPLACE(:P64_ADJUSMENT_SALE,'','','''') ,0);'
,p_attribute_02=>'P64_CONVENTIONAL_SALE,P64_ADJUSMENT_SALE'
,p_attribute_03=>'P64_FINAL_SALE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6808432261492624)
,p_name=>'hide forward on add mode'
,p_event_sequence=>80
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P64_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6808235454492623)
,p_event_id=>wwv_flow_api.id(6808432261492624)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6808463252492625)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6809310998492633)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code          VARCHAR2(30);',
'v_prj_prefix    varchar2(5);',
'V_STRT_YEAR     DATE;',
'V_END_YEAR      DATE;',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'',
'e_error exception;',
'begin',
'      select VC_PROJ_PREFIX  ',
'      into  v_prj_prefix ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     ',
'       SELECT FY_STRT,FY_END',
'       INTO   V_STRT_YEAR,V_END_YEAR',
'       FROM   APPUA.VW_FY',
'       WHERE   ORG_ID = :GLOBAL_COMP_CODE',
'       AND    YEAR_CLOSING_FLG  = ''N'' ;',
'',
'        begin',
'                select  --lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'                 nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1',
'                into  v_code ',
'                from DT_INVOICE_REC ',
'                where ORG_ID = :global_comp_code ',
'                and PRJ_ID = :GLOBAL_PROJ_ID',
'                AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'            ',
'            :P64_INVOICE_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/R'' || v_code;',
'        ',
'        end;',
'',
'        if LENGTH(:P64_INVOICE_NO) > 15 then',
'         apex_util.set_session_state(''P64_ERROR'', ''Invoice Number length geerate greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'        ',
'insert into DT_INVOICE_REC',
'(',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, VC_ACCRE_NO, DT_ACCRE_ISS_DATE, ',
'DT_ACCRE_EXP_DATE, EO_ID, COA_ID, DT_BILL_FROM, DT_BILL_TO, GRP_ID, ITM_ID, ITM_ID_COA, NU_CONVN_SALE, NU_ADJ_SALE, NU_NET_SALE, VC_SALE_INVOICE_N0,',
' DT_SALE_INVOICE_DATE, VC_REC_TYPE, VC_BILL_MONTH, NU_QTY, NU_RATE, VC_TAX_APPLICABLE, NU_TAX_RULE_ID, NU_SUB_AMOUNT, NU_TAX_AMOUNT, ',
'NU_NET_AMOUNT, USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD_DT, USR_ID_MOD, HO_ORG_ID,VC_REMARKS',
')',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P64_INVOICE_ID,:P64_INVOICE_NO,:P64_INVOICE_DATE,:P64_REGISTRATION_NO,:P64_REG_ISSUE_DATE,:P64_REG_EXP_DATE,:P64_ACC_NO,:P64_ACC_ISSUE_DATE,',
':P64_ACC_EXP_DATE,:P64_CUSTOMER_CODE,:P64_ACC_CUST_CODE,:P64_PERIOD_FROM,:P64_PERIOD_TO,:P64_ITEM_GROUP,:P64_ITEM,:P64_ITEM_ACC_CODE,:P64_CONVENTIONAL_SALE,:P64_ADJUSMENT_SALE,:P64_FINAL_SALE,:P64_SALE_INV_NO,',
':P64_SALE_INVOICE_DATE,:P64_REC_TYPE,:P64_BILL_MONTH,:P64_QTY,:P64_RATE,:P64_TAX_APPLICABLE,:P64_TAX_RULE_ID,:P64_SUB_AMOUNT,:P64_TAX_AMOUNT',
',:P64_NET_AMOUNT,:GLOBAL_USER_CODE,SYSDATE,SYSDATE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP,:P64_REMARKS);',
'',
'    if :P30_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P64_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P64_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P64_ITEM;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P64_ITEM, ',
'                                        :P64_CUSTOMER_CODE,:P64_INVOICE_ID,NULL,''1153'' ,replace(:P64_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P64_INVOICE_ID, :P64_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P64_SUB_AMOUNT,'','',''''),replace(:P64_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P64_ACC_CUST_CODE, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'',
'         ',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P64_INVOICE_ID',
'',
'            )',
'            LOOP',
'          ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'',
'            END LOOP;',
'',
'        end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P64_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7249733297712718)
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6809221497492632)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'',
'begin',
'update  DT_INVOICE_REC',
'set ',
'',
'VC_REG_NO           = :P64_REGISTRATION_NO,',
'DT_REG_ISS_DATE     = :P64_REG_ISSUE_DATE,',
'DT_REG_EXP_DATE     = :P64_REG_EXP_DATE,',
'VC_ACCRE_NO         = :P64_ACC_NO,',
'DT_ACCRE_ISS_DATE   = :P64_REG_ISSUE_DATE,',
'DT_ACCRE_EXP_DATE   =  :P64_REG_EXP_DATE,',
'EO_ID               =  :P64_CUSTOMER_CODE,',
'COA_ID              =  :P64_ACC_CUST_CODE,',
'DT_BILL_FROM        =  :P64_PERIOD_FROM,',
'DT_BILL_TO          =  :P64_PERIOD_TO,',
'GRP_ID              =  :P64_ITEM_GROUP,',
'ITM_ID              =  :P64_ITEM,',
'ITM_ID_COA          =  :P64_ITEM_ACC_CODE,',
'NU_CONVN_SALE       =  :P64_CONVENTIONAL_SALE,',
'NU_ADJ_SALE         =  :P64_ADJUSMENT_SALE,',
'NU_NET_SALE         =  :P64_FINAL_SALE,',
'VC_SALE_INVOICE_N0  =  :P64_SALE_INV_NO,',
'DT_SALE_INVOICE_DATE    = :P64_SALE_INVOICE_DATE,',
'VC_REC_TYPE         = :P64_REC_TYPE,',
'VC_BILL_MONTH       = :P64_BILL_MONTH,',
'NU_QTY              = :P64_QTY,',
'NU_RATE             = :P64_RATE,',
'VC_TAX_APPLICABLE   = :P64_TAX_APPLICABLE,',
'NU_TAX_RULE_ID      = :P64_TAX_RULE_ID,',
'NU_SUB_AMOUNT       = :P64_SUB_AMOUNT,',
'NU_TAX_AMOUNT       = :P64_TAX_AMOUNT,',
'NU_NET_AMOUNT       = :P64_NET_AMOUNT,',
'USR_ID_MOD_DT       = SYSDATE,',
'USR_ID_MOD          = :GLOBAL_USER_CODE,',
'VC_REMARKS          = :P64_REMARKS',
'',
'where ORG_ID        = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P64_INVOICE_NO',
'and DT_INVOICE_DATE = :P64_INVOICE_DATE;',
'',
'  if :P64_TAX_APPLICABLE = ''Y'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P64_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P64_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P64_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P64_ITEM;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P64_ITEM, ',
'                                        :P64_CUSTOMER_CODE,:P64_INVOICE_ID,NULL,''1153'' ,replace(:P64_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P64_INVOICE_ID, :P64_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P64_SUB_AMOUNT,'','',''''),replace(:P64_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P64_ACC_CUST_CODE, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P64_INVOICE_ID',
'',
'            )',
'            LOOP',
'          ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'',
'            END LOOP;',
'',
'        end if;',
'',
'',
'    if :P64_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P64_INVOICE_ID;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(7249733297712718)
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6806787882492608)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'CLEAR'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(7248972075712711)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'gET INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select',
'VC_REG_NO,',
'DT_REG_ISS_DATE,',
'DT_REG_EXP_DATE,',
'VC_ACCRE_NO,',
'DT_ACCRE_ISS_DATE,',
'DT_ACCRE_EXP_DATE',
'',
'INTO',
':P64_REGISTRATION_NO,',
':P64_REG_ISSUE_DATE,',
':P64_REG_EXP_DATE,',
':P64_ACC_NO,',
':P64_ACC_ISSUE_DATE,',
':P64_ACC_EXP_DATE',
'',
'from MST_REC_CDM',
'where ',
'ORG_ID      = :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'AND CH_TYPE = ''R''',
'AND VC_STATUS = ''O'';',
'exception when no_data_found then null;',
'end;',
'',
':P64_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6809096329492631)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Populate Data on View/edit'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NU_INVOICE_ID ,VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, VC_ACCRE_NO, DT_ACCRE_ISS_DATE, ',
'DT_ACCRE_EXP_DATE, EO_ID, COA_ID, DT_BILL_FROM, DT_BILL_TO, GRP_ID, ITM_ID, ITM_ID_COA, NU_CONVN_SALE, NU_ADJ_SALE, NU_NET_SALE, VC_SALE_INVOICE_N0,',
' DT_SALE_INVOICE_DATE, VC_REC_TYPE, VC_BILL_MONTH, NU_QTY, NU_RATE, VC_TAX_APPLICABLE, NU_TAX_RULE_ID, NU_SUB_AMOUNT, NU_TAX_AMOUNT, ',
'NU_NET_AMOUNT,VC_REMARKS',
'',
'',
'into',
':P64_INVOICE_ID,:P64_REGISTRATION_NO,:P64_REG_ISSUE_DATE,:P64_REG_EXP_DATE,:P64_ACC_NO,:P64_ACC_ISSUE_DATE,',
':P64_ACC_EXP_DATE,:P64_CUSTOMER_CODE,:P64_ACC_CUST_CODE,:P64_PERIOD_FROM,:P64_PERIOD_TO,:P64_ITEM_GROUP,:P64_ITEM,:P64_ITEM_ACC_CODE,:P64_CONVENTIONAL_SALE,:P64_ADJUSMENT_SALE,:P64_FINAL_SALE,:P64_SALE_INV_NO,',
':P64_SALE_INVOICE_DATE,:P64_REC_TYPE,:P64_BILL_MONTH,:P64_QTY,:P64_RATE,:P64_TAX_APPLICABLE,:P64_TAX_RULE_ID,:P64_SUB_AMOUNT,:P64_TAX_AMOUNT',
',:P64_NET_AMOUNT,:P64_REMARKS',
'',
'from DT_INVOICE_REC',
'where ORG_ID        = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P64_INVOICE_NO',
'and DT_INVOICE_DATE = :P64_INVOICE_DATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6807973845492620)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P64_WKF_STAGE',
'from  DT_INV_IEX',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P64_INVOICE_NO',
'and  DT_INVOICE_DATE = :P64_INVOICE_DATE;',
'exception when no_data_found then :P64_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6807871536492619)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P64_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P64_INVOICE_NO',
'AND      DT_DOC_DATE = :P64_INVOICE_DATE',
'AND      VC_DOC_TYPE  = ''REC'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P64_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
