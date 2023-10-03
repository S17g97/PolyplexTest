prompt --application/pages/page_00059
begin
--   Manifest
--     PAGE: 00059
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
 p_id=>59
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Finalized Schedule and Invoice Unit Comparison Report '
,p_alias=>'FINAIZED-SCHEDULE-AND-INVOICE-UNIT-COMPARISON-REPORT'
,p_step_title=>'Finalized Schedule and Invoice Unit Comparison Report '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220203145034'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17158376183471736)
,p_plug_name=>'Finaized Schedule and Invoice Unit Comparison Report '
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select sum(Finalized_schedule)Final_sch,sum(schedule_Provisonal_Invoice)sch_prov_inv , SUM(JMR_Invoice) Jmr, sum(IEX) iex_invoice,SUM(LOAD_SCH)LOAD_SCH_BASE',
'from (',
'',
'select  SUM(NU_TOTAL_SCHEDULE)LOAD_SCH, 0 Finalized_schedule,0 schedule_Provisonal_Invoice,0 JMR_Invoice,0 IEX',
'from    HD_LOAD_SCHEDULE_PROD',
'where   org_id=:GLOBAL_COMP_CODE ',
'and     PRJ_ID   = :GLOBAL_PROJ_ID ',
'AND     TO_DATE(TO_CHAR(DT_SCHEDULE_DATE,''DD-MM-YYYY'')) between     to_date(TO_DATE(:P59_FROM_DATE,''DD-MM-YYYY''),''DD-MM-YYYY'') and    TO_DATE(TO_DATE(:P59_TO_DATE,''DD-MM-YY''),''DD-MM-YYYY'')',
'UNION ALL',
'select 0 LOAD_SCH,nvl(sum(NU_TOTAL_UNIT) ,0)Finalized_schedule,0 schedule_Provisonal_Invoice,0 JMR_Invoice,0 IEX',
'from HD_FINALIZE_SCHEDULE',
'where  ORG_ID  = :GLOBAL_COMP_CODE',
'and    PRJ_ID  = :GLOBAL_PROJ_ID',
'and    DT_SCHEDULED_DATE between  :P59_FROM_DATE and :P59_TO_DATE',
'union all',
'select 0 LOAD_SCH,0 Finalized_schedule,nvl(sum(NU_SCHEDULE_UNIT),0)schedule_Provisonal_Invoice,0 JMR_Invoice,0 IEX',
'from DT_SCH_PROV_INV',
'where  ORG_ID  = :GLOBAL_COMP_CODE',
'and    PRJ_ID  = :GLOBAL_PROJ_ID',
'and    DT_BILL_FROM between  :P59_FROM_DATE and :P59_TO_DATE',
'and  DT_BILL_TO between  :P59_FROM_DATE and :P59_TO_DATE',
'union all',
'select 0 LOAD_SCH,0 Finalized_schedule, 0 schedule_Provisonal_Invoice,nvl(sum(NU_NET_EXP_UNIT),0)JMR_Invoice,0 IEX',
'from DT_INVOICE_JMR',
'where  ORG_ID  = :GLOBAL_COMP_CODE',
'and    PRJ_ID  = :GLOBAL_PROJ_ID',
'and    DT_BILL_FROM between  :P59_FROM_DATE and :P59_TO_DATE',
'and  DT_BILL_TO between  :P59_FROM_DATE and :P59_TO_DATE',
'union all',
'select 0 LOAD_SCH,0 Finalized_schedule, 0 schedule_Provisonal_Invoice,0 JMR_Invoice,nvl(sum(NU_SCHEDULE_UNIT),0)IEX',
'from DT_INV_IEX',
'where  ORG_ID  = :GLOBAL_COMP_CODE',
'and    PRJ_ID  = :GLOBAL_PROJ_ID',
'and    DT_BILL_FROM between  :P59_FROM_DATE and :P59_TO_DATE',
'and  DT_BILL_TO between  :P59_FROM_DATE and :P59_TO_DATE',
');'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P59_FROM_DATE,P59_TO_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Finaized Schedule and Invoice Unit Comparison Report '
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
 p_id=>wwv_flow_api.id(17158193848471734)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>19547540926052916
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17157513525471727)
,p_db_column_name=>'FINAL_SCH'
,p_display_order=>10
,p_column_identifier=>'C'
,p_column_label=>'Total Finalized Schedule Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17157417741471726)
,p_db_column_name=>'SCH_PROV_INV'
,p_display_order=>20
,p_column_identifier=>'D'
,p_column_label=>'Total Schedule Provional Invoice Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17157294244471725)
,p_db_column_name=>'JMR'
,p_display_order=>30
,p_column_identifier=>'E'
,p_column_label=>'Total Invoice JMR Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17157142725471724)
,p_db_column_name=>'IEX_INVOICE'
,p_display_order=>40
,p_column_identifier=>'F'
,p_column_label=>'Total Invoice  Exchange Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17156954968471722)
,p_db_column_name=>'LOAD_SCH_BASE'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Total Load Scheduled Unit'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(16644771249695126)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'200610'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'LOAD_SCH_BASE:FINAL_SCH:SCH_PROV_INV:JMR:IEX_INVOICE:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17158113627471733)
,p_plug_name=>'Search'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17157654197471729)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(17158113627471733)
,p_button_name=>'Search'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Search'
,p_icon_css_classes=>'fa-search fa-2x'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17157038260471723)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17158113627471733)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-fast-backward'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17158021420471732)
,p_name=>'P59_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17158113627471733)
,p_prompt=>'From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_10=>'showDropdowns'
,p_attribute_14=>'P59_TO_DATE'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17157899081471731)
,p_name=>'P59_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(17158113627471733)
,p_prompt=>'To Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
