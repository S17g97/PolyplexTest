prompt --application/pages/page_00044
begin
--   Manifest
--     PAGE: 00044
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
 p_id=>44
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice-exchange'
,p_alias=>'INVOICE-EXCHANGE'
,p_step_title=>'Invoice-exchange'
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
'',
'$(".addzero").on("keypress keyup blur",function (event) {',
'         var text1 = $(this).val();',
'         if (text1 == ''.''){',
'             $(this).val(''0.00'');',
'',
'         }',
'       });',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230913123806'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24648230375742365)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(21696376993962149)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(24648230375742365)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>70
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
 p_id=>wwv_flow_api.id(21696248794962148)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>40049116182224473
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1277787585103704)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1277366692103704)
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
 p_id=>wwv_flow_api.id(1277008638103705)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1276605079103705)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1276140206103706)
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
,p_display_condition=>'P44_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1275737826103706)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download'
,p_column_link=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GETFILE:&DEBUG.:RP,:FILE_ID:#C003#'
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
 p_id=>wwv_flow_api.id(21689494335949416)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'76780'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24977834652886474)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24877459058260301)
,p_plug_name=>'OTHER CHARGES REPORTS'
,p_parent_plug_id=>wwv_flow_api.id(24977834652886474)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
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
,p_prn_page_header=>'OTHER CHARGES REPORTS'
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
 p_id=>wwv_flow_api.id(24877328994260300)
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
,p_internal_uid=>43230196381522625
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1274075144103709)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_CHARGE_ID,P39_MODE,P39_SCHEDULE_AMOUNT,P39_SCHEDULE_UNIT:#CHARGE_ID#,E,\&P38_SCHEDULE_AMOUNT.\,&P38_SCHEDULE_UNIT.'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P44_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1273665104103709)
,p_db_column_name=>'CHARGE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Charge Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15924160876825127)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1273304862103710)
,p_db_column_name=>'CHARGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Charge Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16005262649557334)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1272869757103710)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1272511654103711)
,p_db_column_name=>'AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1272048187103711)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1271655074103712)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1271275330103712)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(24691668435603315)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'76548'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:AMOUNT:REMARKS:ACCOUNT_CODE:CHARGE_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24978187974886477)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P44_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24404187116934502)
,p_plug_name=>'Main info detail'
,p_parent_plug_id=>wwv_flow_api.id(24978187974886477)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24977942479886475)
,p_plug_name=>'Amount Calculator'
,p_parent_plug_id=>wwv_flow_api.id(24978187974886477)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24978030085886476)
,p_plug_name=>'Item detail'
,p_parent_plug_id=>wwv_flow_api.id(24978187974886477)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24978350569886479)
,p_plug_name=>'Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(24980873758886504)
,p_plug_name=>'Invoice-Exchange'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(278767665732384151)
,p_plug_name=>'Invoice Notes'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(278767799111384152)
,p_plug_name=>'notes'
,p_parent_plug_id=>wwv_flow_api.id(278767665732384151)
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
' where COLLECTION_NAME=''INVOICE_NOTES_EXC''',
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
 p_id=>wwv_flow_api.id(278767864689384153)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>297120732076646478
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1279492274103701)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:80:P80_DOC_DATE,P80_DOC_ID,P80_MODE,P80_SERIAL_NO,P80_ALPHA:#DOC_DATE#,#DOC_ID#,E,#SERIAL_NO#,#ALPHA#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P44_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1279861248103701)
,p_db_column_name=>'DOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1280307380103700)
,p_db_column_name=>'DOC_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doc Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1280706252103700)
,p_db_column_name=>'INVOICE_NOTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Invoice Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1281052562103699)
,p_db_column_name=>'SERIAL_NO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Serial No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1281455569103699)
,p_db_column_name=>'ALPHA'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Alpha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(278795315631756266)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'521139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:SERIAL_NO:INVOICE_NOTE:ALPHA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1246686203103744)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24978187974886477)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'http://103.234.186.89:7003/ebiz/reports/salesreportservlet?tab=&golink=Report&ReportType=PDF&organisation=&GLOBAL_COMP_CODE.&ccLbl=&ccVal=&RptDesc=&multiOrg=&whid=&tracktype=&atttype=%5B%5D&attval=%5B%5D&UsrId=1&bsport=&structid=&structloc=&structlbl=&cldid=0000&hoorgid=&GLOBAL_PARENT_COMP.&slocid=1&currtype=2&uomtype=1&todate=&P44_INV_SCH_DATE.&fromdate=&catid=&status= &eoid=&salesman=&itmgrp=&itmName=&currid=&formstatus=&fileName=&P44_FILE_NAME.&bgcolor=D&head=D&margin=Y&docno=&P44_INV_SCH_NO.&todocno=&logo=Org-logo.png&eogrp=&lblid=&lblval=&cntry=&topn=&topnto=&prjDocId=&GLOBAL_PROJ_ID.&slstype=&basis=&invtype=&grpLvlThree=&grpLvlTwo=&grpLvlOne=&fileDisplayName=JMR%20Detail%20Report%20Exchange&multiProj='
,p_button_condition=>'P44_MODE'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1247077529103743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24978187974886477)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P44_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_AUTH_FLAG,P25_LAST_PAGE:&P44_REQ_NO.,&P44_INV_SCH_NO.,&P44_INV_SCH_DATE.,IEX,&P44_AUTH_FLAG.,&P44_LAST_PAGE.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1247366844103743)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(24978187974886477)
,p_button_name=>'cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1247801898103742)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(24978187974886477)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P44_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1270590368103714)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24977834652886474)
,p_button_name=>'Add_charges'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add '
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P44_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1275086921103707)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(24648230375742365)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P44_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1278816030103702)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(278767665732384151)
,p_button_name=>'ADD5'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:80:&SESSION.::&DEBUG.:80:P80_MODE:A'
,p_button_condition=>'P44_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1320382131103656)
,p_branch_name=>'Go To Page43'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1247801898103742)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1319942732103656)
,p_branch_name=>'Go To Page 39'
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:P39_MODE,P39_SCHEDULE_UNIT,P39_SCHEDULE_AMOUNT:A,&P44_SCHEDULE_UNIT.,\&P44_SCHEDULE_AMOUNT.\&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1270590368103714)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1319589553103656)
,p_branch_name=>'Go To Page 43'
,p_branch_action=>'f?p=&APP_ID.:43:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1247366844103743)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1248215520103741)
,p_name=>'P44_LABEL_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P44_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1248577016103741)
,p_name=>'P44_AUTH_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1248950175103740)
,p_name=>'P44_LAST_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1249367316103740)
,p_name=>'P44_WKF_STAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1249766634103739)
,p_name=>'P44_REQ_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1250180603103739)
,p_name=>'P44_INVOICE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1250565490103738)
,p_name=>'P44_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1250946635103738)
,p_name=>'P44_INV_SCH_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Presentation date'
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
 p_id=>wwv_flow_api.id(1251383669103737)
,p_name=>'P44_INV_SCH_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24978187974886477)
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
 p_id=>wwv_flow_api.id(1252045358103736)
,p_name=>'P44_ITEM_DETAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
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
 p_id=>wwv_flow_api.id(1252506464103735)
,p_name=>'P44_RATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_prompt=>'Rate'
,p_format_mask=>'999G999G999G999G990D00'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1252851413103735)
,p_name=>'P44_QTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1253286636103734)
,p_name=>'P44_SCHEDULE_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_item_default=>'0'
,p_prompt=>'Schedule Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(1253713166103734)
,p_name=>'P44_UOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_prompt=>'Uom'
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
 p_id=>wwv_flow_api.id(1254050195103733)
,p_name=>'P44_ITEM_COA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(1254492211103733)
,p_name=>'P44_ITEM_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
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
 p_id=>wwv_flow_api.id(1254868974103732)
,p_name=>'P44_ITEM_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1255298502103732)
,p_name=>'P44_GRP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1255717012103731)
,p_name=>'P44_SUBJECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24978030085886476)
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
'AND :P44_MODE <> ''V''',
'UNION ALL',
'select ',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'--AND CH_ACTIVE = ''Y''',
'AND :P44_MODE = ''V'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1256364517103730)
,p_name=>'P44_TRADING_APPLICABLE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1256763529103729)
,p_name=>'P44_NET_EX_BUS'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1257221615103729)
,p_name=>'P44_GROSS_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_prompt=>'Gross Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1257578907103728)
,p_name=>'P44_TRADING_MARGIN'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_prompt=>'Trading Margin'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1257934812103728)
,p_name=>'P44_REMARK'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
,p_cHeight=>2
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1258353655103728)
,p_name=>'P44_TCS_COA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1258813056103727)
,p_name=>'P44_TAX_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1259132702103727)
,p_name=>'P44_TCS_PER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1259611800103726)
,p_name=>'P44_TAX_RULE_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1260002172103726)
,p_name=>'P44_NET_AMOUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_item_default=>'0'
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
 p_id=>wwv_flow_api.id(1260413128103725)
,p_name=>'P44_TCS_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_item_default=>'0'
,p_prompt=>'TCS Amount'
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
 p_id=>wwv_flow_api.id(1260736120103725)
,p_name=>'P44_TAX_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_item_default=>'0'
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
 p_id=>wwv_flow_api.id(1261137753103724)
,p_name=>'P44_SUB_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_item_default=>'0'
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
 p_id=>wwv_flow_api.id(1261596513103724)
,p_name=>'P44_OTHER_CHARGE_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
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
 p_id=>wwv_flow_api.id(1261937170103723)
,p_name=>'P44_SCHEDULE_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_item_default=>'0'
,p_prompt=>'Schedule Amount'
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
 p_id=>wwv_flow_api.id(1262382212103723)
,p_name=>'P44_TAX_APPLICABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
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
 p_id=>wwv_flow_api.id(1262744920103722)
,p_name=>'P44_AMT_IN_WORDS'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(24977942479886475)
,p_prompt=>'Amount In Words'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1263468127103721)
,p_name=>'P44_FILE_NAME'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_item_default=>'SLS_Inv_JMR_Dtl_Report_Exchange'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1263883796103721)
,p_name=>'P44_EXHANGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Exhange Name'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''E''',
'AND   ch_active = ''Y''',
'and  :P44_MODE <> ''V''',
'union all',
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''E''',
'and  :P44_MODE = ''V'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1264244635103720)
,p_name=>'P44_MARKET'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Market'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''M''',
'AND   ch_active = ''Y''',
'and  :P44_MODE <> ''V''',
'union all',
'SELECT VC_CODE_DESC D, VC_CODE R',
'FROM MST_CODE',
'WHERE ORG_ID =:GLOBAL_PARENT_COMP',
'AND   VC_CODE_TYPE = ''M''',
'and  :P44_MODE = ''V'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1264716302103720)
,p_name=>'P44_SURCHARGE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Surcharge Date'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1265050994103719)
,p_name=>'P44_PAYMENT_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Payment Due Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1265436149103719)
,p_name=>'P44_SCH_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1265908901103719)
,p_name=>'P44_SCH_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1266287520103718)
,p_name=>'P44_CUST_COA_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1266647018103718)
,p_name=>'P44_CUSTOMER_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Customer Name'
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
 p_id=>wwv_flow_api.id(1267049263103717)
,p_name=>'P44_CUSTOMER_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1267492811103717)
,p_name=>'P44_BILL_TO_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Bill To Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(1267855925103717)
,p_name=>'P44_BILL_FROM_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'Bill From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_14=>'P44_BILL_TO_DATE'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1268310002103716)
,p_name=>'P44_PPA_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'PPA Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(1268707744103716)
,p_name=>'P44_PPA_NO_TEMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1269050831103715)
,p_name=>'P44_PPA_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_prompt=>'PPA No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_INV_IEX'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''I''',
'and  ch_auth_flag = ''Y''',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_10=>'D:P44_PPA_NO_TEMP,DT_PPA_DATE:P44_PPA_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1269491957103715)
,p_name=>'P44_ERROR'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1269870704103715)
,p_name=>'P44_SURCHARGE_DATE_ACT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(24404187116934502)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1291499445103690)
,p_validation_name=>'PPA NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P44_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA No'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1291095987103690)
,p_validation_name=>'PPA DATE'
,p_validation_sequence=>20
,p_validation=>'P44_PPA_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PPA Date Not found. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1290678149103690)
,p_validation_name=>'BILL FROM DATE NOT NULL'
,p_validation_sequence=>30
,p_validation=>'P44_BILL_FROM_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Bill from Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1290310448103691)
,p_validation_name=>'BILL TO DATE NOT NULL'
,p_validation_sequence=>40
,p_validation=>'P44_BILL_TO_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To Date cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1289857642103691)
,p_validation_name=>'CUSTOMER NOT NULL'
,p_validation_sequence=>50
,p_validation=>'P44_CUSTOMER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer not found. contact system administration'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1289514948103691)
,p_validation_name=>'PAYMENT DUE DATE NOT NULL'
,p_validation_sequence=>60
,p_validation=>'P44_PAYMENT_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Payment Due Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1289099993103692)
,p_validation_name=>'SURCHARGE DATE NOT NULL'
,p_validation_sequence=>70
,p_validation=>'P44_SURCHARGE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Surcharge Date cannot be null'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1288654672103692)
,p_validation_name=>'ITEM NAME NOT NULL'
,p_validation_sequence=>80
,p_validation=>'P44_ITEM_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1288246285103692)
,p_validation_name=>'UOM  NOT NULL'
,p_validation_sequence=>90
,p_validation=>'P44_UOM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'UOM Cannot be null. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1287898301103693)
,p_validation_name=>'SCHDULED UNIT NOT NULL'
,p_validation_sequence=>100
,p_validation=>'P44_SCHEDULE_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule Unit cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1287527620103693)
,p_validation_name=>'RATE CANNOT BE NULL'
,p_validation_sequence=>110
,p_validation=>'P44_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1287068609103693)
,p_validation_name=>'ITEM DETAIL NOT NULL'
,p_validation_sequence=>120
,p_validation=>'P44_ITEM_DETAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Detail Cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1286684352103694)
,p_validation_name=>'CHECK FINANCIAL YEAR OPEN OR NOT'
,p_validation_sequence=>130
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
'       and      :P44_INV_SCH_DATE  BETWEEN FY_STRT AND  FY_END ;',
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
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1286292307103694)
,p_validation_name=>'PROJ PREFIX EXIST OR NOT'
,p_validation_sequence=>140
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
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1285855151103694)
,p_validation_name=>'NET AMOUNT NOT NULL'
,p_validation_sequence=>150
,p_validation=>'P44_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1260002172103726)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1285467636103695)
,p_validation_name=>'SUB AMOUNT NOT NULL'
,p_validation_sequence=>160
,p_validation=>'P44_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub Amount Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1261137753103724)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1285097657103695)
,p_validation_name=>'SCHEDULE AMOUNT NOT NULL OR ZERO'
,p_validation_sequence=>170
,p_validation=>'P44_SCHEDULE_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1261937170103723)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1284685618103695)
,p_validation_name=>'TCS COA NOT NULL'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P44_TCS_AMOUNT > 0 AND :P44_TCS_COA IS NULL THEN',
'RETURN ''Accocunt of TCS Not found. Contact System Administration  '';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1260413128103725)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1284232691103696)
,p_validation_name=>'ITEM COA NOT NULL'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P44_ITEM_COA is null then',
'return ''Account of item not found. Contact System Administartion'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1283927711103696)
,p_validation_name=>'CUSTOMER COA NOT NULL'
,p_validation_sequence=>200
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P44_CUST_COA_ID IS NULL THEN',
'',
'RETURN ''Account of customer not Found. Contact System Administration'';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1266647018103718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1292668552103689)
,p_validation_name=>'payment date greater than bill to date'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P44_PAYMENT_DUE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:P44_BILL_TO_DATE,''DD-MM-YYYY'') THEN',
' RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Payment due date cannot be less than Bill to date.'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1265050994103719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1292237231103689)
,p_validation_name=>'Surcharge date greater than bill to date'
,p_validation_sequence=>220
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P44_SURCHARGE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:P44_BILL_TO_DATE,''DD-MM-YYYY'') THEN',
' RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Surcharge date cannot be less than Bill to date.'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1264716302103720)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1291890371103689)
,p_validation_name=>'Check From date and to exists '
,p_validation_sequence=>230
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'select count(*)',
'INTO v_check',
'from DT_INV_IEX',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and   vc_ppa_no = :P44_PPA_NO',
'and   dt_ppa_date = :P44_PPA_DATE',
'AND   DT_BILL_FROM BETWEEN :P44_BILL_FROM_DATE AND :P44_BILL_TO_DATE',
'or   DT_BILL_TO  BETWEEN :P44_BILL_FROM_DATE AND :P44_BILL_TO_DATE',
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
,p_error_message=>'Invoice is already Create For this Period.Choose another Period'
,p_validation_condition=>'P44_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1283069335103697)
,p_validation_name=>'exchange name not null'
,p_validation_sequence=>240
,p_validation=>'P44_EXHANGE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Exchange Name'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1283513129103696)
,p_validation_name=>'market not null'
,p_validation_sequence=>250
,p_validation=>'P44_MARKET'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Select Market'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1293047279103688)
,p_validation_name=>'Surcharge date greater than purchage to date'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P44_SURCHARGE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:P44_PAYMENT_DUE_DATE  ,''DD-MM-YYYY'') THEN ',
'RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Surcharge date cannot be less than Payment  date.'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_associated_item=>wwv_flow_api.id(1264716302103720)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1282730046103697)
,p_validation_name=>'Tax Rule ID'
,p_validation_sequence=>270
,p_validation=>'P44_TAX_ID'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Tax ID Not found for this Customer.'
,p_validation_condition=>'P44_TAX_APPLICABLE'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1282276281103697)
,p_validation_name=>'invoice notes'
,p_validation_sequence=>280
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'chk number;',
'',
'',
'begin',
'',
'  SELECT count(*) into chk FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES_EXC'';',
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
,p_when_button_pressed=>wwv_flow_api.id(1247801898103742)
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
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1299821643103679)
,p_name=>'GET INFO FROM PPA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PPA_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1300278408103678)
,p_event_id=>wwv_flow_api.id(1299821643103679)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select EO_ID , get_cust_name(org_id,EO_ID)cust_name, ',
'       ITM_ID ,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,GRP_ID,',
'       NU_QTY,COA_ID,ITM_ID_COA,VC_TRADING_APPLICABLE',
'',
'into   :P44_CUSTOMER_CODE,:P44_CUSTOMER_NAME,',
'       :P44_ITEM_CODE ,:P44_ITEM_DESC,',
'       :P44_UOM,:P44_GRP_ID,',
'       :P44_QTY,:P44_CUST_COA_ID,:P44_ITEM_COA,',
'       :P44_TRADING_APPLICABLE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P44_PPA_NO',
'AND   DT_PPA_DATE = :P44_PPA_DATE;'))
,p_attribute_02=>'P44_PPA_NO,P44_PPA_DATE'
,p_attribute_03=>'P44_CUSTOMER_CODE,P44_CUSTOMER_NAME,P44_ITEM_CODE,P44_ITEM_DESC,P44_UOM,P44_GRP_ID,P44_QTY,P44_RATE,P44_CUST_COA_ID,P44_ITEM_COA,P44_TRADING_APPLICABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1300708057103677)
,p_name=>'get rate'
,p_event_sequence=>25
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_BILL_TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1301175851103677)
,p_event_id=>wwv_flow_api.id(1300708057103677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'GET_RATE (:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P44_PPA_NO,:P44_PPA_DATE,:P44_BILL_FROM_DATE,:P44_BILL_TO_DATE)AA',
'from dual;'))
,p_attribute_07=>'GLOBAL_COMP_CODE,GLOBAL_PROJ_ID,P44_PPA_NO,P44_PPA_DATE,P44_BILL_FROM_DATE,P44_BILL_TO_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1301608789103676)
,p_name=>'GET SCHEDULE UNIT SUM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_BILL_TO_DATE'
,p_condition_element=>'P44_BILL_TO_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1302105423103676)
,p_event_id=>wwv_flow_api.id(1301608789103676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ABS(NVL(SUM(NU_UNIT),0)), NVL(SUM(NU_IEX_TOTAL_AMT),0), round(NVL(SUM(NU_IEX_TOTAL_AMT),0)/ABS(NVL(SUM(NU_UNIT),0)),2)',
'INTO :P44_SCHEDULE_UNIT , :P44_SCHEDULE_AMOUNT , :P44_RATE',
'FROM DT_SCHEDULE',
'WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO = :P44_PPA_NO',
'AND   DT_PPA_DATE = :P44_PPA_DATE',
'and   vc_type = ''I''',
'and  ch_auth_flag = ''Y''',
'AND   DT_SCH_IEX_DATE BETWEEN :P44_BILL_FROM_DATE AND :P44_BILL_TO_DATE;',
'EXCEPTION WHEN OTHERS THEN  :P44_SCHEDULE_UNIT :=1;',
'END;'))
,p_attribute_02=>'P44_BILL_FROM_DATE,P44_BILL_TO_DATE,P44_PPA_NO,P44_PPA_DATE'
,p_attribute_03=>'P44_SCHEDULE_UNIT,P44_SCHEDULE_AMOUNT,P44_RATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1302455359103675)
,p_name=>'CALULATE SCHEDULE AMOUNT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_SCHEDULE_UNIT,P44_RATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1302947859103675)
,p_event_id=>wwv_flow_api.id(1302455359103675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_SCHEDULE_AMOUNT := NVL(ABS(:P44_SCHEDULE_UNIT),0)* NVL(:P44_RATE,0);'
,p_attribute_02=>'P44_SCHEDULE_UNIT,P44_RATE'
,p_attribute_03=>'P44_SCHEDULE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1303347505103675)
,p_name=>'refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1303869292103674)
,p_event_id=>wwv_flow_api.id(1303347505103675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(21696376993962149)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1304367466103673)
,p_event_id=>wwv_flow_api.id(1303347505103675)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24877459058260301)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1304894608103673)
,p_event_id=>wwv_flow_api.id(1303347505103675)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_OTHER_CHARGE_AMOUNT'
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
 p_id=>wwv_flow_api.id(1305359862103672)
,p_event_id=>wwv_flow_api.id(1303347505103675)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(278767799111384152)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1305801807103672)
,p_name=>'CALCULATE SUB AMOUNT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_OTHER_CHARGE_AMOUNT,P44_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1306257675103671)
,p_event_id=>wwv_flow_api.id(1305801807103672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_SUB_AMOUNT := NVL(REPLACE(:P44_SCHEDULE_AMOUNT,'','','''') ,0)+ NVL(REPLACE(:P44_OTHER_CHARGE_AMOUNT,'','','''') ,0);'
,p_attribute_02=>'P44_SCHEDULE_AMOUNT,P44_OTHER_CHARGE_AMOUNT'
,p_attribute_03=>'P44_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1306640384103671)
,p_name=>'GET TAX AMOUNT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_TAX_APPLICABLE'
,p_condition_element=>'P44_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1307165706103670)
,p_event_id=>wwv_flow_api.id(1306640384103671)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P44_TAX_AMOUNT  := 0;',
'',
'IF replace(:P44_TCS_AMOUNT ,'','','''')= 0 THEN',
':P44_TAX_RULE_ID := NULL;',
'',
'END IF;'))
,p_attribute_03=>'P44_TAX_AMOUNT,P44_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1307638569103670)
,p_event_id=>wwv_flow_api.id(1306640384103671)
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
'            and   EO_ID =:P44_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P44_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P44_ITEM_CODE, ',
'                            :P44_CUSTOMER_CODE,:P44_INVOICE_ID,NULL,''1153'' ,replace(:P44_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P44_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P44_INVOICE_ID, :P44_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P44_SUB_AMOUNT,'','',''''),replace(:P44_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P44_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P44_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P44_CUSTOMER_CODE,P44_INVOICE_ID,P44_ITEM_CODE,P44_CUST_COA_ID'
,p_attribute_03=>'P44_TAX_AMOUNT,P44_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1308080836103669)
,p_name=>'GET TAX AND TCS AMOUNT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_SUB_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1308553922103669)
,p_event_id=>wwv_flow_api.id(1308080836103669)
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
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P44_CUSTOMER_CODE) ; ',
'IF v_tcs_flag = ''Y'' then',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P44_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P44_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P44_ITEM_CODE, ',
'                                             :P44_CUSTOMER_CODE,:P44_INVOICE_ID,NULL,''1153'' ,replace(:P44_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    :P44_TAX_RULE_ID := V_TAX_RULE_ID;',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'if v_amount > 5000000 then',
'            v_tcs_amount := replace(:P44_SUB_AMOUNT,'','','''');',
'            :P44_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'            :P44_TCS_PER := V_TCS_PER;',
'            :P44_TAX_ID  := V_TAX_ID;',
'            :P44_TCS_COA  := v_tcs_coa;',
'    else',
'        if v_amount+replace(:P44_SUB_AMOUNT,'','','''')-5000000 < 0 then',
'            v_tcs_amount := 0;',
'            :P44_TCS_AMOUNT :=0;',
'            ',
'            :P44_TCS_PER := null;',
'            :P44_TAX_ID  := null;',
'            :P44_TCS_COA  := null;',
'      else',
'            v_tcs_amount := v_amount+replace(:P44_SUB_AMOUNT,'','','''')-5000000; ',
'            :P44_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'                :P44_TCS_PER := V_TCS_PER;',
'                :P44_TAX_ID  := V_TAX_ID;',
'                :P44_TCS_COA  := v_tcs_coa;',
'     end if;',
'    end if;',
'end if;',
'IF v_tcs_flag =''N'' THEN',
' :P44_TCS_AMOUNT := 0;',
'END IF;',
'if :P44_TAX_APPLICABLE = ''Y'' then',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P44_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P44_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P44_ITEM_CODE, ',
'                            :P44_CUSTOMER_CODE,:P44_INVOICE_ID,NULL,''1153'' ,replace(:P44_SUB_AMOUNT,'','',''''),0,0 );',
':P44_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES ( 1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P44_INVOICE_ID, :P44_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P44_SUB_AMOUNT,'','',''''),replace(:P44_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P44_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID );',
':P44_TAX_AMOUNT := v_amount;',
'end if;',
'if NVL(:P44_TAX_APPLICABLE ,''N'')= ''N'' then',
':P44_TAX_AMOUNT := 0;',
'END IF;',
':P44_NET_AMOUNT := replace(:P44_SUB_AMOUNT ,'','','''') + replace(nvl(:P44_TAX_AMOUNT,0),'','','''') +replace(:P44_TCS_AMOUNT,'','','''') ;',
'end;'))
,p_attribute_02=>'P44_CUSTOMER_CODE,P44_ITEM_CODE,P44_SUB_AMOUNT,P44_CUST_COA_ID,P44_INVOICE_ID,P44_TAX_AMOUNT,P44_TAX_APPLICABLE'
,p_attribute_03=>'P44_TCS_AMOUNT ,P44_NET_AMOUNT,P44_TAX_AMOUNT,P44_TAX_RULE_ID,P44_TCS_PER,P44_TAX_ID,P44_TCS_COA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1309024323103668)
,p_name=>'GET NET AMOUNT ON TAX AMOUNT CHANGE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1309523269103668)
,p_event_id=>wwv_flow_api.id(1309024323103668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_NET_AMOUNT := NVL(replace(:P44_SUB_AMOUNT ,'','',''''),0) +  NVL(replace(:P44_TAX_AMOUNT ,'','','''') ,0) + NVL(replace(:P44_TCS_AMOUNT ,'','','''') ,0);'
,p_attribute_02=>'P44_SUB_AMOUNT,P44_TAX_AMOUNT,P44_TCS_AMOUNT'
,p_attribute_03=>'P44_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1309869967103667)
,p_name=>'ADD CREATE OTHER CHARGE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1310347596103667)
,p_event_id=>wwv_flow_api.id(1309869967103667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
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
'                   (nvl(replace(:P44_SCHEDULE_AMOUNT,'','',''''),0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(abs(:P44_SCHEDULE_UNIT),0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P44_PPA_NO',
'                and  dt_ppa_date = :P44_PPA_DATE) ',
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
,p_attribute_02=>'P44_SCHEDULE_UNIT,P44_SCHEDULE_AMOUNT,P44_PPA_NO,P44_PPA_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1310907749103666)
,p_event_id=>wwv_flow_api.id(1309869967103667)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(24877459058260301)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1311389074103666)
,p_event_id=>wwv_flow_api.id(1309869967103667)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_OTHER_CHARGE_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'nvl(sum(to_number(c004)),0)',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; '))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1311780695103665)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>110
,p_condition_element=>'P44_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1312274200103665)
,p_event_id=>wwv_flow_api.id(1311780695103665)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1247077529103743)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P44_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1312699373103664)
,p_name=>'hide forward on add mode'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P44_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1313137095103664)
,p_event_id=>wwv_flow_api.id(1312699373103664)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1247077529103743)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1313562064103663)
,p_name=>'hide invoice no and date'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P44_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1314097695103663)
,p_event_id=>wwv_flow_api.id(1313562064103663)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P44_INV_SCH_NO,P44_INV_SCH_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1314465702103662)
,p_name=>'Get Trading margin'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_NET_AMOUNT'
,p_condition_element=>'P44_TRADING_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1314959350103662)
,p_event_id=>wwv_flow_api.id(1314465702103662)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_DEL_ID                 NUMBER;',
'V_METER_ID              NUMBER;',
'V_MAX_DOC_NO            NUMBER;',
'V_MIN_DOC_NO            NUMBER;',
'V_UNIT                  NUMBER;',
'V_TRANS_LOSS            NUMBER;',
'V_TOTAL_DELIVER_CHARGES NUMBER;',
'V_TOTAL_OTH_CHG        NUMBER;',
'V_OTH_CHRG              NUMBER;',
'V_NET_EX_BUS            NUMBER;',
' V_TOTAL_EX_BUS         NUMBER;',
' V_TRADE_MARGIN_PER     number;',
' v_type varchar2(2);',
'begin',
'',
'select ',
'NU_DELIVERY_POINT_ID,',
'NU_METERING_POINT_ID',
'INTO ',
'V_DEL_ID,',
'V_METER_ID',
'from MST_PPA',
'WHERE',
'ORG_ID  = :GLOBAL_COMP_CODE',
'AND PRJ_ID  = :GLOBAL_PROJ_ID',
'AND VC_PPA_NO = :P44_PPA_NO',
'AND  DT_PPA_DATE = :P44_PPA_DATE;',
'',
'Select max(NU_DOC_NO), ',
'       min(NU_DOC_NO)',
'INTO  V_MAX_DOC_NO,',
'V_MIN_DOC_NO',
'from DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   = :GLOBAL_PROJ_ID',
'and   NU_DOC_NO <= greatest(V_DEL_ID, V_METER_ID ) ',
'ORDER BY 1;',
'for I in (Select   NU_LOSS, NU_DELIVERY_CHARGES,NU_DOC_NO',
'                    from DT_ENERGY_FLOW',
'                    WHERE ORG_ID = :GLOBAL_COMP_CODE',
'                    AND   PRJ_ID   = :GLOBAL_PROJ_ID',
'                    and   NU_DOC_NO <= greatest(V_DEL_ID, V_METER_ID ) ',
'                    ORDER BY 3 desc)',
'loop',
'       IF V_MAX_DOC_NO = I.NU_DOC_NO THEN',
'          V_UNIT := :P44_SCHEDULE_UNIT;',
'          V_TRANS_LOSS := nvl(I.NU_LOSS,0);',
'       ELSIF       V_MAX_DOC_NO != I.NU_DOC_NO THEN',
'                V_UNIT := nvl(V_UNIT,0)/( nvl(1-V_TRANS_LOSS,0) /100);',
'                  V_TRANS_LOSS := nvl(I.NU_LOSS,0);',
'               END IF;',
'end loop;',
'',
'SELECT SUM(NU_DELIVERY_CHARGES)',
'INTO V_TOTAL_DELIVER_CHARGES',
'from DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   = :GLOBAL_PROJ_ID',
'and   NU_DOC_NO <= greatest(V_DEL_ID, V_METER_ID ) ;',
'',
'BEGIN',
'Select ',
'TO_NUMBER(SUM(c004))',
'INTO V_OTH_CHRG',
'from apex_collections ',
'where COLLECTION_NAME=''OTHER_CHARGE'';   ',
'EXCEPTION WHEN NO_DATA_FOUND THEN NULL;',
'END;',
'',
'V_TOTAL_OTH_CHG :=  NVL((V_OTH_CHRG/:P44_SCHEDULE_UNIT)/1000,0);',
'V_TOTAL_EX_BUS  := NVL(round(:P44_RATE-(nvl(V_TOTAL_DELIVER_CHARGES,0)+nvl(V_TOTAL_OTH_CHG,0)),2),0);',
':P44_NET_EX_BUS := V_TOTAL_EX_BUS;',
'',
'    BEGIN',
'                SELECT nvl(NU_TRADE_MARGIN,0),vc_type',
'                INTO V_TRADE_MARGIN_PER,v_type',
'                FROM DT_TRADING_MARGIN_PPA',
'                WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'                AND PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND VC_PPA_NO = :P44_PPA_NO',
'                AND  DT_PPA_DATE = :P44_PPA_DATE',
'                AND  VC_TYPE =1',
'                AND  NU_NET_EX_BUS >  V_TOTAL_EX_BUS;',
'                EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
'INSERT INTO ABC VALUES (V_TRADE_MARGIN_PER,''6'');',
'IF V_TRADE_MARGIN_PER IS NULL THEN',
'    BEGIN',
'            SELECT nvl(NU_TRADE_MARGIN,0),vc_type',
'            INTO V_TRADE_MARGIN_PER,v_type',
'            FROM DT_TRADING_MARGIN_PPA',
'            WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'            AND PRJ_ID  = :GLOBAL_PROJ_ID',
'            AND VC_PPA_NO = :P44_PPA_NO',
'            AND  DT_PPA_DATE = :P44_PPA_DATE',
'            AND  VC_TYPE =2',
'            AND  NU_NET_EX_BUS <  V_TOTAL_EX_BUS;',
'            EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
'END IF;',
'',
'    IF V_TRADE_MARGIN_PER IS NULL THEN',
'    ',
'    BEGIN',
'            SELECT nvl(NU_FIXED,0),vc_type',
'            INTO V_TRADE_MARGIN_PER,v_type',
'            FROM DT_TRADING_MARGIN_PPA',
'            WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'            AND PRJ_ID  = :GLOBAL_PROJ_ID',
'            AND VC_PPA_NO = :P44_PPA_NO',
'            AND  DT_PPA_DATE = to_date(:P44_PPA_DATE,''DD-MM-YYYY'')',
'            AND  VC_TYPE =3;',
'          --  AND  NU_NET_EX_BUS =  V_TOTAL_EX_BUS;',
'            EXCEPTION WHEN OTHERS THEN NULL;',
'    END;',
'END IF;',
'if v_type=''3'' then',
'V_NET_EX_BUS:=V_TRADE_MARGIN_PER;',
'else',
'V_NET_EX_BUS  := round( ( NVL(V_TOTAL_EX_BUS,0) * NVL(V_TRADE_MARGIN_PER,0))/100,2);',
'end if;',
'IF V_NET_EX_BUS > 0.07 THEN',
'',
':P44_TRADING_MARGIN := 0.07 * :P44_SCHEDULE_UNIT;',
'ELSE',
':P44_TRADING_MARGIN := V_NET_EX_BUS * :P44_SCHEDULE_UNIT;',
'END IF;',
'',
'end;'))
,p_attribute_02=>'P44_PPA_NO,P44_PPA_DATE,P44_SCHEDULE_UNIT,P44_RATE'
,p_attribute_03=>'P44_TRADING_MARGIN,P44_NET_EX_BUS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1315456085103661)
,p_event_id=>wwv_flow_api.id(1314465702103662)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_TRADING_MARGIN := 0;'
,p_attribute_03=>'P44_TRADING_MARGIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1315913688103661)
,p_name=>'calculate gross amount'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_TRADING_MARGIN'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1316337950103660)
,p_event_id=>wwv_flow_api.id(1315913688103661)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P44_GROSS_AMOUNT := NVL(replace(:P44_NET_AMOUNT ,'','',''''),0) -  NVL(replace(:P44_TRADING_MARGIN ,'','','''') ,0) ;'
,p_attribute_02=>'P44_NET_AMOUNT,,P44_TRADING_MARGIN'
,p_attribute_03=>'P44_GROSS_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1316744878103660)
,p_name=>'amount in words'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_GROSS_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1317309716103659)
,p_event_id=>wwv_flow_api.id(1316744878103660)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select spell_number(round(replace(:P44_GROSS_AMOUNT,'','','''')))  into :P44_AMT_IN_WORDS from dual;',
' exception when others then',
'null;',
'end;'))
,p_attribute_02=>'P44_GROSS_AMOUNT'
,p_attribute_03=>'P44_AMT_IN_WORDS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1317645543103659)
,p_name=>'surgecharge date'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_PAYMENT_DUE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1318228532103658)
,p_event_id=>wwv_flow_api.id(1317645543103659)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT to_date(:P44_INV_SCH_DATE,''dd/mm/yyyy'')+max(NU_DAYS) into :P44_SURCHARGE_DATE_ACT FROM DT_PPA_REBATE_SURCHARGE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND VC_PPA_NO = :P44_PPA_NO',
'AND DT_PPA_DATE = TO_DATE(:P44_PPA_DATE,''DD-MM-YYYY'')',
'and CH_TYPE = ''S'';',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P44_INV_SCH_DATE'
,p_attribute_03=>'P44_SURCHARGE_DATE_ACT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1318567256103658)
,p_name=>'Skip holiday'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P44_SURCHARGE_DATE_ACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1319084077103657)
,p_event_id=>wwv_flow_api.id(1318567256103658)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cnt number;',
'v_num number;',
'cnum number;',
'cdate date;',
'begin',
'/*select ',
'To_date(:P44_INV_SCH_DATE, ''DD/MM/YYYY'') + public_holidays(To_date(:P44_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P44_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into :P44_SURCHARGE_DATE ',
'from dual; ',
'begin',
'select public_holidays(To_date(:P44_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P44_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into cnt ',
'from dual; ',
'end; */',
'for i in 1..10 loop',
'',
'v_num := public_holidays(To_date(:P44_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P44_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE);',
':P44_PAYMENT_DUE_DATE := To_date(:P44_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'')+1;',
':P44_SURCHARGE_DATE_ACT := To_date(:P44_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'') + v_num;',
'',
'if nvl(v_num,0) = 0 then',
'exit;',
'end if;',
'end loop;',
'',
':P44_SURCHARGE_DATE := :P44_SURCHARGE_DATE_ACT;',
' ',
'--exception when others then null;',
'end;',
'',
''))
,p_attribute_02=>'P44_SURCHARGE_DATE_ACT'
,p_attribute_03=>'P44_SURCHARGE_DATE'
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1296947407103683)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code VARCHAR2(30);',
'v_prj_prefix varchar2(5);',
'V_STRT_YEAR DATE;',
'V_END_YEAR  DATE;',
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
'    begin',
'            select  -- lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'             nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1',
'            into  v_code ',
'            from DT_INV_IEX ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'          :P44_INV_SCH_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/E'' || v_code;',
'    ',
'    end;',
'',
'    if LENGTH(:P44_INV_SCH_NO) > 15 then',
'         apex_util.set_session_state(''P44_ERROR'', ''Invoice Number length geerate greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'',
'',
'',
'insert into DT_INV_IEX',
'(',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID, vc_remarks,VC_EXHANGE_NAME,VC_MARKET',
',VC_INV_SUBJECT,NU_TRADING_AMT,NU_NET_EX_BUS,NU_GROSS_AMOUNT,VC_TRADING_APPLICABLE',
')',
'values',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P44_INVOICE_ID,:P44_INV_SCH_NO, :P44_INV_SCH_DATE, :P44_PPA_NO, :P44_PPA_DATE, :P44_BILL_FROM_DATE, :P44_BILL_TO_DATE, :P44_CUSTOMER_CODE, :P44_CUST_COA_ID,',
':P44_PAYMENT_DUE_DATE, :P44_SURCHARGE_DATE, :P44_GRP_ID, :P44_ITEM_CODE, :P44_QTY,  replace(:P44_RATE,'','',''''), :P44_ITEM_DETAIL, :P44_ITEM_COA, :P44_SCHEDULE_UNIT, :P44_TAX_APPLICABLE,',
'replace(:P44_SCHEDULE_AMOUNT,'','',''''), replace(:P44_OTHER_CHARGE_AMOUNT,'','','''') , replace(:P44_SUB_AMOUNT,'','',''''), replace(:P44_TAX_AMOUNT,'','',''''), replace(:P44_TCS_AMOUNT,'','',''''), replace(:P44_NET_AMOUNT,'','',''''), :P44_TCS_COA, :P44_TCS_PER, :P44_TAX_'
||'RULE_ID,',
':P44_TAX_ID, :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_PARENT_COMP, :P44_REMARK,:P44_EXHANGE,:P44_MARKET',
',:P44_SUBJECT,replace(:P44_TRADING_MARGIN,'','',''''), :P44_NET_EX_BUS ,replace(:P44_GROSS_AMOUNT,'','','''') ,:P44_TRADING_APPLICABLE',
');',
'',
'',
'',
'',
'',
'    if :P44_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P44_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P44_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P44_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P44_ITEM_CODE, ',
'                                        :P44_CUSTOMER_CODE,:P44_INVOICE_ID,NULL,''1153'' ,replace(:P44_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P44_INVOICE_ID, :P44_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P44_SUB_AMOUNT,'','',''''),replace(:P44_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P44_CUST_COA_ID, NULL, ',
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
'                        AND DOC_ID        = :P44_INVOICE_ID',
'',
'            )',
'            LOOP',
'            BEGIN    ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'            exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while insert the data in SLS$SO$TR$LINES table'');',
'            END;',
'            END LOOP;',
'',
'        end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P44_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1296153991103684)
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
'BEGIN',
'',
'update DT_INV_IEX',
'set',
'VC_PPA_NO                   = :P44_PPA_NO,',
'DT_PPA_DATE                 = :P44_PPA_DATE,',
'DT_BILL_FROM                = :P44_BILL_FROM_DATE,',
'DT_BILL_TO                  = :P44_BILL_TO_DATE,',
'EO_ID                       = :P44_CUSTOMER_CODE,',
'COA_ID                      = :P44_CUST_COA_ID,',
'DT_PAY_DUE_DATE             = :P44_PAYMENT_DUE_DATE,',
'DT_SURCHARGE_DATE           = :P44_SURCHARGE_DATE,',
'GRP_ID                      = :P44_GRP_ID,',
'ITM_ID                      = :P44_ITEM_CODE,',
'NU_QTY                      = :P44_QTY,',
'NU_RATE                     = replace(:P44_RATE,'','',''''),',
'VC_ITEM_DETAIL              = :P44_ITEM_DETAIL,',
'ITM_ID_COA                  = :P44_ITEM_COA,',
'NU_SCHEDULE_UNIT            = :P44_SCHEDULE_UNIT,',
'VC_TAX_APPLICABLE           = :P44_TAX_APPLICABLE,',
'NU_SCHEDULE_AMOUNT          = replace(:P44_SCHEDULE_AMOUNT,'','',''''),',
'NU_OTHER_CHARGE_AMOUNT      = replace(:P44_OTHER_CHARGE_AMOUNT,'','',''''),',
'NU_SUB_AMOUNT               = replace(:P44_SUB_AMOUNT,'','',''''),',
'NU_TAX_AMOUNT               = replace(:P44_TAX_AMOUNT,'','',''''),',
'NU_TCS_AMOUNT               = replace(:P44_TCS_AMOUNT,'','',''''),',
'NU_NET_AMOUNT               = replace(:P44_NET_AMOUNT,'','',''''),',
'NU_TCS_COA                  = :P44_TCS_COA,',
'NU_TCS_PER                  = :P44_TCS_PER,',
'NU_TAX_RULE_ID              = :P44_TAX_RULE_ID,',
'NU_TCS_TAX_ID               = :P44_TAX_ID,',
'USR_ID_MOD_DT               = SYSDATE,',
'VC_REMARKS                  = :P44_REMARK,',
'VC_EXHANGE_NAME             = :P44_EXHANGE,',
'VC_MARKET                   = :P44_MARKET,',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'VC_INV_SUBJECT              = :P44_SUBJECT,',
'NU_TRADING_AMT              = replace(:P44_TRADING_MARGIN,'','',''''),',
'NU_NET_EX_BUS               = replace(:P44_NET_EX_BUS,'','',''''),',
'NU_GROSS_AMOUNT             = replace(:P44_GROSS_AMOUNT,'','',''''),',
'VC_TRADING_APPLICABLE       = :P44_TRADING_APPLICABLE',
'',
'where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P44_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P44_INV_SCH_DATE;',
'',
'',
'    if :P44_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'       ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P44_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P44_INVOICE_ID;',
'',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P44_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P44_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P44_ITEM_CODE, ',
'                                        :P44_CUSTOMER_CODE,:P44_INVOICE_ID,NULL,''1153'' ,replace(:P44_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P44_INVOICE_ID, :P44_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P44_SUB_AMOUNT,'','',''''),replace(:P44_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P44_CUST_COA_ID, NULL, ',
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
'                        AND DOC_ID        = :P44_INVOICE_ID',
'',
'            )',
'            LOOP',
'            BEGIN    ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'            exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while insert the data in SLS$SO$TR$LINES table'');',
'            END;',
'            END LOOP;',
'',
'        end if;',
' if :P44_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P44_INVOICE_ID;',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1296625892103683)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'other charges insert/update'
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
'IF :P44_MODE = ''E'' THEN',
'            DELETE FROM DT_OTHER_CHARGES_INV_IEX',
'             WHERE ORG_ID          = :GLOBAL_COMP_CODE ',
'             AND   PRJ_ID          = :GLOBAL_PROJ_ID ',
'             AND   VC_INVOICE_NO   = :P44_INV_SCH_NO ',
'             AND   DT_INVOICE_DATE = :P44_INV_SCH_DATE',
'             ;',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   insert into  DT_OTHER_CHARGES_INV_IEX',
'   (',
'     ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID,',
'     USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'  )',
'   values',
'   (',
'     :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P44_INV_SCH_NO,:P44_INV_SCH_DATE,I.C001,I.C002, I.C003,I.C004,I.C005,I.C006,',
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
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1294619441103686)
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
'IF :P44_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P44_INV_SCH_NO ',
'                            AND DT_DOC_DATE = :P44_INV_SCH_DATE',
'                            AND VC_TRANS_TYPE=''IEX'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P44_INV_SCH_NO,:P44_INV_SCH_DATE,''IEX'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1293788686103687)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inv note insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_NO NUMBER:=1;',
'letter varchar2(10);',
'begin',
'IF :P44_MODE = ''E'' THEN',
'',
'DELETE FROM DT_INV_SUBJECT_EXC',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
' AND  VC_INVOICE_NO = :P44_INV_SCH_NO ',
' and DT_INVOICE_DATE =:P44_INV_SCH_DATE',
' and PRJ_ID=:GLOBAL_PROJ_ID;',
'',
'END IF;',
'',
'FOR I in (',
'                SELECT C001,C002,C003,C004,C005 FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES_EXC''',
'               ORDER BY 4 asc',
'               ) loop',
'',
'select chr( ascii(''a'')+level-1 ) INTO letter',
'      from dual',
'       where level = V_NO',
'    connect by level <= V_NO;',
'',
'insert into DT_INV_SUBJECT_EXC',
'(',
'ORG_ID,PRJ_ID,VC_INVOICE_NO,DT_INVOICE_DATE,VC_DOC_ID,DT_DOC_DATE,vc_doc_seq,',
'NU_SR_NO,USR_ID_CREATE,USR_ID_CREATE_DT,VC_AUTH_CODE,USR_ID_MOD_DT,HO_ORG_ID',
')',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P44_INV_SCH_NO,:P44_INV_SCH_DATE,I.C001,I.C002,letter ,',
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
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1299390782103679)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on save'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1294939169103686)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on cancel'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247366844103743)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1298620487103680)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION on cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_EXC'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_EXC'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247366844103743)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1295354947103685)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION on save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_EXC'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_EXC'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1247801898103742)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1298232578103681)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_INVOICE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P44_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_EXC'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_EXC'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1298993734103680)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
' NU_INVOICE_ID,  VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID,  vc_remarks, VC_PPA_NO , get_cust_name(org_id,EO_ID)cust_name,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc, GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom',
',VC_EXHANGE_NAME,VC_MARKET,VC_INV_SUBJECT  ,NU_TRADING_AMT,NU_NET_EX_BUS,NU_GROSS_AMOUNT,VC_TRADING_APPLICABLE',
'',
'INTO ',
' :P44_INVOICE_ID, :P44_PPA_NO, :P44_PPA_DATE, :P44_BILL_FROM_DATE, :P44_BILL_TO_DATE, :P44_CUSTOMER_CODE, :P44_CUST_COA_ID,',
':P44_PAYMENT_DUE_DATE, :P44_SURCHARGE_DATE, :P44_GRP_ID, :P44_ITEM_CODE, :P44_QTY, :P44_RATE, :P44_ITEM_DETAIL, :P44_ITEM_COA, :P44_SCHEDULE_UNIT, :P44_TAX_APPLICABLE,',
':P44_SCHEDULE_AMOUNT, :P44_OTHER_CHARGE_AMOUNT, :P44_SUB_AMOUNT, :P44_TAX_AMOUNT, :P44_TCS_AMOUNT, :P44_NET_AMOUNT, :P44_TCS_COA, :P44_TCS_PER, :P44_TAX_RULE_ID,',
':P44_TAX_ID, :P44_REMARK, :P44_PPA_NO_TEMP, :P44_CUSTOMER_NAME,:P44_ITEM_DESC,:P44_UOM',
',:P44_EXHANGE,:P44_MARKET , :P44_SUBJECT',
',:P44_TRADING_MARGIN, :P44_NET_EX_BUS ,:P44_GROSS_AMOUNT ,:P44_TRADING_APPLICABLE',
'',
'',
'FROM DT_INV_IEX',
' where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P44_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P44_INV_SCH_DATE;',
'',
'',
'',
'if :P44_MODE = ''V'' then',
'',
'',
':P44_SCHEDULE_AMOUNT         := ltrim(to_char(:P44_SCHEDULE_AMOUNT,''999G999G999G999G990D0000''));',
':P44_OTHER_CHARGE_AMOUNT     := ltrim(to_char(:P44_OTHER_CHARGE_AMOUNT,''999G999G999G999G990D0000''));',
':P44_SUB_AMOUNT              := ltrim(to_char(:P44_SUB_AMOUNT,''999G999G999G999G990D0000''));',
':P44_TAX_AMOUNT              := ltrim(to_char(:P44_TAX_AMOUNT,''999G999G999G999G990D0000''));',
':P44_TCS_AMOUNT              := ltrim(to_char(:P44_TCS_AMOUNT,''999G999G999G999G990D0000''));',
':P44_NET_AMOUNT              := ltrim(to_char(:P44_NET_AMOUNT,''999G999G999G999G990D0000''));',
':P44_GROSS_AMOUNT            := ltrim(to_char(:P44_GROSS_AMOUNT,''999G999G999G999G990D0000''));',
':P44_TRADING_MARGIN          := ltrim(to_char(:P44_TRADING_MARGIN,''999G999G999G999G990D0000''));',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1293378331103688)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get inv notes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  VC_DOC_ID,DT_DOC_DATE,NU_SR_NO ',
'      FROM DT_INV_SUBJECT_EXC',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P44_INV_SCH_NO ',
'      AND   DT_INVOICE_DATE = :P44_INV_SCH_DATE',
'  ',
'    order by NU_SR_NO asc ;',
'      ',
' v_id  number;',
' ',
' begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_EXC'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_EXC'');',
'         END IF;',
' IF  not APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_EXC'') THEN',
'              APEX_COLLECTION.create_COLLECTION(''INVOICE_NOTES_EXC'');',
'         END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''INVOICE_NOTES_EXC'',',
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
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1295790483103685)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info of other charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID',
'      FROM DT_OTHER_CHARGES_INV_IEX',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P44_INV_SCH_NO ',
'      AND   DT_INVOICE_DATE = :P44_INV_SCH_DATE   ;',
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
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1294225169103687)
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
'               AND   VC_DOC_ID    = :P44_INV_SCH_NO ',
'               AND   DT_DOC_DATE   = :P44_INV_SCH_DATE',
'               and   vc_trans_type = ''IEX'');',
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
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1297770385103681)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P44_WKF_STAGE',
'from  DT_INV_IEX',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P44_INV_SCH_NO',
'and  DT_INVOICE_DATE = :P44_INV_SCH_DATE;',
'exception when no_data_found then :P44_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1297353963103682)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P44_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P44_INV_SCH_NO',
'AND      DT_DOC_DATE = :P44_INV_SCH_DATE',
'AND      VC_DOC_TYPE  = ''IEX'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P44_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
