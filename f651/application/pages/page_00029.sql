prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'INVOICE - JMR LIst'
,p_alias=>'INVOICE-JMR-LIST'
,p_step_title=>'INVOICE - JMR LIst'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230601151432'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109407382589192628)
,p_plug_name=>'Invoice-JMR List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'''''EDIT, ',
''''' VIEW1 , ',
'VC_PPA_NO, ',
'DT_PPA_DATE, ',
'EO_ID , ',
'GET_CUST_NAME(ORG_ID,EO_ID) Customer_name,',
'CASE   when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ',
'        case when check_doc_edit(ORG_ID,PRJ_ID,VC_INVOICE_NO,DT_INVOICE_DATE,''IJMR'',:GLOBAL_USER_CODE) = ''Y'' THEN ''inline''',
'        else ''none''',
'        end',
'else   ''none''  ',
'end  as chk_edit,',
'decode(CH_AUTH_FLAG,''N'',''No'',''Y'',''Yes'')authorized,',
'CH_AUTH_FLAG,',
'VC_INVOICE_NO,',
'DT_INVOICE_DATE',
'/*,',
'case when ch_type = ''J'' THEN',
'      ''f?p=''||:APP_ID||'':''||''30''||'':''||:APP_SESSION||''::NO::''||''P30_JMR_NO,P30_JMR_DATE,P30_LAST_PAGE,P30_AUTH_FLAG,P30_INVOICE_NO,P30_INVOICE_DATE,P30_MODE''||',
'      '':''|| vc_JMR_NO ||'',''|| DT_JMR_DATE||'',''|| ''29''  ||'',''|| CH_AUTH_FLAG ||'',''||   VC_INVOICE_NO ||'',''|| DT_INVOICE_DATE ||'',''||''E''',
'      WHEN ch_type = ''W'' THEN',
'        ''f?p=''||:APP_ID||'':''||''45''||'':''||:APP_SESSION||''::NO::''||''P45_JMR_NO,P45_JMR_DATE,P45_LAST_PAGE,P45_AUTH_FLAG,P45_INVOICE_NO,P45_INVOICE_DATE,P45_MODE''||',
'      '':''|| vc_JMR_NO ||'',''|| DT_JMR_DATE||'',''|| ''29''  ||'',''|| CH_AUTH_FLAG ||'',''||   VC_INVOICE_NO ||'',''|| DT_INVOICE_DATE ||'',''||''E''',
'END  PAGE_EDIT,',
'case when ch_type = ''J'' THEN',
'      ''f?p=''||:APP_ID||'':''||''30''||'':''||:APP_SESSION||''::NO::''||''P30_JMR_NO,P30_JMR_DATE,P30_LAST_PAGE,P30_AUTH_FLAG,P30_INVOICE_NO,P30_INVOICE_DATE,P30_MODE''||',
'      '':''|| vc_JMR_NO ||'',''|| DT_JMR_DATE||'',''|| ''29''  ||'',''|| CH_AUTH_FLAG ||'',''||   VC_INVOICE_NO ||'',''|| DT_INVOICE_DATE ||'',''||''V''',
'      WHEN ch_type = ''W'' THEN',
'        ''f?p=''||:APP_ID||'':''||''45''||'':''||:APP_SESSION||''::NO::''||''P45_JMR_NO,P45_JMR_DATE,P45_LAST_PAGE,P45_AUTH_FLAG,P45_INVOICE_NO,P45_INVOICE_DATE,P45_MODE''||',
'      '':''|| vc_JMR_NO ||'',''|| DT_JMR_DATE||'',''|| ''29''  ||'',''|| CH_AUTH_FLAG ||'',''||   VC_INVOICE_NO ||'',''|| DT_INVOICE_DATE ||'',''||''V''',
'END  PAGE_VIEW',
'',
'*/',
'from DT_INVOICE_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  vc_inv_typ IS NULL',
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
 p_id=>wwv_flow_api.id(109866533681309923)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_fixed_header=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>146572268455834573
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23353829431785116)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_MODE,P30_INVOICE_NO,P30_INVOICE_DATE,P30_LAST_PAGE,P30_AUTH_FLAG:E,#VC_INVOICE_NO#,#DT_INVOICE_DATE#,29,#CH_AUTH_FLAG#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit chk-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_link_attr=>'style="display:#CHK_EDIT#"  title="edit" class="chk-edit"'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23354197600785116)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_MODE,P30_INVOICE_NO,P30_INVOICE_DATE,P30_LAST_PAGE,P30_AUTH_FLAG:V,#VC_INVOICE_NO#,#DT_INVOICE_DATE#,29,#CH_AUTH_FLAG#'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23354603801785116)
,p_db_column_name=>'VC_PPA_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'System generated Number'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23354976969785116)
,p_db_column_name=>'DT_PPA_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Document Uploaded Date'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23355445451785115)
,p_db_column_name=>'EO_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Eo Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23356072472785115)
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
 p_id=>wwv_flow_api.id(23356512023785115)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23356909471785114)
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
 p_id=>wwv_flow_api.id(23357306933785114)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Ch Auth Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23352996349785117)
,p_db_column_name=>'VC_INVOICE_NO'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'Invoice Number'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23353434342785117)
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
 p_id=>wwv_flow_api.id(109975497694380535)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'43031'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT:VIEW1:VC_INVOICE_NO:DT_INVOICE_DATE:VC_PPA_NO:DT_PPA_DATE:CUSTOMER_NAME:AUTHORIZED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23358041157785113)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109407382589192628)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6120407937947819)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(109407382589192628)
,p_button_name=>'Create_multiple_JMR'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Invoice With Multiple JMR'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:88::'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
