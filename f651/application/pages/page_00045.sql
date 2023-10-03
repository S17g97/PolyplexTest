prompt --application/pages/page_00045
begin
--   Manifest
--     PAGE: 00045
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
 p_id=>45
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'INVOICE-JMR WITHOUT JMR'
,p_alias=>'INVOICE-JMR-WITHOUT-JMR'
,p_step_title=>'INVOICE-JMR'
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
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
')'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230822223440'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18316215705282658)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18316815589282664)
,p_plug_name=>'Next Level'
,p_parent_plug_id=>wwv_flow_api.id(18316215705282658)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P45_OPTION'
,p_plug_display_when_cond2=>'C'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18316278286282659)
,p_plug_name=>'Previous Level'
,p_parent_plug_id=>wwv_flow_api.id(18316215705282658)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18315191312282648)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18315721343282653)
,p_plug_name=>'Next Level'
,p_parent_plug_id=>wwv_flow_api.id(18315191312282648)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P45_OPTION'
,p_plug_display_when_cond2=>'C'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18315500450282651)
,p_plug_name=>'Previous Level'
,p_parent_plug_id=>wwv_flow_api.id(18315191312282648)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4576357587089008)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4683906882832214)
,p_plug_name=>'Other Charges'
,p_parent_plug_id=>wwv_flow_api.id(4576357587089008)
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
 p_id=>wwv_flow_api.id(4683760259832213)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>22656019791462317
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18310022244254687)
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
,p_display_condition=>'P45_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18309641442254687)
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
 p_id=>wwv_flow_api.id(18309263269254686)
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
 p_id=>wwv_flow_api.id(18308428665254685)
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
 p_id=>wwv_flow_api.id(18307261494254684)
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
 p_id=>wwv_flow_api.id(18308836041254686)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18308024797254685)
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
 p_id=>wwv_flow_api.id(18307628267254685)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>90
,p_column_identifier=>'J'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(4657125727243926)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'90329'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:AMOUNT:REMARKS:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1436939616823581)
,p_plug_name=>'Invoice-JMR'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1344345182206230)
,p_plug_name=>'Display Selector'
,p_region_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(1344190624206229)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P45_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4575680114089001)
,p_plug_name=>'Item Info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344190624206229)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4575595867089000)
,p_plug_name=>'Amount  info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344190624206229)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4575528831088999)
,p_plug_name=>'Info'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344190624206229)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1344123043206228)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P45_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4810392603343400)
,p_plug_name=>'Main Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344123043206228)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4810320438343399)
,p_plug_name=>'Main Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344123043206228)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4810147921343398)
,p_plug_name=>'Main Net'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1344123043206228)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1055797713462521)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P45_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4810122542343397)
,p_plug_name=>'Check Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1055797713462521)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4809984376343396)
,p_plug_name=>'Check Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1055797713462521)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(4809852098343395)
,p_plug_name=>'Check Net'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(1055797713462521)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(979241268706301)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>120
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(979002235706299)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(979241268706301)
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
 p_id=>wwv_flow_api.id(978945673706298)
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
,p_internal_uid=>26360834377588232
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18313732801254695)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18313404953254695)
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
 p_id=>wwv_flow_api.id(18313056532254694)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18312627992254694)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18312181288254693)
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
,p_display_condition=>'P45_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18311812554254693)
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
 p_id=>wwv_flow_api.id(902121562009589)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'90283'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18306171791254683)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(1344190624206229)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18305736283254682)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1344190624206229)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P45_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P45_REQ_NO.,&P45_INVOICE_NO.,&P45_INVOICE_DATE.,IJMR,&P45_LAST_PAGE.,&P45_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18305333898254682)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(1344190624206229)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P45_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18314454206254710)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(979241268706301)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P45_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18310683594254688)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(4576357587089008)
,p_button_name=>'ADD_CHARGE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:32:&SESSION.::&DEBUG.:32:P32_MODE,P32_ENERGY_AMOUNT,P32_MAIN_NET_UNIT,P32_CHECK_NET_UNIT,P32_METER_WORK:A,&P45_ENERGY_AMOUNT.,&P45_MAIN_NET_EXP_UNIT.,&P45_CHECK_NET_EXP_UNIT.,&P45_MAIN_METER_WORK.'
,p_button_condition=>'P45_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18220543327254596)
,p_branch_name=>'Go To Page 29'
,p_branch_action=>'f?p=&APP_ID.:29:&SESSION.::&DEBUG.:45::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18317448157282670)
,p_name=>'P45_PRV_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18317297762282669)
,p_name=>'P45_NET_EXP_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Net Exported Unit'
,p_format_mask=>'999G999G999G999G990D00'
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
 p_id=>wwv_flow_api.id(18317202398282668)
,p_name=>'P45_TRANSMISSION_LOSS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Transmission Loss'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18317088373282667)
,p_name=>'P45_CHECK_NET_EXPORT_UNIT_NXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18316815589282664)
,p_prompt=>'Net Export Unit'
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
 p_id=>wwv_flow_api.id(18317045776282666)
,p_name=>'P45_CHECK_IMPORT_UNIT_NXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18316815589282664)
,p_prompt=>'Check Import Unit'
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
 p_id=>wwv_flow_api.id(18316859146282665)
,p_name=>'P45_CHECK_EXPORT_UNIT_NXT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18316815589282664)
,p_prompt=>'Check  Export Unit'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18316562606282662)
,p_name=>'P45_CHECK_NET_EXPORT_UNIT_PRV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18316278286282659)
,p_prompt=>'Net Export Unit'
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
 p_id=>wwv_flow_api.id(18316471262282661)
,p_name=>'P45_CHECK_IMPORT_UNIT_PRV'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18316278286282659)
,p_prompt=>'Check  Import Unit'
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
 p_id=>wwv_flow_api.id(18316452370282660)
,p_name=>'P45_CHECK_EXPORT_UNIT_PRV'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18316278286282659)
,p_prompt=>'Check  Export Unit'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
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
 p_id=>wwv_flow_api.id(18316055619282657)
,p_name=>'P45_MAIN_NET_EXPORT_UNIT_NXT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_prompt=>'Net Export Unit'
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
 p_id=>wwv_flow_api.id(18316029204282656)
,p_name=>'P45_MAIN_IMPORT_UNIT_NXT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_prompt=>'Main Import Unit'
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
 p_id=>wwv_flow_api.id(18315934578282655)
,p_name=>'P45_MAIN_EXPORT_UNIT_NXT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_prompt=>'Main Export Unit'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18315758137282654)
,p_name=>'P45_MAIN_NET_EXPORT_UNIT_PRV'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_prompt=>'Net Export Unit'
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
 p_id=>wwv_flow_api.id(18315450516282650)
,p_name=>'P45_MAIN_IMPORT_UNIT_PRV'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_prompt=>'Main Import Unit'
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
 p_id=>wwv_flow_api.id(18315321345282649)
,p_name=>'P45_MAIN_EXPORT_UNIT_PRV'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_prompt=>'Main Export Unit'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18315116513282647)
,p_name=>'P45_METERING'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18315026892282646)
,p_name=>'P45_OPTION'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18314944837282645)
,p_name=>'P45_TRANS_LOSS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18314798104282644)
,p_name=>'P45_METERING_INSTALL'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18304959015254681)
,p_name=>'P45_INVOICE_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_prompt=>'Invoice No'
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
 p_id=>wwv_flow_api.id(18304480309254679)
,p_name=>'P45_INVOICE_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
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
 p_id=>wwv_flow_api.id(18304158261254679)
,p_name=>'P45_CUSTOMER_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303769303254678)
,p_name=>'P45_BILLING_POINT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18303286557254678)
,p_name=>'P45_METERING_POINT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18302913396254678)
,p_name=>'P45_MODE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18302507942254677)
,p_name=>'P45_WKF_STAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18302113070254677)
,p_name=>'P45_REQ_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18301778851254676)
,p_name=>'P45_LAST_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18301328800254676)
,p_name=>'P45_AUTH_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18300932140254676)
,p_name=>'P45_LABEL_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P45_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18300572440254675)
,p_name=>'P45_INVOICE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(1344190624206229)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18299807945254674)
,p_name=>'P45_GRP_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18299399301254674)
,p_name=>'P45_ITEM_CODE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18298986308254673)
,p_name=>'P45_ITEM_DESC'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
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
 p_id=>wwv_flow_api.id(18298588958254673)
,p_name=>'P45_UOM'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
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
 p_id=>wwv_flow_api.id(18298227943254672)
,p_name=>'P45_QTY'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
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
 p_id=>wwv_flow_api.id(18297815606254672)
,p_name=>'P45_RATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
,p_prompt=>'Rate'
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
 p_id=>wwv_flow_api.id(18297388371254672)
,p_name=>'P45_ITEM_DETAIL'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
,p_prompt=>'Item Detail'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18296993404254671)
,p_name=>'P45_ITM_COA_ID'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(4575680114089001)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18296358167254670)
,p_name=>'P45_TAX_APPLICABLE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
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
 p_id=>wwv_flow_api.id(18295957707254669)
,p_name=>'P45_ENERGY_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Energy Amount'
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
 p_id=>wwv_flow_api.id(18295539289254669)
,p_name=>'P45_OTHER_CHARGE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_item_default=>'0'
,p_prompt=>'Other Charge Amount'
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
 p_id=>wwv_flow_api.id(18295127408254669)
,p_name=>'P45_SUB_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Sub Amount'
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
 p_id=>wwv_flow_api.id(18294778034254668)
,p_name=>'P45_TAX_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Tax Amount'
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
 p_id=>wwv_flow_api.id(18294357754254668)
,p_name=>'P45_TCS_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'TCS Amount'
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
 p_id=>wwv_flow_api.id(18293914110254667)
,p_name=>'P45_NET_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Net Amount'
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
 p_id=>wwv_flow_api.id(18293576250254667)
,p_name=>'P45_REMARKS'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18293096835254667)
,p_name=>'P45_TCS_COA'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18292725451254666)
,p_name=>'P45_TAX_RULE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18292338333254666)
,p_name=>'P45_TAX_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18291931669254665)
,p_name=>'P45_TCS_PER'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(4575595867089000)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18291265133254664)
,p_name=>'P45_PPA_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_prompt=>'PPA No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18290843242254664)
,p_name=>'P45_PPA_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_prompt=>'PPA DATE'
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
 p_id=>wwv_flow_api.id(18290470948254663)
,p_name=>'P45_JMR_NO'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_prompt=>'JMR No'
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
 p_id=>wwv_flow_api.id(18289983927254663)
,p_name=>'P45_JMR_DATE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_prompt=>'JMR Date'
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
 p_id=>wwv_flow_api.id(18289600359254663)
,p_name=>'P45_CUSTOMER_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
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
 p_id=>wwv_flow_api.id(18289220007254662)
,p_name=>'P45_BILLING_POINT_DESC'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_prompt=>'Billing Point'
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
 p_id=>wwv_flow_api.id(18288824432254662)
,p_name=>'P45_METERING_POINT_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
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
 p_id=>wwv_flow_api.id(18288430215254661)
,p_name=>'P45_CUST_COA_ID'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18287723709254661)
,p_name=>'P45_MAIN_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1344123043206228)
,p_prompt=>'Main Meter No'
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
 p_id=>wwv_flow_api.id(18287302469254660)
,p_name=>'P45_MAIN_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1344123043206228)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18286976889254660)
,p_name=>'P45_MAIN_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1344123043206228)
,p_prompt=>'Meter Location'
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
 p_id=>wwv_flow_api.id(18286215357254659)
,p_name=>'P45_MAIN_EXP_PREV_READ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18285810531254658)
,p_name=>'P45_MAIN_EXP_CURR_READ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18285459569254658)
,p_name=>'P45_MAIN_EXP_DIFFERENCE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Difference'
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
 p_id=>wwv_flow_api.id(18285056055254658)
,p_name=>'P45_MAIN_EXP_MULTI_FAC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(18284623290254657)
,p_name=>'P45_MAIN_EXP_TOTAL_UNIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(18284248207254657)
,p_name=>'P45_MAIN_EXP_ADJUSMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Adjusment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(18283874985254656)
,p_name=>'P45_MAIN_EXP_NET_UNIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4810392603343400)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
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
 p_id=>wwv_flow_api.id(18283109402254655)
,p_name=>'P45_MAIN_IMP_PREV_READ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18282752573254655)
,p_name=>'P45_MAIN_IMP_CURR_READ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18282331466254655)
,p_name=>'P45_MAIN_IMP_DIFFERENCE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Difference'
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
 p_id=>wwv_flow_api.id(18281910550254654)
,p_name=>'P45_MAIN_IMP_MULTI_FAC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18281568336254654)
,p_name=>'P45_MAIN_IMP_TOTAL_UNIT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(18281084006254653)
,p_name=>'P45_MAIN_IMP_ADJUSMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Adjusment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(18280767735254653)
,p_name=>'P45_MAIN_IMP_NET_UNIT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(4810320438343399)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
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
 p_id=>wwv_flow_api.id(18280059170254652)
,p_name=>'P45_MAIN_NET_EXP_UNIT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(4810147921343398)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18279637981254652)
,p_name=>'P45_MAIN_AMOUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(4810147921343398)
,p_prompt=>'Amount'
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
 p_id=>wwv_flow_api.id(18279267157254651)
,p_name=>'P45_MAIN_METER_WORK'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(4810147921343398)
,p_prompt=>'Meter Working'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18278850185254651)
,p_name=>'P45_MAIN_METER_REMARK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(4810147921343398)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18277555623254649)
,p_name=>'P45_CHECK_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(1055797713462521)
,p_prompt=>'Check Meter No'
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
 p_id=>wwv_flow_api.id(18277132699254648)
,p_name=>'P45_CHECK_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(1055797713462521)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18276691791254648)
,p_name=>'P45_CHECK_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(1055797713462521)
,p_prompt=>'Meter Location'
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
 p_id=>wwv_flow_api.id(18276056141254647)
,p_name=>'P45_CHECK_EXP_PREV_READ'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18275671501254647)
,p_name=>'P45_CHECK_EXP_CURR_READ'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18275236015254646)
,p_name=>'P45_CHECK_EXP_DIFFERENCE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Difference'
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
 p_id=>wwv_flow_api.id(18274846519254646)
,p_name=>'P45_CHECK_EXP_MULTI_FAC'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(18274393524254646)
,p_name=>'P45_CHECK_EXP_TOTAL_UNIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(18274032253254645)
,p_name=>'P45_CHECK_EXP_ADJUSMENT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Adjusment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(18273636828254645)
,p_name=>'P45_CHECK_EXP_NET_UNIT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(4810122542343397)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
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
 p_id=>wwv_flow_api.id(18272954703254644)
,p_name=>'P45_CHECK_IMP_PREV_READ'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18272503316254643)
,p_name=>'P45_CHECK_IMP_CURR_READ'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18272178958254643)
,p_name=>'P45_CHECK_IMP_DIFFERENCE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Difference'
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
 p_id=>wwv_flow_api.id(18271746232254643)
,p_name=>'P45_CHECK_IMP_MULTI_FAC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18271324186254642)
,p_name=>'P45_CHECK_IMP_TOTAL_UNIT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(18270979923254642)
,p_name=>'P45_CHECK_IMP_ADJUSMENT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Adjusment'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(18270515214254641)
,p_name=>'P45_CHECK_IMP_NET_UNIT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(4809984376343396)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
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
 p_id=>wwv_flow_api.id(18269873718254640)
,p_name=>'P45_CHECK_NET_EXP_UNIT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(4809852098343395)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
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
 p_id=>wwv_flow_api.id(18269469976254640)
,p_name=>'P45_CHECK_AMOUNT'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(4809852098343395)
,p_prompt=>'Amount'
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
 p_id=>wwv_flow_api.id(18269062493254640)
,p_name=>'P45_CHECK_METER_WORK'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(4809852098343395)
,p_prompt=>'Meter Working'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18268609149254639)
,p_name=>'P45_CHECK_METER_REMARK'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(4809852098343395)
,p_prompt=>'Check Meter Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18172740271965328)
,p_name=>'P45_PRV_LOCATION_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_prompt=>'Location'
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
 p_id=>wwv_flow_api.id(18172624235965327)
,p_name=>'P45_NXT_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18172558159965326)
,p_name=>'P45_NXT_LOCATION_DESC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_prompt=>'Location'
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
 p_id=>wwv_flow_api.id(18172460762965325)
,p_name=>'P45_PRV_LOCATION_DESC_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18316278286282659)
,p_prompt=>'Location'
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
 p_id=>wwv_flow_api.id(18172371752965324)
,p_name=>'P45_NXT_LOCATION_DESC_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(18316815589282664)
,p_prompt=>' Location'
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
 p_id=>wwv_flow_api.id(18172272612965323)
,p_name=>'P45_PRV_MAIN_MTR_INSTALL'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(18315500450282651)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18172148033965322)
,p_name=>'P45_NXT_MAIN_MTR_INSTALL'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(18315721343282653)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18171998353965321)
,p_name=>'P45_PRV_CHECK_MTR_INSTALL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18316278286282659)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18171968696965320)
,p_name=>'P45_NXT_CHECK_MTR_INSTALL'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(18316815589282664)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18171683261965318)
,p_name=>'P45_LOSS_PER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(4575528831088999)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18264969195254632)
,p_validation_name=>'PPA Not Null'
,p_validation_sequence=>10
,p_validation=>'P45_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18171354514965314)
,p_validation_name=>'Prv Location  not found'
,p_validation_sequence=>11
,p_validation=>'P45_PRV_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'JMR of Previous Level Not Found.'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18171265653965313)
,p_validation_name=>'Nxt Location  not found'
,p_validation_sequence=>12
,p_validation=>'P45_NXT_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'JMR of Next Level Not Found.'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18169977756965300)
,p_validation_name=>'Jmr No not null '
,p_validation_sequence=>14
,p_validation=>'P45_JMR_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'JMR no cannot be null.Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18290470948254663)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18169808553965299)
,p_validation_name=>'Jmr Date not null'
,p_validation_sequence=>15
,p_validation=>'P45_JMR_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Jmr Date Cannot be null.Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18289983927254663)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18268121230254635)
,p_validation_name=>'Main Exp Prv Read not null'
,p_validation_sequence=>20
,p_validation=>'P45_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Previous Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18262950839254631)
,p_validation_name=>'Main Exp Prv Read numeric'
,p_validation_sequence=>30
,p_validation=>'P45_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18267775786254635)
,p_validation_name=>'Main Exp Curr Read not null'
,p_validation_sequence=>40
,p_validation=>'P45_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Current Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18262486503254630)
,p_validation_name=>'Main Exp Curr Read numeric'
,p_validation_sequence=>50
,p_validation=>'P45_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18267320029254634)
,p_validation_name=>'Main Imp Prv Read not null'
,p_validation_sequence=>60
,p_validation=>'P45_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Import Previous Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18262152489254630)
,p_validation_name=>'Main Imp Prv Read numeric'
,p_validation_sequence=>70
,p_validation=>'P45_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18266972595254634)
,p_validation_name=>'Main Imp Curr Read not null'
,p_validation_sequence=>80
,p_validation=>'P45_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter import Current Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18261762801254630)
,p_validation_name=>'Main Imp Curr Read numeric'
,p_validation_sequence=>90
,p_validation=>'P45_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18266518083254634)
,p_validation_name=>'Check Exp Prv Read not null'
,p_validation_sequence=>100
,p_validation=>'P45_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Previous Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18261341002254630)
,p_validation_name=>'Check Exp Prv Read numeric'
,p_validation_sequence=>110
,p_validation=>'P45_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18266154800254633)
,p_validation_name=>'Check Exp Curr Read not null'
,p_validation_sequence=>120
,p_validation=>'P45_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Current Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18260968032254629)
,p_validation_name=>'Check Exp Curr Read numeric'
,p_validation_sequence=>130
,p_validation=>'P45_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18265728395254633)
,p_validation_name=>'Check Imp Prv Read not null'
,p_validation_sequence=>140
,p_validation=>'P45_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Import Previous Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18260575347254629)
,p_validation_name=>'Check Imp Prv Read numeric'
,p_validation_sequence=>150
,p_validation=>'P45_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18265280481254633)
,p_validation_name=>'Check Imp Curr Read not null'
,p_validation_sequence=>160
,p_validation=>'P45_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter import Current Reading'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18260088227254629)
,p_validation_name=>'Check Imp Curr Read numeric'
,p_validation_sequence=>170
,p_validation=>'P45_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18264506832254632)
,p_validation_name=>'Main meter work not null'
,p_validation_sequence=>180
,p_validation=>'P45_MAIN_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Main Meter Working'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18263773276254631)
,p_validation_name=>'Main Meter remark not null'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_MAIN_METER_WORK = ''N''  and :P45_MAIN_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18278850185254651)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18264165140254632)
,p_validation_name=>'check Meter Work or not'
,p_validation_sequence=>200
,p_validation=>'P45_CHECK_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Check Meter Working.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18263337891254631)
,p_validation_name=>'Check  Meter remark not null'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_CHECK_METER_WORK = ''N''  and :P45_CHECK_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18268609149254639)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18259729231254628)
,p_validation_name=>'item detail not null'
,p_validation_sequence=>220
,p_validation=>'P45_ITEM_DETAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Item Detail'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18259358844254628)
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
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18258888401254626)
,p_validation_name=>'Main Exp Net unit value cannot be negative'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_MAIN_EXP_NET_UNIT < 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18283874985254656)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18258533484254626)
,p_validation_name=>'Mian Exp Net unit value not null or zero'
,p_validation_sequence=>250
,p_validation=>'P45_MAIN_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18283874985254656)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18258157190254626)
,p_validation_name=>'Main Imp Net unit value cannot be null or zero'
,p_validation_sequence=>260
,p_validation=>'P45_MAIN_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18280767735254653)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18257700430254625)
,p_validation_name=>'Main Imp unit Value negative'
,p_validation_sequence=>270
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_MAIN_IMP_NET_UNIT< 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18280767735254653)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18257362015254625)
,p_validation_name=>'Check Imp net Unit negative'
,p_validation_sequence=>280
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_CHECK_IMP_NET_UNIT < 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18270515214254641)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18256890624254625)
,p_validation_name=>'Check Imp net unit cannot be null or zero'
,p_validation_sequence=>290
,p_validation=>'P45_CHECK_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18270515214254641)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18256530042254624)
,p_validation_name=>'Check Exp Net unit not null or zero'
,p_validation_sequence=>300
,p_validation=>'P45_CHECK_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18273636828254645)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18256114729254624)
,p_validation_name=>'Chekc Exp Net unit negative'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_CHECK_EXP_NET_UNIT< 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18273636828254645)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18255760622254624)
,p_validation_name=>'Check Net exp unit not null or zero'
,p_validation_sequence=>320
,p_validation=>'P45_CHECK_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18269873718254640)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18255352885254623)
,p_validation_name=>'Check Net exp unit negative'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_CHECK_NET_EXP_UNIT< 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18269873718254640)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18254971353254623)
,p_validation_name=>'Main net exp unit not null or zero'
,p_validation_sequence=>340
,p_validation=>'P45_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'value cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18280059170254652)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18254530560254623)
,p_validation_name=>'Main exp unit negative'
,p_validation_sequence=>350
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_MAIN_NET_EXP_UNIT< 0 THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Value cannot be negative'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18280059170254652)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18254134970254622)
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
'       and     FY_STRT < :P45_INVOICE_DATE ',
'       and      FY_END  > :P45_INVOICE_DATE ;',
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
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18253734424254622)
,p_validation_name=>'Net amount not null'
,p_validation_sequence=>370
,p_validation=>'P45_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18293914110254667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18253300383254622)
,p_validation_name=>'Sub amount cannot be null'
,p_validation_sequence=>380
,p_validation=>'P45_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18295127408254669)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18252975121254622)
,p_validation_name=>'Energy amount not null'
,p_validation_sequence=>390
,p_validation=>'P45_ENERGY_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Energy amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18295957707254669)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18252578311254621)
,p_validation_name=>'TCS NOT NULL'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P45_TCS_AMOUNT > 0 AND :P45_TCS_COA IS NULL THEN',
'RETURN ''Accocunt of TCS Not found. Contact System Administration  '';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18294357754254668)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18252178377254621)
,p_validation_name=>'ITEM COA NOT NULL'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P45_ITM_COA_ID is null then',
'return ''Account of item not found. Contact System Administartion'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18298986308254673)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18251749909254621)
,p_validation_name=>'CUSTOMER COA NOT NULL'
,p_validation_sequence=>420
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P45_CUST_COA_ID IS NULL THEN',
'',
'RETURN ''Account of customer not Found. Contact System Administration'';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18289600359254663)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18171117469965312)
,p_validation_name=>'MAin Export Unit Prv not null'
,p_validation_sequence=>450
,p_validation=>'P45_MAIN_EXPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Main Export Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18315321345282649)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18171045158965311)
,p_validation_name=>'main import unit prv'
,p_validation_sequence=>460
,p_validation=>'P45_MAIN_IMPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Main Import Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18315450516282650)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170881316965310)
,p_validation_name=>'main net export unit prv not null or zero'
,p_validation_sequence=>470
,p_validation=>'P45_MAIN_NET_EXPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Export Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18315758137282654)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170810198965309)
,p_validation_name=>'main export unit nxt not null or zero'
,p_validation_sequence=>480
,p_validation=>'P45_MAIN_EXPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Main Export Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18315934578282655)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170699656965308)
,p_validation_name=>'main import unit nxt null or zero'
,p_validation_sequence=>490
,p_validation=>'P45_MAIN_IMPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Main import Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316029204282656)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170650655965307)
,p_validation_name=>'main net export unit nxt not  null or zero'
,p_validation_sequence=>500
,p_validation=>'P45_MAIN_NET_EXPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Export Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316055619282657)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170485723965306)
,p_validation_name=>'Check export unit prv not null or zero'
,p_validation_sequence=>510
,p_validation=>'P45_CHECK_EXPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Check Export Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316452370282660)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170432051965305)
,p_validation_name=>'Check Import unit prv not null or zero'
,p_validation_sequence=>520
,p_validation=>'P45_CHECK_IMPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Check Import Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316471262282661)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170287453965304)
,p_validation_name=>'check net export unit prv not null or zero'
,p_validation_sequence=>530
,p_validation=>'P45_CHECK_NET_EXPORT_UNIT_PRV'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Export Unit Cannot be null or Zero'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316562606282662)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170215857965303)
,p_validation_name=>'Check export unit nxt not null or zero'
,p_validation_sequence=>540
,p_validation=>'P45_CHECK_EXPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Check Export Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18316859146282665)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18170093466965302)
,p_validation_name=>'check import unit not ull or zero'
,p_validation_sequence=>550
,p_validation=>'P45_CHECK_IMPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Check Import Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18317045776282666)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(18169984305965301)
,p_validation_name=>'check net export unit  nxt not null or zero'
,p_validation_sequence=>560
,p_validation=>'P45_CHECK_NET_EXPORT_UNIT_NXT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Export Unit Cannot be null or Zero'
,p_validation_condition=>'P45_OPTION'
,p_validation_condition2=>'C'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18317088373282667)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10198434963309546)
,p_validation_name=>'RATE CANNOT BE NULL OR ZERO'
,p_validation_sequence=>570
,p_validation=>'P45_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Not found. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(18305333898254682)
,p_associated_item=>wwv_flow_api.id(18297815606254672)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18245410624254612)
,p_name=>'Calculate Main EXP  Net Unit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_EXP_ADJUSMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18244924913254611)
,p_event_id=>wwv_flow_api.id(18245410624254612)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_MAIN_EXP_NET_UNIT := (NVL(:P45_MAIN_EXP_TOTAL_UNIT,0)-NVL(:P45_MAIN_EXP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P45_MAIN_EXP_TOTAL_UNIT,P45_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P45_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18244534917254611)
,p_name=>'Calculate Main IMP  Net Unit'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_IMP_ADJUSMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18244045137254611)
,p_event_id=>wwv_flow_api.id(18244534917254611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_MAIN_IMP_NET_UNIT := (NVL(:P45_MAIN_IMP_TOTAL_UNIT,0)-NVL(:P45_MAIN_IMP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P45_MAIN_IMP_TOTAL_UNIT,P45_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P45_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18243668495254611)
,p_name=>'Calculate Main Exported Unit'
,p_event_sequence=>85
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_IMP_NET_UNIT,P45_MAIN_EXP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18243166767254610)
,p_event_id=>wwv_flow_api.id(18243668495254611)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_MAIN_NET_EXP_UNIT := NVL(NVL(:P45_MAIN_EXP_NET_UNIT,0)- NVL(:P45_MAIN_IMP_NET_UNIT,0),0);'
,p_attribute_02=>'P45_MAIN_EXP_NET_UNIT,P45_MAIN_IMP_NET_UNIT'
,p_attribute_03=>'P45_MAIN_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18242708349254610)
,p_name=>'Calculate Check EXP  Net Unit'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_EXP_ADJUSMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18242201288254610)
,p_event_id=>wwv_flow_api.id(18242708349254610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_CHECK_EXP_NET_UNIT := (NVL(:P45_CHECK_EXP_TOTAL_UNIT,0)-NVL(:P45_CHECK_EXP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P45_CHECK_EXP_TOTAL_UNIT,P45_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P45_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18241787112254610)
,p_name=>'Calculate Check IMP  Net Unit'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_IMP_ADJUSMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18241349551254609)
,p_event_id=>wwv_flow_api.id(18241787112254610)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_CHECK_IMP_NET_UNIT := (NVL(:P45_CHECK_IMP_TOTAL_UNIT,0)-NVL(:P45_CHECK_IMP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P45_CHECK_IMP_TOTAL_UNIT,P45_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P45_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18240919463254609)
,p_name=>'Calculate Check Exported Unit'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_EXP_NET_UNIT,P45_CHECK_IMP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18240425705254609)
,p_event_id=>wwv_flow_api.id(18240919463254609)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_CHECK_NET_EXP_UNIT := NVL(NVL(:P45_CHECK_EXP_NET_UNIT,0)- NVL(:P45_CHECK_IMP_NET_UNIT,0),0);'
,p_attribute_02=>'EP45_CHECK_XP_NET_UNIT,P45_CHECK_IMP_NET_UNIT'
,p_attribute_03=>'P45_CHECK_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18240006383254608)
,p_name=>'Show/hide main meter Remark'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_METER_WORK'
,p_condition_element=>'P45_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18239566604254608)
,p_event_id=>wwv_flow_api.id(18240006383254608)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18238996467254608)
,p_event_id=>wwv_flow_api.id(18240006383254608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18238635881254608)
,p_name=>'Show/Hide Check Meter Remark'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_METER_WORK'
,p_condition_element=>'P45_CHECK_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18238169528254607)
,p_event_id=>wwv_flow_api.id(18238635881254608)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18237587650254607)
,p_event_id=>wwv_flow_api.id(18238635881254608)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18237245306254607)
,p_name=>'Refresh'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18236753257254607)
,p_event_id=>wwv_flow_api.id(18237245306254607)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(979002235706299)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18236186948254606)
,p_event_id=>wwv_flow_api.id(18237245306254607)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_OTHER_CHARGE'
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
 p_id=>wwv_flow_api.id(18235732301254606)
,p_event_id=>wwv_flow_api.id(18237245306254607)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4683906882832214)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18235328156254606)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>210
,p_condition_element=>'P45_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18234809022254605)
,p_event_id=>wwv_flow_api.id(18235328156254606)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18305736283254682)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P45_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18234427691254604)
,p_name=>'hide forward on add mode'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P45_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18233965713254604)
,p_event_id=>wwv_flow_api.id(18234427691254604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(18305736283254682)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18233524889254604)
,p_name=>'show/hide energy amount'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_METER_WORK'
,p_condition_element=>'P45_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18233029962254604)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_MAIN_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18232536053254603)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_CHECK_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231983658254603)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_CHECK_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231576844254603)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_MAIN_AMOUNT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231026059254602)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_MAIN_AMOUNT := nvl(:P45_MAIN_NET_EXP_UNIT,0)* :P45_RATE ;'
,p_attribute_02=>'P45_MAIN_NET_EXP_UNIT,P45_RATE'
,p_attribute_03=>'P45_MAIN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18230501369254602)
,p_event_id=>wwv_flow_api.id(18233524889254604)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_CHECK_AMOUNT:= nvl(:P45_CHECK_NET_EXP_UNIT,0)* :P45_RATE ;'
,p_attribute_02=>'P45_CHECK_NET_EXP_UNIT,P45_RATE'
,p_attribute_03=>'P45_CHECK_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18230171096254602)
,p_name=>'Set value in mainfo tab'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_MAIN_AMOUNT,P45_CHECK_AMOUNT'
,p_condition_element=>'P45_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18229653832254602)
,p_event_id=>wwv_flow_api.id(18230171096254602)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_ENERGY_AMOUNT := :P45_MAIN_AMOUNT;'
,p_attribute_02=>'P45_MAIN_AMOUNT'
,p_attribute_03=>'P45_ENERGY_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18229128698254601)
,p_event_id=>wwv_flow_api.id(18230171096254602)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_ENERGY_AMOUNT := :P45_CHECK_AMOUNT;'
,p_attribute_02=>'P45_CHECK_AMOUNT'
,p_attribute_03=>'P45_ENERGY_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18228767625254601)
,p_name=>'Calculate Net Amount'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_OTHER_CHARGE,P45_ENERGY_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18228230284254601)
,p_event_id=>wwv_flow_api.id(18228767625254601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_SUB_AMOUNT := nvl(TO_NUMBER(REPLACE(:P45_ENERGY_AMOUNT,'','','''')),0) + NVL(TO_NUMBER(REPLACE(:P45_OTHER_CHARGE,'','','''')),0);'
,p_attribute_02=>'P45_ENERGY_AMOUNT,P45_OTHER_CHARGE'
,p_attribute_03=>'P45_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18227871542254601)
,p_name=>'calculate amount on main exp unit'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_NET_EXP_UNIT,P45_MAIN_NET_EXP_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18227313432254600)
,p_event_id=>wwv_flow_api.id(18227871542254601)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_MAIN_AMOUNT := nvl(:P45_MAIN_NET_EXP_UNIT,0)* :P45_RATE ;'
,p_attribute_02=>'P45_MAIN_NET_EXP_UNIT,P45_RATE'
,p_attribute_03=>'P45_MAIN_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18226891183254600)
,p_name=>'calculate amount on check exp unit'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_CHECK_NET_EXP_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18226382563254600)
,p_event_id=>wwv_flow_api.id(18226891183254600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_CHECK_AMOUNT:= nvl(:P45_CHECK_NET_EXP_UNIT,0)* :P45_RATE ;'
,p_attribute_02=>'P45_CHECK_NET_EXP_UNIT,P45_RATE'
,p_attribute_03=>'P45_CHECK_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18226042244254600)
,p_name=>'update other charge'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_ENERGY_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18225549731254599)
,p_event_id=>wwv_flow_api.id(18226042244254600)
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
'SELECT DECODE(:P45_MAIN_METER_WORK,''Y'',:P45_MAIN_NET_EXP_UNIT,''N'',:P45_CHECK_NET_EXP_UNIT) INTO v_unit',
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
'                   (nvl(replace(:P45_ENERGY_AMOUNT,'','',''''),0) *   to_number(c003))/100 ',
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
'into :P45_OTHER_CHARGE',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; ',
'',
'',
'end;'))
,p_attribute_02=>'P45_MAIN_METER_WORK,P45_MAIN_NET_EXP_UNIT,P45_CHECK_NET_EXP_UNIT,P45_ENERGY_AMOUNT'
,p_attribute_03=>'P45_OTHER_CHARGE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
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
 p_id=>wwv_flow_api.id(18224987049254599)
,p_event_id=>wwv_flow_api.id(18226042244254600)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(4683906882832214)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18224603551254599)
,p_name=>'Get net amount on sub_amount change'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_SUB_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18224156015254598)
,p_event_id=>wwv_flow_api.id(18224603551254599)
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
'',
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P45_CUSTOMER_CODE) ; ',
'',
'IF v_tcs_flag = ''Y'' then',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P45_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                                             :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    ',
'    :P45_TAX_RULE_ID := V_TAX_RULE_ID;',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'',
'  if v_amount > 5000000 then',
'            v_tcs_amount := replace(:P45_SUB_AMOUNT,'','','''');',
'            :P45_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'',
'            :P45_TCS_PER := V_TCS_PER;',
'            :P45_TAX_ID  := V_TAX_ID;',
'            :P45_TCS_COA  := v_tcs_coa;',
'    ',
'    else',
'        if v_amount+replace(:P45_SUB_AMOUNT,'','','''')-5000000 < 0 then',
'            v_tcs_amount := 0;',
'            :P45_TCS_AMOUNT :=0;',
'            ',
'            :P45_TCS_PER := null;',
'            :P45_TAX_ID  := null;',
'            :P45_TCS_COA  := null;',
'      else',
'            v_tcs_amount := v_amount+replace(:P45_SUB_AMOUNT,'','','''')-5000000; ',
'            ',
'            :P45_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'',
'                :P45_TCS_PER := V_TCS_PER;',
'                :P45_TAX_ID  := V_TAX_ID;',
'                :P45_TCS_COA  := v_tcs_coa;',
'     end if;',
'    end if;',
'end if;',
'',
'--:P45_NET_AMOUNT := replace(:P45_SUB_AMOUNT ,'','','''')+ replace(:P45_TCS_AMOUNT,'','','''') ;',
'',
'if :P45_TAX_APPLICABLE = ''Y'' then',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P45_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                            :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                        );',
'',
':P45_TAX_RULE_ID := V_TAX_RULE_ID;',
'',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P45_INVOICE_ID, :P45_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P45_SUB_AMOUNT,'','',''''),replace(:P45_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P45_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  );',
'',
':P45_TAX_AMOUNT := v_amount;',
'end if;',
'',
':P45_NET_AMOUNT := replace(:P45_SUB_AMOUNT ,'','','''') + replace(nvl(:P45_TAX_AMOUNT,0),'','','''') +replace(:P45_TCS_AMOUNT,'','','''') ;',
'',
'end;'))
,p_attribute_02=>'P45_CUSTOMER_CODE,P45_ITEM_CODE,P45_SUB_AMOUNT,P45_CUST_COA_ID,P45_INVOICE_ID,P45_TAX_AMOUNT,P45_TAX_APPLICABLE'
,p_attribute_03=>'P45_TCS_AMOUNT ,P45_NET_AMOUNT,P45_TAX_AMOUNT,P45_TAX_RULE_ID,P45_TCS_PER,P45_TAX_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18223682682254598)
,p_name=>'get_tax_amount'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_TAX_APPLICABLE'
,p_condition_element=>'P45_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18223261100254598)
,p_event_id=>wwv_flow_api.id(18223682682254598)
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
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P45_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                            :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P45_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P45_INVOICE_ID, :P45_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P45_SUB_AMOUNT,'','',''''),replace(:P45_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P45_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P45_TAX_AMOUNT := v_amount;',
'end;'))
,p_attribute_02=>'P45_CUSTOMER_CODE,P45_ITEM_CODE,P45_SUB_AMOUNT,P45_CUST_COA_ID,P45_INVOICE_ID'
,p_attribute_03=>'P45_TAX_AMOUNT,P45_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18222710026254597)
,p_event_id=>wwv_flow_api.id(18223682682254598)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P45_TAX_AMOUNT  := 0;',
'',
'IF replace(:P45_TCS_AMOUNT ,'','','''')= 0 THEN',
':P45_TAX_RULE_ID := NULL;',
'',
'END IF;'))
,p_attribute_03=>'P45_TAX_AMOUNT,P45_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18222394656254597)
,p_name=>'Calculate net amount on tax change'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P45_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18221898338254597)
,p_event_id=>wwv_flow_api.id(18222394656254597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P45_NET_AMOUNT := NVL(replace(:P45_SUB_AMOUNT ,'','',''''),0) +  NVL(replace(:P45_TAX_AMOUNT ,'','','''') ,0) + NVL(replace(:P45_TCS_AMOUNT ,'','','''') ,0);'
,p_attribute_02=>'P45_SUB_AMOUNT ,P45_TAX_AMOUNT,P45_TCS_AMOUNT'
,p_attribute_03=>'P45_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18221491504254597)
,p_name=>'hide invocie date'
,p_event_sequence=>320
,p_condition_element=>'P45_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'A'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18221069367254596)
,p_event_id=>wwv_flow_api.id(18221491504254597)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P45_INVOICE_NO,P45_INVOICE_DATE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18251035070254620)
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
'                select  lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''3'')+1))),0) +1,''4'',''0'')',
'                into  v_code ',
'                from DT_INVOICE_JMR ',
'                where ORG_ID = :global_comp_code ',
'                and PRJ_ID = :GLOBAL_PROJ_ID',
'                AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'            ',
'            :P45_INVOICE_NO := :GLOBAL_COMP_PREFIX ||''/'' ||v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'        ',
'        end;',
'',
'insert into DT_INVOICE_JMR',
'(',
'ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PPA_NO, DT_PPA_DATE, VC_JMR_NO, DT_JMR_DATE, EO_ID, COA_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID,',
'ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, ',
'/*VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, NU_MAIN_EXP_CUR_READING, ',
'NU_MAIN_EXP_DIFFERNCE, NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, CH_MAIN_METER_WORKING, ',
'VC_MAIN_METER_REMARKS, NU_MAIN_AMOUNT, ',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING, NU_CHK_EXP_DIFFERNCE,NU_CHK_EXP_FACTOR, NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, NU_CHK_IMP_PRV_READING, NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, ',
'NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, VC_CHK_METER_REMARKS,',
'NU_CHECK_AMOUNT, */VC_REMARKS, ',
'CH_TYPE, CH_OPTION, NU_TRNS_LOSS_PER, NU_TRANS_LOSS, NU_NET_EXP_UNIT, NU_PRV_METERING_LOC, NU_PRV_MAIN_EXP_UNIT, NU_PRV_MAIN_IMP_UNIT, NU_PRV_NET_MAIN_EXP_UNIT, ',
'vc_PRV_MAIN_MTR_WRK, NU_PRV_CHK_EXP_UNIT, NU_PRV_CHK_IMP_UNIT, NU_PRV_NET_CHK_EXP_UNIT, vc_PRV_CHK_MTR_WRK, NU_NXT_METERING_LOC, NU_NXT_MAIN_EXP_UNIT, ',
'NU_NXT_MAIN_IMP_UNIT, NU_NXT_NET_MAIN_EXP_UNIT, vc_NXT_MAIN_MTR_WRK, NU_NXT_CHK_EXP_UNIT, NU_NXT_CHK_IMP_UNIT, NU_NXT_NET_CHK_EXP_UNIT, vc_NXT_CHK_MTR_WRK,',
'',
'NU_ENERGY_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT,NU_TCS_AMOUNT,NU_NET_AMOUNT, ',
'USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,nu_invoice_id , VC_TAX_APPLICABLE , NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,NU_TCS_TAX_ID',
')',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P45_INVOICE_NO,:P45_INVOICE_DATE,:P45_PPA_NO,:P45_PPA_DATE,:P45_JMR_NO,:P45_JMR_DATE,:P45_CUSTOMER_CODE,:P45_CUST_COA_ID,:P45_BILLING_POINT,:P45_METERING_POINT,:P45_GRP_ID,',
':P45_ITEM_CODE,:P45_QTY,:P45_RATE,:P45_ITEM_DETAIL,:P45_ITM_COA_ID,',
'/*:P45_MAIN_METER_NO,:P45_MAIN_METER_LOC,:P45_MAIN_EXP_PREV_READ,:P45_MAIN_EXP_CURR_READ,',
':P45_MAIN_EXP_DIFFERENCE,:P45_MAIN_EXP_MULTI_FAC,:P45_MAIN_EXP_TOTAL_UNIT,:P45_MAIN_EXP_ADJUSMENT,:P45_MAIN_EXP_NET_UNIT,:P45_MAIN_IMP_PREV_READ,:P45_MAIN_IMP_CURR_READ,',
':P45_MAIN_IMP_DIFFERENCE,:P45_MAIN_IMP_MULTI_FAC,:P45_MAIN_IMP_TOTAL_UNIT,:P45_MAIN_IMP_ADJUSMENT,:P45_MAIN_IMP_NET_UNIT,:P45_MAIN_NET_EXP_UNIT,',
':P45_MAIN_METER_WORK,:P45_MAIN_METER_REMARK,replace(:P45_MAIN_AMOUNT,'','',''''),',
':P45_CHECK_METER_NO,:P45_CHECK_METER_LOC,:P45_CHECK_EXP_PREV_READ,:P45_CHECK_EXP_CURR_READ,:P45_CHECK_EXP_DIFFERENCE,:P45_CHECK_EXP_MULTI_FAC,:P45_CHECK_EXP_TOTAL_UNIT,',
':P45_CHECK_EXP_ADJUSMENT,:P45_CHECK_EXP_NET_UNIT,:P45_CHECK_IMP_PREV_READ,:P45_CHECK_IMP_CURR_READ,:P45_CHECK_IMP_DIFFERENCE,',
':P45_CHECK_IMP_MULTI_FAC,:P45_CHECK_IMP_TOTAL_UNIT,:P45_CHECK_IMP_ADJUSMENT,:P45_CHECK_IMP_NET_UNIT,:P45_CHECK_NET_EXP_UNIT,:P45_CHECK_METER_WORK,',
':P45_CHECK_METER_REMARK,replace(:P45_CHECK_AMOUNT,'','',''''),*/:P45_REMARKS,',
'''W'',:P45_OPTION,:P45_LOSS_PER,replace(:P45_TRANSMISSION_LOSS,'','',''''),replace(:P45_NET_EXP_UNIT,'','',''''),:P45_PRV_LOCATION, replace(:P45_MAIN_EXPORT_UNIT_PRV,'','',''''), replace(:P45_MAIN_IMPORT_UNIT_PRV,'','',''''), replace(:P45_MAIN_NET_EXPORT_UNIT_PRV,'','','
||'''''),',
':P45_PRV_MAIN_MTR_INSTALL,replace(:P45_CHECK_EXPORT_UNIT_PRV,'','',''''),replace(:P45_CHECK_IMPORT_UNIT_PRV,'','',''''),replace(:P45_CHECK_NET_EXPORT_UNIT_PRV,'','',''''),replace(:P45_PRV_CHECK_MTR_INSTALL,'','',''''),:P45_NXT_LOCATION,replace(:P45_MAIN_EXPORT_UNIT_'
||'NXT,'','',''''),',
'replace(:P45_MAIN_IMPORT_UNIT_NXT,'','',''''),replace(:P45_MAIN_NET_EXPORT_UNIT_NXT,'','',''''),:P45_NXT_MAIN_MTR_INSTALL,replace(:P45_CHECK_EXPORT_UNIT_NXT,'','',''''),replace(:P45_CHECK_IMPORT_UNIT_NXT,'','',''''),replace(:P45_CHECK_NET_EXPORT_UNIT_NXT,'','',''''),:P4'
||'5_NXT_CHECK_MTR_INSTALL,',
'',
'replace(:P45_ENERGY_AMOUNT,'','',''''),replace(:P45_OTHER_CHARGE,'','',''''),replace(:P45_SUB_AMOUNT,'','',''''),replace(:P45_TAX_AMOUNT,'','',''''), replace(:P45_TCS_AMOUNT,'','','''')  ,replace(:P45_NET_AMOUNT,'','',''''),',
':GLOBAL_USER_CODE,sysdate,:GLOBAL_PARENT_COMP,:P45_INVOICE_ID , :P45_TAX_APPLICABLE , :P45_TCS_COA , :P45_TCS_PER ,:P45_TAX_RULE_ID,:P45_TAX_ID',
');',
'',
'',
'',
'    if :P45_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P45_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P45_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                                        :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P45_INVOICE_ID, :P45_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P45_SUB_AMOUNT,'','',''''),replace(:P45_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P45_CUST_COA_ID, NULL, ',
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
'                        AND DOC_ID        = :P45_INVOICE_ID',
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
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18305333898254682)
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18250264288254618)
,p_process_sequence=>20
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
'/*VC_PPA_NO                   =:P45_PPA_NO,',
'VC_JMR_NO                   =:P45_PPA_DATE,',
'DT_PPA_DATE                 =:P45_JMR_NO,',
'DT_JMR_DATE                 =:P45_JMR_DATE,',
'EO_ID                       =:P45_CUSTOMER_CODE, ',
'COA_ID                      =:P45_CUST_COA_ID, ',
'NU_DELIVERY_POINT_ID        =:P45_BILLING_POINT,',
'NU_METERING_POINT_ID        =:P45_METERING_POINT,',
'GRP_ID                      =:P45_GRP_ID,',
'ITM_ID                      =:P45_ITEM_CODE, ',
'NU_QTY                      =:P45_QTY,',
'NU_RATE                     =:P45_RATE,',
'*/',
'VC_ITEM_DETAIL              =:P45_ITEM_DETAIL,',
'--ITM_ID_COA                  =:P45_ITM_COA_ID, ',
'--VC_MAIN_METER_NO            =:P45_MAIN_METER_NO,',
'--NU_MAIN_METER_LOC_ID        =:P45_MAIN_METER_LOC, ',
'/*',
'NU_MAIN_EXP_PRV_READING     =:P45_MAIN_EXP_PREV_READ, ',
'NU_MAIN_EXP_CUR_READING     =:P45_MAIN_EXP_CURR_READ, ',
'NU_MAIN_EXP_DIFFERNCE       =:P45_MAIN_EXP_DIFFERENCE,',
'NU_MAIN_EXP_FACTOR          =:P45_MAIN_EXP_MULTI_FAC,',
'NU_MAIN_EXP_TOTAL_UNIT      =:P45_MAIN_EXP_TOTAL_UNIT, ',
'NU_MAIN_EXP_ADJUSTMENT      =:P45_MAIN_EXP_ADJUSMENT, ',
'NU_MAIN_EXP_NET_UNIT        =:P45_MAIN_EXP_NET_UNIT, ',
'NU_MAIN_IMP_PRV_READING     =:P45_MAIN_IMP_PREV_READ,',
'NU_MAIN_IMP_CUR_READING     =:P45_MAIN_IMP_CURR_READ,',
'NU_MAIN_IMP_DIFFERNCE       =:P45_MAIN_IMP_DIFFERENCE, ',
'NU_MAIN_IMP_FACTOR          =:P45_MAIN_IMP_MULTI_FAC,',
'NU_MAIN_IMP_TOTAL_UNIT      =:P45_MAIN_IMP_TOTAL_UNIT, ',
'NU_MAIN_IMP_ADJUSTMENT      =:P45_MAIN_IMP_ADJUSMENT, ',
'NU_MAIN_IMP_NET_UNIT        =:P45_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT        =:P45_MAIN_NET_EXP_UNIT, ',
'CH_MAIN_METER_WORKING       =:P45_MAIN_METER_WORK, ',
'VC_MAIN_METER_REMARKS       =:P45_MAIN_METER_REMARK, ',
'NU_MAIN_AMOUNT              =replace(:P45_MAIN_AMOUNT,'','',''''), ',
'--VC_CHK_METER_NO             =:P45_CHECK_METER_NO,',
'--NU_CHK_METER_LOC_ID         =:P45_CHECK_METER_LOC ,',
'NU_CHK_EXP_PRV_READING      =:P45_CHECK_EXP_PREV_READ, ',
'NU_CHK_EXP_CUR_READING      =:P45_CHECK_EXP_CURR_READ,',
'NU_CHK_EXP_DIFFERNCE        =:P45_CHECK_EXP_DIFFERENCE,',
'NU_CHK_EXP_FACTOR           =:P45_CHECK_EXP_MULTI_FAC, ',
'NU_CHK_EXP_TOTAL_UNIT       =:P45_CHECK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_ADJUSTMENT       =:P45_CHECK_EXP_ADJUSMENT, ',
'NU_CHK_EXP_NET_UNIT         =:P45_CHECK_EXP_NET_UNIT, ',
'NU_CHK_IMP_PRV_READING      =:P45_CHECK_IMP_PREV_READ,',
'NU_CHK_IMP_CUR_READING      =:P45_CHECK_IMP_CURR_READ,',
'NU_CHK_IMP_DIFFERNCE        =:P45_CHECK_IMP_DIFFERENCE, ',
'NU_CHK_IMP_FACTOR           =:P45_CHECK_IMP_MULTI_FAC, ',
'NU_CHK_IMP_TOTAL_UNIT       =:P45_CHECK_IMP_TOTAL_UNIT, ',
'NU_CHK_IMP_ADJUSTMENT       =:P45_CHECK_IMP_ADJUSMENT,',
'NU_CHK_IMP_NET_UNIT         =:P45_CHECK_IMP_NET_UNIT,',
'NU_CHK_NET_EXP_UNIT         =:P45_CHECK_NET_EXP_UNIT,',
'CH_CHK_METER_WORKING        =:P45_CHECK_METER_WORK, ',
'VC_CHK_METER_REMARKS        =:P45_CHECK_METER_REMARK,',
'NU_CHECK_AMOUNT             =replace(:P45_CHECK_AMOUNT,'','',''''),*/',
'VC_REMARKS                  =:P45_REMARKS, ',
'NU_ENERGY_AMOUNT            =replace(:P45_ENERGY_AMOUNT,'','',''''),',
'NU_OTHER_CHARGE_AMOUNT      =replace(:P45_OTHER_CHARGE,'','',''''),',
'NU_SUB_AMOUNT               =replace(:P45_SUB_AMOUNT,'','',''''),',
'NU_Tax_AMOUNT               =replace(:P45_TAX_AMOUNT,'','',''''),',
'NU_TCS_AMOUNT               =replace(:P45_TCS_AMOUNT,'','',''''),',
'NU_NET_AMOUNT               =replace(:P45_NET_AMOUNT,'','',''''),',
'USR_ID_MOD_DT               =sysdate,',
'VC_TAX_APPLICABLE           =:P45_TAX_APPLICABLE,',
'NU_TCS_COA                  =:P45_TCS_COA,',
'NU_TAX_RULE_ID              =:P45_TAX_RULE_ID,     ',
'NU_TCS_PER                  =:P45_TCS_PER,',
'NU_TCS_TAX_ID               =:P45_TAX_ID',
'',
'',
'',
'',
'where ORG_ID          = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P45_INVOICE_NO',
'and DT_INVOICE_DATE = :P45_INVOICE_DATE;',
'',
'',
'',
'',
'',
'    if :P45_TAX_APPLICABLE = ''Y'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P45_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P45_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P45_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                                        :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P45_INVOICE_ID, :P45_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P45_SUB_AMOUNT,'','',''''),replace(:P45_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P45_CUST_COA_ID, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P45_INVOICE_ID',
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
'',
'    if :P45_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P45_INVOICE_ID;',
'    end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18305333898254682)
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18249037047254616)
,p_process_sequence=>30
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
'IF :P45_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P45_INVOICE_NO ',
'                            AND DT_DOC_DATE = :P45_INVOICE_DATE',
'                            AND VC_TRANS_TYPE=''JMR'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P45_INVOICE_NO,:P45_INVOICE_DATE,''IJMR'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(18305333898254682)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18246256707254613)
,p_process_sequence=>40
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
'IF :P45_MODE = ''E'' THEN',
'            DELETE FROM DT_OTHER_CHARGES_INV_JMR',
'             WHERE ORG_ID          = :GLOBAL_COMP_CODE ',
'             AND   PRJ_ID          = :GLOBAL_PROJ_ID ',
'             AND   VC_INVOICE_NO   = :P45_INVOICE_NO ',
'             AND   DT_INVOICE_DATE = :P45_INVOICE_DATE',
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
'     :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P45_INVOICE_NO,:P45_INVOICE_DATE,I.C001,I.C002, I.C003,I.C004,I.C005,I.C006,',
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
,p_process_when_button_id=>wwv_flow_api.id(18305333898254682)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18251474403254620)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18249474296254617)
,p_process_sequence=>60
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
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
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
 p_id=>wwv_flow_api.id(18250642618254619)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*select ',
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
':P45_PPA_NO, :P45_PPA_DATE, :P45_CUSTOMER_CODE,:P45_BILLING_POINT,:P45_METERING_POINT,:P45_GRP_ID,:P45_ITEM_CODE,',
':P45_QTY,:P45_RATE,:P45_MAIN_METER_NO,:P45_MAIN_METER_LOC,:P45_MAIN_EXP_PREV_READ,:P45_MAIN_EXP_CURR_READ,:P45_MAIN_EXP_DIFFERENCE,',
':P45_MAIN_EXP_MULTI_FAC,:P45_MAIN_EXP_TOTAL_UNIT,:P45_MAIN_EXP_ADJUSMENT,:P45_MAIN_EXP_NET_UNIT,:P45_MAIN_IMP_PREV_READ,:P45_MAIN_IMP_CURR_READ,',
':P45_MAIN_IMP_DIFFERENCE,:P45_MAIN_IMP_MULTI_FAC,:P45_MAIN_IMP_TOTAL_UNIT,:P45_MAIN_IMP_ADJUSMENT,:P45_MAIN_IMP_NET_UNIT,:P45_MAIN_NET_EXP_UNIT,',
':P45_MAIN_METER_WORK,:P45_MAIN_METER_REMARK,',
':P45_CHECK_METER_NO,:P45_CHECK_METER_LOC,:P45_CHECK_EXP_PREV_READ,:P45_CHECK_EXP_CURR_READ,:P45_CHECK_EXP_DIFFERENCE,:P45_CHECK_EXP_MULTI_FAC,',
':P45_CHECK_EXP_TOTAL_UNIT,:P45_CHECK_EXP_ADJUSMENT,:P45_CHECK_EXP_NET_UNIT,:P45_CHECK_IMP_PREV_READ,:P45_CHECK_IMP_CURR_READ,:P45_CHECK_IMP_DIFFERENCE,',
':P45_CHECK_IMP_MULTI_FAC,:P45_CHECK_IMP_TOTAL_UNIT,:P45_CHECK_IMP_ADJUSMENT,:P45_CHECK_IMP_NET_UNIT,:P45_CHECK_NET_EXP_UNIT,:P45_CHECK_METER_WORK,',
':P45_CHECK_METER_REMARK',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P45_JMR_NO',
'AND   DT_JMR_DATE = :P45_JMR_DATE;',
'',
'*/',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'--       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) Metering_loc,',
' --      get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) Metering_loc',
'       EO_ID, ',
'       NU_DELIVERY_POINT_ID, ',
'       NU_METERING_POINT_ID, ',
'       GRP_ID, ',
'       ITM_ID,  ',
'       NU_QTY, ',
'     --  NU_RATE',
'       GET_RATE (ORG_ID,PRJ_ID,VC_PPA_NO,DT_PPA_DATE,to_date(sysdate,''DD-MM-YYYY''),null)',
'     ',
'',
'into   :P45_CUSTOMER_NAME,',
'       :P45_BILLING_POINT_DESC,',
'       :P45_METERING_POINT_DESC,',
'       :P45_ITEM_DESC,',
'       :P45_UOM,',
'       --:P45_MAIN_METER_LOC_DESC,',
'       --:P45_CHECK_METER_LOC_DESC',
'       :P45_CUSTOMER_CODE,',
'       :P45_BILLING_POINT,',
'       :P45_METERING_POINT,',
'       :P45_GRP_ID,',
'       :P45_ITEM_CODE,',
'       :P45_QTY,:P45_RATE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P45_PPA_NO',
'AND   DT_PPA_DATE = :P45_PPA_DATE;',
'',
'',
'SELECT COA_ID,ITM_ID_COA',
'INTO   :P45_CUST_COA_ID,:P45_ITM_COA_ID',
'FROM MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P45_PPA_NO',
'AND   DT_PPA_DATE = :P45_PPA_DATE;',
'',
'',
'IF :P45_TRANS_LOSS = ''Y'' AND :P45_OPTION = ''P'' THEN',
'',
'    BEGIN',
'        SELECT ',
'        VC_JMR_NO,',
'        DT_JMR_DATE,',
'        NU_METERING_POINT_ID,',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc1,',
'        NU_MAIN_EXP_NET_UNIT,',
'        NU_MAIN_IMP_NET_UNIT,',
'        NU_MAIN_NET_EXP_UNIT,',
'        CH_MAIN_METER_WORKING,',
'        ',
'        NU_CHK_EXP_NET_UNIT,',
'        NU_CHK_IMP_NET_UNIT, ',
'        NU_CHK_NET_EXP_UNIT,',
'        CH_CHK_METER_WORKING',
'      ',
'    ',
'        INTO ',
'        :P45_JMR_NO,',
'        :P45_JMR_DATE,',
'        :P45_PRV_LOCATION,',
'        :P45_PRV_LOCATION_DESC,',
'        :P45_PRV_LOCATION_DESC_1,',
'        :P45_MAIN_EXPORT_UNIT_PRV,',
'        :P45_MAIN_IMPORT_UNIT_PRV,',
'        :P45_MAIN_NET_EXPORT_UNIT_PRV,',
'        :P45_PRV_MAIN_MTR_INSTALL,',
'        ',
'        :P45_CHECK_EXPORT_UNIT_PRV,',
'        :P45_CHECK_IMPORT_UNIT_PRV,',
'        :P45_CHECK_NET_EXPORT_UNIT_PRV,',
'        :P45_PRV_CHECK_MTR_INSTALL',
'',
'        FROM  DT_JMR',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P45_PPA_NO',
'        AND   DT_PPA_DATE = :P45_PPA_DATE',
'        AND NU_METERING_POINT_ID = :P45_METERING_POINT-1',
'        and CH_AUTH_FLAG =''Y'';',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
'',
'      IF :P45_PRV_MAIN_MTR_INSTALL = ''Y'' THEN',
'',
'     :P45_TRANSMISSION_LOSS :=  ABS((:P45_MAIN_NET_EXPORT_UNIT_PRV*:P45_LOSS_PER)/100);',
'     :P45_NET_EXP_UNIT := :P45_MAIN_NET_EXPORT_UNIT_PRV- :P45_TRANSMISSION_LOSS ;',
'     :P45_ENERGY_AMOUNT := :P45_NET_EXP_UNIT  * :P45_RATE;',
'',
'    ELSE',
'     :P45_TRANSMISSION_LOSS := ((:P45_CHECK_NET_EXPORT_UNIT_PRV*:P45_LOSS_PER)/100);',
'     :P45_NET_EXP_UNIT := :P45_CHECK_NET_EXPORT_UNIT_PRV- :P45_TRANSMISSION_LOSS ;',
'     :P45_ENERGY_AMOUNT := :P45_NET_EXP_UNIT  * :P45_RATE;',
'    END IF',
'    ;',
'',
'ELSIF :P45_TRANS_LOSS = ''Y'' AND :P45_OPTION = ''C'' THEN',
'',
'    BEGIN',
'        SELECT VC_JMR_NO,',
'        DT_JMR_DATE,',
'        NU_METERING_POINT_ID,',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc1,',
'        NU_MAIN_EXP_NET_UNIT,',
'        NU_MAIN_IMP_NET_UNIT,',
'        NU_MAIN_NET_EXP_UNIT,',
'        CH_MAIN_METER_WORKING,',
'        ',
'        NU_CHK_EXP_NET_UNIT,',
'        NU_CHK_IMP_NET_UNIT, ',
'        NU_CHK_NET_EXP_UNIT,',
'        CH_CHK_METER_WORKING',
'',
'        INTO ',
'        :P45_JMR_NO,',
'        :P45_JMR_DATE,',
'        :P45_NXT_LOCATION,',
'        :P45_NXT_LOCATION_DESC,',
'        :P45_NXT_LOCATION_DESC_1,',
'        :P45_MAIN_EXPORT_UNIT_NXT,',
'        :P45_MAIN_IMPORT_UNIT_NXT,',
'        :P45_MAIN_NET_EXPORT_UNIT_NXT,',
'        :P45_NXT_MAIN_MTR_INSTALL,',
'',
'        :P45_CHECK_EXPORT_UNIT_NXT,',
'        :P45_CHECK_IMPORT_UNIT_NXT,',
'        :P45_CHECK_NET_EXPORT_UNIT_NXT,',
'        :P45_NXT_CHECK_MTR_INSTALL',
'',
'        FROM  DT_JMR',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P45_PPA_NO',
'        AND   DT_PPA_DATE = :P45_PPA_DATE',
'        AND NU_METERING_POINT_ID = :P45_METERING_POINT+1',
'        and CH_AUTH_FLAG =''Y'';',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
' ',
' BEGIN',
'        SELECT ',
'        NU_METERING_POINT_ID,',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc1,',
'',
'        NU_MAIN_EXP_NET_UNIT,',
'        NU_MAIN_IMP_NET_UNIT,',
'        NU_MAIN_NET_EXP_UNIT,',
'        CH_MAIN_METER_WORKING,',
'        ',
'        NU_CHK_EXP_NET_UNIT,',
'        NU_CHK_IMP_NET_UNIT, ',
'        NU_CHK_NET_EXP_UNIT,',
'        CH_CHK_METER_WORKING',
'      ',
'    ',
'        INTO ',
'        :P45_PRV_LOCATION,',
'        :P45_PRV_LOCATION_DESC,',
'        :P45_PRV_LOCATION_DESC_1,',
'',
'        :P45_MAIN_EXPORT_UNIT_PRV,',
'        :P45_MAIN_IMPORT_UNIT_PRV,',
'        :P45_MAIN_NET_EXPORT_UNIT_PRV,',
'        :P45_PRV_MAIN_MTR_INSTALL,',
'',
'        :P45_CHECK_EXPORT_UNIT_PRV,',
'        :P45_CHECK_IMPORT_UNIT_PRV,',
'        :P45_CHECK_NET_EXPORT_UNIT_PRV,',
'        :P45_PRV_CHECK_MTR_INSTALL',
'',
'        FROM  DT_JMR',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'        AND   VC_PPA_NO   = :P45_PPA_NO',
'        AND   DT_PPA_DATE = :P45_PPA_DATE',
'        AND NU_METERING_POINT_ID = :P45_METERING_POINT-1',
'        and CH_AUTH_FLAG =''Y'';',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
'    ',
'    IF :P45_NXT_MAIN_MTR_INSTALL = ''Y'' THEN',
'',
'       :P45_TRANSMISSION_LOSS := ABS((:P45_MAIN_NET_EXPORT_UNIT_PRV- :P45_MAIN_NET_EXPORT_UNIT_NXT) *0.3542);',
'       :P45_NET_EXP_UNIT := :P45_MAIN_NET_EXPORT_UNIT_PRV- :P45_TRANSMISSION_LOSS ;',
'       :P45_ENERGY_AMOUNT := :P45_NET_EXP_UNIT  * :P45_RATE;',
'    ELSE',
'     :P45_TRANSMISSION_LOSS := ABS((:P45_CHECK_NET_EXPORT_UNIT_PRV- :P45_CHECK_NET_EXPORT_UNIT_NXT) *0.3542);',
'      :P45_NET_EXP_UNIT := :P45_CHECK_NET_EXPORT_UNIT_PRV- :P45_TRANSMISSION_LOSS ;',
'       :P45_ENERGY_AMOUNT := :P45_NET_EXP_UNIT  * :P45_RATE;',
'    END IF',
'    ;',
'   ',
'',
'END IF;',
'',
':P45_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18247419202254615)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get other charges from PPA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount number;',
' v_unit number;',
'',
'begin',
'/*',
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
'AND   VC_JMR_NO = :P45_JMR_NO',
'AND   DT_JMR_DATE = :P45_JMR_DATE;',
' */',
'',
'v_unit    :=  :P45_NET_EXP_UNIT ;',
'V_AMOUNT  :=  :P45_ENERGY_AMOUNT;',
'  ',
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
'                AND  VC_PPA_NO  = :P45_PPA_NO',
'                and  dt_ppa_date = :P45_PPA_DATE) ',
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
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18246989877254614)
,p_process_sequence=>30
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
'    :P45_OTHER_CHARGE := to_number(''0'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'',
'Select ',
'nvl(sum(to_number(c004)),0)',
'into    :P45_OTHER_CHARGE',
'from    apex_collections ',
'where   COLLECTION_NAME=''OTHER_CHARGE''; ',
'END IF;',
'',
'/*',
'IF :P45_MAIN_METER_WORK = ''Y'' then',
':P45_MAIN_AMOUNT := nvl(:P45_MAIN_NET_EXP_UNIT,0)* :P45_RATE ;',
':P45_ENERGY_AMOUNT := :P45_MAIN_AMOUNT;',
'ELSE',
':P45_CHECK_AMOUNT:= nvl(:P45_CHECK_NET_EXP_UNIT,0)* :P45_RATE ;',
':P45_ENERGY_AMOUNT := :P45_CHECK_AMOUNT;',
'END IF;',
'*/',
'',
':P45_SUB_AMOUNT := nvl(TO_NUMBER(REPLACE(:P45_ENERGY_AMOUNT,'','','''')),0) + NVL(TO_NUMBER(REPLACE(:P45_OTHER_CHARGE,'','','''')),0);',
'',
'',
' :P45_TCS_AMOUNT := 0;',
'',
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P45_CUSTOMER_CODE) ; ',
'',
'IF v_tcs_flag = ''Y'' then',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P45_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P45_ITEM_CODE, ',
'                                             :P45_CUSTOMER_CODE,:P45_INVOICE_ID,NULL,''1153'' ,replace(:P45_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    ',
'    :P45_TAX_RULE_ID := V_TAX_RULE_ID;',
'',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'',
'    :P45_TCS_PER := V_TCS_PER;',
'    :P45_TAX_ID  := V_TAX_ID;',
'    :P45_TCS_COA  := v_tcs_coa;',
'    ',
'',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P45_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'',
'    if v_amount > 5000000 then',
'            v_tcs_amount := :P45_SUB_AMOUNT;',
'            :P45_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'    else',
'        if v_amount+:P45_SUB_AMOUNT-5000000 < 0 then',
'            v_tcs_amount := 0;',
'             :P45_TCS_AMOUNT := 0;',
'            ',
'        else',
'        v_tcs_amount := v_amount+:P45_SUB_AMOUNT-5000000; ',
'        :P45_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'        end if;',
'    end if;',
'',
'end if;',
'',
':P45_TAX_AMOUNT  :=  0;',
':P45_NET_AMOUNT := replace(nvl(:P45_SUB_AMOUNT,0),'','','''') + replace(NVL(:P45_TCS_AMOUNT,0) ,'','','''');',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18246656885254614)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info on edit/view mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'VC_PPA_NO, DT_PPA_DATE, VC_JMR_NO, DT_JMR_DATE, EO_ID, COA_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID,',
'ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, ',
'/*',
'VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, NU_MAIN_EXP_CUR_READING, ',
'NU_MAIN_EXP_DIFFERNCE, NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, CH_MAIN_METER_WORKING, ',
'VC_MAIN_METER_REMARKS, NU_MAIN_AMOUNT, ',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING, NU_CHK_EXP_DIFFERNCE,NU_CHK_EXP_FACTOR, NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, NU_CHK_IMP_PRV_READING, NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, ',
'NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, VC_CHK_METER_REMARKS,',
'NU_CHECK_AMOUNT,*/ VC_REMARKS, ',
'CH_OPTION, NU_TRNS_LOSS_PER, NU_TRANS_LOSS, NU_NET_EXP_UNIT, NU_PRV_METERING_LOC, NU_PRV_MAIN_EXP_UNIT, NU_PRV_MAIN_IMP_UNIT, NU_PRV_NET_MAIN_EXP_UNIT, ',
'vc_PRV_MAIN_MTR_WRK, NU_PRV_CHK_EXP_UNIT, NU_PRV_CHK_IMP_UNIT, NU_PRV_NET_CHK_EXP_UNIT, vc_PRV_CHK_MTR_WRK, NU_NXT_METERING_LOC, NU_NXT_MAIN_EXP_UNIT, ',
'NU_NXT_MAIN_IMP_UNIT, NU_NXT_NET_MAIN_EXP_UNIT, vc_NXT_MAIN_MTR_WRK, NU_NXT_CHK_EXP_UNIT, NU_NXT_CHK_IMP_UNIT, NU_NXT_NET_CHK_EXP_UNIT, vc_NXT_CHK_MTR_WRK,',
'',
'NU_ENERGY_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT, nu_tax_amount ,NU_NET_AMOUNT,nu_invoice_id,VC_TAX_APPLICABLE,',
'NU_TCS_COA, NU_TCS_TAX_ID, NU_TCS_AMOUNT, NU_TAX_RULE_ID, NU_TCS_PER',
'into',
':P45_PPA_NO,:P45_PPA_DATE,:P45_JMR_NO,:P45_JMR_DATE,:P45_CUSTOMER_CODE,:P45_CUST_COA_ID,:P45_BILLING_POINT,:P45_METERING_POINT,:P45_GRP_ID,',
':P45_ITEM_CODE,:P45_QTY,:P45_RATE,:P45_ITEM_DETAIL,:P45_ITM_COA_ID,',
'/*',
':P45_MAIN_METER_NO,:P45_MAIN_METER_LOC,:P45_MAIN_EXP_PREV_READ,:P45_MAIN_EXP_CURR_READ,',
':P45_MAIN_EXP_DIFFERENCE,:P45_MAIN_EXP_MULTI_FAC,:P45_MAIN_EXP_TOTAL_UNIT,:P45_MAIN_EXP_ADJUSMENT,:P45_MAIN_EXP_NET_UNIT,:P45_MAIN_IMP_PREV_READ,:P45_MAIN_IMP_CURR_READ,',
':P45_MAIN_IMP_DIFFERENCE,:P45_MAIN_IMP_MULTI_FAC,:P45_MAIN_IMP_TOTAL_UNIT,:P45_MAIN_IMP_ADJUSMENT,:P45_MAIN_IMP_NET_UNIT,:P45_MAIN_NET_EXP_UNIT,',
':P45_MAIN_METER_WORK,:P45_MAIN_METER_REMARK,:P45_MAIN_AMOUNT,',
':P45_CHECK_METER_NO,:P45_CHECK_METER_LOC,:P45_CHECK_EXP_PREV_READ,:P45_CHECK_EXP_CURR_READ,:P45_CHECK_EXP_DIFFERENCE,:P45_CHECK_EXP_MULTI_FAC,:P45_CHECK_EXP_TOTAL_UNIT,',
':P45_CHECK_EXP_ADJUSMENT,:P45_CHECK_EXP_NET_UNIT,:P45_CHECK_IMP_PREV_READ,:P45_CHECK_IMP_CURR_READ,:P45_CHECK_IMP_DIFFERENCE,',
':P45_CHECK_IMP_MULTI_FAC,:P45_CHECK_IMP_TOTAL_UNIT,:P45_CHECK_IMP_ADJUSMENT,:P45_CHECK_IMP_NET_UNIT,:P45_CHECK_NET_EXP_UNIT,:P45_CHECK_METER_WORK,',
':P45_CHECK_METER_REMARK,:P45_CHECK_AMOUNT,*/:P45_REMARKS,',
':P45_OPTION,:P45_LOSS_PER,:P45_TRANSMISSION_LOSS,:P45_NET_EXP_UNIT,:P45_PRV_LOCATION, :P45_MAIN_EXPORT_UNIT_PRV, :P45_MAIN_IMPORT_UNIT_PRV, :P45_MAIN_NET_EXPORT_UNIT_PRV,',
':P45_PRV_MAIN_MTR_INSTALL,:P45_CHECK_EXPORT_UNIT_PRV,:P45_CHECK_IMPORT_UNIT_PRV,:P45_CHECK_NET_EXPORT_UNIT_PRV,:P45_PRV_CHECK_MTR_INSTALL,:P45_NXT_LOCATION,:P45_MAIN_EXPORT_UNIT_NXT,',
':P45_MAIN_IMPORT_UNIT_NXT,:P45_MAIN_NET_EXPORT_UNIT_NXT,:P45_NXT_MAIN_MTR_INSTALL,:P45_CHECK_EXPORT_UNIT_NXT,:P45_CHECK_IMPORT_UNIT_NXT,:P45_CHECK_NET_EXPORT_UNIT_NXT,:P45_NXT_CHECK_MTR_INSTALL,',
'',
'',
'',
':P45_ENERGY_AMOUNT,:P45_OTHER_CHARGE,:P45_SUB_AMOUNT,:P45_TAX_AMOUNT,:P45_NET_AMOUNT,:P45_INVOICE_ID,:P45_TAX_APPLICABLE,',
':P45_TCS_COA,:P45_TAX_ID,:P45_TCS_AMOUNT , :P45_TAX_RULE_ID , :P45_TCS_PER',
'',
'from DT_INVOICE_JMR',
'where ORG_ID          = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P45_INVOICE_NO',
'and DT_INVOICE_DATE = :P45_INVOICE_DATE;',
'',
'',
'',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
' --      get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) Metering_loc,',
' --      get_energy_flow_loc(ORG_ID,PRJ_ID,NU_CHK_METER_LOC_ID) Metering_loc',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_PRV_METERING_LOC) Metering_loc, ',
'        get_energy_flow_loc(ORG_ID,PRJ_ID,NU_NXT_METERING_LOC) Metering_loc1',
'',
'into   :P45_CUSTOMER_NAME,',
'       :P45_BILLING_POINT_DESC,',
'       :P45_METERING_POINT_DESC,',
'       :P45_ITEM_DESC,',
'       :P45_UOM,',
' --      :P45_MAIN_METER_LOC_DESC,',
' --      :P45_CHECK_METER_LOC_DESC',
'         :P45_PRV_LOCATION_DESC_1,',
'',
'         :P45_NXT_LOCATION_DESC_1',
'  ',
'from DT_INVOICE_JMR',
'where ORG_ID          = :GLOBAL_COMP_CODE',
'and PRJ_ID          = :GLOBAL_PROJ_ID',
'and VC_INVOICE_NO   = :P45_INVOICE_NO',
'and DT_INVOICE_DATE = :P45_INVOICE_DATE;',
'',
' :P45_PRV_LOCATION_DESC  := :P45_PRV_LOCATION_DESC_1 ;',
' :P45_NXT_LOCATION_DESC :=  :P45_NXT_LOCATION_DESC_1;',
'',
'',
'',
'',
'',
'',
'if :P45_MODE = ''V'' then',
'',
'',
':P45_ENERGY_AMOUNT  := ltrim(to_char(:P45_ENERGY_AMOUNT,''999G999G999G999G990D0000''));',
':P45_OTHER_CHARGE   := ltrim(to_char(:P45_OTHER_CHARGE,''999G999G999G999G990D0000''));',
':P45_SUB_AMOUNT     := ltrim(to_char(:P45_SUB_AMOUNT,''999G999G999G999G990D0000''));',
':P45_TAX_AMOUNT     := ltrim(to_char(:P45_TAX_AMOUNT,''999G999G999G999G990D0000''));',
':P45_NET_AMOUNT     := ltrim(to_char(:P45_NET_AMOUNT,''999G999G999G999G990D0000''));',
':P45_CHECK_AMOUNT   := ltrim(to_char(:P45_CHECK_AMOUNT,''999G999G999G999G990D0000''));',
':P45_MAIN_AMOUNT    := ltrim(to_char(:P45_MAIN_AMOUNT,''999G999G999G999G990D0000''));',
':P45_TCS_AMOUNT    := ltrim(to_char(:P45_TCS_AMOUNT,''999G999G999G999G990D0000''));',
':P45_TRANSMISSION_LOSS    := ltrim(to_char(:P45_TRANSMISSION_LOSS,''999G999G999G999G990D00''));',
':P45_NET_EXP_UNIT    := ltrim(to_char(:P45_NET_EXP_UNIT,''999G999G999G999G990D00''));',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18248618246254616)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info of attachment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P45_INVOICE_NO ',
'               AND   DT_DOC_DATE   = :P45_INVOICE_DATE',
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
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18245848267254613)
,p_process_sequence=>60
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
'      AND   VC_INVOICE_NO   = :P45_INVOICE_NO ',
'      AND   DT_INVOICE_DATE = :P45_INVOICE_DATE   ;',
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
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18249816800254617)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection On JMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18248211701254615)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P45_WKF_STAGE',
'from  DT_INVOICE_JMR',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P45_INVOICE_NO',
'and  DT_INVOICE_DATE = :P45_INVOICE_DATE;',
'exception when no_data_found then :P45_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18247817732254615)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P45_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P45_INVOICE_NO',
'AND      DT_DOC_DATE = :P45_INVOICE_DATE',
'AND      VC_DOC_TYPE  = ''IJMR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P45_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
