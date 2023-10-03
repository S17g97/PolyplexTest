prompt --application/pages/page_00098
begin
--   Manifest
--     PAGE: 00098
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
 p_id=>98
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'METER CALIBRATION REPORT'
,p_alias=>'METER-CALIBRATION-REPORT'
,p_step_title=>'METER CALIBRATION REPORT'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'th.a-IRR-header {',
'    white-space: nowrap;',
'}',
'td.u-tL {',
'    white-space: nowrap;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230930111753'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3313851824460976)
,p_plug_name=>'Meter Calibration'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'       NU_DOC_NO,',
'       DT_DOC_DATE,',
'       NU_LOC_DOC_NO,',
'       decode(VC_METER_CHK_MAIN,''M'',''Main Meter'',''Check Meter'')as Meter_check,',
'       VC_METER_SR_NO,',
'       NU_MULT_FACTOR,',
'       VC_METER_TYPE,',
'       VC_ACCU_CLS_ACT,',
'       VC_METER_CTR,',
'       VC_METER_PTR,',
'       VC_CYCLE,',
'       VC_ACCU_CLS_REACT,',
'       VC_CUBE_PANEL_CTR,',
'       VC_CUBE_PANEL_PTR,',
'       VC_CT_ACC_CLASS,',
'       VC_PT_ACC_CLASS,',
'       NU_SPLY_VOLT,',
'       VC_CUBE_PANEL_NO,',
'       VC_SEALING_DETAIL_OLD,',
'       VC_SEALING_DETAIL_NEW,',
'       DT_METER_CALIB_DATE,',
'       VC_REPORT_NO,',
'       NU_RED_BEFORE_EXP,',
'       NU_RED_AFTER_EXP,',
'       NU_RED_BEFORE_IMP,',
'       NU_RED_AFTER_IMP,',
'       VC_UOM_KWH_EXP,',
'       VC_UOM_KVAH_EXP,',
'       VC_UOM_KWH_IMP,',
'       VC_UOM_KVAH_IMP,',
'       VC_METER_CALI_BY,',
'       VC_CALI_WITNESS,',
'       VC_REASON,',
'       DT_DUE_DATE,',
'       CH_TYPE,',
'       CH_AUTH_FLAG,',
'       VC_WKF_STAGE,',
'       VC_WKUSERS_CODE,',
'       USR_ID_CREATE,',
'       USR_ID_CREATE_DT,',
'       VC_AUTH_CODE,',
'       USR_ID_MOD_DT,',
'       HO_ORG_ID,',
'       USR_ID_MOD_BY',
'  from DT_METER_CALIBRATION',
'  where ORG_ID=:Global_comp_code',
'  and PRJ_ID=:Global_proj_id',
'  AND  DT_DOC_DATE BETWEEN :P98_FROM_DATE AND :P98_TO_DATE'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Meter Calibration'
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
 p_id=>wwv_flow_api.id(3314008354460977)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'PINKI'
,p_internal_uid=>21666875741723302
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314272896460980)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Document no'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314404881460981)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Document Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314503168460982)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>' Location'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(191385807818662)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314674566460984)
,p_db_column_name=>'VC_METER_SR_NO'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>' Meter Sr No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3382812557940877)
,p_db_column_name=>'METER_CHECK'
,p_display_order=>80
,p_column_identifier=>'AW'
,p_column_label=>'Meter Check'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314828059460985)
,p_db_column_name=>'NU_MULT_FACTOR'
,p_display_order=>90
,p_column_identifier=>'H'
,p_column_label=>'Multiplying Factor'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3314906738460986)
,p_db_column_name=>'VC_METER_TYPE'
,p_display_order=>100
,p_column_identifier=>'I'
,p_column_label=>' Meter /Make/Model/Type'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315024783460987)
,p_db_column_name=>'VC_ACCU_CLS_ACT'
,p_display_order=>110
,p_column_identifier=>'J'
,p_column_label=>'Meter Accuracy Class Active'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315040644460988)
,p_db_column_name=>'VC_METER_CTR'
,p_display_order=>120
,p_column_identifier=>'K'
,p_column_label=>' Meter CTR'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315155724460989)
,p_db_column_name=>'VC_METER_PTR'
,p_display_order=>130
,p_column_identifier=>'L'
,p_column_label=>' Meter PTR'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315311092460990)
,p_db_column_name=>'VC_CYCLE'
,p_display_order=>140
,p_column_identifier=>'M'
,p_column_label=>' Pulse/Cycle'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315386120460991)
,p_db_column_name=>'VC_ACCU_CLS_REACT'
,p_display_order=>150
,p_column_identifier=>'N'
,p_column_label=>'Meter Accuracy Class Reactive'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315518863460992)
,p_db_column_name=>'VC_CUBE_PANEL_CTR'
,p_display_order=>160
,p_column_identifier=>'O'
,p_column_label=>'Cubicle Panel -CTR'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315606475460993)
,p_db_column_name=>'VC_CUBE_PANEL_PTR'
,p_display_order=>170
,p_column_identifier=>'P'
,p_column_label=>'Cubicle Panel -PTR'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315641136460994)
,p_db_column_name=>'VC_CT_ACC_CLASS'
,p_display_order=>180
,p_column_identifier=>'Q'
,p_column_label=>' CT Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315757975460995)
,p_db_column_name=>'VC_PT_ACC_CLASS'
,p_display_order=>190
,p_column_identifier=>'R'
,p_column_label=>'PT Accuracy Class'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315846190460996)
,p_db_column_name=>'NU_SPLY_VOLT'
,p_display_order=>200
,p_column_identifier=>'S'
,p_column_label=>' Supply Voltage'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3315973311460997)
,p_db_column_name=>'VC_CUBE_PANEL_NO'
,p_display_order=>210
,p_column_identifier=>'T'
,p_column_label=>' Cubicel Panel  SR.No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316095568460998)
,p_db_column_name=>'VC_SEALING_DETAIL_OLD'
,p_display_order=>220
,p_column_identifier=>'U'
,p_column_label=>' Sealing Detail Old'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316190172460999)
,p_db_column_name=>'VC_SEALING_DETAIL_NEW'
,p_display_order=>230
,p_column_identifier=>'V'
,p_column_label=>' Sealing Detail New'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316271858461000)
,p_db_column_name=>'DT_METER_CALIB_DATE'
,p_display_order=>240
,p_column_identifier=>'W'
,p_column_label=>'Meter Caliboration Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316401122461001)
,p_db_column_name=>'VC_REPORT_NO'
,p_display_order=>250
,p_column_identifier=>'X'
,p_column_label=>' Report No'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316461444461002)
,p_db_column_name=>'NU_RED_BEFORE_EXP'
,p_display_order=>260
,p_column_identifier=>'Y'
,p_column_label=>'Reding Before -Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316545539461003)
,p_db_column_name=>'NU_RED_AFTER_EXP'
,p_display_order=>270
,p_column_identifier=>'Z'
,p_column_label=>' Reding After -Export'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316648968461004)
,p_db_column_name=>'NU_RED_BEFORE_IMP'
,p_display_order=>280
,p_column_identifier=>'AA'
,p_column_label=>'Reding Before Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316781053461005)
,p_db_column_name=>'NU_RED_AFTER_IMP'
,p_display_order=>290
,p_column_identifier=>'AB'
,p_column_label=>' Reding After Import'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316849361461006)
,p_db_column_name=>'VC_UOM_KWH_EXP'
,p_display_order=>300
,p_column_identifier=>'AC'
,p_column_label=>'UOM Before Export'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3316971923461007)
,p_db_column_name=>'VC_UOM_KVAH_EXP'
,p_display_order=>310
,p_column_identifier=>'AD'
,p_column_label=>' UOM After Export '
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317103029461008)
,p_db_column_name=>'VC_UOM_KWH_IMP'
,p_display_order=>320
,p_column_identifier=>'AE'
,p_column_label=>' UOM  Before Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317186913461009)
,p_db_column_name=>'VC_UOM_KVAH_IMP'
,p_display_order=>330
,p_column_identifier=>'AF'
,p_column_label=>'UOM After Import'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(198851276818649)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317303111461010)
,p_db_column_name=>'VC_METER_CALI_BY'
,p_display_order=>340
,p_column_identifier=>'AG'
,p_column_label=>' Meter Calibrated By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317366186461011)
,p_db_column_name=>'VC_CALI_WITNESS'
,p_display_order=>350
,p_column_identifier=>'AH'
,p_column_label=>' Calibration Witness By and sealed by'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317521809461012)
,p_db_column_name=>'VC_REASON'
,p_display_order=>360
,p_column_identifier=>'AI'
,p_column_label=>'Reason of callibartion'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_rpt_named_lov=>wwv_flow_api.id(3652235066087298)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317574833461013)
,p_db_column_name=>'DT_DUE_DATE'
,p_display_order=>370
,p_column_identifier=>'AJ'
,p_column_label=>'Calibration Due Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317732374461014)
,p_db_column_name=>'CH_TYPE'
,p_display_order=>380
,p_column_identifier=>'AK'
,p_column_label=>'Ch Type'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317805657461015)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>390
,p_column_identifier=>'AL'
,p_column_label=>'Ch Auth Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317886048461016)
,p_db_column_name=>'VC_WKF_STAGE'
,p_display_order=>400
,p_column_identifier=>'AM'
,p_column_label=>'Wkf Stage'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3317954370461017)
,p_db_column_name=>'VC_WKUSERS_CODE'
,p_display_order=>410
,p_column_identifier=>'AN'
,p_column_label=>' Wkusers Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318105254461018)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>420
,p_column_identifier=>'AO'
,p_column_label=>'Usr Id Create'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318133686461019)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>430
,p_column_identifier=>'AP'
,p_column_label=>'Usr Id Create Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318247637461020)
,p_db_column_name=>'VC_AUTH_CODE'
,p_display_order=>440
,p_column_identifier=>'AQ'
,p_column_label=>' Auth Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318387165461021)
,p_db_column_name=>'USR_ID_MOD_DT'
,p_display_order=>450
,p_column_identifier=>'AR'
,p_column_label=>'Usr Id Mod Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318438767461022)
,p_db_column_name=>'HO_ORG_ID'
,p_display_order=>460
,p_column_identifier=>'AS'
,p_column_label=>'Ho Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3318629408461023)
,p_db_column_name=>'USR_ID_MOD_BY'
,p_display_order=>470
,p_column_identifier=>'AT'
,p_column_label=>'Usr Id Mod By'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3334765979434249)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'216877'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'METER_CHECK:NU_LOC_DOC_NO:VC_METER_SR_NO:NU_MULT_FACTOR:VC_METER_TYPE:VC_ACCU_CLS_ACT:VC_METER_CTR:VC_METER_PTR:VC_CYCLE:VC_ACCU_CLS_REACT:VC_CUBE_PANEL_CTR:VC_CUBE_PANEL_PTR:VC_CT_ACC_CLASS:VC_PT_ACC_CLASS:NU_SPLY_VOLT:VC_CUBE_PANEL_NO:VC_SEALING_DE'
||'TAIL_OLD:VC_SEALING_DETAIL_NEW:DT_METER_CALIB_DATE:VC_REPORT_NO:NU_RED_BEFORE_EXP:VC_UOM_KWH_EXP:NU_RED_AFTER_EXP:VC_UOM_KVAH_EXP:NU_RED_BEFORE_IMP:VC_UOM_KWH_IMP:NU_RED_AFTER_IMP:VC_UOM_KVAH_IMP:VC_METER_CALI_BY:VC_CALI_WITNESS:VC_REASON:DT_DUE_DATE'
||':'
,p_break_on=>'METER_CHECK:0:0:0:0:0'
,p_break_enabled_on=>'METER_CHECK:0:0:0:0:0'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3383179163940881)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(3313851824460976)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--gapTop'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Submit'
,p_icon_css_classes=>'fa-undo-alt'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3577332747521985)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3313851824460976)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:58:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3383009985940879)
,p_name=>'P98_FROM_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3313851824460976)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT TRUNC(sysdate, ''MM'')',
'FROM DUAL;'))
,p_item_default_type=>'SQL_QUERY'
,p_prompt=>'From Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3383093600940880)
,p_name=>'P98_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3313851824460976)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'To Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.component_end;
end;
/
