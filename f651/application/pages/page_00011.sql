prompt --application/pages/page_00011
begin
--   Manifest
--     PAGE: 00011
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
 p_id=>11
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Energy Flow List'
,p_alias=>'ENERGY-FLOW-LIST'
,p_step_title=>'Energy Flow List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220820163314'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16021529089789496)
,p_plug_name=>'Energy Flow List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select  NU_DOC_NO, ',
'        DT_DOC_DATE ,',
'        NU_LEVEL , ',
'        VC_LOCATION , ',
'        '''' View1 ,',
'         '''' edit1,',
'         ',
'        CASE when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ''inline''',
'        else ''none'' ',
'        end  as chk_edit,',
'        decode(CH_AUTH_FLAG,''N'',''No'',''Y'',''Yes'')authorized',
'',
'from DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   = :GLOBAL_PROJ_ID;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Energy Flow List'
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
 p_id=>wwv_flow_api.id(15966786406908077)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>2386080980354248
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15912926619469421)
,p_db_column_name=>'EDIT1'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_DOC_NO,P12_DOC_DATE,P12_MODE:#NU_DOC_NO#,#DT_DOC_DATE#,E'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit chk_edit" aria-hidden="true" title="edit"></span></span>'
,p_column_link_attr=>'style="display:#CHK_EDIT#"  title="edit" class="chk_edit"'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15913045377469422)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'E'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_DOC_NO,P12_DOC_DATE,P12_MODE:#NU_DOC_NO#,#DT_DOC_DATE#,V'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15913174148469424)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nu Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15913096673469423)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dt Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15966705589908076)
,p_db_column_name=>'NU_LEVEL'
,p_display_order=>50
,p_column_identifier=>'A'
,p_column_label=>'Level'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15966581529908075)
,p_db_column_name=>'VC_LOCATION'
,p_display_order=>60
,p_column_identifier=>'B'
,p_column_label=>'Location'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15911684123469409)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13340997712615599)
,p_db_column_name=>'AUTHORIZED'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Authorized'
,p_allow_ctrl_breaks=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15905430337453403)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'24475'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT1:VIEW1:NU_LEVEL:VC_LOCATION::CHK_EDIT:AUTHORIZED'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16021276615789494)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16021529089789496)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:12:&SESSION.::&DEBUG.:12:P12_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
