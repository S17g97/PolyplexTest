prompt --application/pages/page_00065
begin
--   Manifest
--     PAGE: 00065
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
 p_id=>65
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Update Energy Flow List'
,p_alias=>'UPDATE-ENERGY-FLOW-LIST'
,p_step_title=>'Update Energy Flow List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230605164835'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(7722510977187106)
,p_plug_name=>'Energy Flow'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'NU_DOC_NO,',
'NU_LEVEL,',
'VC_LOCATION,',
'NU_LOSS,',
'DT_EFFECTIVE_DATE,',
'vc_remarks',
'',
'from DT_ENERGY_FLOW',
'where ',
'ORG_ID  = :GLOBAL_COMP_CODE',
'and PRJ_ID = :GLOBAL_PROJ_ID',
'--and  ch_option = ''P'''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Energy Flow'
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
 p_id=>wwv_flow_api.id(7722378832187105)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:66:&SESSION.::&DEBUG.:66:P66_LEVEL,P66_DOC_NO,P66_LOCATION,P66_LOSS,P66_EFFECTIVE_DATE:#NU_LEVEL#,#NU_DOC_NO#,#VC_LOCATION#,#NU_LOSS#,#DT_EFFECTIVE_DATE#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_owner=>'AKSHAY'
,p_internal_uid=>28983355942337545
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722247727187104)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7722201354187103)
,p_db_column_name=>'NU_LEVEL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7721996713187101)
,p_db_column_name=>'NU_LOSS'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Loss'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(7721899360187100)
,p_db_column_name=>'VC_LOCATION'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13591119423440454)
,p_db_column_name=>'DT_EFFECTIVE_DATE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Effective Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43743801566546396)
,p_db_column_name=>'VC_REMARKS'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(7594775044904270)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'291110'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_DOC_NO:NU_LEVEL:NU_LOSS:VC_LOCATION:DT_EFFECTIVE_DATE:VC_REMARKS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3133434064852049)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(7722510977187106)
,p_button_name=>'back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-fast-backward'
);
wwv_flow_api.component_end;
end;
/
