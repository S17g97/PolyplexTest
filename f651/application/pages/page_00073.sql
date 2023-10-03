prompt --application/pages/page_00073
begin
--   Manifest
--     PAGE: 00073
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
 p_id=>73
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'PPA amendment List'
,p_alias=>'PPA-AMENDMENT-LIST'
,p_step_title=>'PPA amendment List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220820115301'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(36622002908378281)
,p_plug_name=>'Power Purchase Amendment List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
''''' EDIT1,',
''''' VIEW1,',
'VC_PPA_NO,',
'DT_PPA_DATE,',
'get_cust_name (:GLOBAL_COMP_CODE,EO_ID)  customer,',
'decode(CH_TYPE,''P'',''PPA'',''L'',''LOI'') Type,',
'decode(CH_BILLING_TYPE,''J'',''JMR'',''I'',''Exchange'',''S'',''SCHEDULE'') BILLING_TYPE,',
'/*',
'CASE when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ''inline''',
'     else ''none'' ',
'end  as chk_edit,*/',
'CH_AUTH_FLAG,',
'',
'CASE   when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ',
'        case when check_doc_edit(ORG_ID,PRJ_ID,VC_PPA_NO,DT_PPA_DATE,''PPA'',:GLOBAL_USER_CODE) = ''Y'' THEN ''inline''',
'        else ''none''',
'        end',
'else   ''none''  ',
'end  as  chk_edit,',
'decode(CH_AUTH_FLAG,''N'',''No'',''Y'',''Yes'')authorized,',
'VC_EXTERNAL_DOC_NO, DT_EXTERNAL_DOC_DATE',
'',
'',
'FROM MST_PPA',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'order by 3 desc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Power Purchase Amendment List'
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
 p_id=>wwv_flow_api.id(36857057971831375)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>73562792746356025
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15825614694323036)
,p_db_column_name=>'EDIT1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_MODE,P14_PPA_NO,P14_PPA_DATE,P14_LAST_PAGE:E,#VC_PPA_NO#,#DT_PPA_DATE#,73#NU_PPA_NO#,#DT_PPA_DATE#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit chk-edit" aria-hidden="true" title="edit"></span></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15825984616323037)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_MODE,P14_PPA_NO,P14_PPA_DATE,P14_AUTH_FLAG,P14_LAST_PAGE:V,#VC_PPA_NO#,#DT_PPA_DATE#,#CH_AUTH_FLAG#,73#NU_PPA_NO#,#DT_PPA_DATE#'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15826458353323037)
,p_db_column_name=>'DT_PPA_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Uploaded Date'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15826797533323038)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Customer'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15827252189323038)
,p_db_column_name=>'TYPE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Type'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15827627142323039)
,p_db_column_name=>'BILLING_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Billing Type'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15827967260323039)
,p_db_column_name=>'VC_PPA_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'System Generated No'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15828402281323040)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15828795896323041)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Ch Auth Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15829246531323041)
,p_db_column_name=>'AUTHORIZED'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Authorized'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15829642069323041)
,p_db_column_name=>'VC_EXTERNAL_DOC_NO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'PPA No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15829965690323041)
,p_db_column_name=>'DT_EXTERNAL_DOC_DATE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'PPA Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(36931678957117274)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'525361'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT1:VIEW1:VC_PPA_NO:DT_PPA_DATE:VC_EXTERNAL_DOC_NO:DT_EXTERNAL_DOC_DATE:CUSTOMER:TYPE:BILLING_TYPE:AUTHORIZED:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15830835116323049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(36622002908378281)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.:14:P14_MODE:A'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
