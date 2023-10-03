prompt --application/pages/page_00067
begin
--   Manifest
--     PAGE: 00067
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
 p_id=>67
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'INOICE CDM '
,p_alias=>'INOICE-CDM'
,p_step_title=>'INOICE CDM '
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
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region {',
'    border-color: black;',
')'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220704194704'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(6805991268492600)
,p_plug_name=>'CDM'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5671394978192544)
,p_plug_name=>'Main Info'
,p_parent_plug_id=>wwv_flow_api.id(6805991268492600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5670856716192539)
,p_plug_name=>'EXP Reading'
,p_parent_plug_id=>wwv_flow_api.id(6805991268492600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5670159423192532)
,p_plug_name=>'IMP Reading'
,p_parent_plug_id=>wwv_flow_api.id(6805991268492600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(5669497733192525)
,p_plug_name=>'Calculation'
,p_parent_plug_id=>wwv_flow_api.id(6805991268492600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(23815188609955262)
,p_plug_name=>'Customer and iteminfo'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(6805991268492600)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5593649721114120)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(5669497733192525)
,p_button_name=>'FORWARD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P67_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_AUTH_FLAG,P25_LAST_PAGE:&P67_REQ_NO.,&P67_INVOICE_NO.,&P67_INVOICE_DATE.,CDM,&P67_AUTH_FLAG.,&P67_LAST_PAGE.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5667476029192505)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(5669497733192525)
,p_button_name=>'cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5667591763192506)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(5669497733192525)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(5667278675192503)
,p_branch_name=>'Go To Page 62'
,p_branch_action=>'f?p=&APP_ID.:62:&SESSION.::&DEBUG.:62::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671903564192549)
,p_name=>'P67_INVOICE_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671783487192548)
,p_name=>'P67_INVOICE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671708533192547)
,p_name=>'P67_INVOICE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671596164192546)
,p_name=>'P67_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671482187192545)
,p_name=>'P67_ACC_CUST_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671275055192543)
,p_name=>'P67_CDM_REG_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5671394978192544)
,p_prompt=>'CDM Registration Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671148953192542)
,p_name=>'P67_CDM_REG_ISSUR_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5671394978192544)
,p_prompt=>'CDM Registration Issue Date'
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
 p_id=>wwv_flow_api.id(5671039775192541)
,p_name=>'P67_CDM_REG_EXP_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5671394978192544)
,p_prompt=>'CDM Registration Expiry Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5671017082192540)
,p_name=>'P67_EMISSION'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5671394978192544)
,p_prompt=>'Emission Factor'
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
 p_id=>wwv_flow_api.id(5670777423192538)
,p_name=>'P67_EXP_PREV_READ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Export Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5670692779192537)
,p_name=>'P67_EXP_CURR_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Export Current Reading'
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
 p_id=>wwv_flow_api.id(5670571693192536)
,p_name=>'P67_EXP_DIFF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Export Difference'
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
 p_id=>wwv_flow_api.id(5670445450192535)
,p_name=>'P67_EXP_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Export Total Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5670373152192534)
,p_name=>'P67_EXP_ADJUSTMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(5670312634192533)
,p_name=>'P67_EXP_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5670856716192539)
,p_prompt=>'Export Net Unit'
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
 p_id=>wwv_flow_api.id(5670132214192531)
,p_name=>'P67_IMP_PREV_READ'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Import Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5670033432192530)
,p_name=>'P67_IMP_CURR_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Import Current Reading'
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
 p_id=>wwv_flow_api.id(5669840254192529)
,p_name=>'P67_IMP_DIFF'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Import Difference'
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
 p_id=>wwv_flow_api.id(5669813095192528)
,p_name=>'P67_IMP_TOTAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Import Total Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5669709773192527)
,p_name=>'P67_IMP_ADJUSTMENT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(5669590909192526)
,p_name=>'P67_IMP_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5670159423192532)
,p_prompt=>'Import Net Unit'
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
 p_id=>wwv_flow_api.id(5669426695192524)
,p_name=>'P67_NET_EXPORT_UNIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'Net Export Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5669307491192523)
,p_name=>'P67_DGM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'DGM'
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
 p_id=>wwv_flow_api.id(5669197923192522)
,p_name=>'P67_NET_UNIT_DGM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'Eligible for CDM'
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
 p_id=>wwv_flow_api.id(5669130501192521)
,p_name=>'P67_RATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'Rate'
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
 p_id=>wwv_flow_api.id(5668957084192520)
,p_name=>'P67_SUB_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'Sub Amount'
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
 p_id=>wwv_flow_api.id(5668885828192519)
,p_name=>'P67_TAX_APPLICABLE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
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
 p_id=>wwv_flow_api.id(5668834473192518)
,p_name=>'P67_TAX_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
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
 p_id=>wwv_flow_api.id(5668701674192517)
,p_name=>'P67_NET_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_prompt=>'Net Amount'
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
 p_id=>wwv_flow_api.id(5668561944192516)
,p_name=>'P67_REMARKS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
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
 p_id=>wwv_flow_api.id(5668123330192511)
,p_name=>'P67_ITEM_ACC_CODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5640144397856660)
,p_name=>'P67_CUSTOMER_CODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'and :P67_MODE <> ''V''',
'',
'union all',
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and :P67_MODE = ''V''',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_lov_cascade_parent_items=>'P67_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
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
 p_id=>wwv_flow_api.id(5639766158856658)
,p_name=>'P67_PERIOD_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Period From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_10=>'showDropdowns'
,p_attribute_14=>'P67_PERIOD_TO'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5639425717856658)
,p_name=>'P67_PERIOD_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Period To'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(5638974531856658)
,p_name=>'P67_ITEM_GROUP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Item Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and ACTIVE = ''Y''',
'and :P67_MODE <> ''V''',
'union all',
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and :P67_MODE  = ''V''',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
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
 p_id=>wwv_flow_api.id(5638634426856657)
,p_name=>'P67_ITEM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'AND   "ITEM_GRP_ID" = :P67_ITEM_GROUP',
'and :P67_MODE <> ''V''',
'',
'union all',
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'AND   "ITEM_GRP_ID" = :P67_ITEM_GROUP',
'and :P67_MODE = ''V''',
'order by 1',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_lov_cascade_parent_items=>'P67_ITEM_GROUP'
,p_ajax_items_to_submit=>'P67_ITEM_GROUP,P67_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
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
 p_id=>wwv_flow_api.id(5638148123856657)
,p_name=>'P67_UOM'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(23815188609955262)
,p_prompt=>'Uom'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(5594692223114130)
,p_name=>'P67_TAX_RULE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(5669497733192525)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5594169532114125)
,p_name=>'P67_REQ_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5594088675114124)
,p_name=>'P67_WKF_STAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5593982880114123)
,p_name=>'P67_LAST_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5593852845114122)
,p_name=>'P67_LABEL_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P67_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(5593790210114121)
,p_name=>'P67_AUTH_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13925747204746057)
,p_name=>'P67_ERROR'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(6805991268492600)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5078357024427449)
,p_validation_name=>'Cdm Reg No'
,p_validation_sequence=>10
,p_validation=>'P67_CDM_REG_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'CDM Registration Number not found.'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5671275055192543)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5078239985427448)
,p_validation_name=>'CDM Issue date'
,p_validation_sequence=>20
,p_validation=>'P67_CDM_REG_ISSUR_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'CDM registartion issue date not found'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5671148953192542)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5078218607427447)
,p_validation_name=>'cdm reg exp date'
,p_validation_sequence=>30
,p_validation=>'P67_CDM_REG_EXP_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'CDM Registration Expire date not found.'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5671039775192541)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5078095318427446)
,p_validation_name=>'Emission Factor nnot found'
,p_validation_sequence=>40
,p_validation=>'P67_EMISSION'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Emission Factor Not found'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5671017082192540)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077989953427445)
,p_validation_name=>'Customer Code not null'
,p_validation_sequence=>50
,p_validation=>'P67_CUSTOMER_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Customer'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5640144397856660)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077851600427444)
,p_validation_name=>'Period from Not null'
,p_validation_sequence=>60
,p_validation=>'P67_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period from date'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5639766158856658)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077762255427443)
,p_validation_name=>'Period to not null'
,p_validation_sequence=>70
,p_validation=>'P67_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period To date '
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5639425717856658)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077654504427442)
,p_validation_name=>'Item Group not null'
,p_validation_sequence=>80
,p_validation=>'P67_ITEM_GROUP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Item Group'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5638974531856658)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077591757427441)
,p_validation_name=>'Item not null'
,p_validation_sequence=>90
,p_validation=>'P67_ITEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Item'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5638634426856657)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077533087427440)
,p_validation_name=>'Exp Prev Read not null'
,p_validation_sequence=>100
,p_validation=>'P67_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Export Previous Reading Cannot be zero or null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670777423192538)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077382882427439)
,p_validation_name=>'Exp curr read not null'
,p_validation_sequence=>110
,p_validation=>'P67_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Export current Reading Cannot be zero or null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670692779192537)
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
 p_id=>wwv_flow_api.id(5077320057427438)
,p_validation_name=>'Exp diff not null'
,p_validation_sequence=>120
,p_validation=>'P67_EXP_DIFF'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Export difference Cannot be zero or null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670571693192536)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077200917427437)
,p_validation_name=>'Exp total cannot be null'
,p_validation_sequence=>130
,p_validation=>'P67_EXP_TOTAL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Export total Cannot be zero or null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670445450192535)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077114127427436)
,p_validation_name=>'Exp  Total unit'
,p_validation_sequence=>140
,p_validation=>'P67_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Total Export  Unit Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670312634192533)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5077012837427435)
,p_validation_name=>'import prev read  not null or zero'
,p_validation_sequence=>150
,p_validation=>'P67_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Import Previous Reading Cannot be zero or null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670132214192531)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076817378427433)
,p_validation_name=>'Imp curr read not null'
,p_validation_sequence=>160
,p_validation=>'P67_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Import Current Reading cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5670033432192530)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076662509427432)
,p_validation_name=>'IMP Diff not null'
,p_validation_sequence=>170
,p_validation=>'P67_IMP_DIFF'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Import Current Reading cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669840254192529)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076597472427431)
,p_validation_name=>'IMP TOTAL Not null or zero'
,p_validation_sequence=>180
,p_validation=>'P67_IMP_TOTAL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Import Total Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669813095192528)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076509383427430)
,p_validation_name=>'Imp unit cannot be null or zero'
,p_validation_sequence=>190
,p_validation=>'P67_IMP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Import unit cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669590909192526)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076338865427429)
,p_validation_name=>'Net Export unit not null'
,p_validation_sequence=>200
,p_validation=>'P67_NET_EXPORT_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Export Unit cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669426695192524)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076238540427428)
,p_validation_name=>'DGM not null or zero'
,p_validation_sequence=>210
,p_validation=>'P67_DGM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'DGM cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669307491192523)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076166389427427)
,p_validation_name=>'Rate Cannot be null or zero'
,p_validation_sequence=>220
,p_validation=>'P67_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669130501192521)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5076081665427426)
,p_validation_name=>'Net unit DGM not null or zero'
,p_validation_sequence=>230
,p_validation=>'P67_NET_UNIT_DGM'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Eligible for CDM cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5669197923192522)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075969213427425)
,p_validation_name=>'Tax Rule Id not found'
,p_validation_sequence=>240
,p_validation=>'P67_TAX_RULE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Tax ID Not found for this Customer.'
,p_validation_condition=>'P67_TAX_APPLICABLE'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5594692223114130)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075874374427424)
,p_validation_name=>'Sub amount not null'
,p_validation_sequence=>250
,p_validation=>'P67_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub amoount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5668957084192520)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5075806939427423)
,p_validation_name=>'Net amount not null'
,p_validation_sequence=>260
,p_validation=>'P67_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Net amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_associated_item=>wwv_flow_api.id(5668701674192517)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074198206427407)
,p_validation_name=>'Financial open or not'
,p_validation_sequence=>270
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
'       and      :P67_INVOICE_DATE  BETWEEN FY_STRT AND  FY_END ;',
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
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(5074040267427406)
,p_validation_name=>'proj prefix not null'
,p_validation_sequence=>280
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
,p_when_button_pressed=>wwv_flow_api.id(5667591763192506)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5668515031192515)
,p_name=>'GET CUSTOMER ACCOUNT CODE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_CUSTOMER_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5668352684192514)
,p_event_id=>wwv_flow_api.id(5668515031192515)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_ACC_CUST_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct"COA_ID"',
'from APPUA.vw_customer',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'AND "EO_ID" = :P67_CUSTOMER_CODE'))
,p_attribute_07=>'P67_CUSTOMER_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5668248781192513)
,p_name=>'Get item info'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_ITEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5668219021192512)
,p_event_id=>wwv_flow_api.id(5668248781192513)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_ITEM_ACC_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COA_ID',
'FROM APPUA.VW_ITM_COA',
'WHERE HO_ORG_ID = :GLOBAL_PARENT_COMP',
'AND   "ITM_ID"  = :P67_ITEM',
'AND   "ACCOUNT_FOR_ID" = ''145'''))
,p_attribute_07=>'P67_ITEM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5667972832192510)
,p_event_id=>wwv_flow_api.id(5668248781192513)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_UOM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT get_item_uom(:GLOBAL_COMP_CODE,:P67_ITEM_GROUP,:P67_ITEM)uom  FROM DUAL;'
,p_attribute_07=>'P67_ITEM,P67_ITEM_GROUP'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5667810479192508)
,p_name=>'GET info '
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_PERIOD_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5667711090192507)
,p_event_id=>wwv_flow_api.id(5667810479192508)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P67_EXP_PREV_READ,P67_EXP_CURR_READ,P67_IMP_PREV_READ,P67_IMP_CURR_READ'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT SUM(NU_MAIN_EXP_PRV_READING),SUM(NU_MAIN_EXP_CUR_READING),SUM(NU_MAIN_IMP_PRV_READING),SUM( NU_MAIN_IMP_CUR_READING)',
'FROM DT_JMR',
'WHERE',
' ORG_ID = :GLOBAL_COMP_CODE',
' AND PRJ_ID  = :GLOBAL_PROJ_ID',
' AND CH_AUTH_FLAG = ''Y''',
' AND DT_JMR_DATE BETWEEN :P67_PERIOD_FROM AND :P67_PERIOD_TO',
' GROUP BY ORG_ID, PRJ_ID'))
,p_attribute_07=>'P67_PERIOD_FROM,P67_PERIOD_TO'
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5667184118192502)
,p_name=>'Get Exp diff'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_EXP_CURR_READ,P67_EXP_PREV_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5667092429192501)
,p_event_id=>wwv_flow_api.id(5667184118192502)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_EXP_DIFF := NVL(:P67_EXP_CURR_READ,0 ) - NVL(:P67_EXP_PREV_READ,0);'
,p_attribute_02=>'P67_EXP_CURR_READ,P67_EXP_PREV_READ'
,p_attribute_03=>'P67_EXP_DIFF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5596491027114148)
,p_name=>'EXP TOTAL'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_EXP_DIFF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5596360351114147)
,p_event_id=>wwv_flow_api.id(5596491027114148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_EXP_TOTAL := NVL(:P67_EXP_DIFF,0) * :P67_EMISSION;'
,p_attribute_02=>'P67_EXP_DIFF,P67_EMISSION'
,p_attribute_03=>'P67_EXP_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5596286936114146)
,p_name=>'NET EXP Total'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_EXP_ADJUSTMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5596225663114145)
,p_event_id=>wwv_flow_api.id(5596286936114146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_EXP_UNIT := NVL(:P67_EXP_TOTAL,0) - NVL(:P67_EXP_ADJUSTMENT,0);'
,p_attribute_02=>'P67_EXP_TOTAL,P67_EXP_ADJUSTMENT'
,p_attribute_03=>'P67_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5596079604114144)
,p_name=>'get Imp diff'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_IMP_PREV_READ,P67_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5595997708114143)
,p_event_id=>wwv_flow_api.id(5596079604114144)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_IMP_DIFF :=  NVL(:P67_IMP_CURR_READ,0)- NVL(:P67_IMP_PREV_READ,0);'
,p_attribute_02=>'P67_IMP_CURR_READ,P67_IMP_PREV_READ'
,p_attribute_03=>'P67_IMP_DIFF'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5595710089114140)
,p_name=>'GET IMP ADJ'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_IMP_ADJUSTMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5595540341114139)
,p_event_id=>wwv_flow_api.id(5595710089114140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_IMP_UNIT := NVL(:P67_IMP_TOTAL,0)- NVL(:P67_IMP_ADJUSTMENT,0);'
,p_attribute_02=>'P67_IMP_TOTAL,P67_IMP_ADJUSTMENT'
,p_attribute_03=>'P67_IMP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5595470731114138)
,p_name=>'IMP TOTAL'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_IMP_DIFF'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5595383385114137)
,p_event_id=>wwv_flow_api.id(5595470731114138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_IMP_TOTAL := NVL(:P67_IMP_DIFF,0) * :P67_EMISSION;'
,p_attribute_02=>'P67_IMP_DIFF,P67_EMISSION'
,p_attribute_03=>'P67_IMP_TOTAL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5595282029114136)
,p_name=>'Cal Net Exp Unit'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_IMP_UNIT,P67_EXP_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5595194059114135)
,p_event_id=>wwv_flow_api.id(5595282029114136)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_NET_EXPORT_UNIT := NVL(:P67_EXP_UNIT ,0)  - NVL(:P67_IMP_UNIT,0);'
,p_attribute_02=>'P67_EXP_UNIT ,P67_IMP_UNIT'
,p_attribute_03=>'P67_NET_EXPORT_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5595071792114134)
,p_name=>'Net DGM unit'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_DGM,P67_NET_EXPORT_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5594945479114133)
,p_event_id=>wwv_flow_api.id(5595071792114134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_NET_UNIT_DGM := NVL(:P67_NET_EXPORT_UNIT,0) - NVL(:P67_DGM,0);'
,p_attribute_02=>'P67_NET_EXPORT_UNIT,P67_DGM'
,p_attribute_03=>'P67_NET_UNIT_DGM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5594865589114132)
,p_name=>'Calulate Sub Amount'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_RATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5594782558114131)
,p_event_id=>wwv_flow_api.id(5594865589114132)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P67_SUB_AMOUNT := NVL(:P67_NET_UNIT_DGM,0) * NVL(:P67_RATE,0);'
,p_attribute_02=>'P67_NET_UNIT_DGM,P67_RATE'
,p_attribute_03=>'P67_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5594554097114129)
,p_name=>'GET TAX AMOUNT'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P67_TAX_APPLICABLE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5594445743114128)
,p_event_id=>wwv_flow_api.id(5594554097114129)
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
'            and   EO_ID =:P67_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P67_ITEM;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P67_ITEM, ',
'                            :P67_CUSTOMER_CODE,:P67_INVOICE_ID,NULL,''1153'' ,replace(:P67_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P64_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P64_INVOICE_ID, :P67_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P67_SUB_AMOUNT,'','',''''),replace(:P67_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P67_ACC_CUST_CODE, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P67_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P67_CUSTOMER_CODE,P67_INVOICE_ID,P67_ITEM,P67_ACC_CUST_CODE'
,p_attribute_03=>'P67_TAX_AMOUNT,P67_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5593600836114119)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>150
,p_condition_element=>'P67_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5593444515114118)
,p_event_id=>wwv_flow_api.id(5593600836114119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(5593649721114120)
,p_client_condition_type=>'NULL'
,p_client_condition_element=>'P67_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(5593383339114117)
,p_name=>'hide forward on add mode'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P67_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(5593237209114116)
,p_event_id=>wwv_flow_api.id(5593383339114117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(5593649721114120)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5592929135114112)
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
'                from DT_INVOICE_CDM ',
'                where ORG_ID = :global_comp_code ',
'                and PRJ_ID = :GLOBAL_PROJ_ID',
'                AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'            ',
'            :P67_INVOICE_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/C'' || v_code;',
'        ',
'        end;',
'',
'        ',
'        if LENGTH(:P67_INVOICE_NO) > 15 then',
'         apex_util.set_session_state(''P67_ERROR'', ''Invoice Number length geerate greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'',
'insert into DT_INVOICE_CDM',
'(',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, NU_EMISSION_FAC, EO_ID, ',
'COA_ID, DT_BILL_FROM, DT_BILL_TO, GRP_ID, ITM_ID, ITM_ID_COA, NU_EXP_PRV_READING, NU_EXP_CUR_READING, NU_EXP_DIFFERNCE, NU_EXP_TOTAL_UNIT,',
'NU_EXP_ADJUSTMENT, NU_EXP_NET_UNIT, NU_IMP_PRV_READING, NU_IMP_CUR_READING, NU_IMP_DIFFERNCE, NU_IMP_TOTAL_UNIT, NU_IMP_ADJUSTMENT, ',
'NU_IMP_NET_UNIT, NU_NET_UNIT, NU_DGM, NU_ACTUAL_DGM, NU_RATE, VC_TAX_APPLICABLE, NU_TAX_RULE_ID, NU_SUB_AMOUNT, NU_TAX_AMOUNT,',
'NU_NET_AMOUNT, USR_ID_CREATE, USR_ID_CREATE_DT,VC_REMARKS',
')',
'VALUES',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P67_INVOICE_ID, :P67_INVOICE_NO, :P67_INVOICE_DATE, :P67_CDM_REG_NO, :P67_CDM_REG_ISSUR_DATE, :P67_CDM_REG_EXP_DATE,:P67_EMISSION,:P67_CUSTOMER_CODE,',
':P67_ACC_CUST_CODE, :P67_PERIOD_FROM, :P67_PERIOD_TO, :P67_ITEM_GROUP, :P67_ITEM, :P67_ITEM_ACC_CODE, :P67_EXP_PREV_READ, :P67_EXP_CURR_READ, :P67_EXP_DIFF,:P67_EXP_TOTAL,',
':P67_EXP_ADJUSTMENT,:P67_EXP_UNIT, :P67_IMP_PREV_READ, :P67_IMP_CURR_READ, :P67_IMP_DIFF, :P67_IMP_TOTAL, :P67_IMP_ADJUSTMENT,',
':P67_IMP_UNIT,:P67_NET_EXPORT_UNIT,:P67_DGM, :P67_NET_UNIT_DGM, :P67_RATE, :P67_TAX_APPLICABLE, :P67_TAX_RULE_ID, :P67_SUB_AMOUNT, :P67_TAX_AMOUNT,',
':P67_NET_AMOUNT,:GOBAL_USER_CODE,SYSDATE,:P67_REMARKS',
'',
');',
'',
'',
'    if :P30_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P67_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P67_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P67_ITEM;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P67_ITEM, ',
'                                        :P67_CUSTOMER_CODE,:P67_INVOICE_ID,NULL,''1153'' ,replace(:P67_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P64_INVOICE_ID, :P67_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P67_SUB_AMOUNT,'','',''''),replace(:P67_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P67_ACC_CUST_CODE, NULL, ',
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
'                        AND DOC_ID        = :P67_INVOICE_ID',
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
,p_process_error_message=>'&P67_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5667591763192506)
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5592829665114111)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'',
'begin',
'update  DT_INVOICE_CDM',
'set ',
'',
'VC_REG_NO           = :P67_CDM_REG_NO,',
'DT_REG_ISS_DATE     = :P67_CDM_REG_ISSUR_DATE,',
'DT_REG_EXP_DATE     = :P67_CDM_REG_EXP_DATE,',
'NU_EMISSION_FAC     = :P67_EMISSION,',
'EO_ID               =  :P67_CUSTOMER_CODE,',
'COA_ID              =  :P67_ACC_CUST_CODE,',
'DT_BILL_FROM        =  :P67_PERIOD_FROM,',
'DT_BILL_TO          =  :P67_PERIOD_TO,',
'GRP_ID              =  :P67_ITEM_GROUP,',
'ITM_ID              =  :P67_ITEM,',
'ITM_ID_COA          =  :P67_ITEM_ACC_CODE,',
'',
'NU_EXP_PRV_READING  =  :P67_EXP_PREV_READ,',
'NU_EXP_CUR_READING  =  :P67_EXP_CURR_READ, ',
'NU_EXP_DIFFERNCE    =  :P67_EXP_DIFF,',
'NU_EXP_TOTAL_UNIT   =  :P67_EXP_TOTAL,',
'NU_EXP_ADJUSTMENT   =  :P67_EXP_ADJUSTMENT,',
'NU_EXP_NET_UNIT     =  :P67_EXP_UNIT,',
'NU_IMP_PRV_READING  =  :P67_IMP_PREV_READ,',
'NU_IMP_CUR_READING  =  :P67_IMP_CURR_READ,',
'NU_IMP_DIFFERNCE    =  :P67_IMP_DIFF,',
'NU_IMP_TOTAL_UNIT   =  :P67_IMP_TOTAL,',
'NU_IMP_ADJUSTMENT   =  :P67_IMP_ADJUSTMENT,',
'NU_IMP_NET_UNIT     =  :P67_IMP_UNIT,',
'NU_NET_UNIT         =  :P67_NET_EXPORT_UNIT,',
'NU_DGM              =  :P67_DGM ,',
'NU_ACTUAL_DGM       =  :P67_NET_UNIT_DGM,',
'NU_RATE             = :P67_RATE,',
'VC_TAX_APPLICABLE   = :P67_TAX_APPLICABLE,',
'NU_TAX_RULE_ID      = :P67_TAX_RULE_ID,',
'NU_SUB_AMOUNT       = :P67_SUB_AMOUNT,',
'NU_TAX_AMOUNT       = :P67_TAX_AMOUNT,',
'NU_NET_AMOUNT       = :P67_NET_AMOUNT,',
'USR_ID_MOD_DT       = SYSDATE,',
'USR_ID_MOD          = :GLOBAL_USER_CODE,',
'VC_REMARKS          = :P67_REMARKS',
'',
'where ORG_ID        = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P67_INVOICE_NO',
'and DT_INVOICE_DATE = :P67_INVOICE_DATE;',
'',
'  if :P67_TAX_APPLICABLE = ''Y'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P67_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P67_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P67_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P67_ITEM;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P67_ITEM, ',
'                                        :P67_CUSTOMER_CODE,:P67_INVOICE_ID,NULL,''1153'' ,replace(:P67_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P67_INVOICE_ID, :P67_ITEM, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P67_SUB_AMOUNT,'','',''''),replace(:P67_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P67_ACC_CUST_CODE, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P67_INVOICE_ID',
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
'    if :P67_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P67_INVOICE_ID;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(5667591763192506)
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5592660166114110)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'Clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5667923126192509)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get inro om mode A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select',
'VC_REG_NO,',
'DT_REG_ISS_DATE,',
'DT_REG_EXP_DATE,',
'NU_EMISSION_FAC',
'',
'INTO',
':P67_CDM_REG_NO,',
':P67_CDM_REG_ISSUR_DATE,',
':P67_CDM_REG_EXP_DATE,',
':P67_EMISSION',
'from MST_REC_CDM',
'where ',
'ORG_ID      = :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'AND CH_TYPE = ''C''',
'AND VC_STATUS = ''O'';',
'exception when no_data_found then null;',
'end;',
'',
':P67_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5592617544114109)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  ',
'',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_REG_NO, DT_REG_ISS_DATE, DT_REG_EXP_DATE, NU_EMISSION_FAC, EO_ID, ',
'COA_ID, DT_BILL_FROM, DT_BILL_TO, GRP_ID, ITM_ID, ITM_ID_COA, NU_EXP_PRV_READING, NU_EXP_CUR_READING, NU_EXP_DIFFERNCE, NU_EXP_TOTAL_UNIT,',
'NU_EXP_ADJUSTMENT, NU_EXP_NET_UNIT, NU_IMP_PRV_READING, NU_IMP_CUR_READING, NU_IMP_DIFFERNCE, NU_IMP_TOTAL_UNIT, NU_IMP_ADJUSTMENT, ',
'NU_IMP_NET_UNIT, NU_NET_UNIT, NU_DGM, NU_ACTUAL_DGM, NU_RATE, VC_TAX_APPLICABLE, NU_TAX_RULE_ID, NU_SUB_AMOUNT, NU_TAX_AMOUNT,',
'NU_NET_AMOUNT,VC_REMARKS',
'',
'into',
'',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P67_INVOICE_ID, :P67_INVOICE_NO, :P67_INVOICE_DATE, :P67_CDM_REG_NO, :P67_CDM_REG_ISSUR_DATE, :P67_CDM_REG_EXP_DATE,:P67_EMISSION,:P67_CUSTOMER_CODE,',
':P67_ACC_CUST_CODE, :P67_PERIOD_FROM, :P67_PERIOD_TO, :P67_ITEM_GROUP, :P67_ITEM, :P67_ITEM_ACC_CODE, :P67_EXP_PREV_READ, :P67_EXP_CURR_READ, :P67_EXP_DIFF,:P67_EXP_TOTAL,',
':P67_EXP_ADJUSTMENT,:P67_EXP_UNIT, :P67_IMP_PREV_READ, :P67_IMP_CURR_READ, :P67_IMP_DIFF, :P67_IMP_TOTAL, :P67_IMP_ADJUSTMENT,',
':P67_IMP_UNIT,:P67_NET_EXPORT_UNIT,:P67_DGM, :P67_NET_UNIT_DGM, :P67_RATE, :P67_TAX_APPLICABLE, :P67_TAX_RULE_ID, :P67_SUB_AMOUNT, :P67_TAX_AMOUNT,',
':P67_NET_AMOUNT,:P67_REMARKS',
'',
'from',
'DT_INVOICE_CDM',
'where ORG_ID        = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P67_INVOICE_NO',
'and DT_INVOICE_DATE = :P67_INVOICE_DATE;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5594377869114127)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P67_WKF_STAGE',
'from  DT_INV_IEX',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P67_INVOICE_NO',
'and  DT_INVOICE_DATE = :P67_INVOICE_DATE;',
'exception when no_data_found then :P67_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(5594268232114126)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P67_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P67_INVOICE_NO',
'AND      DT_DOC_DATE = :P67_INVOICE_DATE',
'AND      VC_DOC_TYPE  = ''REC'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P67_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
