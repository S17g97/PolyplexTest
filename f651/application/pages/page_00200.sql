prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Revenue Report Copy'
,p_alias=>'REVENUE-REPORT-COPY'
,p_step_title=>'Revenue Report Copy'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
' $(''td.a-IRR-aggregate.u-tL'').each(function(){',
'  if($(this).text()==''''){',
'    $(this).text(''Average:'').css("font-size", "12px");',
'  }',
'}); ',
'',
'',
'',
'',
' $(''#B56629415213844756_1'').each(function(){',
'  if($(this).text()==''Prj:''){',
'    $(this).text('' '').css("font-size", "0px");',
'  }',
'}); ',
'',
'',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div#a_Collapsible1_R117075772445015339_control_panel_content {',
'    display: none;',
'}',
'',
'span.a-IRR-aggregate-type {',
'    display: none !important;',
'}',
'',
'div#R117075772445015339_control_panel {',
'    display: none;',
'}',
'',
'ul.a-IRR-controls {',
'    display: none;',
'}',
'div#R116807677157580400_control_panel {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230627195055'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173589443424959171)
,p_plug_name=>'Report'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173692597170340639)
,p_plug_name=>'Revenue'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'    SELECT',
'        EXTRACT(MONTH FROM DT_INVOICE_DATE) AS MONTH,',
'        -- EXTRACT(year FROM DT_INVOICE_DATE) AS YEAR,',
'        (EXTRACT(year FROM b.FY_STRT) || ''-'' || EXTRACT(year FROM b.FY_END)) AS YEAR1,',
'        -- b.FY_STRT,',
'        -- b.FY_END,',
'        -- DT_INVOICE_DATE,',
'        SUM(NU_NET_AMOUNT) AS TOTAL_AMOUNT,',
'        -- TO_CHAR(TO_DATE(EXTRACT(MONTH FROM DT_INVOICE_DATE), ''MM''), ''MONTH'') AS MON,',
'        SUM(SUM(NU_NET_AMOUNT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  YEAR_TOTAL,',
'         AVG(SUM(NU_NET_AMOUNT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  Avg,',
'         get_proj_desc(:global_comp_code,a.prj_id) || '' Capacity: ''|| get_capacity(:global_comp_code,a.prj_id) prj_id',
'    FROM',
'        DT_INVOICE_JMR a,',
'        APPUA.VW_FY b',
'    WHERE',
'        a.org_id = b.org_id',
'        AND a.DT_INVOICE_DATE > b.FY_STRT',
'        AND a.DT_INVOICE_DATE < b.FY_END',
'        AND a.org_id = :global_comp_code',
'       -- AND a.prj_id = ''0000.01.0B.0001.00XR.00.1UYw3QcLd3''',
'    GROUP BY',
'         EXTRACT(MONTH FROM DT_INVOICE_DATE),',
'        -- EXTRACT(year FROM DT_INVOICE_DATE),',
'        b.FY_STRT,',
'        b.FY_END,',
'        DT_INVOICE_DATE,',
'        a.prj_id',
') src',
'PIVOT (',
'    SUM(TOTAL_AMOUNT) AS TOTAL',
'    -- SUM(YEAR_TOTAL) AS SUM_YEAR_TOTAL,',
'    -- AVG(Avg) AS AVG_AMOUNT',
'    FOR MONTH IN (',
'        1 AS JANUARY, 2 AS FEBRUARY, 3 AS MARCH, 4 AS APRIL, 5 AS MAY, 6 AS JUNE,',
'        7 AS JULY, 8 AS AUGUST, 9 AS SEPTEMBER, 10 AS OCTOBER, 11 AS NOVEMBER, 12 AS DECEMBER',
'    )',
') piv',
'',
'union',
'',
'SELECT *',
'FROM (',
'    SELECT',
'        EXTRACT(MONTH FROM DT_INVOICE_DATE) AS MONTH,',
'        -- EXTRACT(year FROM DT_INVOICE_DATE) AS YEAR,',
'        (EXTRACT(year FROM b.FY_STRT) || ''-'' || EXTRACT(year FROM b.FY_END)) AS YEAR1,',
'        -- b.FY_STRT,',
'        -- b.FY_END,',
'        -- DT_INVOICE_DATE,',
'        SUM(NU_NET_AMOUNT) AS TOTAL_AMOUNT,',
'        -- TO_CHAR(TO_DATE(EXTRACT(MONTH FROM DT_INVOICE_DATE), ''MM''), ''MONTH'') AS MON,',
'        SUM(SUM(NU_NET_AMOUNT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  YEAR_TOTAL,',
'         AVG(SUM(NU_NET_AMOUNT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  Avg,',
'        ''Total'' prj_id',
'    FROM',
'        DT_INVOICE_JMR a,',
'        APPUA.VW_FY b',
'    WHERE',
'        a.org_id = b.org_id',
'        AND a.DT_INVOICE_DATE > b.FY_STRT',
'        AND a.DT_INVOICE_DATE < b.FY_END',
'        AND a.org_id = :global_comp_code',
'       -- AND a.prj_id = ''0000.01.0B.0001.00XR.00.1UYw3QcLd3''',
'    GROUP BY',
'         EXTRACT(MONTH FROM DT_INVOICE_DATE),',
'        -- EXTRACT(year FROM DT_INVOICE_DATE),',
'        b.FY_STRT,',
'        b.FY_END,',
'        DT_INVOICE_DATE',
'',
') src',
'PIVOT (',
'    SUM(TOTAL_AMOUNT) AS TOTAL',
'    -- SUM(YEAR_TOTAL) AS SUM_YEAR_TOTAL,',
'    -- AVG(Avg) AS AVG_AMOUNT',
'    FOR MONTH IN (',
'        1 AS JANUARY, 2 AS FEBRUARY, 3 AS MARCH, 4 AS APRIL, 5 AS MAY, 6 AS JUNE,',
'        7 AS JULY, 8 AS AUGUST, 9 AS SEPTEMBER, 10 AS OCTOBER, 11 AS NOVEMBER, 12 AS DECEMBER',
'    )',
') piv;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Revenue (In Rs.) <br>',
'Company Name - &P200_COMP_NAME.'))
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
 p_id=>wwv_flow_api.id(173692515854340638)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'SHRUTI'
,p_internal_uid=>192045383241602963
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56896172489760300)
,p_db_column_name=>'YEAR1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Year'
,p_column_html_expression=>'<span style="color:BLACK;font-weight:bold">#YEAR1#</span>'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56895795834760300)
,p_db_column_name=>'YEAR_TOTAL'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Total'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56895418349760300)
,p_db_column_name=>'AVG'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Average'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56894998638760299)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Project'
,p_column_html_expression=>'<span style="font-size:15px;">#PRJ_ID#</span>'
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
,p_rpt_named_lov=>wwv_flow_api.id(38278522080582451)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56894606577760298)
,p_db_column_name=>'JANUARY_TOTAL'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'January '
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56894165278760297)
,p_db_column_name=>'FEBRUARY_TOTAL'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'February'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56893788648760297)
,p_db_column_name=>'MARCH_TOTAL'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'March'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56893355546760297)
,p_db_column_name=>'APRIL_TOTAL'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'April'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56892941911760296)
,p_db_column_name=>'MAY_TOTAL'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'May'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56892539363760295)
,p_db_column_name=>'JUNE_TOTAL'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'June'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56892180779760295)
,p_db_column_name=>'JULY_TOTAL'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'July'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56891778421760294)
,p_db_column_name=>'AUGUST_TOTAL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'August'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56891421561760294)
,p_db_column_name=>'SEPTEMBER_TOTAL'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'September'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56890980303760293)
,p_db_column_name=>'OCTOBER_TOTAL'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'October'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56890534048760293)
,p_db_column_name=>'NOVEMBER_TOTAL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'November'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56890150284760292)
,p_db_column_name=>'DECEMBER_TOTAL'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'December'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(173578786201926707)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'148705'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRJ_ID:YEAR1:APRIL_TOTAL:MAY_TOTAL:JUNE_TOTAL:JULY_TOTAL:AUGUST_TOTAL:SEPTEMBER_TOTAL:OCTOBER_TOTAL:NOVEMBER_TOTAL:DECEMBER_TOTAL:JANUARY_TOTAL:FEBRUARY_TOTAL:MARCH_TOTAL:AVG:YEAR_TOTAL:'
,p_break_on=>'PRJ_ID:0:0:0:0:0'
,p_break_enabled_on=>'PRJ_ID:0:0:0:0:0'
,p_avg_columns_on_break=>'APRIL_TOTAL:MAY_TOTAL:JUNE_TOTAL:JULY_TOTAL:AUGUST_TOTAL:SEPTEMBER_TOTAL:OCTOBER_TOTAL:NOVEMBER_TOTAL:DECEMBER_TOTAL:JANUARY_TOTAL:FEBRUARY_TOTAL:MARCH_TOTAL:AVG:YEAR_TOTAL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173958949703775560)
,p_plug_name=>'New'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>130
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    EXTRACT(MONTH FROM DT_INVOICE_DATE) AS MONTH,',
'    EXTRACT(year FROM DT_INVOICE_DATE) AS YEAR,',
'    (EXTRACT(year FROM b.FY_STRT) || ''-'' || EXTRACT(year FROM b.FY_END)) AS YEAR1,',
'    b.FY_STRT,',
'    b.FY_END,',
'    DT_INVOICE_DATE,',
'    a.PRJ_ID,',
'    SUM(NU_NET_EXP_UNIT) AS TOTAL_AMOUNT,',
'    TO_CHAR(TO_DATE(EXTRACT(MONTH FROM DT_INVOICE_DATE), ''MM''), ''MONTH'') AS MON,',
'    SUM(SUM(NU_NET_EXP_UNIT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END, a.PRJ_ID) AS YEAR_TOTAL',
'FROM',
'    DT_INVOICE_JMR a,',
'    APPUA.VW_FY b',
'WHERE',
'    a.org_id = b.org_id',
'    AND a.DT_INVOICE_DATE > b.FY_STRT',
'    AND a.DT_INVOICE_DATE < b.FY_END',
'    AND a.org_id = :global_comp_code',
'    -- AND a.prj_id = :GLOBAL_PROJ_ID',
'GROUP BY',
'    EXTRACT(MONTH FROM DT_INVOICE_DATE),',
'    EXTRACT(year FROM DT_INVOICE_DATE),',
'    b.FY_STRT,',
'    b.FY_END,',
'    DT_INVOICE_DATE,',
'    a.PRJ_ID;',
'',
' '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_api.id(173958848031775559)
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
,p_internal_uid=>192311715419037884
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56889180200760281)
,p_db_column_name=>'YEAR'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Year'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56888821450760280)
,p_db_column_name=>'YEAR1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Year'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56888423028760280)
,p_db_column_name=>'FY_STRT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Fy Strt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56888029794760279)
,p_db_column_name=>'FY_END'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Fy End'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56887604886760279)
,p_db_column_name=>'DT_INVOICE_DATE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Dt Invoice Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56887158853760278)
,p_db_column_name=>'MON'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Mon'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56886766402760278)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Prj Id'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56886370182760277)
,p_db_column_name=>'MONTH'
,p_display_order=>120
,p_column_identifier=>'AV'
,p_column_label=>'Month'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56886019164760277)
,p_db_column_name=>'TOTAL_AMOUNT'
,p_display_order=>130
,p_column_identifier=>'AW'
,p_column_label=>'Total Amount'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56885585986760273)
,p_db_column_name=>'YEAR_TOTAL'
,p_display_order=>140
,p_column_identifier=>'AX'
,p_column_label=>'Year Total'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(173629429675290081)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'148199'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'YEAR:YEAR1:FY_STRT:FY_END:DT_INVOICE_DATE:MON:PRJ_ID:MONTH:TOTAL_AMOUNT:YEAR_TOTAL'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(173960692457775578)
,p_plug_name=>'Sold Net Unit'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT *',
'FROM (',
'    SELECT',
'        EXTRACT(MONTH FROM DT_INVOICE_DATE) AS MONTH,',
'        (EXTRACT(year FROM b.FY_STRT) || ''-'' || EXTRACT(year FROM b.FY_END)) AS YEAR1,',
'        SUM(NU_NET_EXP_UNIT) AS TOTAL_AMOUNT,',
'        SUM(SUM(NU_NET_EXP_UNIT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  YEAR_TOTAL,',
'         AVG(SUM(NU_NET_EXP_UNIT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  Avg,',
'        get_proj_desc(:global_comp_code,a.prj_id) || '' Capacity: ''|| get_capacity(:global_comp_code,a.prj_id) prj_id',
'    FROM',
'        DT_INVOICE_JMR a,',
'        APPUA.VW_FY b',
'    WHERE',
'        a.org_id = b.org_id',
'        AND a.DT_INVOICE_DATE > b.FY_STRT',
'        AND a.DT_INVOICE_DATE < b.FY_END',
'        AND a.org_id = :global_comp_code',
'    GROUP BY',
'         EXTRACT(MONTH FROM DT_INVOICE_DATE),',
'        b.FY_STRT,',
'        b.FY_END,',
'        DT_INVOICE_DATE,',
'        a.prj_id',
') src',
'PIVOT (',
'    SUM(TOTAL_AMOUNT) AS TOTAL',
'    FOR MONTH IN (',
'        1 AS JANUARY, 2 AS FEBRUARY, 3 AS MARCH, 4 AS APRIL, 5 AS MAY, 6 AS JUNE,',
'        7 AS JULY, 8 AS AUGUST, 9 AS SEPTEMBER, 10 AS OCTOBER, 11 AS NOVEMBER, 12 AS DECEMBER',
'    )',
') piv',
'',
'union',
'',
'SELECT *',
'FROM (',
'    SELECT',
'        EXTRACT(MONTH FROM DT_INVOICE_DATE) AS MONTH,',
'        (EXTRACT(year FROM b.FY_STRT) || ''-'' || EXTRACT(year FROM b.FY_END)) AS YEAR1,',
'        SUM(NU_NET_EXP_UNIT) AS TOTAL_AMOUNT,',
'        SUM(SUM(NU_NET_EXP_UNIT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  YEAR_TOTAL,',
'         AVG(SUM(NU_NET_EXP_UNIT)) OVER (PARTITION BY EXTRACT(year FROM DT_INVOICE_DATE), b.FY_STRT, b.FY_END)  Avg,',
'        ''Total'' prj_id',
'    FROM',
'        DT_INVOICE_JMR a,',
'        APPUA.VW_FY b',
'    WHERE',
'        a.org_id = b.org_id',
'        AND a.DT_INVOICE_DATE > b.FY_STRT',
'        AND a.DT_INVOICE_DATE < b.FY_END',
'        AND a.org_id = :global_comp_code',
'    GROUP BY',
'         EXTRACT(MONTH FROM DT_INVOICE_DATE),',
'        b.FY_STRT,',
'        b.FY_END,',
'        DT_INVOICE_DATE',
'',
') src',
'PIVOT (',
'    SUM(TOTAL_AMOUNT) AS TOTAL',
'    FOR MONTH IN (',
'        1 AS JANUARY, 2 AS FEBRUARY, 3 AS MARCH, 4 AS APRIL, 5 AS MAY, 6 AS JUNE,',
'        7 AS JULY, 8 AS AUGUST, 9 AS SEPTEMBER, 10 AS OCTOBER, 11 AS NOVEMBER, 12 AS DECEMBER',
'    )',
') piv;',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Net Unit Sold <br>',
'Company Name - &P200_COMP_NAME.'))
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
 p_id=>wwv_flow_api.id(173960670318775577)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_download_formats=>'XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'SHRUTI'
,p_internal_uid=>192313537706037902
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56903874166760312)
,p_db_column_name=>'YEAR1'
,p_display_order=>40
,p_column_identifier=>'G'
,p_column_label=>'Year'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color:BLACK;font-weight:bold">#YEAR1#</span>',
'',
'',
''))
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56903512755760312)
,p_db_column_name=>'YEAR_TOTAL'
,p_display_order=>470
,p_column_identifier=>'BM'
,p_column_label=>'Total'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56903089006760312)
,p_db_column_name=>'AVG'
,p_display_order=>480
,p_column_identifier=>'BN'
,p_column_label=>'Average'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56902715057760311)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>490
,p_column_identifier=>'BO'
,p_column_label=>'Project'
,p_column_html_expression=>'<span style="font-size:15px;">#PRJ_ID#</span>'
,p_allow_aggregations=>'N'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(38278522080582451)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56902253039760311)
,p_db_column_name=>'JANUARY_TOTAL'
,p_display_order=>500
,p_column_identifier=>'BP'
,p_column_label=>'January '
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56901930044760310)
,p_db_column_name=>'FEBRUARY_TOTAL'
,p_display_order=>510
,p_column_identifier=>'BQ'
,p_column_label=>'February'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56901526552760310)
,p_db_column_name=>'MARCH_TOTAL'
,p_display_order=>520
,p_column_identifier=>'BR'
,p_column_label=>'March'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56901076948760309)
,p_db_column_name=>'APRIL_TOTAL'
,p_display_order=>530
,p_column_identifier=>'BS'
,p_column_label=>'April'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56900692734760309)
,p_db_column_name=>'MAY_TOTAL'
,p_display_order=>540
,p_column_identifier=>'BT'
,p_column_label=>'May'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56900264271760308)
,p_db_column_name=>'JUNE_TOTAL'
,p_display_order=>550
,p_column_identifier=>'BU'
,p_column_label=>'June'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56899931320760308)
,p_db_column_name=>'JULY_TOTAL'
,p_display_order=>560
,p_column_identifier=>'BV'
,p_column_label=>'July'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56899442751760307)
,p_db_column_name=>'AUGUST_TOTAL'
,p_display_order=>570
,p_column_identifier=>'BW'
,p_column_label=>'August'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56899040259760307)
,p_db_column_name=>'SEPTEMBER_TOTAL'
,p_display_order=>580
,p_column_identifier=>'BX'
,p_column_label=>'September'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56898665434760306)
,p_db_column_name=>'OCTOBER_TOTAL'
,p_display_order=>590
,p_column_identifier=>'BY'
,p_column_label=>'October'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56898321731760306)
,p_db_column_name=>'NOVEMBER_TOTAL'
,p_display_order=>600
,p_column_identifier=>'BZ'
,p_column_label=>'November'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(56897867913760305)
,p_db_column_name=>'DECEMBER_TOTAL'
,p_display_order=>610
,p_column_identifier=>'CA'
,p_column_label=>'December'
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
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(173802487894642835)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_type=>'REPORT'
,p_report_alias=>'146468'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PRJ_ID:YEAR1:APRIL_TOTAL:MAY_TOTAL:JUNE_TOTAL:JULY_TOTAL:AUGUST_TOTAL:SEPTEMBER_TOTAL:OCTOBER_TOTAL:NOVEMBER_TOTAL:DECEMBER_TOTAL:JANUARY_TOTAL:FEBRUARY_TOTAL:MARCH_TOTAL:AVG:YEAR_TOTAL:'
,p_break_on=>'PRJ_ID:0:0:0:0'
,p_break_enabled_on=>'PRJ_ID:0:0:0:0'
,p_avg_columns_on_break=>'APRIL_TOTAL:MAY_TOTAL:JUNE_TOTAL:JULY_TOTAL:AUGUST_TOTAL:SEPTEMBER_TOTAL:OCTOBER_TOTAL:NOVEMBER_TOTAL:DECEMBER_TOTAL:JANUARY_TOTAL:FEBRUARY_TOTAL:MARCH_TOTAL:AVG:YEAR_TOTAL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(56897218263760302)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(173589443424959171)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Back'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50712140049835206)
,p_name=>'P200_COMP_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(173960692457775578)
,p_item_default=>':GLOBAL_COMP_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.component_end;
end;
/
