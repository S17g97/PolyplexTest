prompt --application/pages/page_00082
begin
--   Manifest
--     PAGE: 00082
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
 p_id=>82
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'SCHEDULE REPORT'
,p_alias=>'SCHEDULE-REPORT'
,p_step_title=>'SCHEDULE REPORT'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'NIDHI NEGI'
,p_last_upd_yyyymmddhh24miss=>'20230825154012'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1733913012090677)
,p_plug_name=>'Provisional Schedule'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_PPA_NO,DT_PPA_DATE,VC_TYPE,VC_FROM_STATE,VC_FROM_UTILITY,VC_TO_STATE,VC_TO_UTILITY,VC_APPR_NO,DT_SCHEDULE_PROV,NU_UNIT,VC_PROV_TYPE',
'FROM DT_SCHEDULE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND VC_TYPE = ''P'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Provisional Schedule'
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
 p_id=>wwv_flow_api.id(1734030837090678)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SHRUTI'
,p_internal_uid=>20086898224353003
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734059034090679)
,p_db_column_name=>'VC_PPA_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'PPA No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734227510090680)
,p_db_column_name=>'DT_PPA_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'PPA Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734284299090681)
,p_db_column_name=>'VC_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734379354090682)
,p_db_column_name=>'VC_FROM_STATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'From State'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734480416090683)
,p_db_column_name=>'VC_FROM_UTILITY'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'From Utility'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734573381090684)
,p_db_column_name=>'VC_TO_STATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'To State'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734690378090685)
,p_db_column_name=>'VC_TO_UTILITY'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'To Utility'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734800181090686)
,p_db_column_name=>'VC_APPR_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Appr No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734926029090687)
,p_db_column_name=>'DT_SCHEDULE_PROV'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Schedule Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1734955976090688)
,p_db_column_name=>'NU_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Unit'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1735067605090689)
,p_db_column_name=>'VC_PROV_TYPE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Prov Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(1748527247015683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'201014'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VC_PPA_NO:DT_PPA_DATE:VC_TYPE:VC_FROM_STATE:VC_FROM_UTILITY:VC_TO_STATE:VC_TO_UTILITY:VC_APPR_NO:DT_SCHEDULE_PROV:NU_UNIT:VC_PROV_TYPE'
,p_break_on=>'VC_PROV_TYPE:0:0:0:0:0'
,p_break_enabled_on=>'VC_PROV_TYPE:0:0:0:0:0'
);
wwv_flow_api.component_end;
end;
/
