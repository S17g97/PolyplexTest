prompt --application/pages/page_00030
begin
--   Manifest
--     PAGE: 00030
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
 p_id=>30
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'INVOICE - JMR '
,p_alias=>'INVOICE-JMR1'
,p_step_title=>'INVOICE - JMR '
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allownumericwithdecimal").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'      var text = $(this).val();',
'    if ((text.indexOf(''.'') != -1) &&',
'        (text.substring(text.indexOf(''.'')).length > 4) &&',
'        (event.which != 0 && event.which != 8) &&',
'        ($(this)[0].selectionStart >= text.length - 4)) {',
'        event.preventDefault();',
'        }',
'        });',
'',
'$(".addzero").on("keypress keyup blur",function (event) {',
'         var text1 = $(this).val();',
'         if (text1 == ''.''){',
'             $(this).val(''0.00'');',
'',
'         }',
'       });',
'',
'       function RUN_PROCESS2 (request){',
'apex.submit({request:request,showWait:true});',
'}',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
')'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230919175546'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106064286976347966)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105956737680604760)
,p_plug_name=>'Other Charges'
,p_parent_plug_id=>wwv_flow_api.id(106064286976347966)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>80
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
''''' edit,',
'c001 as Charge_Name,',
'c002 as Charge_type,',
'to_number(c003) as rate,',
'to_number(c004) as AMOUNT,',
'c005 as REMARKS,',
'c006 as account_code,',
'c001 as charge_id',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE'';           '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Charges'
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
 p_id=>wwv_flow_api.id(105956884303604761)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>142662619078129411
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23208885576203077)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_CHARGE_ID,P32_MODE,P32_MAIN_NET_UNIT,P32_ENERGY_AMOUNT,P32_CHECK_NET_UNIT,P32_METER_WORK:#CHARGE_ID#,E,&P30_MAIN_NET_EXP_UNIT.,&P30_ENERGY_AMOUNT.,&P30_CHECK_NET_EXP_UNIT.,&P30_MAIN_METER_WORK.'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P30_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23209308833203076)
,p_db_column_name=>'CHARGE_NAME'
,p_display_order=>20
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
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15924160876825127)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23209686680203076)
,p_db_column_name=>'CHARGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
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
 p_id=>wwv_flow_api.id(23210476015203076)
,p_db_column_name=>'REMARKS'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Remarks'
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
 p_id=>wwv_flow_api.id(23211697062203075)
,p_db_column_name=>'RATE'
,p_display_order=>60
,p_column_identifier=>'K'
,p_column_label=>'Rate'
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
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23210067511203076)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23210884403203075)
,p_db_column_name=>'AMOUNT'
,p_display_order=>80
,p_column_identifier=>'I'
,p_column_label=>'Amount'
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
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23211295996203075)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(105983518836193048)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'46711'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:AMOUNT:REMARKS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109203704946613393)
,p_plug_name=>'Invoice-JMR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109296299381230744)
,p_plug_name=>'Display Selector'
,p_region_template_options=>'#DEFAULT#:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109296453939230745)
,p_plug_name=>'Invoice Data'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P30_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94379927195413052)
,p_plug_name=>'Transmission Loss'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(109296453939230745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106064964449347973)
,p_plug_name=>'Item Info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(109296453939230745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106065048696347974)
,p_plug_name=>'Amount  info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(109296453939230745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106065115732347975)
,p_plug_name=>'Info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(109296453939230745)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109296521520230746)
,p_plug_name=>'JMR Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P30_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(93945077102149950)
,p_plug_name=>'Main meter info'
,p_parent_plug_id=>wwv_flow_api.id(109296521520230746)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'c003 as MAIN_METER_NO,',
'C004 as MAIN_METER_LOC_ID,',
'C005 as main_loc,',
'to_char(C006,''999G999G999G999G990D000'') as MAIN_EXPRV_READING,',
'to_char(C007,''999G999G999G999G990D000'') as MAIN_EXCUR_READING, ',
'to_char(C008,''999G999G999G999G990D000'') as MAIN_EXDIFFERNCE, ',
'to_char(C009,''999G999G999G999G990D000'') as MAIN_EXFACTOR, ',
'to_char(C010,''999G999G999G999G990D000'') as MAIN_EXTOTAL_UNIT, ',
'to_char(C011,''999G999G999G999G990D000'') as MAIN_EXADJUSTMENT, ',
'to_char(C012,''999G999G999G999G990D000'') as MAIN_EXNET_UNIT, ',
'to_char(C013,''999G999G999G999G990D000'') as MAIN_IMPRV_READING, ',
'to_char(C014,''999G999G999G999G990D000'') as MAIN_IMCUR_READING, ',
'to_char(C015,''999G999G999G999G990D000'') as MAIN_IMDIFFERNCE, ',
'to_char(C016,''999G999G999G999G990D000'') as MAIN_IMFACTOR, ',
'to_char(C017,''999G999G999G999G990D000'') as MAIN_IMTOTAL_UNIT, ',
'to_char(C018,''999G999G999G999G990D000'') as MAIN_IMADJUSTMENT, ',
'to_char(C019,''999G999G999G999G990D000'') as MAIN_IMNET_UNIT, ',
'to_char(C020,''999G999G999G999G990D000'') as MAIN_NET_EXUNIT, ',
'decode(C021,''Y'',''Yes'',''N'',''No'')  as CH_MAIN_METER_WORKING, ',
'',
'C022 as MAIN_METER_REMARKS,',
'',
'to_char(C043,''999G999G999G999G990D000'') as INV_NET_UNIT',
'                                    ',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Main meter info'
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
 p_id=>wwv_flow_api.id(94066362180684035)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY1'
,p_internal_uid=>130772096955208685
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23143451279203145)
,p_db_column_name=>'JMR_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'JMR Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23143774144203144)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23144259379203144)
,p_db_column_name=>'MAIN_METER_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Main Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23144570288203144)
,p_db_column_name=>'MAIN_METER_LOC_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Main Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23144971719203143)
,p_db_column_name=>'MAIN_LOC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Main Meter  Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23145446166203143)
,p_db_column_name=>'MAIN_EXPRV_READING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Main Exp Prv Reading '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23145823531203142)
,p_db_column_name=>'MAIN_EXCUR_READING'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Main Exp Curr Reading '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23146165885203142)
,p_db_column_name=>'MAIN_EXDIFFERNCE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Main Exp Difference '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23146583000203141)
,p_db_column_name=>'MAIN_EXFACTOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Main Exp Multiplying Factor (MF)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23146981371203141)
,p_db_column_name=>'MAIN_EXTOTAL_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Main Exp Total Unit  (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23147416015203141)
,p_db_column_name=>'MAIN_EXADJUSTMENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Main Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23147823928203140)
,p_db_column_name=>'MAIN_EXNET_UNIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Main Exp Net Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23148204941203140)
,p_db_column_name=>'MAIN_IMPRV_READING'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Main Imp Prv Reading '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23148593672203139)
,p_db_column_name=>'MAIN_IMCUR_READING'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Main Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23149031523203139)
,p_db_column_name=>'MAIN_IMDIFFERNCE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Main Imp Difference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23149415251203138)
,p_db_column_name=>'MAIN_IMFACTOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Main Imp Multiplying Factor (MF)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23149825073203138)
,p_db_column_name=>'MAIN_IMTOTAL_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Main Imp Total Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23150237418203138)
,p_db_column_name=>'MAIN_IMADJUSTMENT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Main Imp Adjustment'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23150578993203137)
,p_db_column_name=>'MAIN_IMNET_UNIT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Main Imp Net Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23151049506203137)
,p_db_column_name=>'MAIN_NET_EXUNIT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Main Net Exp Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23151400811203136)
,p_db_column_name=>'CH_MAIN_METER_WORKING'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Main Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23151839736203136)
,p_db_column_name=>'MAIN_METER_REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Main Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23152216667203135)
,p_db_column_name=>'INV_NET_UNIT'
,p_display_order=>430
,p_column_identifier=>'AQ'
,p_column_label=>'Inv Net Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94123656719691558)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111641'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JMR_NO:JMR_DATE:MAIN_METER_NO:MAIN_METER_LOC_ID:MAIN_LOC:MAIN_EXPRV_READING:MAIN_EXCUR_READING:MAIN_EXDIFFERNCE:MAIN_EXFACTOR:MAIN_EXTOTAL_UNIT:MAIN_EXADJUSTMENT:MAIN_EXNET_UNIT:MAIN_IMPRV_READING:MAIN_IMCUR_READING:MAIN_IMDIFFERNCE:MAIN_IMFACTOR:MAI'
||'N_IMTOTAL_UNIT:MAIN_IMADJUSTMENT:MAIN_IMNET_UNIT:MAIN_NET_EXUNIT:CH_MAIN_METER_WORKING:MAIN_METER_REMARKS:INV_NET_UNIT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94147544983720074)
,p_plug_name=>'Previous Level &P30_PRV_LVL_NAME.'
,p_region_name=>'MAIN_PRV'
,p_parent_plug_id=>wwv_flow_api.id(109296521520230746)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'c003 as MAIN_METER_NO,',
'C004 as MAIN_METER_LOC_ID,',
'C005 as main_loc,',
'C006 as MAIN_EXPRV_READING,',
'C007 as MAIN_EXCUR_READING, ',
'C008 as MAIN_EXDIFFERNCE, ',
'C009 as MAIN_EXFACTOR, ',
'C010 as MAIN_EXTOTAL_UNIT, ',
'C011 as MAIN_EXADJUSTMENT, ',
'C012 as MAIN_EXNET_UNIT, ',
'C013 as MAIN_IMPRV_READING, ',
'C014 as MAIN_IMCUR_READING, ',
'C015 as MAIN_IMDIFFERNCE, ',
'C016 as MAIN_IMFACTOR, ',
'C017 as MAIN_IMTOTAL_UNIT, ',
'C018 as MAIN_IMADJUSTMENT, ',
'C019 as MAIN_IMNET_UNIT, ',
'C020 as MAIN_NET_EXUNIT, ',
'decode(C021,''Y'',''Yes'',''N'',''No'')  as CH_MAIN_METER_WORKING, ',
'',
'C022 as MAIN_METER_REMARKS,',
'',
'C043 as INV_NET_UNIT',
'                                    ',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''1''',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94147699524720075)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>130853434299244725
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23153212932203131)
,p_db_column_name=>'JMR_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'JMR Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23153590802203130)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23154043611203130)
,p_db_column_name=>'MAIN_METER_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Main Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23154430383203129)
,p_db_column_name=>'MAIN_METER_LOC_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Main Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23154840320203129)
,p_db_column_name=>'MAIN_LOC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Main Meter  Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23155128305203129)
,p_db_column_name=>'MAIN_EXPRV_READING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Main Exp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23155520475203128)
,p_db_column_name=>'MAIN_EXCUR_READING'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Main Exp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23155923680203128)
,p_db_column_name=>'MAIN_EXDIFFERNCE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Main Exp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23156271881203127)
,p_db_column_name=>'MAIN_EXFACTOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Main Exp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23156754751203127)
,p_db_column_name=>'MAIN_EXTOTAL_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Main Exp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23157084753203127)
,p_db_column_name=>'MAIN_EXADJUSTMENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Main Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23157547293203126)
,p_db_column_name=>'MAIN_EXNET_UNIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Main Exp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23157896139203126)
,p_db_column_name=>'MAIN_IMPRV_READING'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Main Imp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23158361897203125)
,p_db_column_name=>'MAIN_IMCUR_READING'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Main Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23158679317203125)
,p_db_column_name=>'MAIN_IMDIFFERNCE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Main Imp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23159160958203124)
,p_db_column_name=>'MAIN_IMFACTOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Main Imp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23159467518203124)
,p_db_column_name=>'MAIN_IMTOTAL_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Main Imp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23159924233203124)
,p_db_column_name=>'MAIN_IMADJUSTMENT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Main Imp Adjustment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23160290390203123)
,p_db_column_name=>'MAIN_IMNET_UNIT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Main Imp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23160668136203123)
,p_db_column_name=>'MAIN_NET_EXUNIT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Main Net Exp Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23161096341203122)
,p_db_column_name=>'CH_MAIN_METER_WORKING'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Main Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23161555717203122)
,p_db_column_name=>'MAIN_METER_REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Main Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23161904236203121)
,p_db_column_name=>'INV_NET_UNIT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Inv Net Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94363605242364781)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114040'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JMR_NO:JMR_DATE:MAIN_METER_NO:MAIN_METER_LOC_ID:MAIN_LOC:MAIN_EXPRV_READING:MAIN_EXCUR_READING:MAIN_EXDIFFERNCE:MAIN_EXFACTOR:MAIN_EXTOTAL_UNIT:MAIN_EXADJUSTMENT:MAIN_EXNET_UNIT:MAIN_IMPRV_READING:MAIN_IMCUR_READING:MAIN_IMDIFFERNCE:MAIN_IMFACTOR:MAI'
||'N_IMTOTAL_UNIT:MAIN_IMADJUSTMENT:MAIN_IMNET_UNIT:MAIN_NET_EXUNIT:CH_MAIN_METER_WORKING:MAIN_METER_REMARKS:INV_NET_UNIT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94307336642352549)
,p_plug_name=>'Next Level &P30_NXT_LVL_NAME.'
,p_region_name=>'MAIN_NXT'
,p_parent_plug_id=>wwv_flow_api.id(109296521520230746)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'c003 as MAIN_METER_NO,',
'C004 as MAIN_METER_LOC_ID,',
'C005 as main_loc,',
'C006 as MAIN_EXPRV_READING,',
'C007 as MAIN_EXCUR_READING, ',
'C008 as MAIN_EXDIFFERNCE, ',
'C009 as MAIN_EXFACTOR, ',
'C010 as MAIN_EXTOTAL_UNIT, ',
'C011 as MAIN_EXADJUSTMENT, ',
'C012 as MAIN_EXNET_UNIT, ',
'C013 as MAIN_IMPRV_READING, ',
'C014 as MAIN_IMCUR_READING, ',
'C015 as MAIN_IMDIFFERNCE, ',
'C016 as MAIN_IMFACTOR, ',
'C017 as MAIN_IMTOTAL_UNIT, ',
'C018 as MAIN_IMADJUSTMENT, ',
'C019 as MAIN_IMNET_UNIT, ',
'C020 as MAIN_NET_EXUNIT, ',
'decode(C021,''Y'',''Yes'',''N'',''No'')  as CH_MAIN_METER_WORKING, ',
'',
'C022 as MAIN_METER_REMARKS,',
'',
'C043 as INV_NET_UNIT',
'                                    ',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''2''',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
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
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94307351296352550)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>131013086070877200
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23162909850203120)
,p_db_column_name=>'JMR_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'JMR Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23163332409203119)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23163750450203119)
,p_db_column_name=>'MAIN_METER_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Main Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23164116096203118)
,p_db_column_name=>'MAIN_METER_LOC_ID'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Main Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23164557912203118)
,p_db_column_name=>'MAIN_LOC'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Main Meter  Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23164905424203118)
,p_db_column_name=>'MAIN_EXPRV_READING'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Main Exp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23165281991203117)
,p_db_column_name=>'MAIN_EXCUR_READING'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Main Exp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23165673951203117)
,p_db_column_name=>'MAIN_EXDIFFERNCE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Main Exp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23166111045203116)
,p_db_column_name=>'MAIN_EXFACTOR'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Main Exp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23166535325203116)
,p_db_column_name=>'MAIN_EXTOTAL_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Main Exp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23166870836203115)
,p_db_column_name=>'MAIN_EXADJUSTMENT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Main Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23167335719203115)
,p_db_column_name=>'MAIN_EXNET_UNIT'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Main Exp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23167688596203115)
,p_db_column_name=>'MAIN_IMPRV_READING'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Main Imp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23168096425203114)
,p_db_column_name=>'MAIN_IMCUR_READING'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Main Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23168555699203114)
,p_db_column_name=>'MAIN_IMDIFFERNCE'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Main Imp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23168877677203113)
,p_db_column_name=>'MAIN_IMFACTOR'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Main Imp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23169346415203113)
,p_db_column_name=>'MAIN_IMTOTAL_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Main Imp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23169754287203112)
,p_db_column_name=>'MAIN_IMADJUSTMENT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Main Imp Adjustment'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23170072006203112)
,p_db_column_name=>'MAIN_IMNET_UNIT'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Main Imp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23170474560203111)
,p_db_column_name=>'MAIN_NET_EXUNIT'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Main Net Exp Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23170962442203111)
,p_db_column_name=>'CH_MAIN_METER_WORKING'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'Main Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23171334149203111)
,p_db_column_name=>'MAIN_METER_REMARKS'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'Main Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23171704584203110)
,p_db_column_name=>'INV_NET_UNIT'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'Inv Net Unit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94364198049364791)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114046'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JMR_NO:JMR_DATE:MAIN_METER_NO:MAIN_METER_LOC_ID:MAIN_LOC:MAIN_EXPRV_READING:MAIN_EXCUR_READING:MAIN_EXDIFFERNCE:MAIN_EXFACTOR:MAIN_EXTOTAL_UNIT:MAIN_EXADJUSTMENT:MAIN_EXNET_UNIT:MAIN_IMPRV_READING:MAIN_IMCUR_READING:MAIN_IMDIFFERNCE:MAIN_IMFACTOR:MAI'
||'N_IMTOTAL_UNIT:MAIN_IMADJUSTMENT:MAIN_IMNET_UNIT:MAIN_NET_EXUNIT:CH_MAIN_METER_WORKING:MAIN_METER_REMARKS:INV_NET_UNIT'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109584846849974453)
,p_plug_name=>'JMR Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P30_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94070799209684079)
,p_plug_name=>'Check meter info'
,p_parent_plug_id=>wwv_flow_api.id(109584846849974453)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'C023 as CHK_METER_NO,',
'C024 as CHK_METER_LOC_ID,',
'C025 as check_loc,',
'TO_CHAR(C026,''999G999G999G999G990D000'') as CHK_EXPRV_READING,   ',
'TO_CHAR(C027 ,''999G999G999G999G990D000'') as CHK_EXCUR_READING,',
'TO_CHAR(C028 ,''999G999G999G999G990D000'') as CHK_EXDIFFERNCE,',
'TO_CHAR(C029 ,''999G999G999G999G990D000'') as CHK_EXFACTOR,',
'TO_CHAR(C030 ,''999G999G999G999G990D000'') as CHK_EXTOTAL_UNIT,',
'TO_CHAR(C031 ,''999G999G999G999G990D000'') as CHK_EXADJUSTMENT,',
'TO_CHAR(C032 ,''999G999G999G999G990D000'') as CHK_EXNET_UNIT,',
'TO_CHAR(C033 ,''999G999G999G999G990D000'') as CHK_IMPRV_READING,',
'TO_CHAR(C034 ,''999G999G999G999G990D000'') as CHK_IMCUR_READING,',
'TO_CHAR(C035 ,''999G999G999G999G990D000'') as CHK_IMDIFFERNCE,',
'TO_CHAR(C036 ,''999G999G999G999G990D000'') as CHK_IMFACTOR,',
'TO_CHAR(C037 ,''999G999G999G999G990D000'') as CHK_IMTOTAL_UNIT,',
'TO_CHAR(C038 ,''999G999G999G999G990D000'') as CHK_IMADJUSTMENT,',
'TO_CHAR(C039 ,''999G999G999G999G990D000'') as CHK_IMNET_UNIT,',
'TO_CHAR(C040 ,''999G999G999G999G990D000'') as CHK_NET_EXUNIT,',
'',
'decode(C041,''Y'',''Yes'',''N'',''No'') as CH_CHK_METER_WORKING,',
'C042 as CHK_METER_REMARKS',
'',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL'';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Check meter info'
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
 p_id=>wwv_flow_api.id(94070915985684080)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY1'
,p_internal_uid=>130776650760208730
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23172978914203108)
,p_db_column_name=>'CHK_METER_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Check Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23173403728203108)
,p_db_column_name=>'CHK_METER_LOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Chk Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23173854599203107)
,p_db_column_name=>'CHECK_LOC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Check Meter Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23174245136203107)
,p_db_column_name=>'CHK_EXPRV_READING'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Check Exp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23174645523203106)
,p_db_column_name=>'CHK_EXCUR_READING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Check Exp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23175045475203106)
,p_db_column_name=>'CHK_EXDIFFERNCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Check Exp Difference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23175458757203105)
,p_db_column_name=>'CHK_EXFACTOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Check Exp Multiplying Factor (MF)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23175804784203105)
,p_db_column_name=>'CHK_EXTOTAL_UNIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Check Exp Total Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23176170081203105)
,p_db_column_name=>'CHK_EXADJUSTMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Check Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23176610247203104)
,p_db_column_name=>'CHK_EXNET_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Check Exp Net Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23177015710203104)
,p_db_column_name=>'CHK_IMPRV_READING'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Check Imp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23177430958203104)
,p_db_column_name=>'CHK_IMCUR_READING'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Check Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23177780072203103)
,p_db_column_name=>'CHK_IMDIFFERNCE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Check Imp Difference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23178234144203103)
,p_db_column_name=>'CHK_IMFACTOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Check Imp Multiplying Factor (MF)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23178571929203103)
,p_db_column_name=>'CHK_IMTOTAL_UNIT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Check Imp Total Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23179043389203103)
,p_db_column_name=>'CHK_IMADJUSTMENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Check Imp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23179372724203102)
,p_db_column_name=>'CHK_IMNET_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Check Imp Net Unit (kWh)'
,p_column_type=>'STRING'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23179803985203102)
,p_db_column_name=>'CHK_NET_EXUNIT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Check Net Exp Unit (kWh)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23180244164203102)
,p_db_column_name=>'CH_CHK_METER_WORKING'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Check Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23180663963203101)
,p_db_column_name=>'CHK_METER_REMARKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Check Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23181049962203101)
,p_db_column_name=>'JMR_NO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'JMR Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23181417186203101)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94155233888720509)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'111956'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JMR_NO:JMR_DATE:CHK_METER_NO:CHECK_LOC:CHK_EXPRV_READING:CHK_EXCUR_READING:CHK_EXDIFFERNCE:CHK_EXFACTOR:CHK_EXTOTAL_UNIT:CHK_EXADJUSTMENT:CHK_EXNET_UNIT:CHK_IMPRV_READING:CHK_IMCUR_READING:CHK_IMDIFFERNCE:CHK_IMFACTOR:CHK_IMTOTAL_UNIT:CHK_IMADJUSTMEN'
||'T:CHK_IMNET_UNIT:CHK_NET_EXUNIT:CH_CHK_METER_WORKING:CHK_METER_REMARKS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94309830523352574)
,p_plug_name=>'Previous Level &P30_PRV_LVL_NAME.'
,p_region_name=>'CHK_PRV'
,p_parent_plug_id=>wwv_flow_api.id(109584846849974453)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'C023 as CHK_METER_NO,',
'C024 as CHK_METER_LOC_ID,',
'C025 as check_loc,',
'C026 as CHK_EXPRV_READING,',
'C027 as CHK_EXCUR_READING,',
'C028 as CHK_EXDIFFERNCE,',
'C029 as CHK_EXFACTOR,',
'C030 as CHK_EXTOTAL_UNIT,',
'C031 as CHK_EXADJUSTMENT,',
'C032 as CHK_EXNET_UNIT,',
'C033 as CHK_IMPRV_READING,',
'C034 as CHK_IMCUR_READING,',
'C035 as CHK_IMDIFFERNCE,',
'C036 as CHK_IMFACTOR,',
'C037 as CHK_IMTOTAL_UNIT,',
'C038 as CHK_IMADJUSTMENT,',
'C039 as CHK_IMNET_UNIT,',
'C040 as CHK_NET_EXUNIT,',
'decode(C041,''Y'',''Yes'',''N'',''No'') as CH_CHK_METER_WORKING,',
'C042 as CHK_METER_REMARKS',
'',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and  C044 = ''1''',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94309837927352575)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>131015572701877225
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23182394313203100)
,p_db_column_name=>'CHK_METER_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Check Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23182824815203099)
,p_db_column_name=>'CHK_METER_LOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Chk Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23183211444203099)
,p_db_column_name=>'CHECK_LOC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Check Meter Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23183567532203099)
,p_db_column_name=>'CHK_EXPRV_READING'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Check Exp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23184000635203098)
,p_db_column_name=>'CHK_EXCUR_READING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Check Exp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23184377528203098)
,p_db_column_name=>'CHK_EXDIFFERNCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Check Exp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23184828203203098)
,p_db_column_name=>'CHK_EXFACTOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Check Exp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23185228120203097)
,p_db_column_name=>'CHK_EXTOTAL_UNIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Check Exp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23185623366203097)
,p_db_column_name=>'CHK_EXADJUSTMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Check Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23186033618203097)
,p_db_column_name=>'CHK_EXNET_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Check Exp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23186433968203097)
,p_db_column_name=>'CHK_IMPRV_READING'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Check Imp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23186804110203096)
,p_db_column_name=>'CHK_IMCUR_READING'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Check Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23187182594203096)
,p_db_column_name=>'CHK_IMDIFFERNCE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Check Imp Difference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23187623351203096)
,p_db_column_name=>'CHK_IMFACTOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Check Imp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23187975926203095)
,p_db_column_name=>'CHK_IMTOTAL_UNIT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Check Imp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23188414020203095)
,p_db_column_name=>'CHK_IMADJUSTMENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Check Imp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23188783584203095)
,p_db_column_name=>'CHK_IMNET_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Check Imp Net Unit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23189178202203095)
,p_db_column_name=>'CHK_NET_EXUNIT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Chk Net Exp Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23189565537203094)
,p_db_column_name=>'CH_CHK_METER_WORKING'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Check Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23190008283203094)
,p_db_column_name=>'CHK_METER_REMARKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Check Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23190447470203094)
,p_db_column_name=>'JMR_NO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'JMR No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23190770760203093)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94364891176364799)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114053'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'JMR_NO:JMR_DATE:CHK_METER_NO:CHECK_LOC:CHK_EXPRV_READING:CHK_EXCUR_READING:CHK_EXDIFFERNCE:CHK_EXFACTOR:CHK_EXTOTAL_UNIT:CHK_EXADJUSTMENT:CHK_EXNET_UNIT:CHK_IMPRV_READING:CHK_IMCUR_READING:CHK_IMDIFFERNCE:CHK_IMFACTOR:CHK_IMTOTAL_UNIT:CHK_IMADJUSTMEN'
||'T:CHK_IMNET_UNIT:CHK_NET_EXUNIT:CH_CHK_METER_WORKING:CHK_METER_REMARKS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(94324836371358248)
,p_plug_name=>'Next Level &P30_NXT_LVL_NAME.'
,p_region_name=>'CHK_NXT'
,p_parent_plug_id=>wwv_flow_api.id(109584846849974453)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'c001 as JMR_NO, ',
'c002 as JMR_DATE,',
'C023 as CHK_METER_NO,',
'C024 as CHK_METER_LOC_ID,',
'C025 as check_loc,',
'C026 as CHK_EXPRV_READING,',
'C027 as CHK_EXCUR_READING,',
'C028 as CHK_EXDIFFERNCE,',
'C029 as CHK_EXFACTOR,',
'C030 as CHK_EXTOTAL_UNIT,',
'C031 as CHK_EXADJUSTMENT,',
'C032 as CHK_EXNET_UNIT,',
'C033 as CHK_IMPRV_READING,',
'C034 as CHK_IMCUR_READING,',
'C035 as CHK_IMDIFFERNCE,',
'C036 as CHK_IMFACTOR,',
'C037 as CHK_IMTOTAL_UNIT,',
'C038 as CHK_IMADJUSTMENT,',
'C039 as CHK_IMNET_UNIT,',
'C040 as CHK_NET_EXUNIT,',
'decode(C041,''Y'',''Yes'',''N'',''No'') as CH_CHK_METER_WORKING,',
'C042 as CHK_METER_REMARKS',
'',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and  C044 = ''2''',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(94324916370358249)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>131030651144882899
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23191843282203092)
,p_db_column_name=>'CHK_METER_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Check Meter Number'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23192218235203092)
,p_db_column_name=>'CHK_METER_LOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Chk Meter Loc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23192590095203091)
,p_db_column_name=>'CHECK_LOC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Check Meter Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23193011466203091)
,p_db_column_name=>'CHK_EXPRV_READING'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Check Exp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23193464147203091)
,p_db_column_name=>'CHK_EXCUR_READING'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Check Exp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23193792186203091)
,p_db_column_name=>'CHK_EXDIFFERNCE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Check Exp Differnce'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23194169249203090)
,p_db_column_name=>'CHK_EXFACTOR'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Check Exp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23194595427203090)
,p_db_column_name=>'CHK_EXTOTAL_UNIT'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Check Exp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23195033822203090)
,p_db_column_name=>'CHK_EXADJUSTMENT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Check Exp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23195431765203089)
,p_db_column_name=>'CHK_EXNET_UNIT'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Check Exp Net Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23195847602203089)
,p_db_column_name=>'CHK_IMPRV_READING'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Check Imp Prv Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23196228980203089)
,p_db_column_name=>'CHK_IMCUR_READING'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'Check Imp Curr Reading'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23196584774203088)
,p_db_column_name=>'CHK_IMDIFFERNCE'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'Check Imp Difference'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23197041979203088)
,p_db_column_name=>'CHK_IMFACTOR'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'Check Imp Factor'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23197422090203088)
,p_db_column_name=>'CHK_IMTOTAL_UNIT'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'Check Imp Total Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23197828196203088)
,p_db_column_name=>'CHK_IMADJUSTMENT'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'Check Imp Adjustment'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23198237610203087)
,p_db_column_name=>'CHK_IMNET_UNIT'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'Check Imp Net Unit'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23198630912203087)
,p_db_column_name=>'CHK_NET_EXUNIT'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'Chk Net Exp Unit'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23198966484203087)
,p_db_column_name=>'CH_CHK_METER_WORKING'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'Check Meter Working'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
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
 p_id=>wwv_flow_api.id(23199379597203086)
,p_db_column_name=>'CHK_METER_REMARKS'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'Check Meter Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23199807120203086)
,p_db_column_name=>'JMR_NO'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'JMR No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23200166159203086)
,p_db_column_name=>'JMR_DATE'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'JMR Date'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(94365636462364804)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'114060'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'CHK_METER_NO:CHK_METER_LOC_ID:CHECK_LOC:CHK_EXPRV_READING:CHK_EXCUR_READING:CHK_EXDIFFERNCE:CHK_EXFACTOR:CHK_EXTOTAL_UNIT:CHK_EXADJUSTMENT:CHK_EXNET_UNIT:CHK_IMPRV_READING:CHK_IMCUR_READING:CHK_IMDIFFERNCE:CHK_IMFACTOR:CHK_IMTOTAL_UNIT:CHK_IMADJUSTME'
||'NT:CHK_IMNET_UNIT:CHK_NET_EXUNIT:CH_CHK_METER_WORKING:CHK_METER_REMARKS:JMR_NO:JMR_DATE'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109661403294730673)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(109661642327730675)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(109661403294730673)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       dbms_lob.getlength(BLOB001) BLOB1,',
'       C001,',
'       C002,',
'       C003,',
'       '''' DELETE1,',
'        dbms_lob.getlength(BLOB001)  as DOWNLOAD',
'      ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''FILE_UPLOAD''',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Attachment report'
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
 p_id=>wwv_flow_api.id(109661698889730676)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>146367433664255326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23201895987203083)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23202319315203083)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
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
 p_id=>wwv_flow_api.id(23202741193203083)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23203116742203082)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23203542463203082)
,p_db_column_name=>'DELETE1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#C003#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
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
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P30_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23203943848203082)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download'
,p_column_link=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GETFILE:&DEBUG.::FILE_ID:#C003#'
,p_column_linktext=>'<span aria-label="download"><span class="fa fa-download" aria-hidden="true" title="download"></span></span>'
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
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(109738523001427385)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'43164'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135045856273780150)
,p_plug_name=>'Invoice Notes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(135045989652780151)
,p_plug_name=>'notes'
,p_parent_plug_id=>wwv_flow_api.id(135045856273780150)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
''''' edit,',
'C001 DOC_ID,',
'C002 DOC_DATE,',
'C003 INVOICE_NOTE , ',
'Seq_id SERIAL_NO,C005 ALPHA',
' from apex_collections ',
' where COLLECTION_NAME=''INVOICE_NOTES''',
' ORDER BY C004;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'notes'
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
 p_id=>wwv_flow_api.id(135046055230780152)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>171751790005304802
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23205611859203080)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72:P72_DOC_DATE,P72_DOC_ID,P72_MODE,P72_SERIAL_NO,P72_ALPHA:#DOC_DATE#,#DOC_ID#,E,#SERIAL_NO#,#ALPHA#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P30_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23206011274203079)
,p_db_column_name=>'DOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23206367679203079)
,p_db_column_name=>'DOC_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doc Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23206848544203079)
,p_db_column_name=>'INVOICE_NOTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Invoice Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(23207200835203079)
,p_db_column_name=>'SERIAL_NO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Serial No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(76900082387870654)
,p_db_column_name=>'ALPHA'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Alpha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(135073506173152265)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'521139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:SERIAL_NO:INVOICE_NOTE:ALPHA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23213304038203073)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109296453939230745)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'http://103.234.186.89:7003/ebiz/reports/salesreportservlet?tab=&golink=Report&ReportType=PDF&organisation=&GLOBAL_COMP_CODE.&ccLbl=&ccVal=&RptDesc=&multiOrg=&whid=&tracktype=&atttype=%5B%5D&attval=%5B%5D&UsrId=1&bsport=&structid=&structloc=&structlbl=&cldid=0000&hoorgid=&GLOBAL_PARENT_COMP.&slocid=1&currtype=2&uomtype=1&todate=&P30_INVOICE_DATE.&fromdate=&catid=&status= &eoid=&salesman=&itmgrp=&itmName=&currid=&formstatus=&fileName=&P30_FILE_NAME.&bgcolor=D&head=D&margin=Y&docno=&P30_INVOICE_NO.&todocno=&logo=Org-logo.png&eogrp=&lblid=&lblval=&cntry=&topn=&topnto=&prjDocId=&GLOBAL_PROJ_ID.&slstype=&basis=&invtype=&grpLvlThree=&grpLvlTwo=&grpLvlOne=&fileDisplayName=JMR%20Invoice%20Detail%20Report&multiProj='
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23213685563203072)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(109296453939230745)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23214105808203072)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109296453939230745)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P30_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P30_REQ_NO.,&P30_INVOICE_NO.,&P30_INVOICE_DATE.,IJMR,&P30_LAST_PAGE.,&P30_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23214475195203072)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(109296453939230745)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:RUN_PROCESS2(''SAVE'');'
,p_button_condition=>'P30_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23201193130203085)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(109661403294730673)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P30_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23204899682203081)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(135045856273780150)
,p_button_name=>'ADD5'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:72:&SESSION.::&DEBUG.:72:P72_MODE:A'
,p_button_condition=>'P30_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(23208223312203078)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(106064286976347966)
,p_button_name=>'ADD_CHARGE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_MODE,P32_ENERGY_AMOUNT,P32_MAIN_NET_UNIT,P32_CHECK_NET_UNIT,P32_METER_WORK:A,&P30_ENERGY_AMOUNT.,&P30_MAIN_NET_EXP_UNIT.,&P30_CHECK_NET_EXP_UNIT.,&P30_MAIN_METER_WORK.'
,p_button_condition=>'P30_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(23289020311203003)
,p_branch_name=>'Go To Page 29'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:30::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6117476728947790)
,p_name=>'P30_JMR_READING_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'JMR Reading Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23214890365203072)
,p_name=>'P30_INVOICE_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_prompt=>'Invoice Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23215354738203070)
,p_name=>'P30_INVOICE_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23215715634203070)
,p_name=>'P30_CUSTOMER_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23216161102203070)
,p_name=>'P30_BILLING_POINT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23216533899203069)
,p_name=>'P30_METERING_POINT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23216962246203069)
,p_name=>'P30_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23217288487203069)
,p_name=>'P30_WKF_STAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23217676526203069)
,p_name=>'P30_REQ_NO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23218129905203068)
,p_name=>'P30_LAST_PAGE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23218531705203068)
,p_name=>'P30_AUTH_FLAG'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23218941954203068)
,p_name=>'P30_LABEL_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P30_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23219298918203068)
,p_name=>'P30_INVOICE_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23219742889203067)
,p_name=>'P30_FILE_NAME'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23220068919203067)
,p_name=>'P30_ERROR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(109296453939230745)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23220843570203066)
,p_name=>'P30_TRANSMISSION_LOSS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(94379927195413052)
,p_item_default=>'0'
,p_prompt=>'Transmission Loss'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23221177577203066)
,p_name=>'P30_TOTAL_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(94379927195413052)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23221635397203066)
,p_name=>'P30_EXPORT_UNIT_PRV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(94379927195413052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23222063545203065)
,p_name=>'P30_EXPORT_UNIT_NXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(94379927195413052)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23222682633203065)
,p_name=>'P30_GRP_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23223112660203064)
,p_name=>'P30_ITEM_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23223545958203064)
,p_name=>'P30_ITEM_DESC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23223940961203064)
,p_name=>'P30_UOM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23224337300203064)
,p_name=>'P30_QTY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>'Qty'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23224753239203063)
,p_name=>'P30_RATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>unistr('Rate(\20B9)')
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23225115658203063)
,p_name=>'P30_ITEM_DETAIL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>'Item Group'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23225479738203063)
,p_name=>'P30_SUBJECT'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select ',
'',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'AND CH_ACTIVE = ''Y''',
'AND :P30_MODE <> ''V''',
'UNION ALL',
'select ',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'--AND CH_ACTIVE = ''Y''',
'AND :P30_MODE = ''V'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23225912404203063)
,p_name=>'P30_ITM_COA_ID'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(106064964449347973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23226624399203062)
,p_name=>'P30_TAX_APPLICABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'N'
,p_prompt=>'Tax Applicable'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23227059675203062)
,p_name=>'P30_ENERGY_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Energy Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23227383481203061)
,p_name=>'P30_OTHER_CHARGE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Other Charge Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23227779905203061)
,p_name=>'P30_SUB_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Sub Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23228192792203061)
,p_name=>'P30_TAX_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Tax Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23228647924203060)
,p_name=>'P30_TCS_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('TCS Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23228996950203060)
,p_name=>'P30_NET_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Net Amount (\20B9)')
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23229378633203060)
,p_name=>'P30_REMARKS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_prompt=>'Amount(In Words)'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23229861539203060)
,p_name=>'P30_TCS_COA'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23230169557203059)
,p_name=>'P30_TAX_RULE_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23230601976203059)
,p_name=>'P30_TAX_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23231034030203059)
,p_name=>'P30_TCS_PER'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23231667916203058)
,p_name=>'P30_PPA_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'System Generated Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PPA_JMR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer,VC_EXTERNAL_DOC_NO,DT_EXTERNAL_DOC_DATE',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''J''',
'and  ch_auth_flag = ''Y''',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'PPA'
,p_attribute_08=>'800'
,p_attribute_09=>'500'
,p_attribute_10=>'DT_PPA_DATE:P30_PPA_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23232140099203058)
,p_name=>'P30_PPA_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23232536921203057)
,p_name=>'P30_JMR_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'JMR Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_INV_JMR_PPA'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_JMR_NO D, VC_JMR_NO R,DT_JMR_DATE ,GET_CUST_NAME(ORG_ID,EO_ID)CUSTOMER',
'FROM  DT_JMR',
'where  ORG_ID       = :GLOBAL_COMP_CODE',
'AND    PRJ_ID       = :GLOBAL_PROJ_ID',
'AND    VC_PPA_NO    = :P30_PPA_NO',
'AND    DT_PPA_DATE  = :P30_PPA_DATE',
'and    ch_auth_flag = ''Y'''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P30_PPA_NO'
,p_ajax_items_to_submit=>'P30_JMR_NO,P30_PPA_DATE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_10=>'DT_JMR_DATE:P30_JMR_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23232946860203057)
,p_name=>'P30_JMR_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'JMR  Date'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23233316481203057)
,p_name=>'P30_BILL_FROM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'Bill From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_14=>'P30_BILL_TO'
,p_attribute_15=>'both'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23233757803203057)
,p_name=>'P30_BILL_TO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'Bill To'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23234152030203056)
,p_name=>'P30_CUSTOMER_NAME'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'Customer'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23234511014203056)
,p_name=>'P30_BILLING_POINT_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'Delivery Point'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23234876477203056)
,p_name=>'P30_METERING_POINT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23235361994203055)
,p_name=>'P30_CUST_COA_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23235723593203055)
,p_name=>'P30_METER_INSTALL'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23236154714203055)
,p_name=>'P30_TRANS_LOSS'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23236548101203055)
,p_name=>'P30_OPTION'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23236958223203054)
,p_name=>'P30_LOSS_PER'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23237277014203054)
,p_name=>'P30_PRV_LVL_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(23237669396203054)
,p_name=>'P30_NXT_LVL_NAME'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(106065115732347975)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(69042760664312256)
,p_name=>'P30_NET_AMOUNT_1'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(106065048696347974)
,p_item_default=>'0'
,p_prompt=>unistr('Net Amount Round Off(\20B9)')
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23238590348203051)
,p_validation_name=>'PPA Not Null'
,p_validation_sequence=>10
,p_validation=>'P30_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23238967048203051)
,p_validation_name=>'item detail not null'
,p_validation_sequence=>220
,p_validation=>'P30_ITEM_DETAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Item Detail'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23239389138203051)
,p_validation_name=>'proj prefix'
,p_validation_sequence=>230
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'     begin',
'     select VC_PROJ_PREFIX',
'      into v_chk  ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     exception  when no_data_found then  null;',
'    end;',
'      ',
'      if nvl(v_chk,''XX'') = ''XX'' THEN',
'       RETURN ''Project Prefix not defined.Contact Administration'';',
'      END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23239851090203051)
,p_validation_name=>'Check financial year open or not'
,p_validation_sequence=>360
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'',
'      SELECT    count(*)',
'       INTO     v_chk',
'       FROM     APPUA.VW_FY',
'       WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ',
'       and     FY_STRT < :P30_INVOICE_DATE ',
'       and      FY_END  > :P30_INVOICE_DATE ;',
'       ',
'',
'if v_chk = 0 then',
'return false;',
'else',
'return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Financial year not open. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23240264033203051)
,p_validation_name=>'Net amount not null'
,p_validation_sequence=>370
,p_validation=>'P30_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23228996950203060)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23240637265203050)
,p_validation_name=>'Sub amount cannot be null'
,p_validation_sequence=>380
,p_validation=>'P30_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23227779905203061)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23241032714203050)
,p_validation_name=>'Energy amount not null'
,p_validation_sequence=>390
,p_validation=>'P30_ENERGY_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Energy amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23227059675203062)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23241369741203050)
,p_validation_name=>'TCS NOT NULL'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF replace(:P30_TCS_AMOUNT,'','','''' )> 0 AND :P30_TCS_COA IS NULL THEN',
'RETURN ''Accocunt of TCS Not found. Contact System Administration  '';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23228647924203060)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23241795608203050)
,p_validation_name=>'ITEM COA NOT NULL'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P30_ITM_COA_ID is null then',
'return ''Account of item not found. Contact System Administartion'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23223545958203064)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23242189830203050)
,p_validation_name=>'CUSTOMER COA NOT NULL'
,p_validation_sequence=>420
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P30_CUST_COA_ID IS NULL THEN',
'',
'RETURN ''Account of customer not Found. Contact System Administration'';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_associated_item=>wwv_flow_api.id(23234152030203056)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23238253422203052)
,p_validation_name=>'check invoice exist or not'
,p_validation_sequence=>430
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'select count(*)',
'INTO v_check',
'from DT_INVOICE_JMR',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and   vc_ppa_no = :P30_PPA_NO',
'and   dt_ppa_date = :P30_PPA_DATE',
'AND   DT_BILL_FROM BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'and   DT_BILL_TO  BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
';',
'',
'IF v_check > 0 THEN',
'RETURN FALSE;',
'ELSE ',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invoice is already Create For this Period. Choose another Period.'
,p_validation_condition=>'P30_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(23242620334203050)
,p_validation_name=>'TAX RULE ID'
,p_validation_sequence=>440
,p_validation=>'P30_TAX_RULE_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Tax ID Not found for this Customer.'
,p_validation_condition=>'P30_TAX_APPLICABLE'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6117657122947792)
,p_validation_name=>'Invoice Notes'
,p_validation_sequence=>450
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'chk number;',
'',
'',
'begin',
'',
'  SELECT count(*) into chk FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES'';',
'      ',
'    if chk > 0 then',
'        return true;',
'    else',
'        return false;',
'    end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Add Invoice Notes'
,p_when_button_pressed=>wwv_flow_api.id(23214475195203072)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23251281934203039)
,p_name=>'GET MAIN INFO FROM PPA'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_PPA_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23251794888203038)
,p_event_id=>wwv_flow_api.id(23251281934203039)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'       EO_ID, ',
'       NU_DELIVERY_POINT_ID, ',
'       NU_METERING_POINT_ID, ',
'       GRP_ID, ',
'       ITM_ID,  ',
'       NU_QTY, ',
'       GET_RATE (ORG_ID,PRJ_ID,VC_PPA_NO,DT_PPA_DATE,to_date(sysdate,''DD-MM-YYYY''),null),',
'       COA_ID,',
'       ITM_ID_COA',
'',
'',
'into   :P30_CUSTOMER_NAME,',
'       :P30_BILLING_POINT_DESC,',
'       :P30_METERING_POINT_DESC,',
'       :P30_ITEM_DESC,',
'       :P30_UOM,',
'       :P30_CUSTOMER_CODE,',
'       :P30_BILLING_POINT,',
'       :P30_METERING_POINT,',
'       :P30_GRP_ID,',
'       :P30_ITEM_CODE,',
'       :P30_QTY,',
'       :P30_RATE,',
'       :P30_CUST_COA_ID,',
'       :P30_ITM_COA_ID',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P30_PPA_NO',
'AND   DT_PPA_DATE = :P30_PPA_DATE',
';'))
,p_attribute_02=>'P30_PPA_NO,P30_PPA_DATE'
,p_attribute_03=>'P30_CUSTOMER_NAME,P30_BILLING_POINT_DESC,P30_METERING_POINT_DESC,P30_ITEM_DESC,P30_UOM,P30_CUSTOMER_CODE,P30_BILLING_POINT,P30_METERING_POINT,P30_GRP_ID, P30_ITEM_CODE,P30_QTY, P30_RATE,P30_CUST_COA_ID,P30_ITM_COA_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23252348984203037)
,p_event_id=>wwv_flow_api.id(23251281934203039)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'B.CH_METER_INSTALLED,',
'B.CH_TRANSMISSION_LOSS,',
'B.CH_OPTION,',
'B.NU_LOSS',
'into ',
':P30_METER_INSTALL,',
':P30_TRANS_LOSS,',
':P30_OPTION,',
':P30_LOSS_PER',
'',
'From MST_PPA A, DT_Energy_Flow B ',
'where A.ORG_ID             = B.ORG_ID',
'AND  A.PRJ_ID              = B.PRJ_ID',
'AND A.ORG_ID               = :GLOBAL_COMP_CODE',
'AND A.PRJ_ID               = :GLOBAL_PROJ_ID',
'and A.VC_PPA_NO            = :P30_PPA_NO',
'and A.DT_PPA_DATE          = :P30_PPA_DATE',
'and A.NU_METERING_POINT_ID = B.NU_DOC_NO',
'and  a.CH_BILLING_TYPE     = ''J''',
'and  b.CH_AUTH_FLAG        = ''Y'';'))
,p_attribute_02=>'P30_PPA_NO,P30_PPA_DATE'
,p_attribute_03=>'P30_METER_INSTALL,P30_TRANS_LOSS,P30_OPTION,P30_LOSS_PER'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23252850819203037)
,p_event_id=>wwv_flow_api.id(23251281934203039)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_BILL_FROM,P30_BILL_TO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23253248460203036)
,p_name=>'get info meter on meter install yes'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_BILL_TO'
,p_condition_element=>'P30_METER_INSTALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23253716608203036)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor c1 is ',
'        (',
'         select VC_JMR_NO,DT_JMR_DATE,VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID,get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) main_loc, NU_MAIN_EXP_PRV_READING, ',
'                NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE,NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING,NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MA'
||'IN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, ',
'                NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT,CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,NU_INV_NET_UNIT,VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) check_loc ,NU_CHK_EXP_PRV_READING, ',
'                NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR,NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, ',
'                NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, ',
'                NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING,VC_CHK_METER_REMARKS',
'',
'        FROM DT_JMR',
'        where ORG_ID = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P30_PPA_NO',
'        AND   DT_PPA_DATE = :P30_PPA_DATE',
'        AND   DT_PERIOD_FROM BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and   DT_PERIOD_TO BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and ch_auth_flag = ''Y''',
'        );',
'BEGIN',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'FOR I IN C1 LOOP',
'APEX_COLLECTION.ADD_MEMBER',
'(  P_COLLECTION_NAME => ''JMR_DETAIL'',',
'   p_c001 => I.VC_JMR_NO, ',
'   p_c002 => I.DT_JMR_DATE, ',
'   p_c003 => I.VC_MAIN_METER_NO,',
'   P_C004 => I.NU_MAIN_METER_LOC_ID,',
'   P_C005 => I.main_loc,',
'   P_C006 => I.NU_MAIN_EXP_PRV_READING,',
'   P_C007 => I.NU_MAIN_EXP_CUR_READING, ',
'   P_C008 => I.NU_MAIN_EXP_DIFFERNCE, ',
'   P_C009 => I.NU_MAIN_EXP_FACTOR, ',
'   P_C010 => I.NU_MAIN_EXP_TOTAL_UNIT, ',
'   P_C011 => I.NU_MAIN_EXP_ADJUSTMENT, ',
'   P_C012 => I.NU_MAIN_EXP_NET_UNIT, ',
'   P_C013 => I.NU_MAIN_IMP_PRV_READING, ',
'   P_C014 => I.NU_MAIN_IMP_CUR_READING, ',
'   P_C015 => I.NU_MAIN_IMP_DIFFERNCE, ',
'   P_C016 => I.NU_MAIN_IMP_FACTOR, ',
'   P_C017 => I.NU_MAIN_IMP_TOTAL_UNIT, ',
'   P_C018 => I.NU_MAIN_IMP_ADJUSTMENT, ',
'   P_C019 => I.NU_MAIN_IMP_NET_UNIT, ',
'   P_C020 => I.NU_MAIN_NET_EXP_UNIT, ',
'   P_C021 => I.CH_MAIN_METER_WORKING, ',
'   P_C022 => I.VC_MAIN_METER_REMARKS,',
'   P_C023 => I.VC_CHK_METER_NO,',
'   P_C024 => I.NU_CHK_METER_LOC_ID,',
'   P_C025 => I.check_loc,',
'   P_C026 => I.NU_CHK_EXP_PRV_READING,',
'   P_C027 => I.NU_CHK_EXP_CUR_READING,',
'   P_C028 => I.NU_CHK_EXP_DIFFERNCE,',
'   P_C029 => I.NU_CHK_EXP_FACTOR,',
'   P_C030 => I.NU_CHK_EXP_TOTAL_UNIT,',
'   P_C031 => I.NU_CHK_EXP_ADJUSTMENT,',
'   P_C032 => I.NU_CHK_EXP_NET_UNIT,',
'   P_C033 => I.NU_CHK_IMP_PRV_READING,',
'   P_C034 => I.NU_CHK_IMP_CUR_READING,',
'   P_C035 => I.NU_CHK_IMP_DIFFERNCE,',
'   P_C036 => I.NU_CHK_IMP_FACTOR,',
'   P_C037 => I.NU_CHK_IMP_TOTAL_UNIT,',
'   P_C038 => I.NU_CHK_IMP_ADJUSTMENT,',
'   P_C039 => I.NU_CHK_IMP_NET_UNIT,',
'   P_C040 => I.NU_CHK_NET_EXP_UNIT,',
'   P_C041 => I.CH_CHK_METER_WORKING,',
'   P_C042 => I.VC_CHK_METER_REMARKS,',
'   P_C043 => I.NU_INV_NET_UNIT,',
'   P_C044 => 0',
');',
'     ',
'END LOOP;',
'END;'))
,p_attribute_02=>'P30_PPA_NO,P30_PPA_DATE,P30_BILL_FROM,P30_BILL_TO'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_METER_INSTALL'
,p_client_condition_expression=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23254179160203035)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94070799209684079)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23254711364203035)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(93945077102149950)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23255210986203034)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_TOTAL_UNIT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(SUM(to_number(C043)),0) AS AMT',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL'';'))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23255707299203034)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_ENERGY_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(SUM(to_number(C043)),0)  * :P30_RATE AS AMT',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL'';'))
,p_attribute_07=>'P30_RATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23256239779203033)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount number;',
' v_unit number;',
'',
'begin',
'',
' v_amount  := replace(:P30_ENERGY_AMOUNT,'','','''');',
' v_unit    :=  replace(:P30_TOTAL_UNIT,'','','''');',
' ',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'     APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'       APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'FOR I IN (Select',
'                NU_CHARGE_ID,',
'                VC_CHARGE_TYPE,',
'                NU_RATE,',
'                VC_REMARKS,',
'                COA_ID,',
'                case VC_CHARGE_TYPE ',
'                when ''1'' then',
'                   (nvl(v_amount,0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(v_unit,0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P30_PPA_NO',
'                and  dt_ppa_date = :P30_PPA_DATE) ',
'LOOP',
' ',
' ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_attribute_02=>'P30_ENERGY_AMOUNT,P30_TOTAL_UNIT,P30_PPA_NO,P30_PPA_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23256678937203033)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(105956737680604760)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23257223665203032)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_OTHER_CHARGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'nvl(sum(to_number(c004)),0)',
'',
'from    apex_collections ',
'where   COLLECTION_NAME=''OTHER_CHARGE''; ',
'',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23257707720203032)
,p_event_id=>wwv_flow_api.id(23253248460203036)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_TRANSMISSION_LOSS'
,p_attribute_01=>'STATIC_ASSIGNMENT'
,p_attribute_02=>'0'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23258067580203032)
,p_name=>'get info meter on meter install no'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_BILL_TO'
,p_triggering_condition_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_expression=>'$v(''P30_BILL_TO'')!= "" && $v(''P30_METER_INSTALL'') == ''N'''
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23258662277203031)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P30_TRANS_LOSS = ''Y'' THEN',
'DECLARE',
'cursor c1 is ',
'        (',
'         select VC_JMR_NO,DT_JMR_DATE,VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID,get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) main_loc, NU_MAIN_EXP_PRV_READING, ',
'                NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE,NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING,NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MA'
||'IN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, ',
'                NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT,CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,NU_INV_NET_UNIT,VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) check_loc ,NU_CHK_EXP_PRV_READING, ',
'                NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR,NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, ',
'                NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, ',
'                NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING,VC_CHK_METER_REMARKS',
'',
'        FROM DT_JMR',
'        where ORG_ID = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P30_PPA_NO',
'        AND   DT_PPA_DATE = :P30_PPA_DATE',
'        AND NU_METERING_POINT_ID = :P30_METERING_POINT-1',
'        AND   DT_PERIOD_FROM BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and   DT_PERIOD_TO BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and ch_auth_flag = ''Y''',
'        );',
'BEGIN',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'FOR I IN C1 LOOP',
'APEX_COLLECTION.ADD_MEMBER',
'(  P_COLLECTION_NAME => ''JMR_DETAIL'',',
'   p_c001 => I.VC_JMR_NO, ',
'   p_c002 => I.DT_JMR_DATE, ',
'   p_c003 => I.VC_MAIN_METER_NO,',
'   P_C004 => I.NU_MAIN_METER_LOC_ID,',
'   P_C005 => I.main_loc,',
'   P_C006 => I.NU_MAIN_EXP_PRV_READING,',
'   P_C007 => I.NU_MAIN_EXP_CUR_READING, ',
'   P_C008 => I.NU_MAIN_EXP_DIFFERNCE, ',
'   P_C009 => I.NU_MAIN_EXP_FACTOR, ',
'   P_C010 => I.NU_MAIN_EXP_TOTAL_UNIT, ',
'   P_C011 => I.NU_MAIN_EXP_ADJUSTMENT, ',
'   P_C012 => I.NU_MAIN_EXP_NET_UNIT, ',
'   P_C013 => I.NU_MAIN_IMP_PRV_READING, ',
'   P_C014 => I.NU_MAIN_IMP_CUR_READING, ',
'   P_C015 => I.NU_MAIN_IMP_DIFFERNCE, ',
'   P_C016 => I.NU_MAIN_IMP_FACTOR, ',
'   P_C017 => I.NU_MAIN_IMP_TOTAL_UNIT, ',
'   P_C018 => I.NU_MAIN_IMP_ADJUSTMENT, ',
'   P_C019 => I.NU_MAIN_IMP_NET_UNIT, ',
'   P_C020 => I.NU_MAIN_NET_EXP_UNIT, ',
'   P_C021 => I.CH_MAIN_METER_WORKING, ',
'   P_C022 => I.VC_MAIN_METER_REMARKS,',
'   P_C023 => I.VC_CHK_METER_NO,',
'   P_C024 => I.NU_CHK_METER_LOC_ID,',
'   P_C025 => I.check_loc,',
'   P_C026 => I.NU_CHK_EXP_PRV_READING,',
'   P_C027 => I.NU_CHK_EXP_CUR_READING,',
'   P_C028 => I.NU_CHK_EXP_DIFFERNCE,',
'   P_C029 => I.NU_CHK_EXP_FACTOR,',
'   P_C030 => I.NU_CHK_EXP_TOTAL_UNIT,',
'   P_C031 => I.NU_CHK_EXP_ADJUSTMENT,',
'   P_C032 => I.NU_CHK_EXP_NET_UNIT,',
'   P_C033 => I.NU_CHK_IMP_PRV_READING,',
'   P_C034 => I.NU_CHK_IMP_CUR_READING,',
'   P_C035 => I.NU_CHK_IMP_DIFFERNCE,',
'   P_C036 => I.NU_CHK_IMP_FACTOR,',
'   P_C037 => I.NU_CHK_IMP_TOTAL_UNIT,',
'   P_C038 => I.NU_CHK_IMP_ADJUSTMENT,',
'   P_C039 => I.NU_CHK_IMP_NET_UNIT,',
'   P_C040 => I.NU_CHK_NET_EXP_UNIT,',
'   P_C041 => I.CH_CHK_METER_WORKING,',
'   P_C042 => I.VC_CHK_METER_REMARKS,',
'   P_C043 => I.NU_INV_NET_UNIT,',
'   P_C044 => ''1''',
');',
'     ',
'END LOOP;',
'END;',
'END IF;'))
,p_attribute_02=>'P30_PPA_NO,P30_PPA_DATE,P30_BILL_FROM,P30_BILL_TO,P30_TRANS_LOSS,P30_METERING_POINT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_METER_INSTALL'
,p_client_condition_expression=>'N'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23260071722203029)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P30_TRANS_LOSS = ''Y'' AND :P30_OPTION = ''C''  THEN',
'DECLARE',
'cursor c1 is ',
'        (',
'         select VC_JMR_NO,DT_JMR_DATE,VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID,get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) main_loc, NU_MAIN_EXP_PRV_READING, ',
'                NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE,NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING,NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MA'
||'IN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, ',
'                NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT,CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,NU_INV_NET_UNIT,VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) check_loc ,NU_CHK_EXP_PRV_READING, ',
'                NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR,NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, ',
'                NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, ',
'                NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING,VC_CHK_METER_REMARKS',
'',
'        FROM DT_JMR',
'        where ORG_ID = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P30_PPA_NO',
'        AND   DT_PPA_DATE = :P30_PPA_DATE',
'        AND NU_METERING_POINT_ID = :P30_METERING_POINT+1',
'        AND   DT_PERIOD_FROM BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and   DT_PERIOD_TO BETWEEN :P30_BILL_FROM AND :P30_BILL_TO',
'        and ch_auth_flag = ''Y''',
'        );',
'BEGIN',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'FOR I IN C1 LOOP',
'APEX_COLLECTION.ADD_MEMBER',
'(  P_COLLECTION_NAME => ''JMR_DETAIL'',',
'   p_c001 => I.VC_JMR_NO, ',
'   p_c002 => I.DT_JMR_DATE, ',
'   p_c003 => I.VC_MAIN_METER_NO,',
'   P_C004 => I.NU_MAIN_METER_LOC_ID,',
'   P_C005 => I.main_loc,',
'   P_C006 => I.NU_MAIN_EXP_PRV_READING,',
'   P_C007 => I.NU_MAIN_EXP_CUR_READING, ',
'   P_C008 => I.NU_MAIN_EXP_DIFFERNCE, ',
'   P_C009 => I.NU_MAIN_EXP_FACTOR, ',
'   P_C010 => I.NU_MAIN_EXP_TOTAL_UNIT, ',
'   P_C011 => I.NU_MAIN_EXP_ADJUSTMENT, ',
'   P_C012 => I.NU_MAIN_EXP_NET_UNIT, ',
'   P_C013 => I.NU_MAIN_IMP_PRV_READING, ',
'   P_C014 => I.NU_MAIN_IMP_CUR_READING, ',
'   P_C015 => I.NU_MAIN_IMP_DIFFERNCE, ',
'   P_C016 => I.NU_MAIN_IMP_FACTOR, ',
'   P_C017 => I.NU_MAIN_IMP_TOTAL_UNIT, ',
'   P_C018 => I.NU_MAIN_IMP_ADJUSTMENT, ',
'   P_C019 => I.NU_MAIN_IMP_NET_UNIT, ',
'   P_C020 => I.NU_MAIN_NET_EXP_UNIT, ',
'   P_C021 => I.CH_MAIN_METER_WORKING, ',
'   P_C022 => I.VC_MAIN_METER_REMARKS,',
'   P_C023 => I.VC_CHK_METER_NO,',
'   P_C024 => I.NU_CHK_METER_LOC_ID,',
'   P_C025 => I.check_loc,',
'   P_C026 => I.NU_CHK_EXP_PRV_READING,',
'   P_C027 => I.NU_CHK_EXP_CUR_READING,',
'   P_C028 => I.NU_CHK_EXP_DIFFERNCE,',
'   P_C029 => I.NU_CHK_EXP_FACTOR,',
'   P_C030 => I.NU_CHK_EXP_TOTAL_UNIT,',
'   P_C031 => I.NU_CHK_EXP_ADJUSTMENT,',
'   P_C032 => I.NU_CHK_EXP_NET_UNIT,',
'   P_C033 => I.NU_CHK_IMP_PRV_READING,',
'   P_C034 => I.NU_CHK_IMP_CUR_READING,',
'   P_C035 => I.NU_CHK_IMP_DIFFERNCE,',
'   P_C036 => I.NU_CHK_IMP_FACTOR,',
'   P_C037 => I.NU_CHK_IMP_TOTAL_UNIT,',
'   P_C038 => I.NU_CHK_IMP_ADJUSTMENT,',
'   P_C039 => I.NU_CHK_IMP_NET_UNIT,',
'   P_C040 => I.NU_CHK_NET_EXP_UNIT,',
'   P_C041 => I.CH_CHK_METER_WORKING,',
'   P_C042 => I.VC_CHK_METER_REMARKS,',
'   P_C043 => I.NU_INV_NET_UNIT,',
'   P_C044 => ''2''',
');',
'     ',
'END LOOP;',
'END;',
'END IF;'))
,p_attribute_02=>'P30_PPA_NO,P30_PPA_DATE,P30_BILL_FROM,P30_BILL_TO,P30_OPTION,P30_TRANS_LOSS'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_METER_INSTALL'
,p_client_condition_expression=>'N'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23260515837203029)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(SUM(to_number(C043)),0)  INTO :P30_EXPORT_UNIT_NXT',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 = ''2'';'))
,p_attribute_03=>'P30_EXPORT_UNIT_NXT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23260993426203028)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT NVL(SUM(to_number(C043)),0) into :P30_EXPORT_UNIT_PRV',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 = ''1'';'))
,p_attribute_03=>'P30_EXPORT_UNIT_PRV'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23261485006203028)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P30_TRANSMISSION_LOSS :=  ABS((:P30_EXPORT_UNIT_PRV*:P30_LOSS_PER)/100);',
':P30_TOTAL_UNIT := :P30_EXPORT_UNIT_PRV- to_number(replace(:P30_TRANSMISSION_LOSS ,'','',''''));'))
,p_attribute_02=>'P30_TRANSMISSION_LOSS,P30_EXPORT_UNIT_PRV,P30_LOSS_PER'
,p_attribute_03=>'P30_TRANSMISSION_LOSS,P30_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_OPTION'
,p_client_condition_expression=>'P'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23262063750203028)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P30_TRANSMISSION_LOSS:= ABS((:P30_EXPORT_UNIT_PRV- :P30_EXPORT_UNIT_NXT) *0.3542);',
':P30_TOTAL_UNIT := to_number(nvl(:P30_EXPORT_UNIT_PRV,0))- nvl(to_number(replace(:P30_TRANSMISSION_LOSS ,'','','''')),0);'))
,p_attribute_02=>'P30_EXPORT_UNIT_PRV,P30_EXPORT_UNIT_NXT,P30_TRANSMISSION_LOSS'
,p_attribute_03=>'P30_TRANSMISSION_LOSS,P30_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P30_OPTION'
,p_client_condition_expression=>'C'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23259158220203030)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>100
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount number;',
' v_unit number;',
'',
'begin',
'',
' v_amount  := nvl(replace(:P30_TOTAL_UNIT,'','','''') * :P30_RATE,0);--replace(:P30_ENERGY_AMOUNT,'','','''');',
' v_unit    :=  replace(:P30_TOTAL_UNIT,'','','''');',
' ',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'     APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'       APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'FOR I IN (Select',
'                NU_CHARGE_ID,',
'                VC_CHARGE_TYPE,',
'                NU_RATE,',
'                VC_REMARKS,',
'                COA_ID,',
'                case VC_CHARGE_TYPE ',
'                when ''1'' then',
'                   (nvl(v_amount,0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(v_unit,0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P30_PPA_NO',
'                and  dt_ppa_date = :P30_PPA_DATE) ',
'LOOP',
' ',
' ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_attribute_02=>'P30_ENERGY_AMOUNT,P30_TOTAL_UNIT,P30_PPA_NO,P30_PPA_DATE,P30_RATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23259629727203030)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>110
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_OTHER_CHARGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'nvl(sum(to_number(c004)),0)',
'',
'from    apex_collections ',
'where   COLLECTION_NAME=''OTHER_CHARGE''; ',
'',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23262549639203027)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>120
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94324836371358248)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23263029546203027)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>130
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94309830523352574)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23263489282203026)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>140
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94307336642352549)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23264001387203026)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>150
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94147544983720074)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23264543254203025)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>160
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(105956737680604760)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23265050804203025)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>170
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ''Previous Level (''||C005 || '')'' INTO :P30_PRV_LVL_NAME',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''1'';',
'',
'SELECT ''Next Level ('' || C005 || '')'' INTO :P30_NXT_LVL_NAME',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''2'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_attribute_03=>'P30_PRV_LVL_NAME,P30_NXT_LVL_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23265478859203024)
,p_event_id=>wwv_flow_api.id(23258067580203032)
,p_event_result=>'TRUE'
,p_action_sequence=>180
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#CHK_PRV .t-Region-title'').text($v(''P30_PRV_LVL_NAME''))',
'$(''#MAIN_PRV .t-Region-title'').text($v(''P30_PRV_LVL_NAME''))',
'',
'$(''#MAIN_NXT .t-Region-title'').text($v(''P30_NXT_LVL_NAME''))',
'',
'$(''#CHK_NXT .t-Region-title'').text($v(''P30_NXT_LVL_NAME''))',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23265931740203024)
,p_name=>'Refresh'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23266447030203024)
,p_event_id=>wwv_flow_api.id(23265931740203024)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(109661642327730675)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23266952771203023)
,p_event_id=>wwv_flow_api.id(23265931740203024)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_OTHER_CHARGE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'nvl(sum(to_number(c004)),0)',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; ',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23267464135203023)
,p_event_id=>wwv_flow_api.id(23265931740203024)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(105956737680604760)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23267933517203022)
,p_event_id=>wwv_flow_api.id(23265931740203024)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(135045989652780151)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23268275365203022)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>210
,p_condition_element=>'P30_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23268857590203021)
,p_event_id=>wwv_flow_api.id(23268275365203022)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(23214105808203072)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P30_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23269215603203021)
,p_name=>'hide forward on add mode'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P30_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23269761777203021)
,p_event_id=>wwv_flow_api.id(23269215603203021)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(23214105808203072)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23270134424203020)
,p_name=>'Calculate Net Amount'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_OTHER_CHARGE,P30_ENERGY_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23270602076203020)
,p_event_id=>wwv_flow_api.id(23270134424203020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'--:P30_SUB_AMOUNT := nvl(TO_NUMBER(REPLACE(:P30_ENERGY_AMOUNT,'','','''')),0) + NVL(TO_NUMBER(REPLACE(:P30_OTHER_CHARGE,'','','''')),0);',
'',
':P30_SUB_AMOUNT := nvl(TO_NUMBER(REPLACE(:P30_ENERGY_AMOUNT,'','','''')),0) + NVL(TO_NUMBER(:P30_OTHER_CHARGE),0);'))
,p_attribute_02=>'P30_ENERGY_AMOUNT,P30_OTHER_CHARGE'
,p_attribute_03=>'P30_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23271042085203020)
,p_name=>'update other charge'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_ENERGY_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23271509409203019)
,p_event_id=>wwv_flow_api.id(23271042085203020)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount number;',
'v_unit number;',
'l_query VARCHAR2(4000);',
'',
'begin',
'',
'SELECT DECODE(:P30_MAIN_METER_WORK,''Y'',:P30_MAIN_NET_EXP_UNIT,''N'',:P30_CHECK_NET_EXP_UNIT) INTO v_unit',
'FROM DUAL;',
'',
'',
'l_query:=''SELECT c001,c002,c003,c004,c005,c006',
' from apex_collections ',
' where COLLECTION_NAME=''''OTHER_CHARGE'''''';           ',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE2'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE2'');',
'END IF;',
'',
'APEX_COLLECTION.CREATE_COLLECTION_FROM_QUERY (',
'        p_collection_name => ''OTHER_CHARGE2'',',
'        p_query => l_query',
'    );',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'FOR I IN (Select',
'                c001 as NU_CHARGE_ID,',
'                c002 as VC_CHARGE_TYPE,',
'                c003 as NU_RATE,',
'                case c002 ',
'                when ''1'' then',
'                   (nvl(replace(:P30_ENERGY_AMOUNT,'','',''''),0) *   to_number(c003))/100 ',
'                WHEN ''2'' THEN',
'                     to_number(c003)',
'                WHEN ''3'' THEN',
'                    (nvl(to_number(v_unit),0) *   to_number(c003))',
'                END AS AMOUNT ,',
'                c005 as VC_REMARKS,',
'                c006 as COA_ID',
'',
'                 from apex_collections ',
'		where COLLECTION_NAME=''OTHER_CHARGE2'') ',
'LOOP',
' ',
' ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE2'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE2'');',
'END IF;',
'',
'Select ',
'',
'nvl(sum(to_number(c004)),0)',
'into :P30_OTHER_CHARGE',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; ',
'',
'',
'end;'))
,p_attribute_02=>'P30_ENERGY_AMOUNT'
,p_attribute_03=>'P30_OTHER_CHARGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23271996851203019)
,p_event_id=>wwv_flow_api.id(23271042085203020)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(105956737680604760)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23272425696203018)
,p_name=>'Get net amount on sub_amount change'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_SUB_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23272930030203017)
,p_event_id=>wwv_flow_api.id(23272425696203018)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_tcs_flag          varchar2(2);',
'v_tcs_amount        number;',
'v_amount            number;',
'v_cust_add_id       varchar2(50);',
'V_TAX_RULE_ID       NUMBER;',
'v_state_code        VARCHAR2(20);',
'v_tax_exmpt_flg     varchar2(2);',
'V_TCS_PER           NUMBER;',
'V_TAX_ID            NUMBER;',
'v_tcs_coa           number;',
'begin',
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P30_CUSTOMER_CODE) ; ',
'',
'IF v_tcs_flag = ''Y'' then',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P30_CUSTOMER_CODE) INTO   v_amount  from dual;',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code  and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                                             :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    ',
'    :P30_TAX_RULE_ID := V_TAX_RULE_ID;',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'',
'  if v_amount > 5000000 then',
'            v_tcs_amount := replace(:P30_SUB_AMOUNT,'','','''');',
'            :P30_TCS_AMOUNT := nvl((v_tcs_amount * V_TCS_PER )/100,0);',
'            :P30_TCS_PER := V_TCS_PER;',
'            :P30_TAX_ID  := V_TAX_ID;',
'            :P30_TCS_COA  := v_tcs_coa;',
'    ',
'    else',
'        if v_amount+replace(:P30_SUB_AMOUNT,'','','''')-5000000 < 0 then',
'            v_tcs_amount := 0;',
'            :P30_TCS_AMOUNT :=0;',
'            :P30_TCS_PER := null;',
'            :P30_TAX_ID  := null;',
'            :P30_TCS_COA  := null;',
'      else',
'            v_tcs_amount := v_amount+replace(:P30_SUB_AMOUNT,'','','''')-5000000; ',
'            ',
'            :P30_TCS_AMOUNT := nvl((v_tcs_amount * V_TCS_PER )/100,0);',
'                :P30_TCS_PER := V_TCS_PER;',
'                :P30_TAX_ID  := V_TAX_ID;',
'                :P30_TCS_COA  := v_tcs_coa;',
'     end if;',
'    end if;',
'end if;',
'IF v_tcs_flag = ''N'' then',
' :P30_TCS_AMOUNT := 0;',
'end if;',
'',
'if :P30_TAX_APPLICABLE = ''Y'' then',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P30_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                            :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P30_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P30_INVOICE_ID, :P30_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P30_SUB_AMOUNT,'','',''''),replace(:P30_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P30_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID);',
':P30_TAX_AMOUNT := v_amount;',
'end if;',
'if :P30_TAX_APPLICABLE = ''N'' then',
':P30_TAX_AMOUNT := 0;',
'end if;',
':P30_NET_AMOUNT := replace(:P30_SUB_AMOUNT ,'','','''') + replace(nvl(:P30_TAX_AMOUNT,0),'','','''') +replace(:P30_TCS_AMOUNT,'','','''') ;',
'end;'))
,p_attribute_02=>'P30_CUSTOMER_CODE,P30_ITEM_CODE,P30_SUB_AMOUNT,P30_CUST_COA_ID,P30_INVOICE_ID,P30_TAX_AMOUNT,P30_TAX_APPLICABLE'
,p_attribute_03=>'P30_TCS_AMOUNT ,P30_NET_AMOUNT,P30_TAX_AMOUNT,P30_TAX_RULE_ID,P30_TCS_PER,P30_TAX_ID,P30_TCS_COA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23273311039203017)
,p_name=>'get_tax_amount'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TAX_APPLICABLE'
,p_condition_element=>'P30_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23273860865203017)
,p_event_id=>wwv_flow_api.id(23273311039203017)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'begin',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P30_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                            :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P30_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P30_INVOICE_ID, :P30_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P30_SUB_AMOUNT,'','',''''),replace(:P30_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P30_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P30_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P30_CUSTOMER_CODE,P30_ITEM_CODE,P30_SUB_AMOUNT,P30_CUST_COA_ID,P30_INVOICE_ID'
,p_attribute_03=>'P30_TAX_AMOUNT,P30_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23274274739203016)
,p_event_id=>wwv_flow_api.id(23273311039203017)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P30_TAX_AMOUNT  := 0;',
'',
'IF replace(:P30_TCS_AMOUNT ,'','','''')= 0 THEN',
':P30_TAX_RULE_ID := NULL;',
'',
'END IF;'))
,p_attribute_03=>'P30_TAX_AMOUNT,P30_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23274739888203016)
,p_name=>'Calculate net amount on tax change'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23275235344203015)
,p_event_id=>wwv_flow_api.id(23274739888203016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P30_NET_AMOUNT := NVL(replace(:P30_SUB_AMOUNT ,'','',''''),0) +  NVL(replace(:P30_TAX_AMOUNT ,'','','''') ,0) + NVL(replace(:P30_TCS_AMOUNT ,'','','''') ,0);'
,p_attribute_02=>'P30_SUB_AMOUNT ,P30_TAX_AMOUNT,P30_TCS_AMOUNT'
,p_attribute_03=>'P30_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23275580591203015)
,p_name=>'hide invocie date'
,p_event_sequence=>320
,p_condition_element=>'P30_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23276100415203014)
,p_event_id=>wwv_flow_api.id(23275580591203015)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P30_INVOICE_NO,P30_INVOICE_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23276518156203014)
,p_name=>'hide'
,p_event_sequence=>330
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23277003815203014)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94307336642352549)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23277514724203013)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94147544983720074)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23278000898203013)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94324836371358248)
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23278482019203012)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94309830523352574)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23278968441203012)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94070799209684079)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23279482582203012)
,p_event_id=>wwv_flow_api.id(23276518156203014)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(93945077102149950)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23279880709203011)
,p_name=>'show region meter info'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_METER_INSTALL'
,p_condition_element=>'P30_METER_INSTALL'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23280405990203011)
,p_event_id=>wwv_flow_api.id(23279880709203011)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94070799209684079)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23280956918203010)
,p_event_id=>wwv_flow_api.id(23279880709203011)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94070799209684079)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23281409826203010)
,p_event_id=>wwv_flow_api.id(23279880709203011)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(93945077102149950)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23281947048203009)
,p_event_id=>wwv_flow_api.id(23279880709203011)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(93945077102149950)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23282328939203009)
,p_name=>'Show region previous'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TRANS_LOSS'
,p_condition_element=>'P30_TRANS_LOSS'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23282839851203009)
,p_event_id=>wwv_flow_api.id(23282328939203009)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94309830523352574)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23283292997203008)
,p_event_id=>wwv_flow_api.id(23282328939203009)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94309830523352574)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23283846386203008)
,p_event_id=>wwv_flow_api.id(23282328939203009)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94147544983720074)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23284321537203007)
,p_event_id=>wwv_flow_api.id(23282328939203009)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94147544983720074)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23284764152203007)
,p_name=>'show next level region'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_OPTION'
,p_condition_element=>'P30_OPTION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'C'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23285233485203007)
,p_event_id=>wwv_flow_api.id(23284764152203007)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94324836371358248)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23285738709203006)
,p_event_id=>wwv_flow_api.id(23284764152203007)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94324836371358248)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23286168988203006)
,p_event_id=>wwv_flow_api.id(23284764152203007)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94307336642352549)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23286677955203005)
,p_event_id=>wwv_flow_api.id(23284764152203007)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(94307336642352549)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23287145358203005)
,p_name=>'Calculate Energy Amount'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_TOTAL_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23287619498203005)
,p_event_id=>wwv_flow_api.id(23287145358203005)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P30_ENERGY_AMOUNT := nvl(replace(:P30_TOTAL_UNIT,'','','''') * :P30_RATE,0);'
,p_attribute_02=>'P30_TOTAL_UNIT,P30_RATE'
,p_attribute_03=>'P30_ENERGY_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(23288039273203004)
,p_name=>'set period to and from date'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_JMR_DATE'
,p_condition_element=>'P30_JMR_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(23288468799203004)
,p_event_id=>wwv_flow_api.id(23288039273203004)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'DT_PERIOD_FROM, DT_PERIOD_TO,DT_JMR_READING',
'INTO :P30_BILL_FROM, :P30_BILL_TO,:P30_JMR_READING_DATE',
'from dt_jmr',
' where ORG_ID = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'        AND VC_JMR_NO   = :P30_JMR_NO',
'        AND DT_JMR_DATE  = :P30_JMR_DATE;'))
,p_attribute_02=>'P30_JMR_NO,P30_JMR_DATE'
,p_attribute_03=>'P30_BILL_FROM,P30_BILL_TO,P30_JMR_READING_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14426377107913592)
,p_name=>'amount in words'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P30_NET_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14426498328913593)
,p_event_id=>wwv_flow_api.id(14426377107913592)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'select spell_number(round(replace(:P30_NET_AMOUNT,'','','''')))  into :P30_REMARKS from dual;'
,p_attribute_02=>'P30_NET_AMOUNT'
,p_attribute_03=>'P30_REMARKS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(69042820375312257)
,p_event_id=>wwv_flow_api.id(14426377107913592)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'select to_char(round(replace(:P30_NET_AMOUNT,'','','''')),''999G999G999G999G990D0000'')  into :P30_NET_AMOUNT_1 from dual;'
,p_attribute_02=>'P30_NET_AMOUNT'
,p_attribute_03=>'P30_NET_AMOUNT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23244945038203048)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code          VARCHAR2(30);',
'v_prj_prefix    varchar2(5);',
'V_STRT_YEAR     DATE;',
'V_END_YEAR      DATE;',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'e_error exception;',
'begin',
'      select VC_PROJ_PREFIX  ',
'      into  v_prj_prefix ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     ',
'       SELECT FY_STRT,FY_END',
'       INTO   V_STRT_YEAR,V_END_YEAR',
'       FROM   APPUA.VW_FY',
'       WHERE   ORG_ID = :GLOBAL_COMP_CODE',
'       AND    YEAR_CLOSING_FLG  = ''N'' ;',
'',
'        begin',
'                select  ',
'                --lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''3'')+1))),0) +1,''4'',''0'')',
'                nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1',
'                into  v_code ',
'                from DT_INVOICE_JMR ',
'                where ORG_ID = :global_comp_code ',
'                and PRJ_ID = :GLOBAL_PROJ_ID',
'                AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'            ',
'            --:P30_INVOICE_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || ''J''||''/'' ||  v_code;',
'              :P30_INVOICE_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || ''J''|| v_code;',
'        ',
'        end;',
'',
'',
'        if LENGTH(:P30_INVOICE_NO) > 15 then',
'         apex_util.set_session_state(''P30_ERROR'', ''Invoice Number length geerate greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'',
'',
'',
'insert into DT_INVOICE_JMR',
'(',
'ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PPA_NO, DT_PPA_DATE, EO_ID, COA_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID,',
'ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, ',
'VC_REMARKS, ',
'NU_ENERGY_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT,NU_TCS_AMOUNT,NU_NET_AMOUNT, ',
'USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,nu_invoice_id , VC_TAX_APPLICABLE , NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,NU_TCS_TAX_ID,ch_type,',
'DT_BILL_FROM,DT_BILL_TO , CH_OPTION	,NU_TRNS_LOSS_PER ,NU_TRANS_LOSS,NU_NET_EXP_UNIT,CH_METER_INSTALL  ,CH_TRANS_LOSS',
',VC_INV_SUBJECT',
'',
',VC_JMR_NO,',
'DT_JMR_DATE,',
'vc_roundoff_value,',
'DT_JMR_READING',
')',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P30_INVOICE_NO,:P30_INVOICE_DATE,:P30_PPA_NO,:P30_PPA_DATE,:P30_CUSTOMER_CODE,:P30_CUST_COA_ID,:P30_BILLING_POINT,:P30_METERING_POINT,:P30_GRP_ID,',
':P30_ITEM_CODE,:P30_QTY,:P30_RATE,:P30_ITEM_DETAIL,:P30_ITM_COA_ID,',
':P30_REMARKS,',
'replace(:P30_ENERGY_AMOUNT,'','',''''),replace(:P30_OTHER_CHARGE,'','',''''),replace(:P30_SUB_AMOUNT,'','',''''),replace(:P30_TAX_AMOUNT,'','',''''), replace(:P30_TCS_AMOUNT,'','','''')  ,replace(:P30_NET_AMOUNT,'','',''''),',
':GLOBAL_USER_CODE,sysdate,:GLOBAL_PARENT_COMP,:P30_INVOICE_ID , :P30_TAX_APPLICABLE , :P30_TCS_COA , :P30_TCS_PER ,:P30_TAX_RULE_ID,:P30_TAX_ID,''J''',
',:P30_BILL_FROM , :P30_BILL_TO , :P30_OPTION,:P30_LOSS_PER,replace(:P30_TRANSMISSION_LOSS,'','','''') , replace(:P30_TOTAL_UNIT,'','','''') , :P30_METER_INSTALL ,:P30_TRANS_LOSS',
',:P30_SUBJECT',
',:P30_JMR_NO,',
':P30_JMR_DATE,',
'(replace(:P30_NET_AMOUNT_1,'','','''')-replace(:P30_NET_AMOUNT,'','','''')),',
':P30_JMR_READING_DATE',
');',
'',
'',
'',
'    if :P30_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P30_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P30_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                                        :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P30_INVOICE_ID, :P30_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P30_SUB_AMOUNT,'','',''''),replace(:P30_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P30_CUST_COA_ID, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'',
'         ',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P30_INVOICE_ID',
'',
'            )',
'            LOOP',
'          ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'',
'            END LOOP;',
'',
'        end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P30_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23243333181203049)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert update meter detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'cursor c1 is (',
'                SELECT * FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''JMR_DETAIL'' );',
'',
'begin',
'IF :P30_MODE = ''E'' THEN',
'',
'DELETE FROM dt_inv_jmr_mtr_dtl ',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
' AND  VC_INVOICE_NO = :P30_INVOICE_NO ',
' and DT_INVOICE_DATE =:P30_INVOICE_DATE',
' and PRJ_ID=:GLOBAL_PROJ_ID;',
'',
'END IF;',
'',
'FOR I in C1 loop',
'',
'insert into dt_inv_jmr_mtr_dtl',
'(',
'ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_JMR_NO, DT_JMR_DATE, VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, ',
'NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE, NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, ',
'NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING, NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, ',
'NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS, VC_CHK_METER_NO, NU_CHK_METER_LOC_ID,',
'NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING, NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR, NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, ',
'NU_CHK_IMP_PRV_READING, NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, ',
'NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, VC_CHK_METER_REMARKS, USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD_DT, HO_ORG_ID,NU_INV_NET_UNIT,NU_LVL',
')',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P30_INVOICE_NO,:P30_INVOICE_DATE, ',
'I.C001,I.C002,I.C003,I.C004,I.C006,I.C007,I.C008,I.C009,I.C010,I.C011,I.C012,I.C013,I.C014,I.C015,I.C016,',
'I.C017,I.C018,I.C019,I.C020,I.C021,I.C022,I.C023,I.C024,I.C026,I.C027,I.C028,I.C029,I.C030,I.C031,I.C032,I.C033,',
'I.C034,I.C035,I.C036,I.C037,I.C038,I.C039,I.C040,I.C041,I.C042,:global_user_Code,sysdate,sysdate,:GLOBAL_PARENT_COMP,I.C043,I.C044',
'',
');',
'',
'',
'end loop;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23250547700203040)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert update invoice note'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_NO NUMBER:=1;',
'letter varchar2(10);',
'begin',
'IF :P30_MODE = ''E'' THEN',
'',
'DELETE FROM DT_INV_SUBJECT_JMR ',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
' AND  VC_INVOICE_NO = :P30_INVOICE_NO ',
' and DT_INVOICE_DATE =:P30_INVOICE_DATE',
' and PRJ_ID=:GLOBAL_PROJ_ID;',
'',
'END IF;',
'',
'FOR I in (',
'                SELECT C001,C002,C003,C004,C005 FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES''',
'               ORDER BY 4 asc',
'               ) loop',
'',
'select chr( ascii(''a'')+level-1 ) INTO letter',
'      from dual',
'       where level = V_NO',
'    connect by level <= V_NO;',
'',
'insert into DT_INV_SUBJECT_JMR',
'(',
'ORG_ID,PRJ_ID,VC_INVOICE_NO,DT_INVOICE_DATE,VC_DOC_ID,DT_DOC_DATE,vc_doc_seq,',
'NU_SR_NO,USR_ID_CREATE,USR_ID_CREATE_DT,VC_AUTH_CODE,USR_ID_MOD_DT,HO_ORG_ID',
')',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P30_INVOICE_NO,:P30_INVOICE_DATE,I.C001,I.C002,letter ,',
'V_NO,:global_user_Code,sysdate,:global_user_Code,sysdate,:GLOBAL_PARENT_COMP',
');',
'',
'V_NO := V_NO+1;',
'',
'',
'end loop;',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23245741520203047)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'',
'begin',
'',
'update  DT_INVOICE_JMR',
'set',
'VC_PPA_NO                   =:P30_PPA_NO,',
'DT_PPA_DATE                 =:P30_PPA_DATE,',
'EO_ID                       =:P30_CUSTOMER_CODE, ',
'COA_ID                      =:P30_CUST_COA_ID, ',
'NU_DELIVERY_POINT_ID        =:P30_BILLING_POINT,',
'NU_METERING_POINT_ID        =:P30_METERING_POINT,',
'GRP_ID                      =:P30_GRP_ID,',
'ITM_ID                      =:P30_ITEM_CODE, ',
'NU_QTY                      =:P30_QTY,',
'NU_RATE                     =:P30_RATE,',
'VC_ITEM_DETAIL              =:P30_ITEM_DETAIL,',
'ITM_ID_COA                  =:P30_ITM_COA_ID, ',
'VC_REMARKS                  =:P30_REMARKS, ',
'NU_ENERGY_AMOUNT            =replace(:P30_ENERGY_AMOUNT,'','',''''),',
'NU_OTHER_CHARGE_AMOUNT      =replace(:P30_OTHER_CHARGE,'','',''''),',
'NU_SUB_AMOUNT               =replace(:P30_SUB_AMOUNT,'','',''''),',
'NU_Tax_AMOUNT               =replace(:P30_TAX_AMOUNT,'','',''''),',
'NU_TCS_AMOUNT               =replace(:P30_TCS_AMOUNT,'','',''''),',
'NU_NET_AMOUNT               = replace(:P30_NET_AMOUNT,'','',''''),',
'USR_ID_MOD_DT               =sysdate,',
'VC_TAX_APPLICABLE           =:P30_TAX_APPLICABLE,',
'NU_TCS_COA                  =:P30_TCS_COA,',
'NU_TAX_RULE_ID              =:P30_TAX_RULE_ID,     ',
'NU_TCS_PER                  =:P30_TCS_PER,',
'NU_TCS_TAX_ID               =:P30_TAX_ID,',
'DT_BILL_FROM                =:P30_BILL_FROM,',
'DT_BILL_TO                  =:P30_BILL_TO,',
'CH_OPTION	                = :P30_OPTION,',
'NU_TRNS_LOSS_PER            = :P30_LOSS_PER ,',
'NU_TRANS_LOSS               = replace(:P30_TRANSMISSION_LOSS,'','',''''),',
'NU_NET_EXP_UNIT             = replace(:P30_TOTAL_UNIT,'','',''''),',
'CH_METER_INSTALL            =  :P30_METER_INSTALL ,',
'CH_TRANS_LOSS               =  :P30_TRANS_LOSS,',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'VC_INV_SUBJECT              = :P30_SUBJECT,',
'',
'',
'VC_JMR_NO                  = :P30_JMR_NO,',
'DT_JMR_DATE                 = :P30_JMR_DATE,',
'DT_JMR_READING              =:P30_JMR_READING_DATE',
'',
'where ORG_ID        = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P30_INVOICE_NO',
'and DT_INVOICE_DATE = :P30_INVOICE_DATE;',
'',
'    if :P30_TAX_APPLICABLE = ''Y'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P30_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P30_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P30_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                                        :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P30_INVOICE_ID, :P30_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P30_SUB_AMOUNT,'','',''''),replace(:P30_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P30_CUST_COA_ID, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P30_INVOICE_ID',
'',
'            )',
'            LOOP',
'          ',
'            INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'',
'            END LOOP;',
'',
'        end if;',
'',
'',
'    if :P30_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P30_INVOICE_ID;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23246919771203045)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert/Update Upload File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,blob001',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''FILE_UPLOAD'';',
'      ',
' v_id  number;',
' ',
' begin',
' ',
'IF :P30_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P30_INVOICE_NO ',
'                            AND DT_DOC_DATE = :P30_INVOICE_DATE',
'                            AND VC_TRANS_TYPE=''IJMR'';',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   Select nvl(max(NU_ATTACH_ID),0)+1 into v_id from DT_ATTACHMENT where ORG_ID = :GLOBAL_COMP_CODE and PRJ_ID = :GLOBAL_PROJ_ID;',
'   ',
'   insert into  DT_ATTACHMENT',
'   (',
'  ORG_ID, PRJ_ID, NU_ATTACH_ID, DT_ATTACH_DATE, VC_DOC_ID, DT_DOC_DATE, VC_TRANS_TYPE, BL_FILE, VC_FILENAME, VC_MIMETYPE,',
'   USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'       )',
'   values',
'   (',
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P30_INVOICE_NO,:P30_INVOICE_DATE,''IJMR'', I.BLOB001,I.C001,I.C002,',
'      :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_USER_CODE,SYSDATE,    :GLOBAL_PARENT_COMP',
'   ',
'   )',
';',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23249748427203041)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert/Update Other Charge'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT C001,C002,C003,C004,C005,C006',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''OTHER_CHARGE'';',
'      ',
' v_id  number;',
' ',
' begin',
' ',
'IF :P30_MODE = ''E'' THEN',
'            DELETE FROM DT_OTHER_CHARGES_INV_JMR',
'             WHERE ORG_ID          = :GLOBAL_COMP_CODE ',
'             AND   PRJ_ID          = :GLOBAL_PROJ_ID ',
'             AND   VC_INVOICE_NO   = :P30_INVOICE_NO ',
'             AND   DT_INVOICE_DATE = :P30_INVOICE_DATE',
'             ;',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   insert into  DT_OTHER_CHARGES_INV_JMR',
'   (',
'     ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID,',
'     USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'  )',
'   values',
'   (',
'     :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P30_INVOICE_NO,:P30_INVOICE_DATE,I.C001,I.C002, I.C003,I.C004,I.C005,I.C006,',
'     :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_USER_CODE,SYSDATE,    :GLOBAL_PARENT_COMP',
'   ',
'   )',
';',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(23214475195203072)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23244511127203048)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23246542598203046)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE2'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE2'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23244114461203049)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Jasper File Name'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' SELECT ',
'(CASE WHEN :GLOBAL_COMP_CODE IN (''03'',''04'',''07'',''0B'') THEN ''SLS_Inv_JMR_Dtl_Report_Punjab'' ',
' ELSE ''SLS_Inv_JMR_Dtl_Report'' END)FILENAME  into :P30_FILE_NAME',
' FROM DUAL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23242960752203049)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INVOICE ID'
,p_process_sql_clob=>':P30_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23245294736203048)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'VC_PPA_NO, DT_PPA_DATE, EO_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID, ITM_ID,  ',
'NU_QTY, NU_RATE, VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE, ',
'NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING, ',
'NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, ',
'CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR, ',
'NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, ',
'NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, ',
'VC_CHK_METER_REMARKS',
'',
'INTO',
'',
':P30_PPA_NO, :P30_PPA_DATE, :P30_CUSTOMER_CODE,:P30_BILLING_POINT,:P30_METERING_POINT,:P30_GRP_ID,:P30_ITEM_CODE,',
':P30_QTY,:P30_RATE,:P30_MAIN_METER_NO,:P30_MAIN_METER_LOC,:P30_MAIN_EXP_PREV_READ,:P30_MAIN_EXP_CURR_READ,:P30_MAIN_EXP_DIFFERENCE,',
':P30_MAIN_EXP_MULTI_FAC,:P30_MAIN_EXP_TOTAL_UNIT,:P30_MAIN_EXP_ADJUSMENT,:P30_MAIN_EXP_NET_UNIT,:P30_MAIN_IMP_PREV_READ,:P30_MAIN_IMP_CURR_READ,',
':P30_MAIN_IMP_DIFFERENCE,:P30_MAIN_IMP_MULTI_FAC,:P30_MAIN_IMP_TOTAL_UNIT,:P30_MAIN_IMP_ADJUSMENT,:P30_MAIN_IMP_NET_UNIT,:P30_MAIN_NET_EXP_UNIT,',
':P30_MAIN_METER_WORK,:P30_MAIN_METER_REMARK,',
':P30_CHECK_METER_NO,:P30_CHECK_METER_LOC,:P30_CHECK_EXP_PREV_READ,:P30_CHECK_EXP_CURR_READ,:P30_CHECK_EXP_DIFFERENCE,:P30_CHECK_EXP_MULTI_FAC,',
':P30_CHECK_EXP_TOTAL_UNIT,:P30_CHECK_EXP_ADJUSMENT,:P30_CHECK_EXP_NET_UNIT,:P30_CHECK_IMP_PREV_READ,:P30_CHECK_IMP_CURR_READ,:P30_CHECK_IMP_DIFFERENCE,',
':P30_CHECK_IMP_MULTI_FAC,:P30_CHECK_IMP_TOTAL_UNIT,:P30_CHECK_IMP_ADJUSMENT,:P30_CHECK_IMP_NET_UNIT,:P30_CHECK_NET_EXP_UNIT,:P30_CHECK_METER_WORK,',
':P30_CHECK_METER_REMARK',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P30_JMR_NO',
'AND   DT_JMR_DATE = :P30_JMR_DATE;',
'',
'',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) Metering_loc, ',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) Metering_loc,',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) Metering_loc',
'     ',
'',
'into   :P30_CUSTOMER_NAME,',
'       :P30_BILLING_POINT_DESC,',
'       :P30_METERING_POINT_DESC,',
'       :P30_ITEM_DESC,',
'       :P30_UOM,',
'       :P30_MAIN_METER_LOC_DESC,',
'       :P30_CHECK_METER_LOC_DESC',
'       ',
'from DT_JMR',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P30_JMR_NO',
'AND   DT_JMR_DATE = :P30_JMR_DATE;',
'',
'',
'SELECT COA_ID,ITM_ID_COA',
'INTO   :P30_CUST_COA_ID,:P30_ITM_COA_ID',
'FROM MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P30_PPA_NO',
'AND   DT_PPA_DATE = :P30_PPA_DATE;',
'',
'',
'',
':P30_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23248468212203043)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get other charges from PPA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount number;',
' v_unit number;',
'',
'begin',
'',
' select case CH_MAIN_METER_WORKING',
'        when ''Y'' then ',
'          nvl(NU_MAIN_NET_EXP_UNIT,0)',
'        when ''N'' then',
'        nvl(NU_CHK_NET_EXP_UNIT,0)',
'        end as Unit,',
'        case CH_MAIN_METER_WORKING',
'        when ''Y'' then ',
'          nvl(NU_MAIN_NET_EXP_UNIT,0)*nu_rate',
'        when ''N'' then',
'        nvl(NU_CHK_NET_EXP_UNIT,0)*nu_rate',
'        end as amount',
'into   v_unit,v_amount',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P30_JMR_NO',
'AND   DT_JMR_DATE = :P30_JMR_DATE;',
' ',
' ',
'        IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'FOR I IN (Select',
'                NU_CHARGE_ID,',
'                VC_CHARGE_TYPE,',
'                NU_RATE,',
'                VC_REMARKS,',
'                COA_ID,',
'                case VC_CHARGE_TYPE ',
'                when ''1'' then',
'                   (nvl(v_amount,0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(v_unit,0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P30_PPA_NO',
'                and  dt_ppa_date = :P30_PPA_DATE) ',
'LOOP',
' ',
' ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23248920454203043)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Calculated Value'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_tcs_flag      varchar2(2);',
'v_amount        number;',
'v_tcs_amount    number;',
'V_TAX_RULE_ID   number;',
'V_TCS_PER        NUMBER;',
'V_TAX_ID        NUMBER;',
'v_tcs_coa       number;',
'v_cust_add_id   varchar2(100);',
'begin',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    :P30_OTHER_CHARGE := to_number(''0'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'',
'Select ',
'nvl(sum(to_number(c004)),0)',
'into    :P30_OTHER_CHARGE',
'from    apex_collections ',
'where   COLLECTION_NAME=''OTHER_CHARGE''; ',
'END IF;',
'',
'',
'IF :P30_MAIN_METER_WORK = ''Y'' then',
':P30_MAIN_AMOUNT := nvl(:P30_MAIN_NET_EXP_UNIT,0)* :P30_RATE ;',
':P30_ENERGY_AMOUNT := :P30_MAIN_AMOUNT;',
'ELSE',
':P30_CHECK_AMOUNT:= nvl(:P30_CHECK_NET_EXP_UNIT,0)* :P30_RATE ;',
':P30_ENERGY_AMOUNT := :P30_CHECK_AMOUNT;',
'END IF;',
'',
'',
':P30_SUB_AMOUNT := nvl(TO_NUMBER(REPLACE(:P30_ENERGY_AMOUNT,'','','''')),0) + NVL(TO_NUMBER(REPLACE(:P30_OTHER_CHARGE,'','','''')),0);',
'',
'',
' :P30_TCS_AMOUNT := 0;',
'',
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P30_CUSTOMER_CODE) ; ',
'',
'IF v_tcs_flag = ''Y'' then',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P30_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P30_ITEM_CODE, ',
'                                             :P30_CUSTOMER_CODE,:P30_INVOICE_ID,NULL,''1153'' ,replace(:P30_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    ',
'    :P30_TAX_RULE_ID := V_TAX_RULE_ID;',
'',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'',
'    :P30_TCS_PER := V_TCS_PER;',
'    :P30_TAX_ID  := V_TAX_ID;',
'    :P30_TCS_COA  := v_tcs_coa;',
'    ',
'',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P30_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'',
'    if v_amount > 5000000 then',
'            v_tcs_amount := :P30_SUB_AMOUNT;',
'            :P30_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'    else',
'        if v_amount+:P30_SUB_AMOUNT-5000000 < 0 then',
'            v_tcs_amount := 0;',
'             :P30_TCS_AMOUNT := 0;',
'            ',
'        else',
'        v_tcs_amount := v_amount+:P30_SUB_AMOUNT-5000000; ',
'        :P30_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'        end if;',
'    end if;',
'',
'end if;',
'',
':P30_TAX_AMOUNT  :=  0;',
':P30_NET_AMOUNT := replace(nvl(:P30_SUB_AMOUNT,0),'','','''') + replace(NVL(:P30_TCS_AMOUNT,0) ,'','','''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23249310345203042)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info on edit/view mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'VC_PPA_NO, DT_PPA_DATE, EO_ID, COA_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID,',
'ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, ',
'',
'VC_REMARKS, NU_ENERGY_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT, nu_tax_amount ,NU_NET_AMOUNT,nu_invoice_id,VC_TAX_APPLICABLE,',
'NU_TCS_COA, NU_TCS_TAX_ID, NU_TCS_AMOUNT, NU_TAX_RULE_ID, NU_TCS_PER,',
'DT_BILL_FROM,DT_BILL_TO,',
'CH_OPTION	,NU_TRNS_LOSS_PER ,NU_TRANS_LOSS,NU_NET_EXP_UNIT,CH_METER_INSTALL  ,CH_TRANS_LOSS,',
'VC_INV_SUBJECT   ,',
'VC_JMR_NO    ,DT_JMR_DATE  ,',
'DT_JMR_READING  ',
'into',
':P30_PPA_NO,:P30_PPA_DATE,:P30_CUSTOMER_CODE,:P30_CUST_COA_ID,:P30_BILLING_POINT,:P30_METERING_POINT,:P30_GRP_ID,',
':P30_ITEM_CODE,:P30_QTY,:P30_RATE,:P30_ITEM_DETAIL,:P30_ITM_COA_ID,',
':P30_REMARKS,:P30_ENERGY_AMOUNT,:P30_OTHER_CHARGE,:P30_SUB_AMOUNT,:P30_TAX_AMOUNT,:P30_NET_AMOUNT,:P30_INVOICE_ID,:P30_TAX_APPLICABLE,',
':P30_TCS_COA,:P30_TAX_ID,:P30_TCS_AMOUNT , :P30_TAX_RULE_ID , :P30_TCS_PER,',
':P30_BILL_FROM ,:P30_BILL_TO , ',
':P30_OPTION,:P30_LOSS_PER,:P30_TRANSMISSION_LOSS , :P30_TOTAL_UNIT, :P30_METER_INSTALL ,:P30_TRANS_LOSS,',
':P30_SUBJECT',
',:P30_JMR_NO, :P30_JMR_DATE,:P30_JMR_READING_DATE',
'from DT_INVOICE_JMR',
'where ORG_ID          = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P30_INVOICE_NO',
'and DT_INVOICE_DATE = :P30_INVOICE_DATE;',
'',
'',
'',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom',
'     ',
'',
'into   :P30_CUSTOMER_NAME,',
'       :P30_BILLING_POINT_DESC,',
'       :P30_METERING_POINT_DESC,',
'       :P30_ITEM_DESC,',
'       :P30_UOM',
'       ',
'from DT_INVOICE_JMR',
'where ORG_ID          = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P30_INVOICE_NO',
'and DT_INVOICE_DATE = :P30_INVOICE_DATE;',
'',
'',
'if :P30_MODE = ''V'' then',
'',
'',
':P30_ENERGY_AMOUNT  := ltrim(to_char(:P30_ENERGY_AMOUNT,''999G999G999G999G990D0000''));',
':P30_OTHER_CHARGE   := ltrim(to_char(:P30_OTHER_CHARGE,''999G999G999G999G990D0000''));',
':P30_SUB_AMOUNT     := ltrim(to_char(:P30_SUB_AMOUNT,''999G999G999G999G990D0000''));',
':P30_TAX_AMOUNT     := ltrim(to_char(:P30_TAX_AMOUNT,''999G999G999G999G990D0000''));',
':P30_NET_AMOUNT     := ltrim(to_char(:P30_NET_AMOUNT,''999G999G999G999G990D0000''));',
':P30_TRANSMISSION_LOSS := ltrim(to_char(:P30_TRANSMISSION_LOSS,''999G999G999G999G990D0000''));',
':P30_TOTAL_UNIT    := ltrim(to_char(:P30_TOTAL_UNIT,''999G999G999G999G990D0000''));',
':P30_TCS_AMOUNT    := ltrim(to_char(:P30_TCS_AMOUNT,''999G999G999G999G990D0000''));',
'end if;',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23243686334203049)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info of meter detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is ',
'        (',
'            select * ',
'            from dt_inv_jmr_mtr_dtl',
'            where ORG_ID        = :GLOBAL_COMP_CODE',
'            and PRJ_ID          = :GLOBAL_PROJ_ID',
'            and VC_INVOICE_NO   = :P30_INVOICE_NO',
'            and DT_INVOICE_DATE = :P30_INVOICE_DATE',
'        );',
'',
'begin',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
' ',
'',
'IF not APEX_COLLECTION.COLLECTION_EXISTS(''JMR_DETAIL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''JMR_DETAIL'');',
'END IF;',
' ',
'',
'for I IN C1 LOOP',
'APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''JMR_DETAIL'',',
'p_c001 => I.VC_JMR_NO, ',
'p_c002 => I.DT_JMR_DATE,',
'p_c003 => I.VC_MAIN_METER_NO,',
'P_C004 => I.NU_MAIN_METER_LOC_ID,',
'P_C005 =>  get_energy_flow_loc(I.ORG_ID,I.PRJ_ID,I.NU_MAIN_METER_LOC_ID),',
'P_C006 => I.NU_MAIN_EXP_PRV_READING,',
'P_C007 => I.NU_MAIN_EXP_CUR_READING, ',
'P_C008 => I.NU_MAIN_EXP_DIFFERNCE, ',
'P_C009 => I.NU_MAIN_EXP_FACTOR, ',
'P_C010 => I.NU_MAIN_EXP_TOTAL_UNIT, ',
'P_C011 => I.NU_MAIN_EXP_ADJUSTMENT, ',
'P_C012 => I.NU_MAIN_EXP_NET_UNIT, ',
'P_C013 => I.NU_MAIN_IMP_PRV_READING, ',
'P_C014 => I.NU_MAIN_IMP_CUR_READING, ',
'P_C015 => I.NU_MAIN_IMP_DIFFERNCE, ',
'P_C016 => I.NU_MAIN_IMP_FACTOR, ',
'P_C017 => I.NU_MAIN_IMP_TOTAL_UNIT, ',
'P_C018 => I.NU_MAIN_IMP_ADJUSTMENT, ',
'P_C019 => I.NU_MAIN_IMP_NET_UNIT, ',
'P_C020 => I.NU_MAIN_NET_EXP_UNIT, ',
'P_C021 => I.CH_MAIN_METER_WORKING, ',
'P_C022 => I.VC_MAIN_METER_REMARKS,',
'P_C023 => I.VC_CHK_METER_NO,',
'P_C024 => I.NU_CHK_METER_LOC_ID,',
'P_C025 =>get_energy_flow_loc(I.ORG_ID,I.PRJ_ID,I.NU_CHK_METER_LOC_ID),',
'P_C026 => I.NU_CHK_EXP_PRV_READING,',
'P_C027 => I.NU_CHK_EXP_CUR_READING,',
'P_C028 => I.NU_CHK_EXP_DIFFERNCE,',
'P_C029 => I.NU_CHK_EXP_FACTOR,',
'P_C030 => I.NU_CHK_EXP_TOTAL_UNIT,',
'P_C031 => I.NU_CHK_EXP_ADJUSTMENT,',
'P_C032 => I.NU_CHK_EXP_NET_UNIT,',
'P_C033 => I.NU_CHK_IMP_PRV_READING,',
'P_C034 => I.NU_CHK_IMP_CUR_READING,',
'P_C035 => I.NU_CHK_IMP_DIFFERNCE,',
'P_C036 => I.NU_CHK_IMP_FACTOR,',
'P_C037 => I.NU_CHK_IMP_TOTAL_UNIT,',
'P_C038 => I.NU_CHK_IMP_ADJUSTMENT,',
'P_C039 => I.NU_CHK_IMP_NET_UNIT,',
'P_C040 => I.NU_CHK_NET_EXP_UNIT,',
'P_C041 => I.CH_CHK_METER_WORKING,',
'P_C042 => I.VC_CHK_METER_REMARKS,',
'P_C043 => I.NU_INV_NET_UNIT,',
'P_C044 => I.NU_LVL',
');',
'',
'END LOOP;',
'',
'',
'BEGIN',
'',
'SELECT ''(''||C005 || '')'' INTO :P30_PRV_LVL_NAME',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''1'';',
'',
'SELECT ''('' || C005 || '')'' INTO :P30_NXT_LVL_NAME',
'FROM APEX_COLLECTIONS ',
'WHERE COLLECTION_NAME=''JMR_DETAIL''',
'and C044 =''2'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23247297662203045)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info of attachment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P30_INVOICE_NO ',
'               AND   DT_DOC_DATE   = :P30_INVOICE_DATE',
'               and   vc_trans_type = ''IJMR'');',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;',
'FOR I IN C1 LOOP',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''FILE_UPLOAD'',',
'                                P_BLOB001        =>  I.BL_FILE,',
'                                P_C001           =>  I.VC_FILENAME,',
'                                P_C002           =>  I.VC_MIMETYPE,',
'                                P_C003           =>  I.NU_ATTACH_ID      ',
'                                ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23250115203203041)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info of other charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID',
'      FROM DT_OTHER_CHARGES_INV_JMR',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P30_INVOICE_NO ',
'      AND   DT_INVOICE_DATE = :P30_INVOICE_DATE   ;',
'      ',
' v_id  number;',
' ',
' begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
' IF  not APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.create_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.NU_AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              );',
'',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23250919310203040)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info of INVOICE NOTES'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  VC_DOC_ID,DT_DOC_DATE,NU_SR_NO ',
'      FROM DT_INV_SUBJECT_JMR',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P30_INVOICE_NO ',
'      AND   DT_INVOICE_DATE = :P30_INVOICE_DATE',
'    order by NU_SR_NO asc ;',
'      ',
' v_id  number;',
' ',
' begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES'');',
'         END IF;',
' IF  not APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES'') THEN',
'              APEX_COLLECTION.create_COLLECTION(''INVOICE_NOTES'');',
'         END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''INVOICE_NOTES'',',
'                                P_C001           =>  I.VC_DOC_ID,',
'                                P_C002           =>  I.DT_DOC_DATE,',
'                                P_C003           =>  get_INVVOICE_NOTE(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,I.VC_DOC_ID,I.DT_DOC_DATE) ,',
'                                P_C004          =>   I.NU_SR_NO',
'                              );',
'',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23246113395203046)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection On JMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23247682231203044)
,p_process_sequence=>120
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P30_WKF_STAGE',
'from  DT_INVOICE_JMR',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P30_INVOICE_NO',
'and  DT_INVOICE_DATE = :P30_INVOICE_DATE;',
'exception when no_data_found then :P30_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(23248074109203044)
,p_process_sequence=>130
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P30_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P30_INVOICE_NO',
'AND      DT_DOC_DATE = :P30_INVOICE_DATE',
'AND      VC_DOC_TYPE  = ''IJMR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P30_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
