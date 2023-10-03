prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Schedule'
,p_alias=>'SCHEDULE'
,p_step_title=>'Schedule'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
'}',
'',
'',
'#btn:focus{',
'    --a-button-zindex: 110;',
'    --a-button-state-background-color: transparent !important;',
'    --a-button-state-text-color: transparent !important;;',
'    --a-button-state-border-color: transparent !important;',
'    --a-button-state-shadow: none !important ;',
'}',
'',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230825132500'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33664128624509375)
,p_plug_name=>'Schedule'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P35_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33544225636391665)
,p_plug_name=>'Final Detail'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "border-color: black;border:1px solid"'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 as "From State/Station",',
'c002 as "From Utility",',
'c003 as "To State",',
'c004 as "To Utility",',
'c005 as " Ex-Seller",',
'c006 as " Applicant",',
'c007 as "OA Code"',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''FILE_FINAL_MAIN''; ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Final Detail'
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
 p_id=>wwv_flow_api.id(33544057668391664)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>51896925055653989
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1523059970163036)
,p_db_column_name=>'From State/Station'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'From State&#x2F;station'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1522728254163036)
,p_db_column_name=>'From Utility'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'From Utility'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1522289469163037)
,p_db_column_name=>'To State'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'To State'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1520725374163039)
,p_db_column_name=>'To Utility'
,p_display_order=>40
,p_column_identifier=>'H'
,p_column_label=>'To Utility'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1521883202163037)
,p_db_column_name=>' Ex-Seller'
,p_display_order=>50
,p_column_identifier=>'D'
,p_column_label=>' Ex-seller'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1521515068163038)
,p_db_column_name=>' Applicant'
,p_display_order=>60
,p_column_identifier=>'E'
,p_column_label=>' Applicant'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1521034292163038)
,p_db_column_name=>'OA Code'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'OA Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33514025292988314)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'61711'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'From State/Station:From Utility:To State:To Utility: Ex-Seller: Applicant:OA Code:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33659372423509328)
,p_plug_name=>'Prov detail Total'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody:margin-top-sm'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33660932157509343)
,p_plug_name=>'Prov-Detail'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "border-color: black;border:1px solid"'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 as TIME_BLOCK,',
'c002 as TIME_DESC,',
'c003 as UNIT',
'',
' from apex_collections ',
' where COLLECTION_NAME=''FILE_PROV_DETAIL''; ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Prov-Detail'
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
 p_id=>wwv_flow_api.id(33660854370509342)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>52013721757771667
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1518296431163043)
,p_db_column_name=>'TIME_BLOCK'
,p_display_order=>10
,p_column_identifier=>'D'
,p_column_label=>'Time Block'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1517858883163043)
,p_db_column_name=>'TIME_DESC'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'Time Description'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1517496139163044)
,p_db_column_name=>'UNIT'
,p_display_order=>30
,p_column_identifier=>'F'
,p_column_label=>'Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33604200773981225)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'60809'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'TIME_BLOCK:TIME_DESC:UNIT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33662887254509363)
,p_plug_name=>'Final'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;border:1px solid"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33663662630509371)
,p_plug_name=>'Provisional'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33932579729728053)
,p_plug_name=>'Invoice IEX'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;border:1px solid"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33933528910728063)
,p_plug_name=>'IEX Detail'
,p_parent_plug_id=>wwv_flow_api.id(33664128624509375)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_region_attributes=>'style = "border-color: black;border:1px solid"'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'rownum,',
'c001 as "PERIOD",',
'c002 as "QTY",',
'c003 as "AMOUNT"',
'',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''SCH_IEX''; ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(33933670059728064)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>52286537446990389
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1505981380163061)
,p_db_column_name=>'PERIOD'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1506387974163060)
,p_db_column_name=>'QTY'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Qty'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1506736166163059)
,p_db_column_name=>'AMOUNT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Amount'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1507203344163059)
,p_db_column_name=>'ROWNUM'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'S.No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(33947289295847388)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'126152'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'ROWNUM:PERIOD:QTY:AMOUNT:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1508164622163057)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33932579729728053)
,p_button_name=>'Upload-IEX'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Upload File'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_MODE:I'
,p_button_condition=>'P35_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-upload fa-2x'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1510500582163054)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33663662630509371)
,p_button_name=>'Upload-Prov'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Upload File'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_MODE:P'
,p_button_condition=>'P35_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-upload fa-2x'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1515555401163047)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33662887254509363)
,p_button_name=>'Upload-final'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Upload File'
,p_button_redirect_url=>'f?p=&APP_ID.:36:&SESSION.::&DEBUG.::P36_MODE:F'
,p_button_condition=>'P35_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-upload fa-2x'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1500835205163068)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(33664128624509375)
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
 p_id=>wwv_flow_api.id(1501300476163067)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33664128624509375)
,p_button_name=>'FORWRD'
,p_button_static_id=>'btn_fwrd'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P35_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P35_REQ_NO.,&P35_SCHEDULE_NO.,&P35_SCHEDULE_DATE.,SCH,&P35_LAST_PAGE.,&P35_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1501689009163067)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(33664128624509375)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P35_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1559650888162994)
,p_branch_action=>'f?p=&APP_ID.:34:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1502064967163066)
,p_name=>'P35_LABEL_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P35_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1502433129163065)
,p_name=>'P35_AUTH_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1502852793163065)
,p_name=>'P35_LAST_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1503300997163065)
,p_name=>'P35_REQ_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1503701542163064)
,p_name=>'P35_WKF_STAGE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1504076236163064)
,p_name=>'P35_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1504509739163063)
,p_name=>'P35_TYPE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_prompt=>'Schedule Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Provisional;P,Final;F,Exchange;I'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1504878875163063)
,p_name=>'P35_PPA_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_prompt=>'PPA Date'
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
 p_id=>wwv_flow_api.id(1505248724163062)
,p_name=>'P35_PPA_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33664128624509375)
,p_prompt=>'PPA No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PPA_SCH'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''S''',
'and  ch_auth_flag = ''Y''',
'and  :P35_TYPE <> ''I''',
'union all',
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''I''',
'and  ch_auth_flag = ''Y''',
'and  :P35_TYPE = ''I''',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P35_TYPE'
,p_ajax_items_to_submit=>'P35_TYPE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_10=>'DT_PPA_DATE:P35_PPA_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1508567825163056)
,p_name=>'P35_MARKET_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33932579729728053)
,p_prompt=>'Market Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC: RTM;RTM,DAM;DAM,GDAM;GDAM,GTAM;GTAM,TAM;TAM'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1508947825163056)
,p_name=>'P35_SCH_IEX_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33932579729728053)
,p_prompt=>'Schedule Date'
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
 p_id=>wwv_flow_api.id(1509399021163055)
,p_name=>'P35_IEX_TOTAL_UNIT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33932579729728053)
,p_prompt=>'Total Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(1509802695163055)
,p_name=>'P35_IEX_TOTAL_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(33932579729728053)
,p_prompt=>'Total Amount'
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
 p_id=>wwv_flow_api.id(1510834862163053)
,p_name=>'P35_PROV_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'Provisional Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:DAM;DAM,Contigency;Contigency'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1511269178163052)
,p_name=>'P35_PROV_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'Prov. Schedule Date'
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
 p_id=>wwv_flow_api.id(1511703693163052)
,p_name=>'P35_SCHEDULE_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1512128819163051)
,p_name=>'P35_MWHR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'MWH'
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
 p_id=>wwv_flow_api.id(1512440515163051)
,p_name=>'P35_SCHEDULE_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1512833098163050)
,p_name=>'P35_APPR_NO'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'Appr. No'
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
 p_id=>wwv_flow_api.id(1513300980163050)
,p_name=>'P35_IR_LINK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'IR Link'
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
 p_id=>wwv_flow_api.id(1513707655163050)
,p_name=>'P35_TO_UTILITY'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'To Utility'
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
 p_id=>wwv_flow_api.id(1514052168163049)
,p_name=>'P35_TO_STATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'To State'
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
 p_id=>wwv_flow_api.id(1514433405163049)
,p_name=>'P35_FROM_UTILITY'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'From Utility'
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
 p_id=>wwv_flow_api.id(1514906241163048)
,p_name=>'P35_FROM_STATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(33663662630509371)
,p_prompt=>'From State'
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
 p_id=>wwv_flow_api.id(1516012381163046)
,p_name=>'P35_MWHR_FINAL'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33662887254509363)
,p_prompt=>'MWH'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(1516360615163046)
,p_name=>'P35_PERIOD_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33662887254509363)
,p_prompt=>'Period To'
,p_format_mask=>'DD-MM-YYYY'
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
 p_id=>wwv_flow_api.id(1516797435163045)
,p_name=>'P35_PERIOD_FROM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33662887254509363)
,p_prompt=>'Period From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDPA'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_10=>'showDropdowns'
,p_attribute_14=>'P35_PERIOD_TO'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1519151339163041)
,p_name=>'P35_MAX'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(33659372423509328)
,p_prompt=>'MAX'
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
 p_id=>wwv_flow_api.id(1519550148163040)
,p_name=>'P35_MIN'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(33659372423509328)
,p_prompt=>'MIN'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1519984641163040)
,p_name=>'P35_AVG'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(33659372423509328)
,p_prompt=>'AVG'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1532698798163025)
,p_validation_name=>'from stage not null'
,p_validation_sequence=>10
,p_validation=>'P35_FROM_STATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'From State Cannot be null'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1514906241163048)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1532266923163025)
,p_validation_name=>'FROM UTILITY CANNOT BE NULL'
,p_validation_sequence=>20
,p_validation=>'P35_FROM_UTILITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'From utility cannot be null'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1514433405163049)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1531878683163025)
,p_validation_name=>'to state cannot be null'
,p_validation_sequence=>30
,p_validation=>'P35_TO_STATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'To State cannot be null'
,p_validation_condition=>'P35_TO_STATE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1514052168163049)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1531531233163026)
,p_validation_name=>'TO Utility'
,p_validation_sequence=>40
,p_validation=>'P35_TO_UTILITY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'To Utility cannot be null'
,p_validation_condition=>'P35_TO_UTILITY'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1513707655163050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1531043101163026)
,p_validation_name=>'IR Link not null'
,p_validation_sequence=>50
,p_validation=>'P35_IR_LINK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'IR LINK cannot be null'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1513300980163050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1530688669163027)
,p_validation_name=>'APPR NO cannot be null'
,p_validation_sequence=>60
,p_validation=>'P35_APPR_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Appr No cannot be null'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1512833098163050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1530252632163027)
,p_validation_name=>'MWHR'
,p_validation_sequence=>70
,p_validation=>'P35_MWHR'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'MWHR Cannot be null or zero'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1512128819163051)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1529888983163027)
,p_validation_name=>'MIN cannot be null'
,p_validation_sequence=>80
,p_validation=>'P35_MIN'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Min cannot be null'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1519550148163040)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1529525068163028)
,p_validation_name=>'Max cannot be null'
,p_validation_sequence=>90
,p_validation=>'P35_MAX'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Max cannot be null'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1519151339163041)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1529126198163028)
,p_validation_name=>'Avg cannot be null'
,p_validation_sequence=>100
,p_validation=>'P35_AVG'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Avg cannot be null'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1519984641163040)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1528724281163029)
,p_validation_name=>'check prov detail '
,p_validation_sequence=>110
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'select count(*)',
'into v_chk',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''FILE_PROV_DETAIL'';',
'',
'if v_chk = 0 then',
'return ''Schedule Detail Not found, Please Upload File'';',
'elsif v_chk <> 96 then',
'return ''All row of Time Detail Cannot insert.Check excel sheet and Try again or Contact System Administration'';',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1533469644163024)
,p_validation_name=>'check FINAL  detail '
,p_validation_sequence=>120
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'select count(*)',
'into v_chk',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''FILE_FINAL_MAIN'';',
'',
'if v_chk = 0 then',
'return ''Schedule Detail Not found, Please Upload File'';',
'',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1533887127163023)
,p_validation_name=>'check IEX  detail '
,p_validation_sequence=>130
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'select count(*)',
'into v_chk',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''SCH_IEX'';',
'',
'if v_chk = 0 then',
'return ''Schedule Detail Not found, Please Upload File.'';',
'',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'I'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1528248864163029)
,p_validation_name=>'CHECK PROJ'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'    begin',
'     select VC_PROJ_PREFIX',
'      into v_chk  ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     exception  when no_data_found then  null;',
'    end;',
'      if nvl(v_chk,''XX'') = ''XX'' THEN',
'       RETURN ''Project Prefix not defined.Contact Administration'';',
'      END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1527844351163030)
,p_validation_name=>'year closing'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'      SELECT    count(*)',
'       INTO     v_chk',
'       FROM     APPUA.VW_FY',
'       WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ',
'       and     FY_STRT < sysdate ',
'       and      FY_END  > sysdate ;',
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
,p_error_message=>'Financial year  not open in ERP. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1527464819163030)
,p_validation_name=>'date not null'
,p_validation_sequence=>160
,p_validation=>'P35_PROV_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Date'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1511269178163052)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1527038337163030)
,p_validation_name=>'period'
,p_validation_sequence=>170
,p_validation=>'P35_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period From Date'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1516797435163045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1526726009163031)
,p_validation_name=>'Period To cannot be null'
,p_validation_sequence=>180
,p_validation=>'P35_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Peeriod to date'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1516360615163046)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1526235243163031)
,p_validation_name=>'PPA Num not null'
,p_validation_sequence=>190
,p_validation=>'P35_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PPA No cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1505248724163062)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1525931798163032)
,p_validation_name=>'PPA DAte Cannot be null'
,p_validation_sequence=>200
,p_validation=>'P35_PPA_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PPA Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1504878875163063)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1525454766163032)
,p_validation_name=>'check appr no'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'',
'IF :P35_MODE = ''A'' THEN',
'',
'select count(*)',
'INTO v_check',
'from dt_schedule',
'where ORG_ID= :GLOBAL_COMP_CODE',
'AND   VC_APPR_NO = :P35_APPR_NO',
'AND VC_PROV_TYPE = :P35_PROV_TYPE;',
'',
'END IF;',
'',
'IF :P35_MODE = ''E'' THEN',
'',
'select count(*)',
'INTO v_check',
'from dt_schedule',
'where ORG_ID= :GLOBAL_COMP_CODE',
'AND   VC_APPR_NO = :P35_APPR_NO',
'AND   VC_SCHEDULE_NO <> :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE <> :P35_SCHEDULE_DATE;',
'',
'END IF;',
'',
'IF v_check > 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Duplicate Appr. No.'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1512833098163050)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1525059239163032)
,p_validation_name=>'check final MHWR'
,p_validation_sequence=>220
,p_validation=>'P35_MWHR_FINAL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'MHWR cannot be null or zero'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1516012381163046)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1524653560163033)
,p_validation_name=>'check invoice  provisonal invoice created or not '
,p_validation_sequence=>230
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'select count(*)',
'INTO v_check',
'from DT_SCH_PROV_INV',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and   vc_ppa_no = :P35_PPA_NO',
'and   dt_ppa_date = :P35_PPA_DATE',
'AND  :P35_PROV_DATE BETWEEN  DT_BILL_FROM AND DT_BILL_TO',
';',
'',
'IF v_check > 0 THEN',
'RETURN FALSE;',
'ELSE ',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Schedule Cannot be Created for this date because Invoice already created for this date.'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'P'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1511269178163052)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1524233780163033)
,p_validation_name=>'check invoice  final invoice created or not'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'select count(*)',
'INTO v_check',
'from DT_SCH_FINAL_INV',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and   vc_ppa_no = :P35_PPA_NO',
'and   dt_ppa_date = :P35_PPA_DATE',
'AND   DT_BILL_FROM BETWEEN :P35_PERIOD_FROM AND :P35_PERIOD_TO',
'AND   DT_BILL_TO BETWEEN :P35_PERIOD_FROM AND :P35_PERIOD_TO',
';',
'',
'IF v_check > 0 THEN',
'RETURN FALSE;',
'ELSE ',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Schedule Cannot be Created for this Period because Invoice already created for this Period.'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'F'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1516797435163045)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1523904465163034)
,p_validation_name=>'TYPE NOT NULL'
,p_validation_sequence=>250
,p_validation=>'P35_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1504509739163063)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1533058753163024)
,p_validation_name=>'IEX not null'
,p_validation_sequence=>260
,p_validation=>'P35_SCH_IEX_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Schedule Date'
,p_validation_condition=>'P35_TYPE'
,p_validation_condition2=>'I'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1501689009163067)
,p_associated_item=>wwv_flow_api.id(1508947825163056)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1537756737163018)
,p_name=>'show/hide region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_TYPE'
,p_condition_element=>'P35_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'P'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1538252268163017)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'F'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1546308926163008)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33663662630509371)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1538798277163016)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'F'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1539264709163016)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33660932157509343)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1539765012163015)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33662887254509363)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'F'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1540236506163015)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33662887254509363)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'F'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1540766884163014)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33659372423509328)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1541312814163014)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33662887254509363)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1541751500163013)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33663662630509371)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'P'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1542251377163013)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33660932157509343)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'P'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1542763172163012)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1543326023163012)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33932579729728053)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1543739683163011)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33659372423509328)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'P'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1544240876163011)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33932579729728053)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'I'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1544744122163010)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33932579729728053)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'I'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1545318908163009)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>100
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33933528910728063)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'I'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1545733575163009)
,p_event_id=>wwv_flow_api.id(1537756737163018)
,p_event_result=>'FALSE'
,p_action_sequence=>110
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33933528910728063)
,p_client_condition_type=>'NOT_EQUALS'
,p_client_condition_element=>'P35_TYPE'
,p_client_condition_expression=>'I'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1546699389163008)
,p_name=>'refresh'
,p_event_sequence=>20
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1547161061163007)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33660932157509343)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1547652405163007)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_FROM_STATE,P35_FROM_UTILITY,P35_TO_STATE,P35_TO_UTILITY,P35_IR_LINK,P35_APPR_NO,P35_MWHR,P35_MAX,P35_MIN,P35_AVG'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 ,',
'c002,',
'c003 ,',
'C004,',
'C005,',
'C006,',
'C007,',
'C008,',
'C009,',
'C010',
'',
' from apex_collections ',
' where COLLECTION_NAME=''FILE_PROV_MAIN''; '))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1548214598163006)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1548635698163006)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_FOCUS'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_APPR_NO,P35_MWHR'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1549190341163005)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_MWHR_FINAL'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'sum (c005)',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''FILE_FINAL_MAIN''; ',
''))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1549700911163005)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33933528910728063)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1550136741163004)
,p_event_id=>wwv_flow_api.id(1546699389163008)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_IEX_TOTAL_UNIT,P35_IEX_TOTAL_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- Select ',
'-- sum (c002),',
'-- ROUND(sum (c003),2)',
'',
'',
'--  from apex_collections ',
'--  where COLLECTION_NAME=''SCH_IEX''; ',
'Select ',
'--nvl((sum(c002)/4)*1000,0),',
'regexp_replace(nvl(round(((sum(c002)/4)*1000),2),0),''\+|\-'') C002,',
'ROUND(sum (c003),2)',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''SCH_IEX''; ',
''))
,p_attribute_08=>'N'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1550625969163004)
,p_name=>'hide  region '
,p_event_sequence=>30
,p_condition_element=>'P35_TYPE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1551061151163003)
,p_event_id=>wwv_flow_api.id(1550625969163004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33662887254509363)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1551606714163003)
,p_event_id=>wwv_flow_api.id(1550625969163004)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1552039324163002)
,p_event_id=>wwv_flow_api.id(1550625969163004)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33932579729728053)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1552475620163002)
,p_name=>'clear collection'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_TYPE'
,p_condition_element=>'P35_TYPE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1552943292163001)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_MAIN'');',
'END IF;  ',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_DETAIL'');',
'END IF;  ',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;  ',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SCH_IEX'');',
'END IF;  ',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1553505942163001)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1553992993163000)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33660932157509343)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1554523116163000)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33933528910728063)
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1554972617162999)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_PROV_DATE,P35_FROM_STATE,P35_FROM_UTILITY,P35_TO_STATE,P35_TO_UTILITY,P35_IR_LINK,P35_APPR_NO,P35_MWHR,P35_PROV_TYPE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1555487183162999)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_PERIOD_FROM,P35_PERIOD_TO,P35_MWHR_FINAL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1556001288162998)
,p_event_id=>wwv_flow_api.id(1552475620163002)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P35_IEX_TOTAL_UNIT,P35_IEX_TOTAL_AMOUNT,P35_SCH_IEX_DATE,P35_MARKET_TYPE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1556405626162998)
,p_name=>'Show hide region on null'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P35_TYPE'
,p_condition_element=>'P35_TYPE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1556844270162997)
,p_event_id=>wwv_flow_api.id(1556405626162998)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33544225636391665)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1557363898162997)
,p_event_id=>wwv_flow_api.id(1556405626162998)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(33662887254509363)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1557748018162996)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>55
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P35_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1558315041162996)
,p_event_id=>wwv_flow_api.id(1557748018162996)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1501300476163067)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P35_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1558651432162995)
,p_name=>'hide forward on add mode'
,p_event_sequence=>60
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P35_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1559142968162995)
,p_event_id=>wwv_flow_api.id(1558651432162995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1501300476163067)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1536552596163020)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT '
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_code   VARCHAR2(30);',
'v_prj_prefix varchar2(5);',
'V_STRT_YEAR  DATE;',
'V_END_YEAR   DATE;',
'',
'cursor c1 is ( SELECT c001,c002,c003 ',
'                from apex_collections ',
'                where COLLECTION_NAME=''FILE_PROV_DETAIL''',
'                );',
'cursor c2 is ( Select c001,c002,c003 ,c004,c005,c006,c007',
'               from apex_collections ',
'               where COLLECTION_NAME=''FILE_FINAL_MAIN'' ',
'',
'                );',
'cursor c3 is ( Select c001,c002,c003 ',
'               from apex_collections ',
'               where COLLECTION_NAME=''SCH_IEX'' ',
'',
'                );',
'',
'',
'',
'begin',
'     select VC_PROJ_PREFIX  ',
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
'    begin',
'            select  lpad(nvl(max(to_number(substr(VC_SCHEDULE_NO,instr(VC_SCHEDULE_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'            into  v_code ',
'            from DT_SCHEDULE ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_SCHEDULE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'          :P35_SCHEDULE_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'    ',
'    end;',
'    BEGIN',
'    insert into  DT_SCHEDULE  ',
'                (ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_PPA_NO, DT_PPA_DATE, VC_TYPE, VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, ',
'                VC_TO_UTILITY, VC_IR_LINK, VC_APPR_NO, DT_SCHEDULE_PROV, DT_PERIOD_FROM, DT_PERIOD_TO, USR_ID_CREATE, USR_ID_CREATE_DT,  ',
'                HO_ORG_ID,nu_unit,NU_IEX_TOTAL_AMT,DT_SCH_IEX_DATE,VC_PROV_TYPE,VC_MARKET_TYPE',
'                )',
'            values',
'                (',
'                :GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE,:P35_PPA_NO,:P35_PPA_DATE,:P35_TYPE,:P35_FROM_STATE,:P35_FROM_UTILITY,:P35_TO_STATE,',
'                :P35_TO_UTILITY,:P35_IR_LINK,:P35_APPR_NO,:P35_PROV_DATE,:P35_PERIOD_FROM,:P35_PERIOD_TO,:GLOBAL_USER_CODE,SYSDATE,',
'                :GLOBAL_PARENT_COMP,decode(:P35_TYPE,''P'',:P35_MWHR,''F'',:P35_MWHR_FINAL,''I'',:P35_IEX_TOTAL_UNIT),',
'                decode(:P35_TYPE,''I'',:P35_IEX_TOTAL_AMOUNT,NULL), :P35_SCH_IEX_DATE,:P35_PROV_TYPE,:P35_MARKET_TYPE',
'                );',
'    exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'    ',
'    END;',
'',
'    if :P35_TYPE = ''P'' THEN',
'     BEGIN',
'        for i in c1 loop',
'',
'        insert into DT_SCHEDULE_PROV_DTL',
'                    (',
'                    ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_TIME_BLOCK, VC_TIME_DESC, NU_UNIT, ',
'                    USR_ID_CREATE, VC_AUTH_CODE, HO_ORG_ID',
'                    )',
'                values',
'                    (',
'                    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003, ',
'                    :GLOBAL_USER_CODE, :GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'                    );',
'        end loop;',
'        exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'     end;',
'    END IF;',
'',
'    if :P35_TYPE = ''F'' THEN',
'      begin',
'            for i in c2 loop',
'',
'            insert into DT_SCHEDULE_FINAL_DTL',
'                        (',
'                        ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, VC_TO_UTILITY, VC_EX_SELLER, ',
'                        VC_APPLICANT, VC_OA_CODE, vc_auth_code,USR_ID_CREATE, HO_ORG_ID',
'                        )',
'                    values',
'                        (',
'                        :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003,I.C004, I.C005,I.C006,   ',
'                        I.C007, :GLOBAL_USER_CODE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'                        );',
'            end loop;',
'          exception when others then ',
'            rollback;',
'         raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'     end;',
'    END IF;',
'',
'      if :P35_TYPE = ''I'' THEN',
'      begin',
'            for i in c3 loop',
'',
'            insert into DT_SCHEDULE_IEX_DTL',
'                        (',
'                        ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_PERIOD,',
'                        VC_UNIT,VC_AMOUNT,vc_auth_code,USR_ID_CREATE, HO_ORG_ID',
'                        )',
'                    values',
'                        (',
'                        :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003,',
'                      :GLOBAL_USER_CODE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'                        );',
'            end loop;',
'          exception when others then ',
'            rollback;',
'         raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'     end;',
'    END IF;',
'',
'end;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1501689009163067)
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1535740770163021)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'UPDATE DT_SCHEDULE',
'SET',
'VC_PPA_NO           =:P35_PPA_NO, ',
'DT_PPA_DATE         =:P35_PPA_DATE, ',
'VC_TYPE             =:P35_TYPE,',
'VC_FROM_STATE       =:P35_FROM_STATE, ',
'VC_FROM_UTILITY     =:P35_FROM_UTILITY, ',
'VC_TO_STATE         =:P35_TO_STATE, ',
'VC_TO_UTILITY       =:P35_TO_UTILITY, ',
'VC_IR_LINK          =:P35_IR_LINK, ',
'VC_APPR_NO          =:P35_APPR_NO,         ',
'DT_SCHEDULE_PROV    =:P35_PROV_DATE, ',
'DT_PERIOD_FROM      =:P35_PERIOD_FROM,',
'DT_PERIOD_TO        =:P35_PERIOD_TO, ',
'USR_ID_MOD_DT       = SYSDATE, ',
'HO_ORG_ID           = :GLOBAL_PARENT_COMP,',
'NU_UNIT             = decode(:P35_TYPE,''P'',:P35_MWHR,''F'',:P35_MWHR_FINAL,''I'',:P35_IEX_TOTAL_UNIT),',
'USR_ID_MOD          = :GLOBAL_USER_CODE,',
'NU_IEX_TOTAL_AMT    = decode(:P35_TYPE,''I'',:P35_IEX_TOTAL_AMOUNT,NULL),',
'DT_SCH_IEX_DATE     = :P35_SCH_IEX_DATE,',
'VC_PROV_TYPE        = :P35_PROV_TYPE,',
'VC_MARKET_TYPE     =  :P35_MARKET_TYPE',
'WHERE ORG_ID            = :GLOBAL_COMP_CODE ',
'AND   PRJ_ID            = :GLOBAL_PROJ_ID',
'AND   VC_SCHEDULE_NO    = :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE  = :P35_SCHEDULE_DATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1501689009163067)
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1536205335163020)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert prov detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1 is ( SELECT c001,c002,c003 ',
'                from apex_collections ',
'                where COLLECTION_NAME=''FILE_PROV_DETAIL''',
'                );',
'',
'begin',
'',
'',
'IF :P35_TYPE = ''P'' THEN',
'',
'DELETE FROM DT_SCHEDULE_PROV_DTL',
'WHERE ORG_ID            = :GLOBAL_COMP_CODE ',
'AND   PRJ_ID            = :GLOBAL_PROJ_ID',
'AND   VC_SCHEDULE_NO    = :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE  = :P35_SCHEDULE_DATE;',
'',
'',
'',
'',
'for i in c1 loop',
'begin',
'insert into DT_SCHEDULE_PROV_DTL',
'            (',
'            ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_TIME_BLOCK, VC_TIME_DESC, NU_UNIT, ',
'            USR_ID_CREATE, VC_AUTH_CODE, HO_ORG_ID',
'            )',
'        values',
'            (',
'            :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003, ',
'            :GLOBAL_USER_CODE, :GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'            );',
'exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'end;        ',
'end loop;',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1501689009163067)
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1535357122163021)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert final detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1 is ( Select c001,c002,c003 ,c004,c005,c006,c007',
'               from apex_collections ',
'               where COLLECTION_NAME=''FILE_FINAL_MAIN'' ',
'',
'                );',
'',
'begin',
'',
'',
'IF :P35_TYPE = ''F'' THEN',
'',
'DELETE FROM DT_SCHEDULE_FINAL_DTL',
'WHERE ORG_ID            = :GLOBAL_COMP_CODE ',
'AND   PRJ_ID            = :GLOBAL_PROJ_ID',
'AND   VC_SCHEDULE_NO    = :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE  = :P35_SCHEDULE_DATE;',
'',
'',
'',
'',
'for i in c1 loop',
'',
'begin',
'insert into DT_SCHEDULE_FINAL_DTL',
'            (',
'            ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, VC_TO_UTILITY, VC_EX_SELLER, ',
'            VC_APPLICANT, VC_OA_CODE, vc_auth_code,USR_ID_CREATE, HO_ORG_ID',
'            )',
'        values',
'            (',
'            :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003,I.C004, I.C005,I.C006,   ',
'            I.C007, :GLOBAL_USER_CODE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'            );',
'exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'end;',
'end loop;',
'',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1501689009163067)
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1537400137163018)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert final IEX'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1 is ( Select c001,c002,c003 ',
'               from apex_collections ',
'               where COLLECTION_NAME=''SCH_IEX'' ',
'',
'                );',
'',
'begin',
'',
'',
'IF :P35_TYPE = ''I'' THEN',
'',
'DELETE FROM DT_SCHEDULE_IEX_DTL',
'WHERE ORG_ID            = :GLOBAL_COMP_CODE ',
'AND   PRJ_ID            = :GLOBAL_PROJ_ID',
'AND   VC_SCHEDULE_NO    = :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE  = :P35_SCHEDULE_DATE;',
'',
'',
'',
'',
'for i in c1 loop',
'',
'begin',
'insert into DT_SCHEDULE_IEX_DTL',
'            (',
'            ORG_ID, PRJ_ID, VC_SCHEDULE_NO, DT_SCHEDULE_DATE, VC_PERIOD,VC_UNIT,VC_AMOUNT, vc_auth_code,USR_ID_CREATE, HO_ORG_ID',
'            )',
'        values',
'            (',
'            :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P35_SCHEDULE_NO,:P35_SCHEDULE_DATE ,I.C001,I.C002,I.C003, :GLOBAL_USER_CODE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP      ',
'            );',
'exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'end;',
'end loop;',
'',
'END IF;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1501689009163067)
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1537009346163019)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_MAIN'');',
'END IF;  ',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_DETAIL'');',
'END IF;  ',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;  ',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SCH_IEX'');',
'END IF;  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1534948534163022)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    ',
'VC_PPA_NO ,DT_PPA_DATE, VC_TYPE, VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, ',
'VC_TO_UTILITY, VC_IR_LINK, VC_APPR_NO, DT_SCHEDULE_PROV, DT_PERIOD_FROM, DT_PERIOD_TO,decode(VC_TYPE,''P'',nu_unit) ,decode(VC_TYPE,''F'',nu_unit)',
',NU_UNIT,NU_IEX_TOTAL_AMT, DT_SCH_IEX_DATE,VC_PROV_TYPE,VC_MARKET_TYPE',
'INTO',
':P35_PPA_NO , :P35_PPA_DATE , :P35_TYPE,:P35_FROM_STATE,:P35_FROM_UTILITY,:P35_TO_STATE,',
':P35_TO_UTILITY,:P35_IR_LINK,:P35_APPR_NO,:P35_PROV_DATE,:P35_PERIOD_FROM,:P35_PERIOD_TO,:P35_MWHR,:P35_MWHR_FINAL,',
':P35_IEX_TOTAL_UNIT, :P35_IEX_TOTAL_AMOUNT,:P35_SCH_IEX_DATE,:P35_PROV_TYPE,:P35_MARKET_TYPE',
'from DT_SCHEDULE',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'and   VC_SCHEDULE_NO  =  :P35_SCHEDULE_NO',
'and  DT_SCHEDULE_DATE = :P35_SCHEDULE_DATE;',
'',
'',
'if :P35_TYPE = ''P'' THEN',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_PROV_DETAIL'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_PROV_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_PROV_DETAIL'');',
'END IF;',
'',
'for i in (',
'            select VC_TIME_BLOCK, VC_TIME_DESC, NU_UNIT',
'            from DT_SCHEDULE_PROV_DTL',
'            where ORG_ID = :GLOBAL_COMP_CODE',
'            AND   PRJ_ID = :GLOBAL_PROJ_ID',
'            and   VC_SCHEDULE_NO  =  :P35_SCHEDULE_NO',
'            and  DT_SCHEDULE_DATE = :P35_SCHEDULE_DATE',
'        )',
'loop ',
'',
'       APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_PROV_DETAIL'',',
'                                            p_c001            => i.VC_TIME_BLOCK,',
'                                            p_c002            => i.VC_TIME_DESC,',
'                                            P_C003            => i.NU_UNIT',
'                                            );',
'',
'end loop;',
'END IF;',
'',
'if :P35_TYPE = ''F'' THEN',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_FINAL_MAIN'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_FINAL_MAIN'');',
'END IF;',
'',
'for J in (',
'            select VC_FROM_STATE, VC_FROM_UTILITY, VC_TO_STATE, VC_TO_UTILITY, VC_EX_SELLER, VC_APPLICANT, VC_OA_CODE',
'            from DT_SCHEDULE_FINAL_DTL',
'            where ORG_ID = :GLOBAL_COMP_CODE',
'            AND   PRJ_ID = :GLOBAL_PROJ_ID',
'            and   VC_SCHEDULE_NO  =  :P35_SCHEDULE_NO',
'            and  DT_SCHEDULE_DATE = :P35_SCHEDULE_DATE',
'        )',
'loop ',
'',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_FINAL_MAIN'',',
'                                       p_c001            => J.VC_FROM_STATE,',
'                                       p_c002            => J.VC_FROM_UTILITY,',
'                                       P_C003            => J.VC_TO_STATE,',
'                                       P_C004            => J.VC_TO_UTILITY,',
'                                       P_C005            => J.VC_EX_SELLER,',
'                                       P_C006            => J.VC_APPLICANT,',
'                                       P_C007            => J.VC_OA_CODE',
'                                    );',
'END LOOP;',
'END IF;',
'',
'If :P35_TYPE = ''I'' THEN',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SCH_IEX'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''SCH_IEX'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''SCH_IEX'');',
'END IF;',
'',
'for Z in (',
'            select VC_PERIOD,VC_UNIT,VC_AMOUNT',
'            from DT_SCHEDULE_IEX_DTL',
'            where ORG_ID = :GLOBAL_COMP_CODE',
'            AND   PRJ_ID = :GLOBAL_PROJ_ID',
'            and   VC_SCHEDULE_NO  =  :P35_SCHEDULE_NO',
'            and  DT_SCHEDULE_DATE = :P35_SCHEDULE_DATE',
'        )',
'loop ',
'',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''SCH_IEX'',',
'                                       p_c001            => Z.VC_PERIOD,',
'                                       p_c002            => Z.VC_UNIT,',
'                                       P_C003            => Z.VC_AMOUNT',
'                                    );',
'END LOOP;',
'',
'',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1534586236163023)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P35_WKF_STAGE',
'from  DT_SCHEDULE',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID',
'and  VC_SCHEDULE_NO   = :P35_SCHEDULE_NO',
'and  DT_SCHEDULE_DATE = :P35_SCHEDULE_DATE;',
'exception when no_data_found then :P35_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1534185184163023)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P35_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P35_SCHEDULE_NO',
'AND      DT_DOC_DATE = :P35_SCHEDULE_DATE',
'AND      VC_DOC_TYPE  = ''SCH'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P35_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.component_end;
end;
/
