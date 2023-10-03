prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Replacement Report'
,p_alias=>'METER-REPLACEMENT-REPORT1'
,p_step_title=>'Meter Replacement Report'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'th.a-IRR-header {',
'    white-space: nowrap;',
'}',
'td.u-tL {',
'    white-space: nowrap;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230930111134'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3662805941943583)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ORG_ID,	PRJ_ID,	NU_DOC_NO,	DT_DOC_DATE,	NU_LOC_DOC_NO,',
'CH_TYPE	VC_COMMON_REMARKS	  ,  VC_MAIN_OLD_METER_NO	,',
'NU_MAIN_OLD_FACTOR	          ,      VC_MAIN_OLD_MAKE	,',
'VC_MAIN_OLD_TYPE	          ,      VC_MAIN_OLD_ACCU_CLS	,',
'VC_MAIN_OLD_RATIO	          ,      VC_MAIN_OLD_MFG	,',
'VC_MAIN_OLD_BY_MT	          ,      VC_MAIN_OLD_BY_HPSEBL	,',
'NU_MAIN_OLD_IMP	              ,      NU_MAIN_OLD_EXP 	,',
'VC_MAIN_OLD_UNIT_EXP	      ,      VC_MAIN_OLD_LOC_PANE	,',
'VC_MAIN_OLD_REMARKS	          ,     DT_MAIN_OLD_REPLC_DATE	,    ',
'decode(CH_AUTH_FLAG,''Y'',''Yes'',''No'') CH_AUTH_FLAG	              ,      VC_WKF_STAGE	,',
'VC_WKUSERS_CODE	              ,      USR_ID_CREATE	,',
'USR_ID_CREATE_DT	          ,      VC_AUTH_CODE	,',
'USR_ID_MOD_DT	              ,      HO_ORG_ID	,  	',
'VC_MAIN_OLD_UNIT_IMP	,           NU_MAIN_OLD_KVAH_READ_EXP	  , ',
'VC_MAIN_OLD_KVAH_UNIT_EXP	,',
'NU_MAIN_OLD_KVAH_READ_IMP	  ,      VC_MAIN_OLD_KVAH_UNIT_IMP,',
'',
'VC_MAIN_NEW_METER_NO	,',
'NU_MAIN_NEW_FACTOR	          ,      VC_MAIN_NEW_MAKE	,',
'VC_MAIN_NEW_TYPE	          ,      VC_MAIN_NEW_ACCU_CLS	,',
'VC_MAIN_NEW_RATIO	          ,      VC_MAIN_NEW_MFG	,',
'VC_MAIN_NEW_BY_MT	          ,      VC_MAIN_NEW_BY_HPSEBL	,',
'NU_MAIN_NEW_IMP	              ,      NU_MAIN_NEW_EXP	,',
'VC_MAIN_NEW_UNIT_EXP	      ,      VC_MAIN_NEW_LOC_PANE	,',
'DT_MAIN_NEW_INSTALL_DATE	  ,      ',
'VC_MAIN_NEW_REMARKS	          ,      ',
'DT_MAIN_NEW_CALLIB_DATE	      ,',
'VC_MAIN_NEW_UNIT_IMP	      ,    ',
'NU_MAIN_NEW_KVAH_READ_EXP	  ,      VC_MAIN_NEW_KVAH_UNIT_EXP	,',
'NU_MAIN_NEW_KVAH_READ_IMP	  ,      VC_MAIN_NEW_KVAH_UNIT_IMP',
'from DT_METER_REPLACEMENT',
'WHERE ORG_ID= :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'and ch_type in (''B'',''M'');'))
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
 p_id=>wwv_flow_api.id(3662898958943584)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'SHRUTI'
,p_internal_uid=>22015766346205909
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3662958466943585)
,p_db_column_name=>'ORG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663077429943586)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Prj Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663178538943587)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nu Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663330307943588)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dt Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663402135943589)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(191385807818662)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663479543943590)
,p_db_column_name=>'VC_COMMON_REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Common Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663585714943591)
,p_db_column_name=>'VC_MAIN_OLD_METER_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Old Meter No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663719641943592)
,p_db_column_name=>'NU_MAIN_OLD_FACTOR'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Old Multiplying Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663819945943593)
,p_db_column_name=>'VC_MAIN_OLD_MAKE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>' Old Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663905633943594)
,p_db_column_name=>'VC_MAIN_OLD_TYPE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Old Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3663965294943595)
,p_db_column_name=>'VC_MAIN_OLD_ACCU_CLS'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Old Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664064403943596)
,p_db_column_name=>'VC_MAIN_OLD_RATIO'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>' Old Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664166310943597)
,p_db_column_name=>'VC_MAIN_OLD_MFG'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Old Mfg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664263426943598)
,p_db_column_name=>'VC_MAIN_OLD_BY_MT'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Old Meter Sealed By Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664390163943599)
,p_db_column_name=>'VC_MAIN_OLD_BY_HPSEBL'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Old Meter Sealed By Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664524378943600)
,p_db_column_name=>'NU_MAIN_OLD_IMP'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Old Meter Reading Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3700312743838413)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_IMP'
,p_display_order=>170
,p_column_identifier=>'CA'
,p_column_label=>'Old Meter Unit Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3700552395838416)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_IMP'
,p_display_order=>180
,p_column_identifier=>'CD'
,p_column_label=>'Old Meter Reading  kVAh Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4053645831437690)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_IMP'
,p_display_order=>190
,p_column_identifier=>'DC'
,p_column_label=>'Old Meter Unit  kVAh Import'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863475160773494)
,p_db_column_name=>'NU_MAIN_OLD_EXP'
,p_display_order=>200
,p_column_identifier=>'CG'
,p_column_label=>'Old Meter Reading Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863414867773493)
,p_db_column_name=>'VC_MAIN_OLD_UNIT_EXP'
,p_display_order=>210
,p_column_identifier=>'CF'
,p_column_label=>'Old Meter Unit Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3700349536838414)
,p_db_column_name=>'NU_MAIN_OLD_KVAH_READ_EXP'
,p_display_order=>220
,p_column_identifier=>'CB'
,p_column_label=>'Old Meter Reading  kVAh Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3700439648838415)
,p_db_column_name=>'VC_MAIN_OLD_KVAH_UNIT_EXP'
,p_display_order=>230
,p_column_identifier=>'CC'
,p_column_label=>'Old Meter Unit  kVAh Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664696708943602)
,p_db_column_name=>'VC_MAIN_OLD_LOC_PANE'
,p_display_order=>240
,p_column_identifier=>'R'
,p_column_label=>'Old Location/Panel No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3664783547943603)
,p_db_column_name=>'VC_MAIN_OLD_REMARKS'
,p_display_order=>250
,p_column_identifier=>'S'
,p_column_label=>'Old Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3666257334943618)
,p_db_column_name=>'DT_MAIN_OLD_REPLC_DATE'
,p_display_order=>260
,p_column_identifier=>'AH'
,p_column_label=>'Old Date Of Replacement'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699026314838400)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>270
,p_column_identifier=>'BN'
,p_column_label=>'Authorized'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699109646838401)
,p_db_column_name=>'VC_WKF_STAGE'
,p_display_order=>280
,p_column_identifier=>'BO'
,p_column_label=>'Vc Wkf Stage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699173188838402)
,p_db_column_name=>'VC_WKUSERS_CODE'
,p_display_order=>290
,p_column_identifier=>'BP'
,p_column_label=>'Vc Wkusers Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699324093838403)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>300
,p_column_identifier=>'BQ'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699384087838404)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>310
,p_column_identifier=>'BR'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699484907838405)
,p_db_column_name=>'VC_AUTH_CODE'
,p_display_order=>320
,p_column_identifier=>'BS'
,p_column_label=>'Authorized By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699572594838406)
,p_db_column_name=>'USR_ID_MOD_DT'
,p_display_order=>330
,p_column_identifier=>'BT'
,p_column_label=>'Usr Id Mod Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3699692181838407)
,p_db_column_name=>'HO_ORG_ID'
,p_display_order=>340
,p_column_identifier=>'BU'
,p_column_label=>'Ho Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863572415773495)
,p_db_column_name=>'VC_MAIN_NEW_METER_NO'
,p_display_order=>350
,p_column_identifier=>'CH'
,p_column_label=>'New Meter No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863713331773496)
,p_db_column_name=>'NU_MAIN_NEW_FACTOR'
,p_display_order=>360
,p_column_identifier=>'CI'
,p_column_label=>'New Multiplying Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863774706773497)
,p_db_column_name=>'VC_MAIN_NEW_MAKE'
,p_display_order=>370
,p_column_identifier=>'CJ'
,p_column_label=>'New Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3863890709773498)
,p_db_column_name=>'VC_MAIN_NEW_TYPE'
,p_display_order=>380
,p_column_identifier=>'CK'
,p_column_label=>'New Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864030061773499)
,p_db_column_name=>'VC_MAIN_NEW_ACCU_CLS'
,p_display_order=>390
,p_column_identifier=>'CL'
,p_column_label=>'New Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864056909773500)
,p_db_column_name=>'VC_MAIN_NEW_RATIO'
,p_display_order=>400
,p_column_identifier=>'CM'
,p_column_label=>'New Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864186907773501)
,p_db_column_name=>'VC_MAIN_NEW_MFG'
,p_display_order=>410
,p_column_identifier=>'CN'
,p_column_label=>' New Mfg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864326496773502)
,p_db_column_name=>'VC_MAIN_NEW_BY_MT'
,p_display_order=>430
,p_column_identifier=>'CO'
,p_column_label=>'New Meter Sealed By Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864363304773503)
,p_db_column_name=>'VC_MAIN_NEW_BY_HPSEBL'
,p_display_order=>440
,p_column_identifier=>'CP'
,p_column_label=>'New Meter Sealed By Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864505751773504)
,p_db_column_name=>'NU_MAIN_NEW_IMP'
,p_display_order=>450
,p_column_identifier=>'CQ'
,p_column_label=>'New Meter Reading Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864613293773505)
,p_db_column_name=>'NU_MAIN_NEW_EXP'
,p_display_order=>460
,p_column_identifier=>'CR'
,p_column_label=>'New Meter Reading Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864716106773506)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_EXP'
,p_display_order=>470
,p_column_identifier=>'CS'
,p_column_label=>'New Meter Unit Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864831703773507)
,p_db_column_name=>'VC_MAIN_NEW_LOC_PANE'
,p_display_order=>480
,p_column_identifier=>'CT'
,p_column_label=>'New Location/Panel No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3864921511773508)
,p_db_column_name=>'DT_MAIN_NEW_INSTALL_DATE'
,p_display_order=>490
,p_column_identifier=>'CU'
,p_column_label=>'Installed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865000908773509)
,p_db_column_name=>'VC_MAIN_NEW_REMARKS'
,p_display_order=>500
,p_column_identifier=>'CV'
,p_column_label=>'New Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865034966773510)
,p_db_column_name=>'DT_MAIN_NEW_CALLIB_DATE'
,p_display_order=>510
,p_column_identifier=>'CW'
,p_column_label=>'Calibration Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865226944773511)
,p_db_column_name=>'VC_MAIN_NEW_UNIT_IMP'
,p_display_order=>520
,p_column_identifier=>'CX'
,p_column_label=>'New Meter Unit Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865323756773512)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_EXP'
,p_display_order=>530
,p_column_identifier=>'CY'
,p_column_label=>'New Meter Reading  kVAh Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865356977773513)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_EXP'
,p_display_order=>540
,p_column_identifier=>'CZ'
,p_column_label=>'New Meter Unit  kVAh Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865491124773514)
,p_db_column_name=>'NU_MAIN_NEW_KVAH_READ_IMP'
,p_display_order=>550
,p_column_identifier=>'DA'
,p_column_label=>'New Meter Reading  kVAh Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865541991773515)
,p_db_column_name=>'VC_MAIN_NEW_KVAH_UNIT_IMP'
,p_display_order=>560
,p_column_identifier=>'DB'
,p_column_label=>'New Meter Unit  kVAh Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3804230289832646)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'221571'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_LOC_DOC_NO:VC_MAIN_OLD_METER_NO:NU_MAIN_OLD_FACTOR:VC_MAIN_OLD_MAKE:VC_MAIN_OLD_TYPE:VC_MAIN_OLD_ACCU_CLS:VC_MAIN_OLD_RATIO:VC_MAIN_OLD_MFG:VC_MAIN_OLD_LOC_PANE:VC_MAIN_OLD_BY_MT:VC_MAIN_OLD_BY_HPSEBL:NU_MAIN_OLD_IMP:VC_MAIN_OLD_UNIT_IMP:NU_MAIN_O'
||'LD_KVAH_READ_IMP:NU_MAIN_OLD_EXP:VC_MAIN_OLD_UNIT_EXP:NU_MAIN_OLD_KVAH_READ_EXP:VC_MAIN_OLD_KVAH_UNIT_EXP:DT_MAIN_OLD_REPLC_DATE:VC_MAIN_OLD_REMARKS:CH_AUTH_FLAG::VC_MAIN_NEW_METER_NO:NU_MAIN_NEW_FACTOR:VC_MAIN_NEW_MAKE:VC_MAIN_NEW_TYPE:VC_MAIN_NEW_A'
||'CCU_CLS:VC_MAIN_NEW_RATIO:VC_MAIN_NEW_MFG:VC_MAIN_NEW_BY_MT:VC_MAIN_NEW_BY_HPSEBL:NU_MAIN_NEW_IMP:NU_MAIN_NEW_EXP:VC_MAIN_NEW_UNIT_EXP:VC_MAIN_NEW_LOC_PANE:DT_MAIN_NEW_INSTALL_DATE:VC_MAIN_NEW_REMARKS:DT_MAIN_NEW_CALLIB_DATE:VC_MAIN_NEW_UNIT_IMP:NU_M'
||'AIN_NEW_KVAH_READ_EXP:VC_MAIN_NEW_KVAH_UNIT_EXP:NU_MAIN_NEW_KVAH_READ_IMP:VC_MAIN_NEW_KVAH_UNIT_IMP:VC_MAIN_OLD_KVAH_UNIT_IMP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3711809311836578)
,p_plug_name=>'Meter Replacement'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
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
 p_id=>wwv_flow_api.id(3711840725836579)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'ORG_ID,	PRJ_ID,	NU_DOC_NO,	DT_DOC_DATE,	NU_LOC_DOC_NO,',
'CH_TYPE	VC_COMMON_REMARKS	  ,  ',
'VC_CHECK_OLD_METER_NO,	',
'NU_CHECK_OLD_FACTOR	          ,      VC_CHECK_OLD_MAKE	,',
'VC_CHECK_OLD_TYPE	          ,      VC_CHECK_OLD_ACCU_CLS	,',
'VC_CHECK_OLD_RATIO	          ,      VC_CHECK_OLD_MFG	,',
'VC_CHECK_OLD_BY_MT	          ,      VC_CHECK_OLD_BY_HPSEBL	,',
'NU_CHECK_OLD_IMP	,',
'NU_CHECK_OLD_EXP	          ,      VC_CHECK_OLD_UNIT_EXP	,',
'VC_CHECK_OLD_LOC_PANE	      ,      VC_CHECK_OLD_REMARKS	,',
'DT_CHECK_OLD_REPLC_DATE	      ,    ',
'decode(CH_AUTH_FLAG,''Y'',''Yes'',''No'')CH_AUTH_FLAG	              ,      VC_WKF_STAGE	,',
'VC_WKUSERS_CODE	              ,      USR_ID_CREATE	,',
'USR_ID_CREATE_DT	          ,      VC_AUTH_CODE	,',
'USR_ID_MOD_DT	              ,      HO_ORG_ID	,  ',
'VC_CHECK_OLD_UNIT_IMP	,',
'NU_CHK_OLD_KVAH_READ_EXP	  ,      VC_CHK_OLD_KVAH_UNIT_EXP	,',
'NU_CHK_OLD_KVAH_READ_IMP	  ,      VC_CHK_OLD_KVAH_UNIT_IMP	',
'',
'VC_CHECK_NEW_METER_NO	      ,      NU_CHECK_NEW_FACTOR	,',
'VC_CHECK_NEW_MAKE	          ,      VC_CHECK_NEW_TYPE	,',
'VC_CHECK_NEW_ACCU_CLS	      ,      VC_CHECK_NEW_RATIO	,',
'VC_CHECK_NEW_MFG	          ,      VC_CHECK_NEW_BY_MT	,',
'VC_CHECK_NEW_BY_HPSEBL	      ,      NU_CHECK_NEW_IMP	,',
'NU_CHECK_NEW_EXP	          ,      VC_CHECK_NEW_UNIT_EXP	,',
'VC_CHECK_NEW_LOC_PANE	      ,      DT_CHECK_NEW_INSTALL_DATE	,     VC_CHECK_NEW_REMARKS	,',
'DT_CHECK_NEW_CALLIB_DATE	,    ',
'VC_CHECK_NEW_UNIT_IMP,	     ',
'NU_CHK_NEW_KVAH_READ_EXP	  ,      VC_CHK_NEW_KVAH_UNIT_EXP	,',
'NU_CHK_NEW_KVAH_READ_IMP	  ,      VC_CHK_NEW_KVAH_UNIT_IMP',
'',
'',
'from DT_METER_REPLACEMENT',
'WHERE ORG_ID= :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'AND CH_TYPE IN (''B'',''C'');'))
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
 p_id=>wwv_flow_api.id(3711962389836580)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_flashback=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'SHRUTI'
,p_internal_uid=>22064829777098905
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712048055836581)
,p_db_column_name=>'ORG_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712230855836582)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Prj Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712301776836583)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nu Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712363389836584)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Dt Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712474482836585)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Old Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(191385807818662)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3712571222836586)
,p_db_column_name=>'VC_COMMON_REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Common Remarks'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714110313836601)
,p_db_column_name=>'VC_CHECK_OLD_METER_NO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Old Meter No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714144264836602)
,p_db_column_name=>'NU_CHECK_OLD_FACTOR'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Old Multiplying Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714284322836603)
,p_db_column_name=>'VC_CHECK_OLD_MAKE'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Old Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714369314836604)
,p_db_column_name=>'VC_CHECK_OLD_TYPE'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'Old Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714518404836605)
,p_db_column_name=>'VC_CHECK_OLD_ACCU_CLS'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'Old Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714534741836606)
,p_db_column_name=>'VC_CHECK_OLD_RATIO'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'Old Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714709626836607)
,p_db_column_name=>'VC_CHECK_OLD_MFG'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'Old Mfg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714739868836608)
,p_db_column_name=>'VC_CHECK_OLD_BY_MT'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'Old Meter Sealed By Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714910970836609)
,p_db_column_name=>'VC_CHECK_OLD_BY_HPSEBL'
,p_display_order=>290
,p_column_identifier=>'AC'
,p_column_label=>'Old Meter Sealed By Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3714998628836610)
,p_db_column_name=>'NU_CHECK_OLD_IMP'
,p_display_order=>300
,p_column_identifier=>'AD'
,p_column_label=>'Old Meter Reading Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3716367217836624)
,p_db_column_name=>'VC_CHECK_OLD_UNIT_IMP'
,p_display_order=>310
,p_column_identifier=>'AR'
,p_column_label=>'Old Meter Unit Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3857259151773482)
,p_db_column_name=>'NU_CHK_OLD_KVAH_READ_IMP'
,p_display_order=>320
,p_column_identifier=>'AZ'
,p_column_label=>'Old Meter Reading  kVAh Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715118563836611)
,p_db_column_name=>'NU_CHECK_OLD_EXP'
,p_display_order=>340
,p_column_identifier=>'AE'
,p_column_label=>'Old Meter Reading Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715223207836612)
,p_db_column_name=>'VC_CHECK_OLD_UNIT_EXP'
,p_display_order=>350
,p_column_identifier=>'AF'
,p_column_label=>'Old Meter Unit Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3857057628773480)
,p_db_column_name=>'NU_CHK_OLD_KVAH_READ_EXP'
,p_display_order=>360
,p_column_identifier=>'AX'
,p_column_label=>'Old Meter Reading  kVAh Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3857167066773481)
,p_db_column_name=>'VC_CHK_OLD_KVAH_UNIT_EXP'
,p_display_order=>370
,p_column_identifier=>'AY'
,p_column_label=>'Old Meter Unit  kVAh Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715253850836613)
,p_db_column_name=>'VC_CHECK_OLD_LOC_PANE'
,p_display_order=>380
,p_column_identifier=>'AG'
,p_column_label=>'Old Location/Panel No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715394201836614)
,p_db_column_name=>'VC_CHECK_OLD_REMARKS'
,p_display_order=>390
,p_column_identifier=>'AH'
,p_column_label=>'Old Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715509043836615)
,p_db_column_name=>'DT_CHECK_OLD_REPLC_DATE'
,p_display_order=>400
,p_column_identifier=>'AI'
,p_column_label=>'Old Replaced Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715564679836616)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>410
,p_column_identifier=>'AJ'
,p_column_label=>'Authorized'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715663930836617)
,p_db_column_name=>'VC_WKF_STAGE'
,p_display_order=>420
,p_column_identifier=>'AK'
,p_column_label=>'Vc Wkf Stage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715804165836618)
,p_db_column_name=>'VC_WKUSERS_CODE'
,p_display_order=>430
,p_column_identifier=>'AL'
,p_column_label=>'Vc Wkusers Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3715855799836619)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>440
,p_column_identifier=>'AM'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
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
 p_id=>wwv_flow_api.id(3715985777836620)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>450
,p_column_identifier=>'AN'
,p_column_label=>'Created On'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3716098904836621)
,p_db_column_name=>'VC_AUTH_CODE'
,p_display_order=>460
,p_column_identifier=>'AO'
,p_column_label=>'Authorized By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3716153700836622)
,p_db_column_name=>'USR_ID_MOD_DT'
,p_display_order=>470
,p_column_identifier=>'AP'
,p_column_label=>'Usr Id Mod Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3716245882836623)
,p_db_column_name=>'HO_ORG_ID'
,p_display_order=>480
,p_column_identifier=>'AQ'
,p_column_label=>'Ho Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865681904773516)
,p_db_column_name=>'VC_CHECK_NEW_METER_NO'
,p_display_order=>490
,p_column_identifier=>'BB'
,p_column_label=>'New Meter No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865739587773517)
,p_db_column_name=>'NU_CHECK_NEW_FACTOR'
,p_display_order=>500
,p_column_identifier=>'BC'
,p_column_label=>'New Multiplying Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865870412773518)
,p_db_column_name=>'VC_CHECK_NEW_MAKE'
,p_display_order=>510
,p_column_identifier=>'BD'
,p_column_label=>'New Make'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3865959405773519)
,p_db_column_name=>'VC_CHECK_NEW_TYPE'
,p_display_order=>520
,p_column_identifier=>'BE'
,p_column_label=>'New Meter Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866061448773520)
,p_db_column_name=>'VC_CHECK_NEW_ACCU_CLS'
,p_display_order=>530
,p_column_identifier=>'BF'
,p_column_label=>'New Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866175351773521)
,p_db_column_name=>'VC_CHECK_NEW_RATIO'
,p_display_order=>540
,p_column_identifier=>'BG'
,p_column_label=>'New Ratio'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866233524773522)
,p_db_column_name=>'VC_CHECK_NEW_MFG'
,p_display_order=>550
,p_column_identifier=>'BH'
,p_column_label=>' New Mfg'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866342684773523)
,p_db_column_name=>'VC_CHECK_NEW_BY_MT'
,p_display_order=>560
,p_column_identifier=>'BI'
,p_column_label=>'New Meter Sealed By Agency 1'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866455319773524)
,p_db_column_name=>'VC_CHECK_NEW_BY_HPSEBL'
,p_display_order=>570
,p_column_identifier=>'BJ'
,p_column_label=>'Meter Sealed By Agency 2'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3866572453773525)
,p_db_column_name=>'NU_CHECK_NEW_IMP'
,p_display_order=>580
,p_column_identifier=>'BK'
,p_column_label=>'New Meter Reading Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052269757437676)
,p_db_column_name=>'NU_CHECK_NEW_EXP'
,p_display_order=>590
,p_column_identifier=>'BL'
,p_column_label=>'New Meter Reading Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052406443437677)
,p_db_column_name=>'VC_CHECK_NEW_UNIT_EXP'
,p_display_order=>600
,p_column_identifier=>'BM'
,p_column_label=>'New Meter Unit Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052530992437678)
,p_db_column_name=>'VC_CHECK_NEW_LOC_PANE'
,p_display_order=>610
,p_column_identifier=>'BN'
,p_column_label=>'New Location/Panel No.'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052573952437679)
,p_db_column_name=>'DT_CHECK_NEW_INSTALL_DATE'
,p_display_order=>620
,p_column_identifier=>'BO'
,p_column_label=>'Installed Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052663451437680)
,p_db_column_name=>'VC_CHECK_NEW_REMARKS'
,p_display_order=>630
,p_column_identifier=>'BP'
,p_column_label=>'New Remarks'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052771877437681)
,p_db_column_name=>'DT_CHECK_NEW_CALLIB_DATE'
,p_display_order=>640
,p_column_identifier=>'BQ'
,p_column_label=>'Calibration Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052894123437682)
,p_db_column_name=>'VC_CHECK_NEW_UNIT_IMP'
,p_display_order=>650
,p_column_identifier=>'BR'
,p_column_label=>'New Meter Unit Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4052982922437683)
,p_db_column_name=>'NU_CHK_NEW_KVAH_READ_EXP'
,p_display_order=>660
,p_column_identifier=>'BS'
,p_column_label=>'New Meter Reading  kVAh Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4053038677437684)
,p_db_column_name=>'VC_CHK_NEW_KVAH_UNIT_EXP'
,p_display_order=>670
,p_column_identifier=>'BT'
,p_column_label=>'New Meter Unit  kVAh Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4053164656437685)
,p_db_column_name=>'NU_CHK_NEW_KVAH_READ_IMP'
,p_display_order=>680
,p_column_identifier=>'BU'
,p_column_label=>'New Meter Reading  kVAh Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(4053297641437686)
,p_db_column_name=>'VC_CHK_NEW_KVAH_UNIT_IMP'
,p_display_order=>690
,p_column_identifier=>'BV'
,p_column_label=>'New Meter Unit  kVAh Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3901920575759925)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'222548'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'NU_LOC_DOC_NO:VC_CHECK_OLD_METER_NO:NU_CHECK_OLD_FACTOR:VC_CHECK_OLD_MAKE:VC_CHECK_OLD_TYPE:VC_CHECK_OLD_ACCU_CLS:VC_CHECK_OLD_RATIO:VC_CHECK_OLD_MFG:VC_CHECK_OLD_BY_MT:VC_CHECK_OLD_BY_HPSEBL:VC_CHECK_OLD_LOC_PANE:NU_CHECK_OLD_IMP:VC_CHECK_OLD_UNIT_I'
||'MP:NU_CHK_OLD_KVAH_READ_IMP:NU_CHECK_OLD_EXP:VC_CHECK_OLD_UNIT_EXP:NU_CHK_OLD_KVAH_READ_EXP:VC_CHK_OLD_KVAH_UNIT_EXP:VC_CHECK_OLD_REMARKS:DT_CHECK_OLD_REPLC_DATE:CH_AUTH_FLAG::VC_CHECK_NEW_METER_NO:NU_CHECK_NEW_FACTOR:VC_CHECK_NEW_MAKE:VC_CHECK_NEW_T'
||'YPE:VC_CHECK_NEW_ACCU_CLS:VC_CHECK_NEW_RATIO:VC_CHECK_NEW_MFG:VC_CHECK_NEW_BY_MT:VC_CHECK_NEW_BY_HPSEBL:NU_CHECK_NEW_IMP:NU_CHECK_NEW_EXP:VC_CHECK_NEW_UNIT_EXP:VC_CHECK_NEW_LOC_PANE:DT_CHECK_NEW_INSTALL_DATE:VC_CHECK_NEW_REMARKS:DT_CHECK_NEW_CALLIB_D'
||'ATE:VC_CHECK_NEW_UNIT_IMP:NU_CHK_NEW_KVAH_READ_EXP:VC_CHK_NEW_KVAH_UNIT_EXP:NU_CHK_NEW_KVAH_READ_IMP:VC_CHK_NEW_KVAH_UNIT_IMP'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(4054631737437699)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3711809311836578)
,p_button_name=>'Back'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.component_end;
end;
/
