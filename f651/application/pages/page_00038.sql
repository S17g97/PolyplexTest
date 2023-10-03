prompt --application/pages/page_00038
begin
--   Manifest
--     PAGE: 00038
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
 p_id=>38
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice Scheduled - Provisional'
,p_alias=>'INVOICE-SCHEDULED-PROVISIONAL'
,p_step_title=>'Invoice Scheduled - Provisional'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function RUN_PROCESS2 (request){',
'apex.submit({request:request,showWait:true});',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230822133530'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32096920700779044)
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
 p_id=>wwv_flow_api.id(29145067318998828)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(32096920700779044)
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
 p_id=>wwv_flow_api.id(29144939119998827)
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
,p_internal_uid=>47497806507261152
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1074472957178698)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1074062417178699)
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
 p_id=>wwv_flow_api.id(1073668708178699)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1073319361178699)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1072854371178700)
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
,p_display_condition=>'P38_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1072504653178700)
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
 p_id=>wwv_flow_api.id(29138184660986095)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'69535'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32426524977923153)
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
 p_id=>wwv_flow_api.id(32326149383296980)
,p_plug_name=>'OTHER CHARGES REPORTS'
,p_parent_plug_id=>wwv_flow_api.id(32426524977923153)
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
 p_id=>wwv_flow_api.id(32326019319296979)
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
,p_internal_uid=>50678886706559304
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1070751407178705)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::P39_CHARGE_ID,P39_MODE,P39_SCHEDULE_AMOUNT,P39_SCHEDULE_UNIT:#CHARGE_ID#,E,\&P38_SCHEDULE_AMOUNT.\,&P38_SCHEDULE_UNIT.'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P38_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1070342615178705)
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
 p_id=>wwv_flow_api.id(1069954162178706)
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
 p_id=>wwv_flow_api.id(1069577844178706)
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
 p_id=>wwv_flow_api.id(1069167684178706)
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
 p_id=>wwv_flow_api.id(1068810162178707)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1068412161178707)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1067987671178708)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(32140358760639994)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'66309'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:AMOUNT:REMARKS:ACCOUNT_CODE:CHARGE_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(32426878299923156)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P38_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31852877441971181)
,p_plug_name=>'Main info detail'
,p_parent_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(32426632804923154)
,p_plug_name=>'Amount Calculator'
,p_parent_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(32426720410923155)
,p_plug_name=>'Item detail'
,p_parent_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(32427040894923158)
,p_plug_name=>'Display selector'
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
 p_id=>wwv_flow_api.id(32429564083923183)
,p_plug_name=>'Invoice Schedule - Provisional'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(216988043441304999)
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
 p_id=>wwv_flow_api.id(216988176820305000)
,p_plug_name=>'notes'
,p_parent_plug_id=>wwv_flow_api.id(216988043441304999)
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
' where COLLECTION_NAME=''INVOICE_NOTES_PRO''',
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
 p_id=>wwv_flow_api.id(216988242398305001)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>235341109785567326
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1076211996178696)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:79:P79_DOC_DATE,P79_DOC_ID,P79_MODE,P79_SERIAL_NO,P79_ALPHA:#DOC_DATE#,#DOC_ID#,E,#SERIAL_NO#,#ALPHA#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P38_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1076532736178696)
,p_db_column_name=>'DOC_ID'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1076977312178695)
,p_db_column_name=>'DOC_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doc Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1077399081178695)
,p_db_column_name=>'INVOICE_NOTE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Invoice Notes'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1077743794178695)
,p_db_column_name=>'SERIAL_NO'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Serial No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1078195154178694)
,p_db_column_name=>'ALPHA'
,p_display_order=>60
,p_column_identifier=>'G'
,p_column_label=>'Alpha'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(217015693340677114)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'521139'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:SERIAL_NO:INVOICE_NOTE:ALPHA'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1045290467178737)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32426878299923156)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'http://103.234.186.89:7003/ebiz/reports/salesreportservlet?tab=&golink=Report&ReportType=PDF&organisation=&GLOBAL_COMP_CODE.&ccLbl=&ccVal=&RptDesc=&multiOrg=&whid=&tracktype=&atttype=%5B%5D&attval=%5B%5D&UsrId=1&bsport=&structid=&structloc=&structlbl=&cldid=0000&hoorgid=&GLOBAL_PARENT_COMP.&slocid=1&currtype=2&uomtype=1&todate=&P38_INV_SCH_DATE.&fromdate=&catid=&status= &eoid=&salesman=&itmgrp=&itmName=&currid=&formstatus=&fileName=&P38_FILE_NAME.&bgcolor=D&head=D&margin=Y&docno=&P38_INV_SCH_NO.&todocno=&logo=Org-logo.png&eogrp=&lblid=&lblval=&cntry=&topn=&topnto=&prjDocId=&GLOBAL_PROJ_ID.&slstype=&basis=&invtype=&grpLvlThree=&grpLvlTwo=&grpLvlOne=&fileDisplayName=Invoice%20Schedule%20Provisional%20Report&multiProj='
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1045639945178735)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32426878299923156)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P38_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_AUTH_FLAG,P25_LAST_PAGE:&P38_REQ_NO.,&P38_INV_SCH_NO.,&P38_INV_SCH_DATE.,IPSCH,&P38_AUTH_FLAG.,&P38_LAST_PAGE.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1046122661178735)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(1046523145178735)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(32426878299923156)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:RUN_PROCESS2(''SAVE'');'
,p_button_condition=>'P38_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1067239381178712)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32426524977923153)
,p_button_name=>'Add_charges'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add '
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P38_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1071815864178701)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(32096920700779044)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P38_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1075439350178697)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(216988043441304999)
,p_button_name=>'ADD5'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:79:&SESSION.::&DEBUG.:79:P79_MODE:A'
,p_button_condition=>'P38_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1112506170178665)
,p_branch_name=>'Go To Page 37'
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1046523145178735)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1112067739178665)
,p_branch_name=>'Go To Page 39'
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:P39_MODE,P39_SCHEDULE_UNIT,P39_SCHEDULE_AMOUNT:A,&P38_SCHEDULE_UNIT.,\&P38_SCHEDULE_AMOUNT.\&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1067239381178712)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1111633768178665)
,p_branch_name=>'Go To Page 37'
,p_branch_action=>'f?p=&APP_ID.:37:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1046122661178735)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1046859323178734)
,p_name=>'P38_LABEL_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P38_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1047235794178732)
,p_name=>'P38_AUTH_FLAG'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1047698941178731)
,p_name=>'P38_LAST_PAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1048112601178731)
,p_name=>'P38_WKF_STAGE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1048457918178730)
,p_name=>'P38_REQ_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1048848200178730)
,p_name=>'P38_INVOICE_ID'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1049249923178729)
,p_name=>'P38_MODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1049699813178729)
,p_name=>'P38_INV_SCH_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(1050062240178728)
,p_name=>'P38_INV_SCH_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32426878299923156)
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
 p_id=>wwv_flow_api.id(1050799083178727)
,p_name=>'P38_FILE_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_item_default=>'Provisional_schedule_invoice'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1051232573178726)
,p_name=>'P38_ITEM_COA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1051555889178726)
,p_name=>'P38_ITEM_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
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
 p_id=>wwv_flow_api.id(1051952034178726)
,p_name=>'P38_GRP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1052426525178725)
,p_name=>'P38_SCHEDULE_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_prompt=>'Schedule Unit'
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
 p_id=>wwv_flow_api.id(1052788339178725)
,p_name=>'P38_ITEM_DETAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
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
 p_id=>wwv_flow_api.id(1053149676178724)
,p_name=>'P38_RATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_prompt=>'Rate'
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
 p_id=>wwv_flow_api.id(1053604030178724)
,p_name=>'P38_QTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1054012334178723)
,p_name=>'P38_UOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
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
 p_id=>wwv_flow_api.id(1054370737178723)
,p_name=>'P38_ITEM_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1054758114178723)
,p_name=>'P38_ERROR'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1055228614178722)
,p_name=>'P38_SUBJECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(32426720410923155)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'AND CH_ACTIVE = ''Y''',
'AND :P38_MODE <> ''V''',
'UNION ALL',
'select ',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'--AND CH_ACTIVE = ''Y''',
'AND :P38_MODE = ''V''',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
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
 p_id=>wwv_flow_api.id(1055841919178721)
,p_name=>'P38_REMARK'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_prompt=>'Remark'
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
 p_id=>wwv_flow_api.id(1056262912178721)
,p_name=>'P38_TCS_COA'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1056695239178721)
,p_name=>'P38_TAX_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1057070848178720)
,p_name=>'P38_TCS_PER'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1057461711178720)
,p_name=>'P38_TAX_RULE_ID'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1057874586178720)
,p_name=>'P38_TAX_APPLICABLE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
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
 p_id=>wwv_flow_api.id(1058233689178719)
,p_name=>'P38_NET_AMOUNT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
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
 p_id=>wwv_flow_api.id(1058661859178719)
,p_name=>'P38_TCS_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
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
 p_id=>wwv_flow_api.id(1059122432178719)
,p_name=>'P38_TAX_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_item_default=>'0'
,p_prompt=>'Tax Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1059495110178719)
,p_name=>'P38_SUB_AMOUNT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
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
 p_id=>wwv_flow_api.id(1059894904178718)
,p_name=>'P38_OTHER_CHARGE_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
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
 p_id=>wwv_flow_api.id(1060270939178718)
,p_name=>'P38_SCHEDULE_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_item_default=>'0'
,p_prompt=>'Schedule Amount'
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
 p_id=>wwv_flow_api.id(1060699464178718)
,p_name=>'P38_TRADING_MARGIN'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(32426632804923154)
,p_item_default=>'0'
,p_prompt=>'Trading Margin'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1061389657178717)
,p_name=>'P38_CUST_COA_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1061765567178716)
,p_name=>'P38_CUSTOMER_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
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
 p_id=>wwv_flow_api.id(1062203253178716)
,p_name=>'P38_PPA_NO_TEMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1062625395178716)
,p_name=>'P38_BILL_TO_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_prompt=>'Bill To Date'
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
 p_id=>wwv_flow_api.id(1063004432178715)
,p_name=>'P38_BILL_FROM_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_prompt=>'Bill From Date'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_INV_SCH_PPA_PAY_DTL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO = :P38_PPA_NO_TEMP',
'AND   DT_PPA_DATE = :P38_PPA_DATE',
'AND   :P38_MODE  = ''A''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                 )',
'union all',
'SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE A.ORG_ID = :GLOBAL_COMP_CODE',
'AND   A.PRJ_ID = :GLOBAL_PROJ_ID',
'AND   A.VC_PPA_NO = :P38_PPA_NO_TEMP',
'AND   A.DT_PPA_DATE = :P38_PPA_DATE',
'AND   :P38_MODE  = ''E''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                   AND    B.VC_INVOICE_NO   <> :P38_INV_SCH_NO',
'                  AND     B.DT_INVOICE_DATE <> :P38_INV_SCH_DATE',
'                )',
''))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P38_PPA_NO_TEMP,P38_PPA_DATE'
,p_ajax_items_to_submit=>'P38_PPA_NO,P38_PPA_DATE,P38_PPA_NO_TEMP,P38_INV_SCH_NO,P38_INV_SCH_DATE,P38_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
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
,p_attribute_10=>'DT_BILL_TO_DATE:P38_BILL_TO_DATE,DT_PAYMENT_DATE:P38_PAYMENT_DUE_DATE,DT_PENALTY_DATE:P38_SURCHARGE_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1063425075178715)
,p_name=>'P38_SURCHARGE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_prompt=>'Surcharge Date'
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
 p_id=>wwv_flow_api.id(1063812063178715)
,p_name=>'P38_PAYMENT_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
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
 p_id=>wwv_flow_api.id(1064159244178714)
,p_name=>'P38_CUSTOMER_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1064612646178714)
,p_name=>'P38_SCH_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1065028350178714)
,p_name=>'P38_SCH_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1065343543178713)
,p_name=>'P38_PPA_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
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
 p_id=>wwv_flow_api.id(1065777059178713)
,p_name=>'P38_PPA_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_prompt=>'PPA No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PPA_SCH_PROV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''S''',
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
,p_attribute_10=>'D:P38_PPA_NO_TEMP,DT_PPA_DATE:P38_PPA_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1066157368178713)
,p_name=>'P38_SURCHARGE_DATE_ACT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1066614768178713)
,p_name=>'P38_TRADING_APPLICABLE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(31852877441971181)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1087371498178684)
,p_validation_name=>'PPA NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P38_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA No'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1087026227178684)
,p_validation_name=>'PPA DATE'
,p_validation_sequence=>20
,p_validation=>'P38_PPA_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PPA Date Not found. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1086562145178684)
,p_validation_name=>'BILL FROM DATE NOT NULL'
,p_validation_sequence=>30
,p_validation=>'P38_BILL_FROM_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Bill from Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1086223812178684)
,p_validation_name=>'BILL TO DATE NOT NULL'
,p_validation_sequence=>40
,p_validation=>'P38_BILL_TO_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To Date cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1085750766178685)
,p_validation_name=>'CUSTOMER NOT NULL'
,p_validation_sequence=>50
,p_validation=>'P38_CUSTOMER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer not found. contact system administration'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1085413862178685)
,p_validation_name=>'PAYMENT DUE DATE NOT NULL'
,p_validation_sequence=>60
,p_validation=>'P38_PAYMENT_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Payment Due Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1085031733178685)
,p_validation_name=>'SURCHARGE DATE NOT NULL'
,p_validation_sequence=>70
,p_validation=>'P38_SURCHARGE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Surcharge Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1084615744178685)
,p_validation_name=>'ITEM NAME NOT NULL'
,p_validation_sequence=>80
,p_validation=>'P38_ITEM_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1084184712178686)
,p_validation_name=>'UOM  NOT NULL'
,p_validation_sequence=>90
,p_validation=>'P38_UOM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'UOM Cannot be null. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1083827014178686)
,p_validation_name=>'SCHDULED UNIT NOT NULL'
,p_validation_sequence=>100
,p_validation=>'P38_SCHEDULE_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule Unit cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1083414278178686)
,p_validation_name=>'RATE CANNOT BE NULL'
,p_validation_sequence=>110
,p_validation=>'P38_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Cannot be null or zero. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1083017663178686)
,p_validation_name=>'ITEM DETAIL NOT NULL'
,p_validation_sequence=>120
,p_validation=>'P38_ITEM_DETAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Detail Cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1082604055178687)
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
'       and      :P38_INV_SCH_DATE  BETWEEN FY_STRT AND  FY_END ;',
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
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1082180680178687)
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
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1081821448178687)
,p_validation_name=>'NET AMOUNT NOT NULL'
,p_validation_sequence=>150
,p_validation=>'P38_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_associated_item=>wwv_flow_api.id(1058233689178719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1081356411178688)
,p_validation_name=>'SUB AMOUNT NOT NULL'
,p_validation_sequence=>160
,p_validation=>'P38_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub Amount Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_associated_item=>wwv_flow_api.id(1059495110178719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1081029372178688)
,p_validation_name=>'SCHEDULE AMOUNT NOT NULL OR ZERO'
,p_validation_sequence=>170
,p_validation=>'P38_SCHEDULE_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_associated_item=>wwv_flow_api.id(1060270939178718)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1080569755178688)
,p_validation_name=>'TCS COA NOT NULL'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P38_TCS_AMOUNT > 0 AND :P38_TCS_COA IS NULL THEN',
'RETURN ''Accocunt of TCS Not found. Contact System Administration  '';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_associated_item=>wwv_flow_api.id(1058661859178719)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1080150489178688)
,p_validation_name=>'ITEM COA NOT NULL'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P38_ITEM_COA is null then',
'return ''Account of item not found. Contact System Administartion'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1079746769178689)
,p_validation_name=>'CUSTOMER COA NOT NULL'
,p_validation_sequence=>200
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P38_CUST_COA_ID IS NULL THEN',
'',
'RETURN ''Account of customer not Found. Contact System Administration'';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_associated_item=>wwv_flow_api.id(1061765567178716)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1079419667178689)
,p_validation_name=>'Surcharge date greater than purchage to date'
,p_validation_sequence=>210
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P38_SURCHARGE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:PA  ,''DD-MM-YYYY'') THEN ',
'RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'Surcharge date cannot be less than Payment  date.'))
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1078937508178689)
,p_validation_name=>'Invoice Notes'
,p_validation_sequence=>220
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'chk number;',
'',
'',
'begin',
'',
'  SELECT count(*) into chk FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES_PRO'';',
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
,p_when_button_pressed=>wwv_flow_api.id(1046523145178735)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1094102865178677)
,p_name=>'GET INFO FROM PPA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_PPA_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1094552261178676)
,p_event_id=>wwv_flow_api.id(1094102865178677)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Select EO_ID , get_cust_name(org_id,EO_ID)cust_name, ',
'       ITM_ID ,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,GRP_ID,',
'       NU_QTY,COA_ID,ITM_ID_COA,VC_TRADING_APPLICABLE',
'',
'into   :P38_CUSTOMER_CODE,:P38_CUSTOMER_NAME,',
'       :P38_ITEM_CODE ,:P38_ITEM_DESC,',
'       :P38_UOM,:P38_GRP_ID,',
'       :P38_QTY,:P38_CUST_COA_ID,:P38_ITEM_COA,:P38_TRADING_APPLICABLE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P38_PPA_NO',
'AND   DT_PPA_DATE = :P38_PPA_DATE;',
'exception when others then ',
'null;',
'end;'))
,p_attribute_02=>'P38_PPA_NO,P38_PPA_DATE'
,p_attribute_03=>'P38_CUSTOMER_CODE,P38_CUSTOMER_NAME,P38_ITEM_CODE,P38_ITEM_DESC,P38_UOM,P38_GRP_ID,P38_QTY,P38_RATE,P38_CUST_COA_ID,P38_ITEM_COA,P38_TRADING_APPLICABLE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1094962176178676)
,p_name=>'GET SCHEDULE UNIT SUM'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_BILL_TO_DATE'
,p_condition_element=>'P38_BILL_TO_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1095519254178675)
,p_event_id=>wwv_flow_api.id(1094962176178676)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'GET_RATE (:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P38_PPA_NO,:P38_PPA_DATE,:P38_BILL_FROM_DATE,:P38_BILL_TO_DATE)AA',
'from dual;'))
,p_attribute_07=>'GLOBAL_COMP_CODE,GLOBAL_PROJ_ID,P38_PPA_NO,P38_PPA_DATE,P38_BILL_FROM_DATE,P38_BILL_TO_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1095989978178675)
,p_event_id=>wwv_flow_api.id(1094962176178676)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ROUND(NVL(SUM(NU_UNIT),0)*1000,3)',
'INTO :P38_SCHEDULE_UNIT',
'FROM DT_SCHEDULE',
'WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO = :P38_PPA_NO',
'AND   DT_PPA_DATE = :P38_PPA_DATE',
'and   vc_type = ''P''',
'and  ch_auth_flag = ''Y''',
'AND   DT_SCHEDULE_PROV BETWEEN :P38_BILL_FROM_DATE AND :P38_BILL_TO_DATE;',
'EXCEPTION WHEN OTHERS THEN  :P38_SCHEDULE_UNIT :=0;',
'END;'))
,p_attribute_02=>'P38_BILL_FROM_DATE,P38_BILL_TO_DATE,P38_PPA_NO,P38_PPA_DATE'
,p_attribute_03=>'P38_SCHEDULE_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1096385703178675)
,p_name=>'CALULATE SCHEDULE AMOUNT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SCHEDULE_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1096909214178674)
,p_event_id=>wwv_flow_api.id(1096385703178675)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_SCHEDULE_AMOUNT := NVL(ABS(:P38_SCHEDULE_UNIT),0)* NVL(:P38_RATE,0);'
,p_attribute_02=>'P38_SCHEDULE_UNIT,P38_RATE'
,p_attribute_03=>'P38_SCHEDULE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1097315265178674)
,p_name=>'refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1097752378178674)
,p_event_id=>wwv_flow_api.id(1097315265178674)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(29145067318998828)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1098272958178673)
,p_event_id=>wwv_flow_api.id(1097315265178674)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32326149383296980)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1098738221178673)
,p_event_id=>wwv_flow_api.id(1097315265178674)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_OTHER_CHARGE_AMOUNT'
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
 p_id=>wwv_flow_api.id(1099237510178673)
,p_event_id=>wwv_flow_api.id(1097315265178674)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(216988176820305000)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1099677990178672)
,p_name=>'CALCULATE SUB AMOUNT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_OTHER_CHARGE_AMOUNT,P38_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1100224448178672)
,p_event_id=>wwv_flow_api.id(1099677990178672)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- :P38_SUB_AMOUNT := NVL(REPLACE(:P38_SCHEDULE_AMOUNT,'','','''') ,0)+ NVL(REPLACE(:P38_OTHER_CHARGE_AMOUNT,'','','''') ,0);',
'',
':P38_SUB_AMOUNT := NVL(REPLACE(:P38_SCHEDULE_AMOUNT,'','','''') ,0)- NVL(REPLACE(:P38_OTHER_CHARGE_AMOUNT,'','','''') ,0)-NVL(REPLACE(:P38_TRADING_MARGIN,'','','''') ,0);'))
,p_attribute_02=>'P38_SCHEDULE_AMOUNT,P38_OTHER_CHARGE_AMOUNT,P38_TRADING_MARGIN'
,p_attribute_03=>'P38_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1100564334178672)
,p_name=>'GET TAX AMOUNT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TAX_APPLICABLE'
,p_condition_element=>'P38_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1101068336178672)
,p_event_id=>wwv_flow_api.id(1100564334178672)
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
'            and   EO_ID =:P38_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P38_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P38_ITEM_CODE, ',
'                            :P38_CUSTOMER_CODE,:P38_INVOICE_ID,NULL,''1153'' ,replace(:P38_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P38_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P38_INVOICE_ID, :P38_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P38_SUB_AMOUNT,'','',''''),replace(:P38_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P38_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P38_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P38_CUSTOMER_CODE,P38_INVOICE_ID,P38_ITEM_CODE,P38_CUST_COA_ID'
,p_attribute_03=>'P38_TAX_AMOUNT,P38_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1101608064178671)
,p_event_id=>wwv_flow_api.id(1100564334178672)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P38_TAX_AMOUNT  := 0;',
'',
'IF replace(:P38_TCS_AMOUNT ,'','','''')= 0 THEN',
':P38_TAX_RULE_ID := NULL;',
'',
'END IF;'))
,p_attribute_03=>'P38_TAX_AMOUNT,P38_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1101953727178671)
,p_name=>'GET TAX AND TCS AMOUNT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SUB_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1102515535178671)
,p_event_id=>wwv_flow_api.id(1101953727178671)
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
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P38_CUSTOMER_CODE) ; ',
'IF v_tcs_flag = ''Y'' then',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P38_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P38_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P38_ITEM_CODE, ',
'                                             :P38_CUSTOMER_CODE,:P38_INVOICE_ID,NULL,''1153'' ,replace(:P38_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    :P38_TAX_RULE_ID := V_TAX_RULE_ID;',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'if v_amount > 5000000 then',
'            v_tcs_amount := replace(:P38_SUB_AMOUNT,'','','''');',
'            :P38_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'            :P38_TCS_PER := V_TCS_PER;',
'            :P38_TAX_ID  := V_TAX_ID;',
'            :P38_TCS_COA  := v_tcs_coa;',
'    else',
'        if v_amount+replace(:P38_SUB_AMOUNT,'','','''')-5000000 < 0 then',
'            v_tcs_amount := 0;',
'            :P38_TCS_AMOUNT :=0;',
'            ',
'            :P38_TCS_PER := null;',
'            :P38_TAX_ID  := null;',
'            :P38_TCS_COA  := null;',
'      else',
'            v_tcs_amount := v_amount+replace(:P38_SUB_AMOUNT,'','','''')-5000000; ',
'            :P38_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'                :P38_TCS_PER := V_TCS_PER;',
'                :P38_TAX_ID  := V_TAX_ID;',
'                :P38_TCS_COA  := v_tcs_coa;',
'     end if;',
'    end if;',
'end if;',
'IF v_tcs_flag =''N'' THEN',
' :P38_TCS_AMOUNT := 0;',
'END IF;',
'if :P38_TAX_APPLICABLE = ''Y'' then',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P38_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P38_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P38_ITEM_CODE, ',
'                            :P38_CUSTOMER_CODE,:P38_INVOICE_ID,NULL,''1153'' ,replace(:P38_SUB_AMOUNT,'','',''''),0,0 );',
':P38_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES ( 1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P38_INVOICE_ID, :P38_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P38_SUB_AMOUNT,'','',''''),replace(:P38_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P38_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID );',
':P38_TAX_AMOUNT := v_amount;',
'end if;',
'if NVL(:P38_TAX_APPLICABLE ,''N'')= ''N'' then',
':P38_TAX_AMOUNT := 0;',
'END IF;',
':P38_NET_AMOUNT := replace(:P38_SUB_AMOUNT ,'','','''') + replace(nvl(:P38_TAX_AMOUNT,0),'','','''') +replace(:P38_TCS_AMOUNT,'','','''') ;',
'end;'))
,p_attribute_02=>'P38_CUSTOMER_CODE,P38_ITEM_CODE,P38_SUB_AMOUNT,P38_CUST_COA_ID,P38_INVOICE_ID,P38_TAX_AMOUNT,P38_TAX_APPLICABLE'
,p_attribute_03=>'P38_TCS_AMOUNT ,P38_NET_AMOUNT,P38_TAX_AMOUNT,P38_TAX_RULE_ID,P38_TCS_PER,P38_TAX_ID,P38_TCS_COA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1102847392178670)
,p_name=>'GET NET AMOUNT ON TAX AMOUNT CHANGE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1103429571178670)
,p_event_id=>wwv_flow_api.id(1102847392178670)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_NET_AMOUNT := NVL(replace(:P38_SUB_AMOUNT ,'','',''''),0) +  NVL(replace(:P38_TAX_AMOUNT ,'','','''') ,0) + NVL(replace(:P38_TCS_AMOUNT ,'','','''') ,0);'
,p_attribute_02=>'P38_SUB_AMOUNT,P38_TAX_AMOUNT,P38_TCS_AMOUNT'
,p_attribute_03=>'P38_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1103831533178670)
,p_name=>'ADD CREATE OTHER CHARGE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1105276163178669)
,p_event_id=>wwv_flow_api.id(1103831533178670)
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
'                   (nvl(replace(:P38_SCHEDULE_AMOUNT,'','',''''),0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(abs(:P38_SCHEDULE_UNIT),0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P38_PPA_NO',
'                and  dt_ppa_date = :P38_PPA_DATE) ',
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
,p_attribute_02=>'P38_SCHEDULE_UNIT,P38_SCHEDULE_AMOUNT,P38_PPA_NO,P38_PPA_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1104311168178670)
,p_event_id=>wwv_flow_api.id(1103831533178670)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(32326149383296980)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1104797933178669)
,p_event_id=>wwv_flow_api.id(1103831533178670)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_OTHER_CHARGE_AMOUNT'
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
 p_id=>wwv_flow_api.id(1105689315178669)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>110
,p_condition_element=>'P38_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1106224652178669)
,p_event_id=>wwv_flow_api.id(1105689315178669)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1045639945178735)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P38_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1106606057178668)
,p_name=>'hide forward on add mode'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P38_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1107067852178668)
,p_event_id=>wwv_flow_api.id(1106606057178668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1045639945178735)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1107519160178668)
,p_name=>'hide invoice no and date'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P38_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1107976889178668)
,p_event_id=>wwv_flow_api.id(1107519160178668)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P38_INV_SCH_NO,P38_INV_SCH_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1108390172178667)
,p_name=>'surgecharge date'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_PAYMENT_DUE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1108833165178667)
,p_event_id=>wwv_flow_api.id(1108390172178667)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT to_date(:P38_INV_SCH_DATE,''dd/mm/yyyy'')+max(NU_DAYS) into :P38_SURCHARGE_DATE_ACT FROM DT_PPA_REBATE_SURCHARGE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND VC_PPA_NO = :P38_PPA_NO',
'AND DT_PPA_DATE = TO_DATE(:P38_PPA_DATE,''DD-MM-YYYY'')',
'and CH_TYPE = ''S''',
';',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P38_INV_SCH_DATE'
,p_attribute_03=>'P38_SURCHARGE_DATE_ACT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1109259781178667)
,p_name=>'skipholidays'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SURCHARGE_DATE_ACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1109747203178667)
,p_event_id=>wwv_flow_api.id(1109259781178667)
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
'To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'') + public_holidays(To_date(:P38_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into :P38_SURCHARGE_DATE ',
'from dual; ',
'begin',
'select public_holidays(To_date(:P38_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into cnt ',
'from dual; ',
'end; */',
'for i in 1..10 loop',
'',
'v_num := public_holidays(To_date(:P38_INV_SCH_DATE, ''DD/MM/YYYY''),To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE);',
':P38_PAYMENT_DUE_DATE := To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'')+1;',
':P38_SURCHARGE_DATE_ACT := To_date(:P38_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'') + v_num;',
'',
'if nvl(v_num,0) = 0 then',
'exit;',
'end if;',
'end loop;',
'',
':P38_SURCHARGE_DATE := :P38_SURCHARGE_DATE_ACT;',
' ',
'--exception when others then null;',
'end;',
'',
''))
,p_attribute_02=>'P38_SURCHARGE_DATE_ACT'
,p_attribute_03=>'P38_SURCHARGE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1110228627178666)
,p_name=>'get trading margin'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P38_SCHEDULE_UNIT'
,p_condition_element=>'P38_TRADING_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1110648055178666)
,p_event_id=>wwv_flow_api.id(1110228627178666)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_TRADE_MARGIN    Number;',
'',
'BEGIN',
'    SELECT nvl(SUM(NU_FIXED),0)',
'    INTO V_TRADE_MARGIN',
'    FROM DT_TRADING_MARGIN_PPA',
'    WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'    AND PRJ_ID  = :GLOBAL_PROJ_ID',
'    AND VC_PPA_NO = :P38_PPA_NO',
'    AND  DT_PPA_DATE = :P38_PPA_DATE;',
'',
'    :P38_TRADING_MARGIN := (:P38_SCHEDULE_UNIT* V_TRADE_MARGIN);',
'    EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
''))
,p_attribute_02=>'P38_SCHEDULE_UNIT,P38_PPA_NO,P38_PPA_DATE'
,p_attribute_03=>'P38_TRADING_MARGIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1111165234178666)
,p_event_id=>wwv_flow_api.id(1110228627178666)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P38_TRADING_MARGIN := 0;'
,p_attribute_03=>'P38_TRADING_MARGIN'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1091310962178680)
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
'',
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
'            select  --lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1,''4'',''0'')',
'                nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1',
'     ',
'            into  v_code ',
'            from DT_SCH_PROV_INV ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'        --  :P38_INV_SCH_NO :=v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'        :P38_INV_SCH_NO :=v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' ||''P''|| v_code;',
'    ',
'    end;',
'',
'     if LENGTH(:P38_INV_SCH_NO) > 15 then',
'         apex_util.set_session_state(''P38_ERROR'', ''Invoice Number length geerate greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'',
'begin',
'insert into DT_SCH_PROV_INV',
'(',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID, vc_remarks,VC_INV_SUBJECT,VC_TRADING_APPLICABLE,NU_TRADING_AMT',
')',
'values',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P38_INVOICE_ID,:P38_INV_SCH_NO, :P38_INV_SCH_DATE, :P38_PPA_NO, :P38_PPA_DATE, :P38_BILL_FROM_DATE, :P38_BILL_TO_DATE, :P38_CUSTOMER_CODE, :P38_CUST_COA_ID,',
':P38_PAYMENT_DUE_DATE, :P38_SURCHARGE_DATE, :P38_GRP_ID, :P38_ITEM_CODE, :P38_QTY, :P38_RATE, :P38_ITEM_DETAIL, :P38_ITEM_COA, :P38_SCHEDULE_UNIT, :P38_TAX_APPLICABLE,',
'replace(:P38_SCHEDULE_AMOUNT,'','',''''), replace(:P38_OTHER_CHARGE_AMOUNT,'','','''') , replace(:P38_SUB_AMOUNT,'','',''''), replace(:P38_TAX_AMOUNT,'','',''''), replace(:P38_TCS_AMOUNT,'','',''''), replace(:P38_NET_AMOUNT,'','',''''), :P38_TCS_COA, :P38_TCS_PER, :P38_TAX_'
||'RULE_ID,',
':P38_TAX_ID, :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_PARENT_COMP, :P38_REMARK,:P38_SUBJECT,:P38_TRADING_APPLICABLE, replace(:P38_TRADING_MARGIN,'','','''')',
'',
');',
'exception when others then',
'    apex_util.set_session_state(''P38_ERROR'', ''Error While Insert data. Please Contact System administration'');',
'         raise e_error;',
'',
'end;',
'',
'',
'',
'',
'    if :P38_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P38_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P38_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'           -- raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'            apex_util.set_session_state(''P38_ERROR'', ''Error while fetch the address and state code of customer'');',
'             raise e_error;',
'',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P38_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'              apex_util.set_session_state(''P38_ERROR'', ''Error while fetch the tax exemption flag  item '');',
'             raise e_error;',
'',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P38_ITEM_CODE, ',
'                                        :P38_CUSTOMER_CODE,:P38_INVOICE_ID,NULL,''1153'' ,replace(:P38_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P38_INVOICE_ID, :P38_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P38_SUB_AMOUNT,'','',''''),replace(:P38_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P38_CUST_COA_ID, NULL, ',
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
'                        AND DOC_ID        = :P38_INVOICE_ID',
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
'          --  raise_application_error (-20001,''Error while insert the data in SLS$SO$TR$LINES table'');',
'             apex_util.set_session_state(''P38_ERROR'', ''Error while insert the data in SLS$SO$TR$LINES table '');',
'             raise e_error;',
'',
'            END;',
'            END LOOP;',
'',
'        end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P38_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1090449584178681)
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
'update DT_SCH_PROV_INV',
'set',
'VC_PPA_NO                   = :P38_PPA_NO,',
'DT_PPA_DATE                 = :P38_PPA_DATE,',
'DT_BILL_FROM                = :P38_BILL_FROM_DATE,',
'DT_BILL_TO                  = :P38_BILL_TO_DATE,',
'EO_ID                       = :P38_CUSTOMER_CODE,',
'COA_ID                      = :P38_CUST_COA_ID,',
'DT_PAY_DUE_DATE             = :P38_PAYMENT_DUE_DATE,',
'DT_SURCHARGE_DATE           = :P38_SURCHARGE_DATE,',
'GRP_ID                      = :P38_GRP_ID,',
'ITM_ID                      = :P38_ITEM_CODE,',
'NU_QTY                      = :P38_QTY,',
'NU_RATE                     = :P38_RATE,',
'VC_ITEM_DETAIL              = :P38_ITEM_DETAIL,',
'ITM_ID_COA                  = :P38_ITEM_COA,',
'NU_SCHEDULE_UNIT            = :P38_SCHEDULE_UNIT,',
'VC_TAX_APPLICABLE           = :P38_TAX_APPLICABLE,',
'NU_SCHEDULE_AMOUNT          = replace(:P38_SCHEDULE_AMOUNT,'','',''''),',
'NU_OTHER_CHARGE_AMOUNT      = replace(:P38_OTHER_CHARGE_AMOUNT,'','',''''),',
'NU_SUB_AMOUNT               = replace(:P38_SUB_AMOUNT,'','',''''),',
'NU_TAX_AMOUNT               = replace(:P38_TAX_AMOUNT,'','',''''),',
'NU_TCS_AMOUNT               = replace(:P38_TCS_AMOUNT,'','',''''),',
'NU_NET_AMOUNT               = replace(:P38_NET_AMOUNT,'','',''''),',
'NU_TCS_COA                  = :P38_TCS_COA,',
'NU_TCS_PER                  = :P38_TCS_PER,',
'NU_TAX_RULE_ID              = :P38_TAX_RULE_ID,',
'NU_TCS_TAX_ID               = :P38_TAX_ID,',
'USR_ID_MOD_DT               = SYSDATE,',
'VC_REMARKS                  = :P38_REMARK,',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'VC_INV_SUBJECT              = :P38_SUBJECT,',
'NU_TRADING_AMT              = :P38_TRADING_MARGIN,',
'VC_TRADING_APPLICABLE       =  replace(:P38_TRADING_MARGIN,'','','''')',
'',
'where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P38_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P38_INV_SCH_DATE;',
'',
'',
'    if :P38_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'       ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P38_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P38_INVOICE_ID;',
'',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P38_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P38_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P38_ITEM_CODE, ',
'                                        :P38_CUSTOMER_CODE,:P38_INVOICE_ID,NULL,''1153'' ,replace(:P38_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P38_INVOICE_ID, :P38_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P38_SUB_AMOUNT,'','',''''),replace(:P38_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P38_CUST_COA_ID, NULL, ',
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
'                        AND DOC_ID        = :P38_INVOICE_ID',
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
' if :P38_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P38_INVOICE_ID;',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
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
 p_id=>wwv_flow_api.id(1090914964178680)
,p_process_sequence=>30
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
'IF :P38_MODE = ''E'' THEN',
'            DELETE FROM DT_OTHER_CHARGES_SCH_INV_PROV',
'             WHERE ORG_ID          = :GLOBAL_COMP_CODE ',
'             AND   PRJ_ID          = :GLOBAL_PROJ_ID ',
'             AND   VC_INVOICE_NO   = :P38_INV_SCH_NO ',
'             AND   DT_INVOICE_DATE = :P38_INV_SCH_DATE',
'             ;',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   insert into  DT_OTHER_CHARGES_SCH_INV_PROV',
'   (',
'     ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID,',
'     USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'  )',
'   values',
'   (',
'     :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P38_INV_SCH_NO,:P38_INV_SCH_DATE,I.C001,I.C002, I.C003,I.C004,I.C005,I.C006,',
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
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1088881431178682)
,p_process_sequence=>40
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
'IF :P38_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P38_INV_SCH_NO ',
'                            AND DT_DOC_DATE = :P38_INV_SCH_DATE',
'                            AND VC_TRANS_TYPE=''IPSCH'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P38_INV_SCH_NO,:P38_INV_SCH_DATE,''IPSCH'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1087676303178683)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'inv notes insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'V_NO NUMBER:=1;',
'letter varchar2(10);',
'begin',
'IF :P38_MODE = ''E'' THEN',
'',
'DELETE FROM DT_INV_SUBJECT_PRO ',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
' AND  VC_INVOICE_NO = :P38_INV_SCH_NO ',
' and DT_INVOICE_DATE =:P38_INV_SCH_DATE',
' and PRJ_ID=:GLOBAL_PROJ_ID;',
'',
'END IF;',
'',
'FOR I in (',
'                SELECT C001,C002,C003,C004,C005 FROM APEX_COLLECTIONS ',
'                WHERE COLLECTION_NAME=''INVOICE_NOTES_PRO''',
'               ORDER BY 4 asc',
'               ) loop',
'',
'select chr( ascii(''a'')+level-1 ) INTO letter',
'      from dual',
'       where level = V_NO',
'    connect by level <= V_NO;',
'',
'insert into DT_INV_SUBJECT_PRO',
'(',
'ORG_ID,PRJ_ID,VC_INVOICE_NO,DT_INVOICE_DATE,VC_DOC_ID,DT_DOC_DATE,vc_doc_seq,',
'NU_SR_NO,USR_ID_CREATE,USR_ID_CREATE_DT,VC_AUTH_CODE,USR_ID_MOD_DT,HO_ORG_ID',
')',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P38_INV_SCH_NO,:P38_INV_SCH_DATE,I.C001,I.C002,letter ,',
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
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1093654593178678)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on save'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1089272251178682)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on cancel'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046122661178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1092859617178679)
,p_process_sequence=>80
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
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_PRO'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_PRO'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046122661178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1089713164178682)
,p_process_sequence=>90
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
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_PRO'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_PRO'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1046523145178735)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1092434785178679)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_INVOICE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P38_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;',
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
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_PRO'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_PRO'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1093305319178678)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
' NU_INVOICE_ID,  VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID,  vc_remarks, VC_PPA_NO , get_cust_name(org_id,EO_ID)cust_name,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc, GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'VC_INV_SUBJECT,VC_TRADING_APPLICABLE,NU_TRADING_AMT     ',
'',
'INTO ',
' :P38_INVOICE_ID, :P38_PPA_NO, :P38_PPA_DATE, :P38_BILL_FROM_DATE, :P38_BILL_TO_DATE, :P38_CUSTOMER_CODE, :P38_CUST_COA_ID,',
':P38_PAYMENT_DUE_DATE, :P38_SURCHARGE_DATE, :P38_GRP_ID, :P38_ITEM_CODE, :P38_QTY, :P38_RATE, :P38_ITEM_DETAIL, :P38_ITEM_COA, :P38_SCHEDULE_UNIT, :P38_TAX_APPLICABLE,',
':P38_SCHEDULE_AMOUNT, :P38_OTHER_CHARGE_AMOUNT, :P38_SUB_AMOUNT, :P38_TAX_AMOUNT, :P38_TCS_AMOUNT, :P38_NET_AMOUNT, :P38_TCS_COA, :P38_TCS_PER, :P38_TAX_RULE_ID,',
':P38_TAX_ID, :P38_REMARK, :P38_PPA_NO_TEMP, :P38_CUSTOMER_NAME,:P38_ITEM_DESC,:P38_UOM,:P38_SUBJECT,:P38_TRADING_APPLICABLE,:P38_TRADING_MARGIN',
'',
'',
'',
'FROM DT_SCH_PROV_INV',
' where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P38_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P38_INV_SCH_DATE;',
'',
'',
'',
'if :P38_MODE = ''V'' then',
'',
'',
':P38_SCHEDULE_AMOUNT         := ltrim(to_char(:P38_SCHEDULE_AMOUNT,''999G999G999G999G990D0000''));',
':P38_OTHER_CHARGE_AMOUNT     := ltrim(to_char(:P38_OTHER_CHARGE_AMOUNT,''999G999G999G999G990D0000''));',
':P38_SUB_AMOUNT              := ltrim(to_char(:P38_SUB_AMOUNT,''999G999G999G999G990D0000''));',
':P38_TAX_AMOUNT              := ltrim(to_char(:P38_TAX_AMOUNT,''999G999G999G999G990D0000''));',
':P38_TCS_AMOUNT              := ltrim(to_char(:P38_TCS_AMOUNT,''999G999G999G999G990D0000''));',
':P38_NET_AMOUNT              := ltrim(to_char(:P38_NET_AMOUNT,''999G999G999G999G990D0000''));',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1088076862178683)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get inv notes'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  VC_DOC_ID,DT_DOC_DATE,NU_SR_NO ',
'      FROM DT_INV_SUBJECT_PRO',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P38_INV_SCH_NO ',
'      AND   DT_INVOICE_DATE = :P38_INV_SCH_DATE',
'  ',
'    order by NU_SR_NO asc ;',
'      ',
' v_id  number;',
' ',
' begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_PRO'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''INVOICE_NOTES_PRO'');',
'         END IF;',
' IF  not APEX_COLLECTION.COLLECTION_EXISTS(''INVOICE_NOTES_PRO'') THEN',
'              APEX_COLLECTION.create_COLLECTION(''INVOICE_NOTES_PRO'');',
'         END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''INVOICE_NOTES_PRO'',',
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
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1090062072178681)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info of other charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID',
'      FROM DT_OTHER_CHARGES_SCH_INV_PROV',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P38_INV_SCH_NO ',
'      AND   DT_INVOICE_DATE = :P38_INV_SCH_DATE   ;',
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
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1088491141178683)
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
'               AND   VC_DOC_ID    = :P38_INV_SCH_NO ',
'               AND   DT_DOC_DATE   = :P38_INV_SCH_DATE',
'               and   vc_trans_type = ''IPSCH'');',
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
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1092095348178679)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P38_WKF_STAGE',
'from  DT_SCH_PROV_INV',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID--:GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P38_INV_SCH_NO',
'and  DT_INVOICE_DATE = :P38_INV_SCH_DATE;',
'exception when no_data_found then :P38_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1091727458178679)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P38_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P38_INV_SCH_NO',
'AND      DT_DOC_DATE = :P38_INV_SCH_DATE',
'AND      VC_DOC_TYPE  = ''IPSCH'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P38_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
