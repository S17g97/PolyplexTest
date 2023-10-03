prompt --application/pages/page_00060
begin
--   Manifest
--     PAGE: 00060
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
 p_id=>60
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'REC/CDM Master List'
,p_alias=>'REC-CDM-MASTER-LIST'
,p_step_title=>'REC/CDM Master List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220322144005'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17156411851471716)
,p_plug_name=>'REC/CDM Master List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'       NU_ID,',
'       decode(CH_TYPE,''R'',''REC'',''C'',''CDM'')Type1,',
'       VC_REG_NO,',
'       DT_REG_ISS_DATE,',
'       DT_REG_EXP_DATE,',
'       VC_ACCRE_NO,',
'       DT_ACCRE_ISS_DATE,',
'       DT_ACCRE_EXP_DATE,',
'       DECODE(VC_STATUS,''O'',''Open'',''C'',''Closed'')status,',
'       ''''view1,',
'       ''''edit,',
'       CASE when nvl(VC_STATUS,''O'') = ''O'' then ''inline''',
'       else ''none'' ',
'      end  as chk_edit',
'',
'',
'      ',
'  from MST_REC_CDM',
'  WHERE  ORG_ID  = :GLOBAL_COMP_CODE	',
'  AND  PRJ_ID  = :GLOBAL_PROJ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REC/CDM Master List'
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
 p_id=>wwv_flow_api.id(7726695503187148)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>28979039271337502
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7726344107187145)
,p_db_column_name=>'NU_ID'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Nu Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7726224745187143)
,p_db_column_name=>'VC_REG_NO'
,p_display_order=>50
,p_column_identifier=>'B'
,p_column_label=>'Registration No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7726039740187142)
,p_db_column_name=>'DT_REG_ISS_DATE'
,p_display_order=>60
,p_column_identifier=>'C'
,p_column_label=>'Registration Issue Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7725953093187141)
,p_db_column_name=>'DT_REG_EXP_DATE'
,p_display_order=>70
,p_column_identifier=>'D'
,p_column_label=>'Registration Expire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7725867141187140)
,p_db_column_name=>'VC_ACCRE_NO'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Accreditation Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7725807784187139)
,p_db_column_name=>'DT_ACCRE_ISS_DATE'
,p_display_order=>90
,p_column_identifier=>'F'
,p_column_label=>'Accreditation Issue Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7725651754187138)
,p_db_column_name=>'DT_ACCRE_EXP_DATE'
,p_display_order=>100
,p_column_identifier=>'G'
,p_column_label=>'Accreditation Expire Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7724957409187131)
,p_db_column_name=>'TYPE1'
,p_display_order=>110
,p_column_identifier=>'H'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7724924867187130)
,p_db_column_name=>'STATUS'
,p_display_order=>120
,p_column_identifier=>'I'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7724745606187129)
,p_db_column_name=>'VIEW1'
,p_display_order=>130
,p_column_identifier=>'J'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:P61_ID,P61_MODE:#NU_ID#,V'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7724700798187128)
,p_db_column_name=>'EDIT'
,p_display_order=>140
,p_column_identifier=>'K'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:P61_ID,P61_MODE:#NU_ID#,E'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit chk_edit" aria-hidden="true" title="edit"></span></span>'
,p_column_link_attr=>'style="display:#CHK_EDIT#"  title="edit" class="chk_edit"'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7723142295187113)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>150
,p_column_identifier=>'L'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7714619837160285)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'289912'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:VIEW1:TYPE1:VC_REG_NO:DT_REG_ISS_DATE:DT_REG_EXP_DATE:STATUS::CHK_EDIT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7724604549187127)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17156411851471716)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:61:&SESSION.::&DEBUG.:61:P61_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(7723317373187114)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17156411851471716)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-fast-backward'
);
wwv_flow_api.component_end;
end;
/
