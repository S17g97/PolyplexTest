prompt --application/pages/page_00009
begin
--   Manifest
--     PAGE: 00009
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
 p_id=>9
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Other Charges List'
,p_alias=>'OTHER-CHARGES-LIST'
,p_step_title=>'Other Charges List'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210714195403'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(16177527016290078)
,p_plug_name=>'Other Charges List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select    ''''edit,',
'          ''''view1,',
'          nu_charge_id ,',
'          vc_charge_name , ',
'          vc_charge_type charge,',
'          COA_ID acc_code,',
'          vc_charge_type charge_type ,',
'          COA_ID account1,',
'          vc_active',
'',
'from MST_OTHER_CHARGES',
'where ORG_ID = :global_comp_code'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Charges List'
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
 p_id=>wwv_flow_api.id(16023009141789511)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>2329858245472814
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16022469854789506)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'E'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_MODE,P10_CHARGE_ID,P10_CHARGE_TYPE,P10_CHARGE_NAME,P10_ACCOUNT,P10_STATUS:E,#NU_CHARGE_ID#,#CHARGE#,#VC_CHARGE_NAME#,#ACC_CODE#,#VC_ACTIVE##VC_CHARGE_TYPE#,#VC_CHARGE_NAME#,#NU_ACCOUNT_CODE#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="download"></span></span>'
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
 p_id=>wwv_flow_api.id(16022431755789505)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'F'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_MODE,P10_CHARGE_ID,P10_CHARGE_NAME,P10_CHARGE_TYPE,P10_ACCOUNT,P10_STATUS:V,#NU_CHARGE_ID#,#VC_CHARGE_NAME#,#CHARGE#,#ACC_CODE#,#VC_ACTIVE##VC_CHARGE_TYPE#,#NU_ACCOUNT_CODE#'
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
 p_id=>wwv_flow_api.id(16022873221789510)
,p_db_column_name=>'NU_CHARGE_ID'
,p_display_order=>30
,p_column_identifier=>'A'
,p_column_label=>'Nu Charge Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16022768521789509)
,p_db_column_name=>'VC_CHARGE_NAME'
,p_display_order=>40
,p_column_identifier=>'B'
,p_column_label=>'Charge Name'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16022247132789503)
,p_db_column_name=>'CHARGE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Charge'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16022029510789501)
,p_db_column_name=>'ACC_CODE'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Acc Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16021952006789500)
,p_db_column_name=>'CHARGE_TYPE'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Charge Type'
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
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16005262649557334)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(16021807913789499)
,p_db_column_name=>'ACCOUNT1'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Account'
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
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15993744010851976)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13705289853871988)
,p_db_column_name=>'VC_ACTIVE'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16010512949599990)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'23424'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:VIEW1:NU_CHARGE_ID:VC_CHARGE_NAME:VC_NU_ACCOUNT_CODE::CHARGE:ACC_CODE:CHARGE_TYPE:ACCOUNT1:VC_ACTIVE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16177386020290077)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(16177527016290078)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.:10:P10_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16024331593789524)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(16177527016290078)
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
