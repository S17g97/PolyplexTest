prompt --application/pages/page_00052
begin
--   Manifest
--     PAGE: 00052
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
 p_id=>52
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Finalize Scheduled Report'
,p_alias=>'FINALIZE-SCHEDULED-REPORT'
,p_step_title=>'Finalize Scheduled Report'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'NIDHI NEGI'
,p_last_upd_yyyymmddhh24miss=>'20230825134917'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18066850585503314)
,p_plug_name=>'Finalize Scheduled Report'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'A.NU_DOC_NO, A.NU_DOC_DATE, NU_BLOCK, ',
'NU_FROM ||''-'' ||NU_TO Time1,',
' NU_QUANT_R0, NU_QUANT, VC_AMEN_REV_NO,DT_SCHEDULED_DATE,VC_BUYER_NAME, VC_END_BUYER_NAME,',
' VC_AMENDMENT_NO -- ADDED BY SHRUTI TO SHOW AMENDMENT NO 25/08/2023',
'from',
'DT_FINALIZE_SCHEDULE_LOG A, hd_FINALIZE_SCHEDULE B',
'where a.org_id = b.org_id',
'and   a.PRJ_ID  =  b.PRJ_ID ',
'and   a.ORG_ID = :GLOBAL_COMP_CODE',
'AND   b.PRJ_ID = :GLOBAL_PROJ_ID',
'and A.NU_DOC_NO=B.NU_DOC_NO',
' and DT_SCHEDULED_DATE= TO_DATE(:P52_SCHEDULED_DATE,''DD-MM-YYYY'')',
'order by nu_block asc'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Finalize Scheduled Report'
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
 p_id=>wwv_flow_api.id(18066810214503313)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>18638924560021337
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18066727868503312)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18066601779503311)
,p_db_column_name=>'NU_DOC_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18066459042503310)
,p_db_column_name=>'NU_BLOCK'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Block'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18066206205503307)
,p_db_column_name=>'NU_QUANT_R0'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quant R0'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18066079871503306)
,p_db_column_name=>'NU_QUANT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Quantum (MW)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18065961525503305)
,p_db_column_name=>'VC_AMEN_REV_NO'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Amend/Rev No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18065867918503304)
,p_db_column_name=>'DT_SCHEDULED_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18065659228503302)
,p_db_column_name=>'TIME1'
,p_display_order=>100
,p_column_identifier=>'K'
,p_column_label=>'Time'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17158686881471739)
,p_db_column_name=>'VC_BUYER_NAME'
,p_display_order=>110
,p_column_identifier=>'L'
,p_column_label=>'Buyer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17158566323471738)
,p_db_column_name=>'VC_END_BUYER_NAME'
,p_display_order=>120
,p_column_identifier=>'M'
,p_column_label=>'End Buyer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1733812037090676)
,p_db_column_name=>'VC_AMENDMENT_NO'
,p_display_order=>130
,p_column_identifier=>'N'
,p_column_label=>'Vc Amendment No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17845892193694998)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'PIVOT'
,p_report_alias=>'188599'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>5
,p_view_mode=>'REPORT'
,p_report_columns=>'NU_DOC_NO:DT_SCHEDULED_DATE:NU_BLOCK:TIME1:NU_QUANT_R0:NU_QUANT:VC_AMEN_REV_NO::VC_BUYER_NAME:VC_END_BUYER_NAME:VC_AMENDMENT_NO'
);
wwv_flow_api.create_worksheet_pivot(
 p_id=>wwv_flow_api.id(1740947989069556)
,p_report_id=>wwv_flow_api.id(17845892193694998)
,p_pivot_columns=>'VC_AMEN_REV_NO:VC_AMENDMENT_NO'
,p_row_columns=>'NU_BLOCK:TIME1:NU_QUANT_R0'
);
wwv_flow_api.create_worksheet_pivot_agg(
 p_id=>wwv_flow_api.id(1741353744069555)
,p_pivot_id=>wwv_flow_api.id(1740947989069556)
,p_display_seq=>1
,p_function_name=>'SUM'
,p_column_name=>'NU_QUANT'
,p_db_column_name=>'PFC1'
,p_format_mask=>'999G999G999G999G990'
);
wwv_flow_api.create_worksheet_pivot_sort(
 p_id=>wwv_flow_api.id(1741737707069554)
,p_pivot_id=>wwv_flow_api.id(1740947989069556)
,p_sort_seq=>1
,p_sort_column_name=>'NU_BLOCK'
,p_sort_direction=>'ASC'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18065627970503301)
,p_plug_name=>'FInalized Scheduled log'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17252716194157604)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18065627970503301)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:RP,52::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17828315295315349)
,p_name=>'P52_SCHEDULED_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18065627970503301)
,p_prompt=>'Scheduled Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17828185386315348)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P52_SCHEDULED_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17828066431315347)
,p_event_id=>wwv_flow_api.id(17828185386315348)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.component_end;
end;
/
