prompt --application/pages/page_00007
begin
--   Manifest
--     PAGE: 00007
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
 p_id=>7
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'User Role Assign List'
,p_alias=>'USER-ROLE-ASSIGN-LIST'
,p_step_title=>'User Role Assign List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210811112251'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13888789133688078)
,p_plug_name=>'User Role Assign List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
''''' EDIT,',
'A.NU_User_id,',
'A.vc_role_code,',
'(select DISTINCT USR_NAME',
'from APPUA.VW_USER',
'where get_parent_comp(ORG_ID) = a.vc_parent_comp',
'and   usr_id= NU_User_id ) User_name,',
'(select B.vc_role_name ',
'  from mst_role B ',
'  where B.vc_COMP_CODE = A.vc_parent_comp ',
'  AND B.VC_ROLE_CODE = A.VC_ROLE_CODE ) rOLE_NAME,',
'  VC_STATUS',
'FROM MST_USER_ROLE A',
'where A.vc_parent_comp = :GLOBAL_PARENT_COMP'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'User Role Assign List'
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
 p_id=>wwv_flow_api.id(16178392580290087)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>2174474806972238
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16178349609290086)
,p_db_column_name=>'NU_USER_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nu User Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16178247846290085)
,p_db_column_name=>'VC_ROLE_CODE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Vc Role Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16178068925290084)
,p_db_column_name=>'EDIT'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:8:P8_ROLE,P8_USER_ID,P8_MODE,P8_STATUS:#VC_ROLE_CODE#,#NU_USER_ID#,E,#VC_STATUS#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="download"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16178047262290083)
,p_db_column_name=>'USER_NAME'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'User Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16177890215290082)
,p_db_column_name=>'ROLE_NAME'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Role'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13339406483615583)
,p_db_column_name=>'VC_STATUS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Vc Status'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16052573640495279)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'23003'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_USER_ID:VC_ROLE_CODE:EDIT:USER_NAME:ROLE_NAME:VC_STATUS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16061300099660294)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(13888789133688078)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::P8_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16177644131290079)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13888789133688078)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.component_end;
end;
/
