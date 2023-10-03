prompt --application/pages/page_00055
begin
--   Manifest
--     PAGE: 00055
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
 p_id=>55
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'DSM Charges'
,p_alias=>'DSM-CHARGES'
,p_step_title=>'DSM Charges'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-group--file-inline .apex-item-filedrop {',
'    -ms-flex-direction: row;',
'    flex-direction: row;',
'    BACKGROUND: WHITE;',
'}',
'',
'',
'#ETMSREG .t-fht-thead{',
'overflow: auto !important;',
'}',
'',
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
,p_last_updated_by=>'AAKASH'
,p_last_upd_yyyymmddhh24miss=>'20220128112655'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1336218705835333)
,p_plug_name=>'DSM'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P55_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1336502626835336)
,p_plug_name=>'Detail'
,p_region_name=>'ETMSREG'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'c001,',
'c002 ,',
'C003 ,',
' TRIM(TO_CHAR(c004,''999G999G999G999G990D00'')) coo4,',
' TRIM(TO_CHAR(c005,''999G999G999G999G990D00'')) c005 ,',
' TRIM(TO_CHAR(c006,''999G999G999G999G990D00'')) c006,',
'TRIM(TO_CHAR(c007,''999G999G999G999G990D000'')) c007 ,',
'c008,',
'c009 ,',
'c010 ,',
'c011 ,',
'c012 , ',
'c013  ,',
'c014 ,',
'TRIM(TO_CHAR(c015,''999G999G999G999G990D0'')) c015  ,',
'TRIM(TO_CHAR(c016,''999G999G999G999G990D00'')) c016 ,   ',
'TRIM(TO_CHAR(c017,''999G999G999G999G990D00'')) c017 ,',
'c018,  ',
'c019  , ',
'c020 , ',
'TRIM(TO_CHAR(c021,''999G999G999G999G990D00'')) c021  ,   ',
'TRIM(TO_CHAR(c022,''999G999G999G999G990D00'')) c022  ,   ',
'c023    ,',
'TRIM(TO_CHAR(c024,''999G999G999G999G990D0000000'')) c024   ,   ',
'c025  ,   ',
'TRIM(TO_CHAR(c026,''999G999G999G999G990D00'')) c026  ,      ',
'TRIM(TO_CHAR(c027,''999G999G999G999G990D00'')) c027  ,',
'TRIM(TO_CHAR(c028,''999G999G999G999G990D00'')) c028  ',
' from apex_collections ',
' where COLLECTION_NAME=''DSM''',
' order by to_number(c001); ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Detail'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(1336562787835337)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>38042297562359987
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17539933649373952)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Time Block'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17539529007373949)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'From'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17539061321373949)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17525079077361422)
,p_db_column_name=>'COO4'
,p_display_order=>40
,p_column_identifier=>'AE'
,p_column_label=>'Forecast Load (MW)- as per NRLDC Files - Input'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17538247267373948)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Forecast Load (MW)- as per NRLDC Files'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17537928253373947)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Forcasted Energy (KWH)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17537522165373947)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Actual Load (KW) at Phozal - MRI Data  '
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17537125276373946)
,p_db_column_name=>'C008'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Actual Load (MW) at Phozal - MRI Data  '
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17536686792373946)
,p_db_column_name=>'C009'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Less : HPPTCL (STU) Loss (VARIABLE)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17536325667373946)
,p_db_column_name=>'C010'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Less: AD Hydro Loss (VARIABLE)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17535916076373945)
,p_db_column_name=>'C011'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Actual Load (KWh) at HP periphery'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17535455686373945)
,p_db_column_name=>'C012'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Frequency'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17535109658373944)
,p_db_column_name=>'C013'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Deviation(KWH)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17534707220373944)
,p_db_column_name=>'C014'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Under injection(KWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17534237475373943)
,p_db_column_name=>'C015'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Over injection(KWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17533868283373943)
,p_db_column_name=>'C016'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Under injection(%)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17533506442373942)
,p_db_column_name=>'C017'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Over Injection(%)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17533109301373942)
,p_db_column_name=>'C018'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Deviation Charge (Rs./KWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17532649469373941)
,p_db_column_name=>'C019'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Actual Rate (Rs./KWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17532239536373941)
,p_db_column_name=>'C020'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Underinjection charges (Rs)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17531866026373940)
,p_db_column_name=>'C021'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'OverInjection (Rs)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17531445189373940)
,p_db_column_name=>'C022'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Additional Deviation Charges (Rs.)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17531045585373939)
,p_db_column_name=>'C023'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Net Payable by KPCPL (Rs)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17530652339373939)
,p_db_column_name=>'C024'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'As per HPSLDC Calculation (Paise/kWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17530330185373939)
,p_db_column_name=>'C025'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'As per HPSLDC Calculation (Rs./kWh)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17529897556373938)
,p_db_column_name=>'C026'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Difference (Rs.)'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17529526489373938)
,p_db_column_name=>'C027'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Sustained Deviation 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17529079296373937)
,p_db_column_name=>'C028'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Sustained Deviation 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1397545574151921)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'191770'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'C001:C002:C003:COO4:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17527413891361445)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(1336218705835333)
,p_button_name=>'UPload'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'File Upload'
,p_button_redirect_url=>'f?p=&APP_ID.:56:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P55_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-upload-alt'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17493537481944271)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1336218705835333)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17493258299942637)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(1336218705835333)
,p_button_name=>'Save'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P30_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(17526042569361432)
,p_branch_name=>'goto'
,p_branch_action=>'f?p=&APP_ID.:57:&SESSION.::&DEBUG.:55::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17540599397373960)
,p_name=>'P55_FILE_BROWSER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1336218705835333)
,p_prompt=>'File Browser'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17527688882361448)
,p_name=>'P55_DOCUMENT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1336218705835333)
,p_prompt=>'Document Number'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17527632051361447)
,p_name=>'P55_DOCUMENT_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1336218705835333)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Document Date'
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
 p_id=>wwv_flow_api.id(17527454472361446)
,p_name=>'P55_DEVI_CHARGES'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1336218705835333)
,p_prompt=>'Deviation Charges'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17525982171361431)
,p_name=>'P55_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1336218705835333)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17308313372859126)
,p_validation_name=>'charge_vali'
,p_validation_sequence=>10
,p_validation=>'P55_DEVI_CHARGES'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Enter Deviation Charge.'
,p_when_button_pressed=>wwv_flow_api.id(17493258299942637)
,p_associated_item=>wwv_flow_api.id(17527454472361446)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17308234746859125)
,p_validation_name=>'Detail_vali'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'r number;',
'begin',
'select count(*) into r from apex_collections',
'where COLLECTION_NAME=''DSM''; ',
'    if r < 1 then',
'        return ''Please Upload file.'';',
'    end if;',
'    return null;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(17493258299942637)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17308075622859124)
,p_validation_name=>'Date_vali'
,p_validation_sequence=>30
,p_validation=>'P55_DOCUMENT_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Select Document Date.'
,p_when_button_pressed=>wwv_flow_api.id(17493258299942637)
,p_associated_item=>wwv_flow_api.id(17527632051361447)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17527096582361442)
,p_name=>'Refesh'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>wwv_flow_string.join(wwv_flow_t_varchar2(
'window',
''))
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17526983460361441)
,p_event_id=>wwv_flow_api.id(17527096582361442)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(1336502626835336)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17525596240361427)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'cursor c1 is',
'       SELECT c001,c002 ,C003 ,C004 ,c005 ,c006 ,c007 ,c008,c009 ,c010 ,c011 ,c012 , ',
'              c013 ,c014 ,c015 ,c016 ,c017 ,c018, c019, c020, c021, c022, c023 ,c024,   ',
'              c025 ,c026 ,c027 ,c028  ',
'       from apex_collections ',
'       where COLLECTION_NAME=''DSM''; ',
'',
'',
'BEGIN ',
'select nvl(max(NU_DOC_NO),0)+1 into :P55_DOCUMENT_NO from hd_dsm WHERE ORG_ID = :GLOBAL_COMP_CODE AND PRJ_ID = :GLOBAL_PROJ_ID;',
'INSERT INTO HD_DSM',
'    (',
'    ORG_ID, PRJ_ID, NU_DOC_NO,DT_DOC_DATE , NU_CHRG_DEVT, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, ',
'    USR_ID_MOD_DT, HO_ORG_ID     ',
'    )',
'values(',
'   :GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P55_DOCUMENT_NO,:P55_DOCUMENT_DATE,:P55_DEVI_CHARGES,:GLOBAL_USER_CODE,SYSDATE,:GLOBAL_USER_CODE, ',
'   sysdate , :GLOBAL_PARENT_COMP',
'   );',
'',
'',
'',
'FOR I IN C1 LOOP ',
'',
'    insert into dt_dsm(',
'    ORG_ID ,PRJ_ID ,NU_DOC_NO ,DT_DOC_DATE ,VC_TM_BLK ,VC_TM_DESC_FROM ,VC_TM_DESC_TO ,NU_FORECAST_LOAD_IN ,',
'    NU_FORECAST_LOAD ,NU_FORRCAST_ENERGY, NU_ACTUAL_LOAD_IN  ,NU_ACTUAL_LOAD ,NU_HPPTCL_LOSS ,',
'    NU_AD_HYDRO_LOSS ,NU_ACTUAL_LOAD_HP, NU_FREQUENCY ,NU_DEVIATION ,NU_UNDER_INJECTION ,NU_OVER_INJECTION ,',
'    VC_UNDER_INJECTION_PER ,VC_OVER_INJECTION_PER ,NU_DEVIATION_CHARGE ,NU_ACTUAL_RATE ,NU_UNDER_INJECTION_CHRG ,',
'    NU_OVER_INJECTION_RS ,NU_ADTN_DEVIATION_CHRG ,NU_NET_PAYABLE_KPCPL ,NU_HPSLDC_CALCULATION_PAISE ,NU_HPSLDC_CALCULATION_RS ,',
'    NU_DIFFRENCE_RS ,NU_SUBSTAINED_DEVI_1 ,NU_SUBSTAINED_DEVI_2 ,USR_ID_CREATE  , USR_ID_CREATE_DT , VC_AUTH_CODE    , ',
'	USR_ID_MOD_DT  ,HO_ORG_ID     ',
')',
'    values(',
'    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P55_DOCUMENT_NO, :P55_DOCUMENT_DATE, I.c001, I.c002 ,I.C003 ,I.C004 ,',
'    I.c005 ,I.c006 ,I.c007 ,I.c008,I.c009 ,',
'    I.c010 ,I.c011 ,I.c012 , I.c013  ,I.c014 ,I.c015  ,',
'    I.c016 ,I.c017 ,I.c018, I.c019, I.c020 ,',
'    I.c021  ,I.c022  ,I.c023    ,I.c024   ,I.c025  ,   ',
'    I.c026  ,I.c027  ,I.c028  ,:GLOBAL_USER_CODE,SYSDATE, :GLOBAL_USER_CODE, ',
'    sysdate , :GLOBAL_PARENT_COMP',
'    );',
'END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17493258299942637)
,p_process_when=>'P55_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17525342970361425)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete  from dt_dsm ',
'where  ORG_ID = :GLOBAL_COMP_CODE and ',
'	PRJ_ID =:GLOBAL_PROJ_ID and  ',
'	NU_DOC_NO =:P55_DOCUMENT_NO ;  ',
'	--DT_DOC_DATE =:P55_DOCUMENT_DATE;',
'',
'update hd_dsm ',
'set ',
'NU_CHRG_DEVT = :P55_DEVI_CHARGES ,',
'USR_ID_MOD_DT = sysdate,',
'DT_DOC_DATE =:P55_DOCUMENT_DATE',
'where',
'	ORG_ID = :GLOBAL_COMP_CODE and ',
'	PRJ_ID =:GLOBAL_PROJ_ID and ',
'	NU_DOC_NO =:P55_DOCUMENT_NO ;',
'	--DT_DOC_DATE =:P55_DOCUMENT_DATE;',
'',
'',
'',
'declare',
' cursor c1 is',
'       SELECT c001,c002 ,C003 ,C004 ,c005 ,c006 ,c007 ,c008,c009 ,c010 ,c011 ,c012 , ',
'              c013 ,c014 ,c015 ,c016 ,c017 ,c018, c019, c020, c021, c022, c023 ,c024,   ',
'              c025 ,c026 ,c027 ,c028  ',
'       from apex_collections ',
'       where COLLECTION_NAME=''DSM''; ',
'',
'',
'BEGIN ',
'FOR I IN C1 LOOP ',
'',
'    insert into dt_dsm(',
'    ORG_ID ,PRJ_ID ,NU_DOC_NO ,DT_DOC_DATE ,VC_TM_BLK ,VC_TM_DESC_FROM ,VC_TM_DESC_TO ,NU_FORECAST_LOAD_IN ,',
'    NU_FORECAST_LOAD ,NU_FORRCAST_ENERGY, NU_ACTUAL_LOAD_IN  ,NU_ACTUAL_LOAD ,NU_HPPTCL_LOSS ,',
'    NU_AD_HYDRO_LOSS ,NU_ACTUAL_LOAD_HP, NU_FREQUENCY ,NU_DEVIATION ,NU_UNDER_INJECTION ,NU_OVER_INJECTION ,',
'    VC_UNDER_INJECTION_PER ,VC_OVER_INJECTION_PER ,NU_DEVIATION_CHARGE ,NU_ACTUAL_RATE ,NU_UNDER_INJECTION_CHRG ,',
'    NU_OVER_INJECTION_RS ,NU_ADTN_DEVIATION_CHRG ,NU_NET_PAYABLE_KPCPL ,NU_HPSLDC_CALCULATION_PAISE ,NU_HPSLDC_CALCULATION_RS ,',
'    NU_DIFFRENCE_RS ,NU_SUBSTAINED_DEVI_1 ,NU_SUBSTAINED_DEVI_2 ,USR_ID_CREATE  , USR_ID_CREATE_DT , VC_AUTH_CODE    , ',
'	USR_ID_MOD_DT  ,HO_ORG_ID     ',
')',
'    values(',
'    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P55_DOCUMENT_NO, :P55_DOCUMENT_DATE, I.c001, I.c002 ,I.C003 ,I.C004 ,',
'    I.c005 ,I.c006 ,I.c007 ,I.c008,I.c009 ,',
'    I.c010 ,I.c011 ,I.c012 , I.c013  ,I.c014 ,I.c015  ,',
'    I.c016 ,I.c017 ,I.c018, I.c019, I.c020 ,',
'    I.c021  ,I.c022  ,I.c023    ,I.c024   ,I.c025  ,   ',
'    I.c026  ,I.c027  ,I.c028  ,:GLOBAL_USER_CODE,SYSDATE, :GLOBAL_USER_CODE, ',
'    sysdate , :GLOBAL_PARENT_COMP',
'    );',
'',
'END LOOP;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(17493258299942637)
,p_process_when=>'P55_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17525695530361428)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DSM'');',
'END IF;  ',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17525462758361426)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare  ',
'cursor x is',
'select ',
' VC_TM_BLK ,',
'        VC_TM_DESC_FROM ,',
'        VC_TM_DESC_TO ,',
'        NU_FORECAST_LOAD_IN ,',
'        NU_FORECAST_LOAD ,',
'        NU_FORRCAST_ENERGY, ',
'        NU_ACTUAL_LOAD_IN  ,',
'        NU_ACTUAL_LOAD ,',
'        NU_HPPTCL_LOSS ,',
'        NU_AD_HYDRO_LOSS ,',
'        NU_ACTUAL_LOAD_HP, ',
'        NU_FREQUENCY ,',
'        NU_DEVIATION ,',
'        NU_UNDER_INJECTION ,',
'        NU_OVER_INJECTION ,',
'        VC_UNDER_INJECTION_PER ,',
'        VC_OVER_INJECTION_PER ,',
'        NU_DEVIATION_CHARGE ,',
'        NU_ACTUAL_RATE ,',
'        NU_UNDER_INJECTION_CHRG ,',
'        NU_OVER_INJECTION_RS ,',
'        NU_ADTN_DEVIATION_CHRG ,',
'        NU_NET_PAYABLE_KPCPL ,',
'        NU_HPSLDC_CALCULATION_PAISE ,',
'        NU_HPSLDC_CALCULATION_RS ,',
'        NU_DIFFRENCE_RS ,',
'        NU_SUBSTAINED_DEVI_1 ,',
'        NU_SUBSTAINED_DEVI_2 ',
'from dt_dsm',
'where',
'	ORG_ID = :GLOBAL_COMP_CODE AND ',
'	PRJ_ID =:GLOBAL_PROJ_ID AND',
'	NU_DOC_NO =:P55_DOCUMENT_NO AND ',
'	DT_DOC_DATE =:P55_DOCUMENT_DATE;',
'',
'begin',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DSM'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DSM'');',
'END IF;',
'',
'for I in x',
'loop ',
'',
'  APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DSM'',',
'            p_c001            =>I.VC_TM_BLK ,',
'            p_c002            =>I.VC_TM_DESC_FROM ,',
'            p_c003            =>I.VC_TM_DESC_TO ,',
'            p_c004            =>I.NU_FORECAST_LOAD_IN ,',
'            p_c005            =>I.NU_FORECAST_LOAD ,',
'            p_c006            =>I.NU_FORRCAST_ENERGY, ',
'            p_c007            =>I.NU_ACTUAL_LOAD_IN  ,',
'            p_c008            =>I.NU_ACTUAL_LOAD ,',
'            p_c009            =>I.NU_HPPTCL_LOSS ,',
'            p_c010            =>I.NU_AD_HYDRO_LOSS ,',
'            p_c011            =>I.NU_ACTUAL_LOAD_HP, ',
'            p_c012            =>I.NU_FREQUENCY ,',
'            p_c013            =>I.NU_DEVIATION ,',
'            p_c014            =>I.NU_UNDER_INJECTION ,',
'            p_c015            =>I.NU_OVER_INJECTION ,',
'            p_c016            =>I.VC_UNDER_INJECTION_PER ,',
'            p_c017            =>I.VC_OVER_INJECTION_PER ,',
'            p_c018            =>I.NU_DEVIATION_CHARGE ,',
'            p_c019            =>I.NU_ACTUAL_RATE ,',
'            p_c020            =>I.NU_UNDER_INJECTION_CHRG ,',
'            p_c021            =>I.NU_OVER_INJECTION_RS ,',
'            p_c022            =>I.NU_ADTN_DEVIATION_CHRG ,',
'            p_c023            =>I.NU_NET_PAYABLE_KPCPL ,',
'            p_c024            =>I.NU_HPSLDC_CALCULATION_PAISE ,',
'            p_c025            =>I.NU_HPSLDC_CALCULATION_RS ,',
'            p_c026            =>I.NU_DIFFRENCE_RS ,',
'            p_c027            =>I.NU_SUBSTAINED_DEVI_1 ,',
'            p_c028            =>I.NU_SUBSTAINED_DEVI_2 );',
'END LOOP;',
'END;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P55_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
