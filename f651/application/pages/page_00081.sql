prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'finalize download'
,p_alias=>'FINALIZE-DOWNLOAD'
,p_step_title=>'finalize download'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GAURAV'
,p_last_upd_yyyymmddhh24miss=>'20230929113634'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21703691438664400)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--select   -11 NU_BLOCK , ''Applicant'' v_block , null NU_TO , null nu_quant_rn_rnx  from dual',
'--union',
'select   -10 NU_BLOCK , ''From State'' v_block , null NU_TO , ''UTTARAKHAND'' nu_quant_rn_rnx  from dual',
'union',
'select -9 NU_BLOCK , ''From Utility'' v_block , null nu_to , ''BHPL'' nu_quant_rn_rnx from dual',
'union',
'select -8 NU_BLOCK , ''To State'' v_block , null nu_to , ''ODISHA'' nu_quant_rn_rnx from dual',
'union',
'select -7 NU_BLOCK , ''To Utility'' v_block , null nu_to , ''SAIL-RSP'' nu_quant_rn_rnx from dual',
'union',
'select -6 NU_BLOCK , ''IR Link'' v_block , null nu_to , ''North-East'' nu_quant_rn_rnx from dual',
'union',
'select -5 NU_BLOCK , ''Appr. No'' v_block , null nu_to , ''ERLDC/2021/30354/C'' nu_quant_rn_rnx from dual',
'union',
'select -4 NU_BLOCK , ''TIME_BLOCK'' v_block , ''TIME_DESC'' nu_to , ''QUANT_RN_RNX'' nu_quant_rn_rnx from dual',
'union',
' --select   -11 NU_BLOCK , ''Applicant'' v_block , null NU_TO , null nu_quant_rn_rnx  from dual',
'--union',
'select   -10 NU_BLOCK , ''From State'' v_block , null NU_TO , ''UTTARAKHAND'' nu_quant_rn_rnx  from dual',
'union',
'select -9 NU_BLOCK , ''From Utility'' v_block , null nu_to , ''BHPL'' nu_quant_rn_rnx from dual',
'union',
'select -8 NU_BLOCK , ''To State'' v_block , null nu_to , ''ODISHA'' nu_quant_rn_rnx from dual',
'union',
'select -7 NU_BLOCK , ''To Utility'' v_block , null nu_to , ''SAIL-RSP'' nu_quant_rn_rnx from dual',
'union',
'select -6 NU_BLOCK , ''IR Link'' v_block , null nu_to , ''North-East'' nu_quant_rn_rnx from dual',
'union',
'select -5 NU_BLOCK , ''Appr. No'' v_block , null nu_to , ''ERLDC/2021/30354/C'' nu_quant_rn_rnx from dual',
'union',
'select -4 NU_BLOCK , ''TIME_BLOCK'' v_block , ''TIME_DESC'' nu_to , ''QUANT_RN_RNX'' nu_quant_rn_rnx from dual',
'union',
'  select NU_BLOCK, to_char(NU_BLOCK) v_block, NU_FROM||''-''||NU_TO Time_dec , ',
'  to_char(NU_QUANT_RN + (NVL((select sum(NU_QUANT_RNX) from DT_FINALIZE_SCHEDULE_log',
'   where org_id = b.org_id and prj_id = b.prj_id and  NU_DOC_NO = b.NU_DOC_NO ',
'   and NU_DOC_DATE = b.NU_DOC_DATe and NU_BLOCK = b.NU_BLOCK AND VC_AMENDMENT_NO IS NOT NULL ',
'   and SUBSTR(VC_AMEN_REV_NO,3)=:P49_REVISION_NO AND SUBSTR(VC_AMENDMENT_NO,3,1)=:P49_REVISION_NO ),0))) tot_NU_QUANT',
'   from DT_FINALIZE_SCHEDULE b ',
'where ORG_ID      = :GLOBAL_COMP_CODE',
'and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'and NU_DOC_NO =:P49_DOC_NO',
' ORDER BY 1 ASC',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P49_DOC_NO,P49_REVISION_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Report'
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
 p_id=>wwv_flow_api.id(21703857858664402)
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
,p_internal_uid=>40056725245926727
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1446820830951771)
,p_db_column_name=>'NU_BLOCK'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nu Block'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1447184875951769)
,p_db_column_name=>'V_BLOCK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Applicant'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1447592298951768)
,p_db_column_name=>'NU_TO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'-'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(722547224714723)
,p_db_column_name=>'NU_QUANT_RN_RNX'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'-'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(21789897698012463)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'193225'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_BLOCK:V_BLOCK:NU_TO:NU_QUANT_RN_RNX'
);
wwv_flow_api.component_end;
end;
/
