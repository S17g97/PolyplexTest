prompt --application/pages/page_00091
begin
--   Manifest
--     PAGE: 00091
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
 p_id=>91
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Replacement Report'
,p_alias=>'METER-REPLACEMENT-REPORT'
,p_step_title=>'Meter Replacement Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.a-IRR-table {',
'  ',
'    text-wrap: nowrap;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230807174400'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49969894420045115)
,p_plug_name=>'Meter Replacement Report'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49969920665045116)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51771514565995893)
,p_plug_name=>'Meter Replacement Report'
,p_parent_plug_id=>wwv_flow_api.id(49969920665045116)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        ''New Main Meter'' Meter,',
'       NU_LOC_DOC_NO,',
'       CH_TYPE,',
'       VC_COMMON_REMARKS,',
'       VC_MAIN_NEW_METER_NO,',
'       NU_MAIN_NEW_FACTOR,',
'       VC_MAIN_NEW_MAKE,',
'       VC_MAIN_NEW_TYPE,',
'       VC_MAIN_NEW_ACCU_CLS,',
'       VC_MAIN_NEW_RATIO,',
'       VC_MAIN_NEW_MFG,',
'       VC_MAIN_NEW_BY_MT,',
'       VC_MAIN_NEW_BY_HPSEBL,',
'       NU_MAIN_NEW_IMP,',
'       NU_MAIN_NEW_EXP,',
'       VC_MAIN_NEW_UNIT_EXP,',
'       VC_MAIN_NEW_LOC_PANE,',
'       DT_MAIN_NEW_INSTALL_DATE,',
'       VC_MAIN_NEW_REMARKS,',
'       NU_MAIN_NEW_KVAH_READ_EXP,',
'       VC_MAIN_NEW_KVAH_UNIT_EXP,',
'       NU_MAIN_NEW_KVAH_READ_IMP,',
'       VC_MAIN_NEW_KVAH_UNIT_IMP,',
'       VC_MAIN_NEW_UNIT_IMP,',
'       VC_MAIN_OLD_METER_NO,',
'       NU_MAIN_OLD_FACTOR,',
'       VC_MAIN_OLD_MAKE,',
'       VC_MAIN_OLD_TYPE,',
'       VC_MAIN_OLD_ACCU_CLS,',
'       VC_MAIN_OLD_RATIO,',
'       VC_MAIN_OLD_MFG,',
'       VC_MAIN_OLD_BY_MT,',
'       VC_MAIN_OLD_BY_HPSEBL,',
'       NU_MAIN_OLD_IMP,',
'       NU_MAIN_OLD_EXP,',
'       VC_MAIN_OLD_UNIT_EXP,',
'       VC_MAIN_OLD_LOC_PANE,',
' 	DT_MAIN_OLD_REPLC_DATE,',
'       VC_MAIN_OLD_REMARKS,',
'     NU_MAIN_OLD_KVAH_READ_EXP,',
'       VC_MAIN_OLD_KVAH_UNIT_EXP,',
'  NU_MAIN_OLD_KVAH_READ_IMP,',
' VC_MAIN_OLD_KVAH_UNIT_IMP,',
'       VC_MAIN_OLD_UNIT_IMP',
'    --    DT_MAIN_NEW_CALLIB_DATE',
' ',
'  from DT_METER_REPLACEMENT',
'  where ORG_ID = :GLOBAL_COMP_CODE',
'  and PRJ_ID =:GLOBAL_PROJ_ID',
'   and CH_TYPE IN(''M'',''B'')',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Meter Replacement Report'
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
 p_id=>wwv_flow_api.id(51771687432995894)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SHRUTI'
,p_internal_uid=>70124554820258219
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(270463373818554)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(270018691818555)
,p_db_column_name=>'CH_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(269633997818555)
,p_db_column_name=>'VC_COMMON_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>' Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(269256318818556)
,p_db_column_name=>'VC_MAIN_NEW_METER_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'New Main Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(268803482818558)
,p_db_column_name=>'NU_MAIN_NEW_FACTOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'New Main Meter Multiplying Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(268551223818559)
,p_db_column_name=>'VC_MAIN_NEW_MAKE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Main Meter Make/Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(268135435818561)
,p_db_column_name=>'VC_MAIN_NEW_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'New Main Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(267733106818561)
,p_db_column_name=>'VC_MAIN_NEW_ACCU_CLS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'New Main Meter Accuracy Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(267268087818562)
,p_db_column_name=>'VC_MAIN_NEW_RATIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'New Main Meter Ratio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(266887595818564)
,p_db_column_name=>'VC_MAIN_NEW_MFG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'New Main Meter MFG'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(266518599818564)
,p_db_column_name=>'VC_MAIN_NEW_BY_MT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'New Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(266104188818565)
,p_db_column_name=>'VC_MAIN_NEW_BY_HPSEBL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'New Main Meter Sealed by Agency 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(265762972818566)
,p_db_column_name=>'NU_MAIN_NEW_IMP'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'New Main Meter Import'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(265353384818566)
,p_db_column_name=>'NU_MAIN_NEW_EXP'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'New Main Meter Export'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(264941626818567)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_EXP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(264482019818567)
,p_db_column_name=>'VC_MAIN_NEW_LOC_PANE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'New Main Meter Location Panel'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(264133675818568)
,p_db_column_name=>'DT_MAIN_NEW_INSTALL_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'New Main Meter Installation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263759008818568)
,p_db_column_name=>'VC_MAIN_NEW_REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'New Main Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(263315900818569)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_EXP'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'New Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(262926999818570)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_EXP'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(262536337818570)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_IMP'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Main Meter Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(262092190818571)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_IMP'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261676571818571)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_IMP'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(261317696818572)
,p_db_column_name=>'METER'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Meter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(260928517818572)
,p_db_column_name=>'VC_MAIN_OLD_METER_NO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Old Main Meter No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(260549908818573)
,p_db_column_name=>'NU_MAIN_OLD_FACTOR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Old Main Meter Multiplying Factor '
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(260093242818573)
,p_db_column_name=>'VC_MAIN_OLD_MAKE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Old Main Meter/Make'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(259749290818574)
,p_db_column_name=>'VC_MAIN_OLD_TYPE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Old Main Meter Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(259348230818574)
,p_db_column_name=>'VC_MAIN_OLD_ACCU_CLS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Old Main Meter Accuracy Class'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(258867609818575)
,p_db_column_name=>'VC_MAIN_OLD_RATIO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Old Main Meter Ratio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(258493966818576)
,p_db_column_name=>'VC_MAIN_OLD_MFG'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Old Main Meter MFG'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(258153433818576)
,p_db_column_name=>'VC_MAIN_OLD_BY_MT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Old Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(257726121818577)
,p_db_column_name=>'VC_MAIN_OLD_BY_HPSEBL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Old Main Meter  Sealed by Agency 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(257346695818577)
,p_db_column_name=>'NU_MAIN_OLD_IMP'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Old Main Meter Import'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(256896344818578)
,p_db_column_name=>'NU_MAIN_OLD_EXP'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Old Main Meter Export'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(256486396818578)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_EXP'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Old Main meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(256164337818579)
,p_db_column_name=>'VC_MAIN_OLD_LOC_PANE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Old Main Meter Location Panel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(255718069818579)
,p_db_column_name=>'DT_MAIN_OLD_REPLC_DATE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Old Main Meter Replacement Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(255307030818580)
,p_db_column_name=>'VC_MAIN_OLD_REMARKS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Old Main Meter Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(254942008818580)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_EXP'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Old Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(254499663818581)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_EXP'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Old Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(254110327818582)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_IMP'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Old Main Meter Import Reading'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(253688727818582)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_IMP'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Old Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(253307217818583)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_IMP'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old Main Meter Import Unit '
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51820436457980978)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'167135'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_LOC_DOC_NO:CH_TYPE:VC_COMMON_REMARKS:VC_MAIN_NEW_METER_NO:NU_MAIN_NEW_FACTOR:VC_MAIN_NEW_MAKE:VC_MAIN_NEW_TYPE:VC_MAIN_NEW_ACCU_CLS:VC_MAIN_NEW_RATIO:VC_MAIN_NEW_MFG:VC_MAIN_NEW_BY_MT:VC_MAIN_NEW_BY_HPSEBL:NU_MAIN_NEW_IMP:NU_MAIN_NEW_EXP:VC_MAIN_N'
||'EW_UNIT_EXP:VC_MAIN_NEW_LOC_PANE:DT_MAIN_NEW_INSTALL_DATE:VC_MAIN_NEW_REMARKS:NU_MAIN_NEW_KVAH_READ_EXP:VC_MAIN_NEW_KVAH_UNIT_EXP:NU_MAIN_NEW_KVAH_READ_IMP:VC_MAIN_NEW_KVAH_UNIT_IMP:VC_MAIN_NEW_UNIT_IMP:METER:VC_MAIN_OLD_METER_NO:NU_MAIN_OLD_FACTOR:V'
||'C_MAIN_OLD_MAKE:VC_MAIN_OLD_TYPE:VC_MAIN_OLD_ACCU_CLS:VC_MAIN_OLD_RATIO:VC_MAIN_OLD_MFG:VC_MAIN_OLD_BY_MT:VC_MAIN_OLD_BY_HPSEBL:NU_MAIN_OLD_IMP:NU_MAIN_OLD_EXP:VC_MAIN_OLD_UNIT_EXP:VC_MAIN_OLD_LOC_PANE:DT_MAIN_OLD_REPLC_DATE:VC_MAIN_OLD_REMARKS:NU_MA'
||'IN_OLD_KVAH_READ_EXP:VC_MAIN_OLD_KVAH_UNIT_EXP:NU_MAIN_OLD_KVAH_READ_IMP:VC_MAIN_OLD_KVAH_UNIT_IMP:VC_MAIN_OLD_UNIT_IMP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51776148735989689)
,p_plug_name=>'Meter Replacement Report'
,p_parent_plug_id=>wwv_flow_api.id(49969920665045116)
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'        ''New Main Meter'' Meter,',
'       NU_LOC_DOC_NO,',
'       CH_TYPE,',
'       VC_COMMON_REMARKS,',
'       VC_MAIN_NEW_METER_NO,',
'       NU_MAIN_NEW_FACTOR,',
'       VC_MAIN_NEW_MAKE,',
'       VC_MAIN_NEW_TYPE,',
'       VC_MAIN_NEW_ACCU_CLS,',
'       VC_MAIN_NEW_RATIO,',
'       VC_MAIN_NEW_MFG,',
'       VC_MAIN_NEW_BY_MT,',
'       VC_MAIN_NEW_BY_HPSEBL,',
'       NU_MAIN_NEW_IMP,',
'       NU_MAIN_NEW_EXP,',
'       VC_MAIN_NEW_UNIT_EXP,',
'       VC_MAIN_NEW_LOC_PANE,',
'       DT_MAIN_NEW_INSTALL_DATE,',
'       VC_MAIN_NEW_REMARKS,',
'       NU_MAIN_NEW_KVAH_READ_EXP,',
'       VC_MAIN_NEW_KVAH_UNIT_EXP,',
'       NU_MAIN_NEW_KVAH_READ_IMP,',
'       VC_MAIN_NEW_KVAH_UNIT_IMP,',
'       VC_MAIN_NEW_UNIT_IMP,',
'       VC_MAIN_OLD_METER_NO,',
'       NU_MAIN_OLD_FACTOR,',
'       VC_MAIN_OLD_MAKE,',
'       VC_MAIN_OLD_TYPE,',
'       VC_MAIN_OLD_ACCU_CLS,',
'       VC_MAIN_OLD_RATIO,',
'       VC_MAIN_OLD_MFG,',
'       VC_MAIN_OLD_BY_MT,',
'       VC_MAIN_OLD_BY_HPSEBL,',
'       NU_MAIN_OLD_IMP,',
'       NU_MAIN_OLD_EXP,',
'       VC_MAIN_OLD_UNIT_EXP,',
'       VC_MAIN_OLD_LOC_PANE,',
' 	DT_MAIN_OLD_REPLC_DATE,',
'       VC_MAIN_OLD_REMARKS,',
'     NU_MAIN_OLD_KVAH_READ_EXP,',
'       VC_MAIN_OLD_KVAH_UNIT_EXP,',
'  NU_MAIN_OLD_KVAH_READ_IMP,',
' VC_MAIN_OLD_KVAH_UNIT_IMP,',
'       VC_MAIN_OLD_UNIT_IMP',
'    --    DT_MAIN_NEW_CALLIB_DATE',
' ',
'  from DT_METER_REPLACEMENT',
'  where ORG_ID = :GLOBAL_COMP_CODE',
'  and PRJ_ID =:GLOBAL_PROJ_ID',
'   and CH_TYPE IN(''M'',''B'')',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Meter Replacement Report'
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
 p_id=>wwv_flow_api.id(51776226432989690)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SHRUTI'
,p_internal_uid=>70129093820252015
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(252355477818585)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(251963248818586)
,p_db_column_name=>'CH_TYPE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(251536010818586)
,p_db_column_name=>'VC_COMMON_REMARKS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>' Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(251150492818587)
,p_db_column_name=>'VC_MAIN_NEW_METER_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'New Main Meter No'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(250754266818587)
,p_db_column_name=>'NU_MAIN_NEW_FACTOR'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'New Main Meter Multiplying Factor'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(250318673818588)
,p_db_column_name=>'VC_MAIN_NEW_MAKE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'New Main Meter Make/Model'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(249958711818588)
,p_db_column_name=>'VC_MAIN_NEW_TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'New Main Meter Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(249542588818589)
,p_db_column_name=>'VC_MAIN_NEW_ACCU_CLS'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'New Main Meter Accuracy Class'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(249166248818589)
,p_db_column_name=>'VC_MAIN_NEW_RATIO'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'New Main Meter Ratio'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(248692838818590)
,p_db_column_name=>'VC_MAIN_NEW_MFG'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'New Main Meter MFG'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(248321036818590)
,p_db_column_name=>'VC_MAIN_NEW_BY_MT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'New Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(247964970818591)
,p_db_column_name=>'VC_MAIN_NEW_BY_HPSEBL'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'New Main Meter Sealed by Agency 2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(247485228818591)
,p_db_column_name=>'NU_MAIN_NEW_IMP'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'New Main Meter Import'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(247162940818592)
,p_db_column_name=>'NU_MAIN_NEW_EXP'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'New Main Meter Export'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(246680072818592)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_EXP'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(246289756818593)
,p_db_column_name=>'VC_MAIN_NEW_LOC_PANE'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'New Main Meter Location Panel'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245943489818593)
,p_db_column_name=>'DT_MAIN_NEW_INSTALL_DATE'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'New Main Meter Installation Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245478503818594)
,p_db_column_name=>'VC_MAIN_NEW_REMARKS'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'New Main Meter Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(245165459818594)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_EXP'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'New Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(244763141818595)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_EXP'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(244293269818595)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_IMP'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'New Main Meter Reading'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(243916024818596)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_IMP'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(243513609818596)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_IMP'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(243138414818597)
,p_db_column_name=>'METER'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Meter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(242699108818597)
,p_db_column_name=>'VC_MAIN_OLD_METER_NO'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Old Main Meter No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(242351219818598)
,p_db_column_name=>'NU_MAIN_OLD_FACTOR'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Old Main Meter Multiplying Factor '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(241966983818598)
,p_db_column_name=>'VC_MAIN_OLD_MAKE'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Old Main Meter/Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(241476290818599)
,p_db_column_name=>'VC_MAIN_OLD_TYPE'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Old Main Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(241152840818599)
,p_db_column_name=>'VC_MAIN_OLD_ACCU_CLS'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Old Main Meter Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240708456818600)
,p_db_column_name=>'VC_MAIN_OLD_RATIO'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Old Main Meter Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(240364222818600)
,p_db_column_name=>'VC_MAIN_OLD_MFG'
,p_display_order=>310
,p_column_identifier=>'AE'
,p_column_label=>'Old Main Meter MFG'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239944649818601)
,p_db_column_name=>'VC_MAIN_OLD_BY_MT'
,p_display_order=>320
,p_column_identifier=>'AF'
,p_column_label=>'Old Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239517185818601)
,p_db_column_name=>'VC_MAIN_OLD_BY_HPSEBL'
,p_display_order=>330
,p_column_identifier=>'AG'
,p_column_label=>'Old Main Meter  Sealed by Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(239145026818602)
,p_db_column_name=>'NU_MAIN_OLD_IMP'
,p_display_order=>340
,p_column_identifier=>'AH'
,p_column_label=>'Old Main Meter Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(238723635818602)
,p_db_column_name=>'NU_MAIN_OLD_EXP'
,p_display_order=>350
,p_column_identifier=>'AI'
,p_column_label=>'Old Main Meter Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(238289776818603)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_EXP'
,p_display_order=>360
,p_column_identifier=>'AJ'
,p_column_label=>'Old Main meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(237904507818603)
,p_db_column_name=>'VC_MAIN_OLD_LOC_PANE'
,p_display_order=>370
,p_column_identifier=>'AK'
,p_column_label=>'Old Main Meter Location Panel'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(237496113818604)
,p_db_column_name=>'DT_MAIN_OLD_REPLC_DATE'
,p_display_order=>380
,p_column_identifier=>'AL'
,p_column_label=>'Old Main Meter Replacement Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(237095879818604)
,p_db_column_name=>'VC_MAIN_OLD_REMARKS'
,p_display_order=>390
,p_column_identifier=>'AM'
,p_column_label=>'Old Main Meter Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236717149818604)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_EXP'
,p_display_order=>400
,p_column_identifier=>'AN'
,p_column_label=>'Old Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(236287017818605)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_EXP'
,p_display_order=>410
,p_column_identifier=>'AO'
,p_column_label=>'Old Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235879223818605)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_IMP'
,p_display_order=>420
,p_column_identifier=>'AP'
,p_column_label=>'Old Main Meter Import Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235503583818606)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_IMP'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Old Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(235146251818606)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_IMP'
,p_display_order=>440
,p_column_identifier=>'AR'
,p_column_label=>'Old Main Meter Import Unit '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51821060399980967)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'167141'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_LOC_DOC_NO:CH_TYPE:VC_COMMON_REMARKS:VC_MAIN_NEW_METER_NO:NU_MAIN_NEW_FACTOR:VC_MAIN_NEW_MAKE:VC_MAIN_NEW_TYPE:VC_MAIN_NEW_ACCU_CLS:VC_MAIN_NEW_RATIO:VC_MAIN_NEW_MFG:VC_MAIN_NEW_BY_MT:VC_MAIN_NEW_BY_HPSEBL:NU_MAIN_NEW_IMP:NU_MAIN_NEW_EXP:VC_MAIN_N'
||'EW_UNIT_EXP:VC_MAIN_NEW_LOC_PANE:DT_MAIN_NEW_INSTALL_DATE:VC_MAIN_NEW_REMARKS:NU_MAIN_NEW_KVAH_READ_EXP:VC_MAIN_NEW_KVAH_UNIT_EXP:NU_MAIN_NEW_KVAH_READ_IMP:VC_MAIN_NEW_KVAH_UNIT_IMP:VC_MAIN_NEW_UNIT_IMP:METER:VC_MAIN_OLD_METER_NO:NU_MAIN_OLD_FACTOR:V'
||'C_MAIN_OLD_MAKE:VC_MAIN_OLD_TYPE:VC_MAIN_OLD_ACCU_CLS:VC_MAIN_OLD_RATIO:VC_MAIN_OLD_MFG:VC_MAIN_OLD_BY_MT:VC_MAIN_OLD_BY_HPSEBL:NU_MAIN_OLD_IMP:NU_MAIN_OLD_EXP:VC_MAIN_OLD_UNIT_EXP:VC_MAIN_OLD_LOC_PANE:DT_MAIN_OLD_REPLC_DATE:VC_MAIN_OLD_REMARKS:NU_MA'
||'IN_OLD_KVAH_READ_EXP:VC_MAIN_OLD_KVAH_UNIT_EXP:NU_MAIN_OLD_KVAH_READ_IMP:VC_MAIN_OLD_KVAH_UNIT_IMP:VC_MAIN_OLD_UNIT_IMP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51527036560091798)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       ',
'       NU_LOC_DOC_NO,',
'       CH_TYPE,',
'       VC_COMMON_REMARKS,',
'       VC_MAIN_NEW_METER_NO,',
'       NU_MAIN_NEW_FACTOR,',
'       VC_MAIN_NEW_MAKE,',
'       VC_MAIN_NEW_TYPE,',
'       VC_MAIN_NEW_ACCU_CLS,',
'       VC_MAIN_NEW_RATIO,',
'       VC_MAIN_NEW_MFG,',
'       VC_MAIN_NEW_BY_MT,',
'       VC_MAIN_NEW_BY_HPSEBL,',
'       NU_MAIN_NEW_IMP,',
'       NU_MAIN_NEW_EXP,',
'       VC_MAIN_NEW_UNIT_EXP,',
'       VC_MAIN_NEW_LOC_PANE,',
'       DT_MAIN_NEW_INSTALL_DATE,',
'       VC_MAIN_NEW_REMARKS,',
'       NU_MAIN_NEW_KVAH_READ_EXP,',
'       VC_MAIN_NEW_KVAH_UNIT_EXP,',
'       NU_MAIN_NEW_KVAH_READ_IMP,',
'       VC_MAIN_NEW_KVAH_UNIT_IMP,',
'       VC_MAIN_NEW_UNIT_IMP,',
'       VC_MAIN_OLD_METER_NO,',
'       NU_MAIN_OLD_FACTOR,',
'       VC_MAIN_OLD_MAKE,',
'       VC_MAIN_OLD_TYPE,',
'       VC_MAIN_OLD_ACCU_CLS,',
'       VC_MAIN_OLD_RATIO,',
'       VC_MAIN_OLD_MFG,',
'       VC_MAIN_OLD_BY_MT,',
'       VC_MAIN_OLD_BY_HPSEBL,',
'       NU_MAIN_OLD_IMP,',
'       NU_MAIN_OLD_EXP,',
'       VC_MAIN_OLD_UNIT_EXP,',
'       VC_MAIN_OLD_LOC_PANE,',
' 	DT_MAIN_OLD_REPLC_DATE,',
'       VC_MAIN_OLD_REMARKS,',
'     NU_MAIN_OLD_KVAH_READ_EXP,',
'       VC_MAIN_OLD_KVAH_UNIT_EXP,',
'  NU_MAIN_OLD_KVAH_READ_IMP,',
' VC_MAIN_OLD_KVAH_UNIT_IMP,',
'       VC_MAIN_OLD_UNIT_IMP',
'    --    DT_MAIN_NEW_CALLIB_DATE',
' ',
'  from DT_METER_REPLACEMENT',
'  where ORG_ID = :GLOBAL_COMP_CODE',
'  and PRJ_ID =:GLOBAL_PROJ_ID',
'   and CH_TYPE IN(''M'',''B'')',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Main Meter'
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
 p_id=>wwv_flow_api.id(51527161993091798)
,p_name=>'Meter Replacement Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SHRUTI'
,p_internal_uid=>69880029380354123
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(234155237818608)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_api.id(191385807818662)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(233734245818609)
,p_db_column_name=>'CH_TYPE'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(233316256818609)
,p_db_column_name=>'VC_COMMON_REMARKS'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>' Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232910374818610)
,p_db_column_name=>'VC_MAIN_NEW_METER_NO'
,p_display_order=>22
,p_column_identifier=>'V'
,p_column_label=>'New Main Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232503801818610)
,p_db_column_name=>'NU_MAIN_NEW_FACTOR'
,p_display_order=>23
,p_column_identifier=>'W'
,p_column_label=>'New Main Meter Multiplying Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(232070507818611)
,p_db_column_name=>'VC_MAIN_NEW_MAKE'
,p_display_order=>24
,p_column_identifier=>'X'
,p_column_label=>'New Main Meter Make/Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(231712106818611)
,p_db_column_name=>'VC_MAIN_NEW_TYPE'
,p_display_order=>25
,p_column_identifier=>'Y'
,p_column_label=>'New Main Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(231302264818612)
,p_db_column_name=>'VC_MAIN_NEW_ACCU_CLS'
,p_display_order=>26
,p_column_identifier=>'Z'
,p_column_label=>'New Main Meter Accuracy Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(230923085818612)
,p_db_column_name=>'VC_MAIN_NEW_RATIO'
,p_display_order=>27
,p_column_identifier=>'AA'
,p_column_label=>'New Main Meter Ratio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(230475084818612)
,p_db_column_name=>'VC_MAIN_NEW_MFG'
,p_display_order=>28
,p_column_identifier=>'AB'
,p_column_label=>'New Main Meter MFG'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(230166207818613)
,p_db_column_name=>'VC_MAIN_NEW_BY_MT'
,p_display_order=>29
,p_column_identifier=>'AC'
,p_column_label=>'New Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(229704399818613)
,p_db_column_name=>'VC_MAIN_NEW_BY_HPSEBL'
,p_display_order=>30
,p_column_identifier=>'AD'
,p_column_label=>'New Main Meter Sealed by Agency 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(229329695818614)
,p_db_column_name=>'NU_MAIN_NEW_IMP'
,p_display_order=>31
,p_column_identifier=>'AE'
,p_column_label=>'New Main Meter Import'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(228959587818614)
,p_db_column_name=>'NU_MAIN_NEW_EXP'
,p_display_order=>32
,p_column_identifier=>'AF'
,p_column_label=>'New Main Meter Export'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(228542023818615)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_EXP'
,p_display_order=>33
,p_column_identifier=>'AG'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(228093818818615)
,p_db_column_name=>'VC_MAIN_NEW_LOC_PANE'
,p_display_order=>34
,p_column_identifier=>'AH'
,p_column_label=>'New Main Meter Location Panel'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(227684221818616)
,p_db_column_name=>'DT_MAIN_NEW_INSTALL_DATE'
,p_display_order=>35
,p_column_identifier=>'AI'
,p_column_label=>'New Main Meter Installation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(227309460818616)
,p_db_column_name=>'VC_MAIN_NEW_REMARKS'
,p_display_order=>37
,p_column_identifier=>'AK'
,p_column_label=>'New Main Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226957030818617)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_EXP'
,p_display_order=>97
,p_column_identifier=>'AQ'
,p_column_label=>'New Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226497450818617)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_EXP'
,p_display_order=>107
,p_column_identifier=>'AR'
,p_column_label=>'New Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(226145818818617)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_IMP'
,p_display_order=>117
,p_column_identifier=>'AS'
,p_column_label=>'New Main Meter Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225679950818618)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_IMP'
,p_display_order=>127
,p_column_identifier=>'AT'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(225334430818618)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_IMP'
,p_display_order=>137
,p_column_identifier=>'AU'
,p_column_label=>'New Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224967190818619)
,p_db_column_name=>'VC_MAIN_OLD_METER_NO'
,p_display_order=>157
,p_column_identifier=>'AX'
,p_column_label=>'Old Main Meter No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224551372818619)
,p_db_column_name=>'NU_MAIN_OLD_FACTOR'
,p_display_order=>167
,p_column_identifier=>'AY'
,p_column_label=>'Old Main Meter Multiplying Factor '
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(224087260818620)
,p_db_column_name=>'VC_MAIN_OLD_MAKE'
,p_display_order=>177
,p_column_identifier=>'AZ'
,p_column_label=>'Old Main Meter/Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(223727564818620)
,p_db_column_name=>'VC_MAIN_OLD_TYPE'
,p_display_order=>187
,p_column_identifier=>'BA'
,p_column_label=>'Old Main Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(223271183818620)
,p_db_column_name=>'VC_MAIN_OLD_ACCU_CLS'
,p_display_order=>197
,p_column_identifier=>'BB'
,p_column_label=>'Old Main Meter Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222871974818621)
,p_db_column_name=>'VC_MAIN_OLD_RATIO'
,p_display_order=>207
,p_column_identifier=>'BC'
,p_column_label=>'Old Main Meter Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222504070818621)
,p_db_column_name=>'VC_MAIN_OLD_MFG'
,p_display_order=>217
,p_column_identifier=>'BD'
,p_column_label=>'Old Main Meter MFG'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(222140048818622)
,p_db_column_name=>'VC_MAIN_OLD_BY_MT'
,p_display_order=>227
,p_column_identifier=>'BE'
,p_column_label=>'Old Main Meter Sealed by Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(221758859818622)
,p_db_column_name=>'VC_MAIN_OLD_BY_HPSEBL'
,p_display_order=>237
,p_column_identifier=>'BF'
,p_column_label=>'Old Main Meter  Sealed by Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(221324836818623)
,p_db_column_name=>'NU_MAIN_OLD_IMP'
,p_display_order=>247
,p_column_identifier=>'BG'
,p_column_label=>'Old Main Meter Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220940436818623)
,p_db_column_name=>'NU_MAIN_OLD_EXP'
,p_display_order=>257
,p_column_identifier=>'BH'
,p_column_label=>'Old Main Meter Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220525865818624)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_EXP'
,p_display_order=>267
,p_column_identifier=>'BI'
,p_column_label=>'Old Main meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(220116526818624)
,p_db_column_name=>'VC_MAIN_OLD_LOC_PANE'
,p_display_order=>277
,p_column_identifier=>'BJ'
,p_column_label=>'Old Main Meter Location Panel'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(219683364818624)
,p_db_column_name=>'DT_MAIN_OLD_REPLC_DATE'
,p_display_order=>287
,p_column_identifier=>'BK'
,p_column_label=>'Old Main Meter Replacement Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(219361381818625)
,p_db_column_name=>'VC_MAIN_OLD_REMARKS'
,p_display_order=>297
,p_column_identifier=>'BL'
,p_column_label=>'Old Main Meter Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(218936745818625)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_EXP'
,p_display_order=>307
,p_column_identifier=>'BM'
,p_column_label=>'Old Main Meter Export Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(218523516818626)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_EXP'
,p_display_order=>317
,p_column_identifier=>'BN'
,p_column_label=>'Old Main Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(218098349818626)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_IMP'
,p_display_order=>327
,p_column_identifier=>'BO'
,p_column_label=>'Old Main Meter Import Reading'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(217731750818627)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_IMP'
,p_display_order=>337
,p_column_identifier=>'BP'
,p_column_label=>'Old Main Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(217279194818627)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_IMP'
,p_display_order=>347
,p_column_identifier=>'BQ'
,p_column_label=>'Old Main Meter Import Unit '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51572704007058770)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'164658'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_LOC_DOC_NO:VC_MAIN_NEW_METER_NO:NU_MAIN_NEW_FACTOR:VC_MAIN_NEW_MAKE:VC_MAIN_NEW_TYPE:VC_MAIN_NEW_ACCU_CLS:VC_MAIN_NEW_RATIO:VC_MAIN_NEW_MFG:VC_MAIN_NEW_BY_MT:VC_MAIN_NEW_BY_HPSEBL:NU_MAIN_NEW_IMP:NU_MAIN_NEW_EXP:VC_MAIN_NEW_UNIT_EXP:VC_MAIN_NEW_LO'
||'C_PANE:DT_MAIN_NEW_INSTALL_DATE:VC_MAIN_NEW_REMARKS:NU_MAIN_NEW_KVAH_READ_EXP:VC_MAIN_NEW_KVAH_UNIT_EXP:NU_MAIN_NEW_KVAH_READ_IMP:VC_MAIN_NEW_KVAH_UNIT_IMP:VC_MAIN_NEW_UNIT_IMP:VC_MAIN_OLD_METER_NO:NU_MAIN_OLD_FACTOR:VC_MAIN_OLD_MAKE:VC_MAIN_OLD_TYPE'
||':VC_MAIN_OLD_ACCU_CLS:VC_MAIN_OLD_RATIO:VC_MAIN_OLD_MFG:VC_MAIN_OLD_BY_MT:VC_MAIN_OLD_BY_HPSEBL:NU_MAIN_OLD_IMP:NU_MAIN_OLD_EXP:VC_MAIN_OLD_UNIT_EXP:VC_MAIN_OLD_LOC_PANE:DT_MAIN_OLD_REPLC_DATE:VC_MAIN_OLD_REMARKS:NU_MAIN_OLD_KVAH_READ_EXP:VC_MAIN_OLD'
||'_KVAH_UNIT_EXP:NU_MAIN_OLD_KVAH_READ_IMP:VC_MAIN_OLD_KVAH_UNIT_IMP:VC_MAIN_OLD_UNIT_IMP:VC_COMMON_REMARKS:'
,p_break_on=>'0:0:0:0:0'
,p_break_enabled_on=>'0:0:0:0:0'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51579023783024774)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       VC_CHECK_OLD_METER_NO,',
'       NU_CHECK_OLD_FACTOR,',
'       VC_CHECK_OLD_MAKE,',
'       VC_CHECK_OLD_TYPE,',
'       VC_CHECK_OLD_ACCU_CLS,',
'       VC_CHECK_OLD_RATIO,',
'       VC_CHECK_OLD_MFG,',
'       VC_CHECK_OLD_BY_MT,',
'       VC_CHECK_OLD_BY_HPSEBL,',
'       NU_CHECK_OLD_IMP,',
'       NU_CHECK_OLD_EXP,',
'       VC_CHECK_OLD_UNIT_EXP,',
'       VC_CHECK_OLD_LOC_PANE,',
'       VC_CHECK_OLD_REMARKS,',
'       VC_CHECK_NEW_METER_NO,',
'       NU_CHECK_NEW_FACTOR,',
'       VC_CHECK_NEW_MAKE,',
'       VC_CHECK_NEW_TYPE,',
'       VC_CHECK_NEW_ACCU_CLS,',
'       VC_CHECK_NEW_RATIO,',
'       VC_CHECK_NEW_MFG,',
'       VC_CHECK_NEW_BY_MT,',
'       VC_CHECK_NEW_BY_HPSEBL,',
'       NU_CHECK_NEW_IMP,',
'       NU_CHECK_NEW_EXP,',
'       VC_CHECK_NEW_UNIT_EXP,',
'       VC_CHECK_NEW_LOC_PANE,',
'       DT_CHECK_NEW_INSTALL_DATE,',
'       DT_CHECK_OLD_REPLC_DATE,',
'       VC_CHECK_NEW_REMARKS,',
'    --    CH_AUTH_FLAG,',
'    --    VC_WKF_STAGE,',
'    --    VC_WKUSERS_CODE,',
'       USR_ID_CREATE,',
'       USR_ID_CREATE_DT,',
'    --    VC_AUTH_CODE,',
'    --    USR_ID_MOD_DT,',
'    --    HO_ORG_ID,',
'       ',
'       DT_CHECK_NEW_CALLIB_DATE,',
'       ',
'       VC_CHECK_OLD_UNIT_IMP,',
'       VC_CHECK_NEW_UNIT_IMP,',
'       ',
'       NU_CHK_OLD_KVAH_READ_EXP,',
'       VC_CHK_OLD_KVAH_UNIT_EXP,',
'       NU_CHK_OLD_KVAH_READ_IMP,',
'       VC_CHK_OLD_KVAH_UNIT_IMP,',
'       NU_CHK_NEW_KVAH_READ_EXP,',
'       VC_CHK_NEW_KVAH_UNIT_EXP,',
'       NU_CHK_NEW_KVAH_READ_IMP,',
'       VC_CHK_NEW_KVAH_UNIT_IMP',
'  from DT_METER_REPLACEMENT',
'  where ORG_ID = :GLOBAL_COMP_CODE',
'  and PRJ_ID =:GLOBAL_PROJ_ID',
'  AND CH_TYPE IN (''C'',''B'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Check Meter'
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
 p_id=>wwv_flow_api.id(51579197680024775)
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'SHRUTI'
,p_internal_uid=>69932065067287100
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(216312234818629)
,p_db_column_name=>'VC_CHECK_OLD_METER_NO'
,p_display_order=>380
,p_column_identifier=>'A'
,p_column_label=>'Old Check Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(215935529818630)
,p_db_column_name=>'NU_CHECK_OLD_FACTOR'
,p_display_order=>390
,p_column_identifier=>'B'
,p_column_label=>'Old Check Meter Multiplying Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(215525095818630)
,p_db_column_name=>'VC_CHECK_OLD_MAKE'
,p_display_order=>400
,p_column_identifier=>'C'
,p_column_label=>'Old Check Meter Make/Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(215080183818631)
,p_db_column_name=>'VC_CHECK_OLD_TYPE'
,p_display_order=>410
,p_column_identifier=>'D'
,p_column_label=>'Old Check Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214749320818631)
,p_db_column_name=>'VC_CHECK_OLD_ACCU_CLS'
,p_display_order=>420
,p_column_identifier=>'E'
,p_column_label=>'Old Check Meter Accuracy Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(214267776818632)
,p_db_column_name=>'VC_CHECK_OLD_RATIO'
,p_display_order=>430
,p_column_identifier=>'F'
,p_column_label=>'Old Check Meter Ratio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(213881642818632)
,p_db_column_name=>'VC_CHECK_OLD_MFG'
,p_display_order=>440
,p_column_identifier=>'G'
,p_column_label=>'Old Check Mfg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(213469365818632)
,p_db_column_name=>'VC_CHECK_OLD_BY_MT'
,p_display_order=>450
,p_column_identifier=>'H'
,p_column_label=>'Old Check Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(213083175818633)
,p_db_column_name=>'VC_CHECK_OLD_BY_HPSEBL'
,p_display_order=>460
,p_column_identifier=>'I'
,p_column_label=>'Old Check Meter Sealed by Agency 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212691344818633)
,p_db_column_name=>'NU_CHECK_OLD_IMP'
,p_display_order=>470
,p_column_identifier=>'J'
,p_column_label=>'Old Check Meter Import '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(212272687818634)
,p_db_column_name=>'NU_CHECK_OLD_EXP'
,p_display_order=>480
,p_column_identifier=>'K'
,p_column_label=>'Old Check  Meter Export '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(211902133818634)
,p_db_column_name=>'VC_CHECK_OLD_UNIT_EXP'
,p_display_order=>490
,p_column_identifier=>'L'
,p_column_label=>'Old Check Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(211516781818635)
,p_db_column_name=>'VC_CHECK_OLD_LOC_PANE'
,p_display_order=>500
,p_column_identifier=>'M'
,p_column_label=>'Old Check Meter Location Panel'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(211146078818635)
,p_db_column_name=>'VC_CHECK_OLD_REMARKS'
,p_display_order=>510
,p_column_identifier=>'N'
,p_column_label=>'Old Check Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(210750256818636)
,p_db_column_name=>'VC_CHECK_NEW_METER_NO'
,p_display_order=>520
,p_column_identifier=>'O'
,p_column_label=>'New Check Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(210340407818636)
,p_db_column_name=>'NU_CHECK_NEW_FACTOR'
,p_display_order=>530
,p_column_identifier=>'P'
,p_column_label=>'New Check Meter Multiplying Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(209946721818637)
,p_db_column_name=>'VC_CHECK_NEW_MAKE'
,p_display_order=>540
,p_column_identifier=>'Q'
,p_column_label=>'New Check Make/Model'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(209516250818637)
,p_db_column_name=>'VC_CHECK_NEW_TYPE'
,p_display_order=>550
,p_column_identifier=>'R'
,p_column_label=>'New Check Meter Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(209076390818637)
,p_db_column_name=>'VC_CHECK_NEW_ACCU_CLS'
,p_display_order=>560
,p_column_identifier=>'S'
,p_column_label=>'New Check Meter Accuracy Class'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(208741004818638)
,p_db_column_name=>'VC_CHECK_NEW_RATIO'
,p_display_order=>570
,p_column_identifier=>'T'
,p_column_label=>'New Check Meter Ratio'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(208352663818638)
,p_db_column_name=>'VC_CHECK_NEW_MFG'
,p_display_order=>580
,p_column_identifier=>'U'
,p_column_label=>'New Check Meter  Mfg'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207907622818638)
,p_db_column_name=>'VC_CHECK_NEW_BY_MT'
,p_display_order=>590
,p_column_identifier=>'V'
,p_column_label=>'Main Old Meter Sealed by Agency 1'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207483080818639)
,p_db_column_name=>'VC_CHECK_NEW_BY_HPSEBL'
,p_display_order=>600
,p_column_identifier=>'W'
,p_column_label=>'Main Old Meter Sealed by Agency 2'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(207073043818639)
,p_db_column_name=>'NU_CHECK_NEW_IMP'
,p_display_order=>610
,p_column_identifier=>'X'
,p_column_label=>'New Check Meter Impoert'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
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
 p_id=>wwv_flow_api.id(206690456818639)
,p_db_column_name=>'NU_CHECK_NEW_EXP'
,p_display_order=>620
,p_column_identifier=>'Y'
,p_column_label=>'New Check Meter Export'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(206341922818640)
,p_db_column_name=>'VC_CHECK_NEW_UNIT_EXP'
,p_display_order=>630
,p_column_identifier=>'Z'
,p_column_label=>'New Check Meter Export Reading'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(205946204818640)
,p_db_column_name=>'VC_CHECK_NEW_LOC_PANE'
,p_display_order=>640
,p_column_identifier=>'AA'
,p_column_label=>'New Check Meter Location Panel'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(205498913818640)
,p_db_column_name=>'DT_CHECK_NEW_INSTALL_DATE'
,p_display_order=>650
,p_column_identifier=>'AB'
,p_column_label=>' Check New Meter Installation Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(205115988818641)
,p_db_column_name=>'DT_CHECK_OLD_REPLC_DATE'
,p_display_order=>660
,p_column_identifier=>'AC'
,p_column_label=>'Old Check Meter Replacement Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(204710524818641)
,p_db_column_name=>'VC_CHECK_NEW_REMARKS'
,p_display_order=>670
,p_column_identifier=>'AD'
,p_column_label=>'New Check Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(204294761818641)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>710
,p_column_identifier=>'AH'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203964555818642)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>720
,p_column_identifier=>'AI'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203504486818642)
,p_db_column_name=>'DT_CHECK_NEW_CALLIB_DATE'
,p_display_order=>770
,p_column_identifier=>'AN'
,p_column_label=>'New Check Meter Calibration Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(203163838818642)
,p_db_column_name=>'VC_CHECK_OLD_UNIT_IMP'
,p_display_order=>790
,p_column_identifier=>'AP'
,p_column_label=>'Old Check Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(202691042818643)
,p_db_column_name=>'VC_CHECK_NEW_UNIT_IMP'
,p_display_order=>800
,p_column_identifier=>'AQ'
,p_column_label=>'New Check Meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(202323221818643)
,p_db_column_name=>'NU_CHK_OLD_KVAH_READ_EXP'
,p_display_order=>900
,p_column_identifier=>'BA'
,p_column_label=>'Old Check Meter Reading Export'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201891006818643)
,p_db_column_name=>'VC_CHK_OLD_KVAH_UNIT_EXP'
,p_display_order=>910
,p_column_identifier=>'BB'
,p_column_label=>'Old Check Meter Export Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201544569818644)
,p_db_column_name=>'NU_CHK_OLD_KVAH_READ_IMP'
,p_display_order=>920
,p_column_identifier=>'BC'
,p_column_label=>'Old Check Meter Import Reading'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(201099603818644)
,p_db_column_name=>'VC_CHK_OLD_KVAH_UNIT_IMP'
,p_display_order=>930
,p_column_identifier=>'BD'
,p_column_label=>'Old Check meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(200725415818644)
,p_db_column_name=>'NU_CHK_NEW_KVAH_READ_EXP'
,p_display_order=>940
,p_column_identifier=>'BE'
,p_column_label=>'New Check Meter Export Reading '
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(200317536818645)
,p_db_column_name=>'VC_CHK_NEW_KVAH_UNIT_EXP'
,p_display_order=>950
,p_column_identifier=>'BF'
,p_column_label=>'New Check Meter Export Unit '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199948580818645)
,p_db_column_name=>'NU_CHK_NEW_KVAH_READ_IMP'
,p_display_order=>960
,p_column_identifier=>'BG'
,p_column_label=>'New Check Meter Impoert Reading'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(199491074818646)
,p_db_column_name=>'VC_CHK_NEW_KVAH_UNIT_IMP'
,p_display_order=>970
,p_column_identifier=>'BH'
,p_column_label=>'New check meter Import Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51607466299022099)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'165005'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VC_CHECK_OLD_METER_NO:NU_CHECK_OLD_FACTOR:VC_CHECK_OLD_MAKE:VC_CHECK_OLD_TYPE:VC_CHECK_OLD_ACCU_CLS:VC_CHECK_OLD_RATIO:VC_CHECK_OLD_MFG:VC_CHECK_OLD_BY_MT:VC_CHECK_OLD_BY_HPSEBL:NU_CHECK_OLD_IMP:NU_CHECK_OLD_EXP:VC_CHECK_OLD_UNIT_EXP:VC_CHECK_OLD_LOC'
||'_PANE:VC_CHECK_OLD_REMARKS:VC_CHECK_NEW_METER_NO:NU_CHECK_NEW_FACTOR:VC_CHECK_NEW_MAKE:VC_CHECK_NEW_TYPE:VC_CHECK_NEW_ACCU_CLS:VC_CHECK_NEW_RATIO:VC_CHECK_NEW_MFG:VC_CHECK_NEW_BY_MT:VC_CHECK_NEW_BY_HPSEBL:NU_CHECK_NEW_IMP:NU_CHECK_NEW_EXP:VC_CHECK_NE'
||'W_UNIT_EXP:VC_CHECK_NEW_LOC_PANE:DT_CHECK_NEW_INSTALL_DATE:DT_CHECK_OLD_REPLC_DATE:VC_CHECK_NEW_REMARKS:USR_ID_CREATE:USR_ID_CREATE_DT:DT_CHECK_NEW_CALLIB_DATE:VC_CHECK_OLD_UNIT_IMP:VC_CHECK_NEW_UNIT_IMP:NU_CHK_OLD_KVAH_READ_EXP:VC_CHK_OLD_KVAH_UNIT_'
||'EXP:NU_CHK_OLD_KVAH_READ_IMP:VC_CHK_OLD_KVAH_UNIT_IMP:NU_CHK_NEW_KVAH_READ_EXP:VC_CHK_NEW_KVAH_UNIT_EXP:NU_CHK_NEW_KVAH_READ_IMP:VC_CHK_NEW_KVAH_UNIT_IMP'
);
wwv_flow_api.component_end;
end;
/
