prompt --application/pages/page_00062
begin
--   Manifest
--     PAGE: 00062
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
 p_id=>62
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'CDM LIST'
,p_alias=>'CDM-LIST'
,p_step_title=>'CDM LIST'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220328192110'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50825186923508795)
,p_plug_name=>'Invoice-CDM List'
,p_region_name=>'rgn_brdr'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'''''EDIT, ',
''''' VIEW1 , ',
'VC_INVOICE_NO,',
'DT_INVOICE_DATE, ',
'EO_ID , ',
'GET_CUST_NAME(ORG_ID,EO_ID) Customer_name,',
'CASE   when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ',
'        case when check_doc_edit(ORG_ID,PRJ_ID,VC_INVOICE_NO,DT_INVOICE_DATE,''CDM'',:GLOBAL_USER_CODE) = ''Y'' THEN ''inline''',
'        else ''none''',
'        end',
'else   ''none''  ',
'end  as chk_edit,',
'decode(CH_AUTH_FLAG,''N'',''No'',''Y'',''Yes'')authorized,',
'CH_AUTH_FLAG',
'',
'from DT_INVOICE_CDM',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'order by VC_INVOICE_NO desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Invoice-JMR List'
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
 p_id=>wwv_flow_api.id(51284338015626090)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>87990072790150740
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5484816860566035)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_MODE,P67_INVOICE_NO,P67_INVOICE_DATE,P67_LAST_PAGE,P67_AUTH_FLAG:E,#VC_INVOICE_NO#,#DT_INVOICE_DATE#,29,#CH_AUTH_FLAG#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit chk-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_link_attr=>'style="display:#CHK_EDIT#"  title="edit" class="chk-edit"'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5484351702566035)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_MODE,P64_INVOICE_NO,P64_INVOICE_DATE,P64_LAST_PAGE,P64_AUTH_FLAG:V,#VC_INVOICE_NO#,#DT_INVOICE_DATE#,63,#CH_AUTH_FLAG#'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5484017716566034)
,p_db_column_name=>'EO_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eo Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5483584789566034)
,p_db_column_name=>'CUSTOMER_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Customer Name'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5483137664566033)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5482740560566033)
,p_db_column_name=>'AUTHORIZED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Authorized'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5482426870566032)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Ch Auth Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5485555992566037)
,p_db_column_name=>'VC_INVOICE_NO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Invoice No'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(5485139933566037)
,p_db_column_name=>'DT_INVOICE_DATE'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Invoice Date'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51393302028696702)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'312237'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT:VIEW1:VC_INVOICE_NO:DT_INVOICE_DATE:CUSTOMER_NAME:AUTHORIZED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(5481616967566027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50825186923508795)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:67:&SESSION.::&DEBUG.:67:P67_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
