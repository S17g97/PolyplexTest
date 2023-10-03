prompt --application/pages/page_00071
begin
--   Manifest
--     PAGE: 00071
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
 p_id=>71
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'INVOICE SUBJECT MASTER LIST'
,p_alias=>'INVOICE-NOTES-MASTER-LIST'
,p_step_title=>'INVOICE SUBJECT MASTER LIST'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220819134817'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17305911510859102)
,p_plug_name=>'Invoice Notes'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_doc_id , dt_doc_date , vc_inv_subject_desc ,decode(vc_status,''Y'',''Yes'',''No'') Status  , vc_status',
'from mst_INVOICE_SUBJECT',
'WHERE ORG_ID = :global_comp_code',
'AND HO_ORG_ID = :global_parent_comp',
'and PRJ_ID = :GLOBAL_PROJ_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Invoice Notes'
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
 p_id=>wwv_flow_api.id(17305736670859101)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:69:P69_DT_DOC_DATE,P69_VC_DOC_ID,P69_VC_STATUS,P69_ACTION:#DT_DOC_DATE#,#VC_DOC_ID#,#VC_STATUS#,E'
,p_detail_link_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="download"></span></span>',
''))
,p_owner=>'AKSHAY'
,p_internal_uid=>19399998103665549
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15378777995303352)
,p_db_column_name=>'VC_DOC_ID'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Doc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15378918216303353)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15379059007303354)
,p_db_column_name=>'VC_INV_SUBJECT_DESC'
,p_display_order=>50
,p_column_identifier=>'C'
,p_column_label=>'Invoice Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15379751489303361)
,p_db_column_name=>'STATUS'
,p_display_order=>60
,p_column_identifier=>'D'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15380400423303368)
,p_db_column_name=>'VC_STATUS'
,p_display_order=>70
,p_column_identifier=>'E'
,p_column_label=>'Vc Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15386800403325800)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'520926'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VC_DOC_ID:DT_DOC_DATE:VC_INV_SUBJECT_DESC:STATUS:VC_STATUS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15379802664303362)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17305911510859102)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:69:&SESSION.::&DEBUG.:69:P69_ACTION:A'
,p_icon_css_classes=>'fa-plus '
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15399267631468327)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17305911510859102)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.component_end;
end;
/
