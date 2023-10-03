prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'PPA'
,p_alias=>'PPA'
,p_step_title=>'PPA'
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
'        $(".allownumeric").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which >31 ) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'    ',
'        });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'#btn_MAGIN{',
'    background: transparent;',
'    color: black;',
'    box-shadow: none;',
'    border-color: transparent;',
'',
'}'))
,p_page_template_options=>'#DEFAULT#:js-pageStickyMobileHeader'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230916212455'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15909426091469386)
,p_plug_name=>'Power Purchase Agreement'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody:margin-top-none:margin-bottom-none'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15909158184469383)
,p_plug_name=>'Region Display Selector'
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
 p_id=>wwv_flow_api.id(15909365452469385)
,p_plug_name=>'Customer Info'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15794397704050918)
,p_plug_name=>'Detail'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15794344523050917)
,p_plug_name=>'Item Detail'
,p_parent_plug_id=>wwv_flow_api.id(15794397704050918)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15794180205050916)
,p_plug_name=>'Other Detail'
,p_parent_plug_id=>wwv_flow_api.id(15794397704050918)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15791878959050893)
,p_plug_name=>'Energy Flow'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select NU_DOC_NO, ',
'        DT_DOC_DATE ,',
'        NU_LEVEL , ',
'        VC_LOCATION , ',
'        '''' View1 ',
'',
'from DT_ENERGY_FLOW',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   = :GLOBAL_PROJ_ID',
'and   NU_DOC_NO <= greatest(:P14_DELIVERY_POINT,:P14_METERING_POINT ) ',
'ORDER BY 1;'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P14_METERING_POINT,P14_DELIVERY_POINT'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Energy Flow'
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
 p_id=>wwv_flow_api.id(15675083962016299)
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
,p_internal_uid=>2677783425246026
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15675001001016298)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Nu Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15674870858016297)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Dt Doc Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15674806124016296)
,p_db_column_name=>'NU_LEVEL'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Level'
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
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15674757816016295)
,p_db_column_name=>'VC_LOCATION'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Location'
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
 p_id=>wwv_flow_api.id(15674624965016294)
,p_db_column_name=>'VIEW1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'View'
,p_column_link=>'f?p=&APP_ID.:17:&SESSION.::&DEBUG.:17:P17_DOC_NO,P17_DOC_DATE,P17_MODE:#NU_DOC_NO#,#DT_DOC_DATE#,V'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
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
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15657296351316571)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26956'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'VIEW1:NU_LEVEL:VC_LOCATION:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15791694415050891)
,p_plug_name=>'A/c detail & Billing'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15791598359050890)
,p_plug_name=>'A/C Detail'
,p_parent_plug_id=>wwv_flow_api.id(15791694415050891)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15790149386050875)
,p_plug_name=>'Billing Schedule'
,p_parent_plug_id=>wwv_flow_api.id(15791694415050891)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15723401979126986)
,p_plug_name=>'Attachment'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>100
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15677611725016324)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(15723401979126986)
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
 p_id=>wwv_flow_api.id(15677483526016323)
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
,p_internal_uid=>2675383861246002
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15677442431016322)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15677311396016321)
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
 p_id=>wwv_flow_api.id(15677245754016320)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15677124318016319)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15676990445016318)
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
,p_display_condition=>'P14_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15672714401016275)
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
 p_id=>wwv_flow_api.id(15670729067003591)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'26822'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13598467476128789)
,p_plug_name=>'Other Charges'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15725864184127010)
,p_plug_name=>'Other Charges-Grid'
,p_parent_plug_id=>wwv_flow_api.id(13598467476128789)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'',
'VC_PPA_NO,',
'DT_PPA_DATE,',
'NU_CHARGE_ID,',
'VC_CHARGE_TYPE,',
'NU_RATE,',
'VC_REMARKS,',
'ROWID AS PK_ROW,',
'COA_ID NU_ACCOUNT_CODE',
'',
'from DT_OTHER_CHARGES_PPA',
'where ORG_ID  = :global_comp_code',
'and   PRJ_ID  = :GLOBAL_PROJ_ID',
'AND  VC_PPA_NO  = :P14_PPA_NO',
'and  dt_ppa_date = :P14_PPA_DATE;',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P14_PPA_NO,P14_PPA_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Other Charges-Grid'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15725320095127005)
,p_name=>'DT_PPA_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'DT_PPA_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15725240288127004)
,p_name=>'NU_CHARGE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_CHARGE_ID'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Charge'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15924160876825127)
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_null_text=>'---Select---'
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_static_id=>'NU_CHARGE_ID'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15725097716127003)
,p_name=>'VC_CHARGE_TYPE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_CHARGE_TYPE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SELECT_LIST'
,p_heading=>'Charge Type'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_is_required=>true
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_api.id(15919740120763963)
,p_lov_display_extra=>false
,p_lov_display_null=>false
,p_lov_cascade_parent_items=>'NU_CHARGE_ID'
,p_ajax_items_to_submit=>'NU_CHARGE_ID'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15725020237127002)
,p_name=>'NU_RATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_RATE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_NUMBER_FIELD'
,p_heading=>'Rate'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attribute_03=>'left'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15724956763127001)
,p_name=>'VC_REMARKS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_REMARKS'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXTAREA'
,p_heading=>'Remarks'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
,p_is_required=>false
,p_max_length=>200
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_hide=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15724823910127000)
,p_name=>'PK_ROW'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PK_ROW'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15724751501126999)
,p_name=>'NU_ACCOUNT_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'NU_ACCOUNT_CODE'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Account code'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_05=>'BOTH'
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15724605299126998)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15724513417126997)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(15283901752151620)
,p_name=>'VC_PPA_NO'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_PPA_NO'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(15725726140127009)
,p_internal_uid=>2627141247135316
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_add_button_label=>'Add Charge'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(15709712707496310)
,p_interactive_grid_id=>wwv_flow_api.id(15725726140127009)
,p_static_id=>'26432'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(15709476157496310)
,p_report_id=>wwv_flow_api.id(15709712707496310)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15706336781496276)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(15725320095127005)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15705435420496267)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(15725240288127004)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15704554892496260)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>6
,p_column_id=>wwv_flow_api.id(15725097716127003)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15703599086496252)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>7
,p_column_id=>wwv_flow_api.id(15725020237127002)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15702708116496244)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>8
,p_column_id=>wwv_flow_api.id(15724956763127001)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15701832721496237)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>9
,p_column_id=>wwv_flow_api.id(15724823910127000)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15700900086496231)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>10
,p_column_id=>wwv_flow_api.id(15724751501126999)
,p_is_visible=>false
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15699080813495359)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(15724605299126998)
,p_is_visible=>true
,p_is_frozen=>true
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(15252461848385087)
,p_view_id=>wwv_flow_api.id(15709476157496310)
,p_display_seq=>11
,p_column_id=>wwv_flow_api.id(15283901752151620)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13598448214128788)
,p_plug_name=>'Other charge'
,p_parent_plug_id=>wwv_flow_api.id(13598467476128789)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>100
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
''''' edit,',
'c001 as Charge_Name,',
'c002 as Charge_type,',
'c003 as rate,',
'c004 as REMARKS,',
'c005 as account_code,',
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
,p_prn_page_header=>'Other charge'
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
 p_id=>wwv_flow_api.id(13598362271128787)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>4754505116133538
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13598168832128786)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_CHARGE_ID,P33_MODE:#CHARGE_ID#,E'
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
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P14_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13598125725128785)
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
 p_id=>wwv_flow_api.id(13598031182128784)
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
 p_id=>wwv_flow_api.id(13597889438128783)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
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
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13597745286128781)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'E'
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
 p_id=>wwv_flow_api.id(13597639256128780)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'F'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(13597559455128779)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>80
,p_column_identifier=>'G'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13514763259202831)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'48382'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:REMARKS:ACCOUNT_CODE:CHARGE_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3132191094852037)
,p_plug_name=>'Trading Margin'
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>90
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P14_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3132000216852035)
,p_plug_name=>'Trade Margin'
,p_parent_plug_id=>wwv_flow_api.id(3132191094852037)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       C001,',
'       C002,',
'       C003,',
'       C004,',
'       C005,',
'       C006',
'      ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''TRADE_MARGIN_PPA''',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(3131898813852034)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:P68_MODE,P68_ID:E,#C001#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_detail_link_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_detail_link_cond=>'P14_MODE'
,p_detail_link_cond2=>'V'
,p_owner=>'AKSHAY'
,p_internal_uid=>33573835960672616
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3131641827852032)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3131631944852031)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Method of Sale'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(3082181448392603)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3131516760852030)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(3081078054389096)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3131120620852026)
,p_db_column_name=>'C004'
,p_display_order=>50
,p_column_identifier=>'G'
,p_column_label=>'Net Ex Bus Realization of BHPL(Rs/Unit) '
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3131034356852025)
,p_db_column_name=>'C005'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Trade Margin of TPTCL'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(43745122206546409)
,p_db_column_name=>'C006'
,p_display_order=>70
,p_column_identifier=>'I'
,p_column_label=>'Fixed Trading Margin'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(3092873589480524)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'336129'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(13929450943746094)
,p_plug_name=>'Rebate & Surcharge '
,p_parent_plug_id=>wwv_flow_api.id(15909158184469383)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>110
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(15353602422169056)
,p_plug_name=>'Rebate & Surcharge  rEPORT'
,p_parent_plug_id=>wwv_flow_api.id(13929450943746094)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       decode(C002,''R'',''Rebate'',''S'',''Surcharge'' )AS Type1,',
'       C002 Type2,',
'       C003 as Days1,',
'       C004 as Perc,',
'       C001 AS ID1,',
'     -- decode(C005,''A '',''Annual'',''M '',''Month'',''F '',''Flat'') as period,',
'      C005 as period,',
'       C005 perd',
'      ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''SURCHARGE_REBATE_DETAIL''',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Surcharge & Rebate rEPORT'
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
 p_id=>wwv_flow_api.id(15353841036169058)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70:P70_MODE,P70_ID,P70_DAYS,P70_PERCENTAGE,P70_PERIOD,P70_TYPE:E,#ID1#,#DAYS1#,#PERC#,#PERD#,#TYPE2#'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_owner=>'AKSHAY'
,p_internal_uid=>52059575810693708
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15353872148169059)
,p_db_column_name=>'TYPE1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(2677877294388320)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15353992890169060)
,p_db_column_name=>'DAYS1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Days'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15354085121169061)
,p_db_column_name=>'PERC'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Percentage'
,p_column_type=>'STRING'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D00'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15354715333169067)
,p_db_column_name=>'ID1'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Id1'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1737138298090710)
,p_db_column_name=>'TYPE2'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Type2'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1737267490090711)
,p_db_column_name=>'PERD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Perd'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15606420712956255)
,p_db_column_name=>'PERIOD'
,p_display_order=>80
,p_column_identifier=>'E'
,p_column_label=>'Period'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(2705750244259850)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(15371065520271683)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'520769'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'TYPE1:DAYS1:PERC:ID1:PERIOD:TYPE2:PERD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15569476555756198)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(15790149386050875)
,p_button_name=>'Billing_Schedule_List'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Generate or Edit Billing Schedule List'
,p_icon_css_classes=>'fa-list-ul'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(9170613681329238)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(15794344523050917)
,p_button_name=>'Rate_Slab'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Generate or Edit Rate slab wise'
,p_icon_css_classes=>'fa-table-plus'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6118453558947800)
,p_button_sequence=>100
,p_button_plug_id=>wwv_flow_api.id(15909365452469385)
,p_button_name=>'Period_Excluded'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Period Excluded'
,p_icon_css_classes=>'fa-table-ban'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14990380304039278)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15909365452469385)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P14_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P14_REQ_NO.,&P14_PPA_NO.,&P14_PPA_DATE.,PPA,&P14_LAST_PAGE.,&P14_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15792811106050902)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(15909365452469385)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:&P14_LAST_PAGE.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15792959618050903)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(15909365452469385)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P14_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15722596958126978)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(15723401979126986)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P14_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13597387499128778)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13598467476128789)
,p_button_name=>'Add_charge'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:33:&SESSION.::&DEBUG.:33:P33_MODE:A'
,p_button_condition=>'P14_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3131147009852027)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(3132191094852037)
,p_button_name=>'Add_Margin'
,p_button_static_id=>'btn_MAGIN'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P14_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13929538256746095)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(13929450943746094)
,p_button_name=>'ADD_Surcharge'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add '
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:70:&SESSION.::&DEBUG.:70:P70_MODE:A'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(10197637095309538)
,p_branch_name=>'Go To Page 46'
,p_branch_action=>'f?p=&APP_ID.:46:&SESSION.::&DEBUG.:46:P46_TO_DATE,P46_MODE,P46_TO_DATE_PPA:&P14_PERIOD_FROM.,&P14_MODE.,&P14_PERIOD_TO.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(9170613681329238)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3129126639852006)
,p_branch_name=>'Go To Page 68'
,p_branch_action=>'f?p=&APP_ID.:68:&SESSION.::&DEBUG.:68:P68_MODE,P68_METHOD_OF_SALE:A,&P14_METHOD_SALE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3131147009852027)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15568861818756191)
,p_branch_name=>'Go To Page 18 on Billing button'
,p_branch_action=>'f?p=&APP_ID.:18:&SESSION.::&DEBUG.::P18_PERIOD_FROM,P18_PERIOD_TO,P18_PENALTY_DAYS,P18_REBATE_DAYS,P18_BILLING_PERIOD,P18_MODE,P18_DATE:&P14_BILL_FROM.,&P14_BILL_TO.,&P14_PENALTY_DAYS.,&P14_REBATE_DAYS.,&P14_BILL_PERIOD.,&P14_MODE.,&P14_BILL_FROM.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15569476555756198)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15673858008016286)
,p_branch_name=>'Go To Page 13 on save'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_branch_sequence=>40
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_LAST_PAGE'
,p_branch_condition_text=>'13'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15607065304956262)
,p_branch_name=>'Go To Page 73 on save'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_branch_sequence=>50
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_LAST_PAGE'
,p_branch_condition_text=>'73'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15568503689756188)
,p_branch_name=>'Go To Page 13 on cancel'
,p_branch_action=>'f?p=&APP_ID.:13:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15792811106050902)
,p_branch_sequence=>60
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_LAST_PAGE'
,p_branch_condition_text=>'13'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(15607250847956263)
,p_branch_name=>'Go To Page 73 on cancel'
,p_branch_action=>'f?p=&APP_ID.:73:&SESSION.::&DEBUG.:14::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(15792811106050902)
,p_branch_sequence=>70
,p_branch_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_branch_condition=>'P14_LAST_PAGE'
,p_branch_condition_text=>'73'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(6118960756947805)
,p_branch_name=>'go to 78'
,p_branch_action=>'f?p=&APP_ID.:78:&SESSION.::&DEBUG.::P78_MODE:&P14_MODE.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(6118453558947800)
,p_branch_sequence=>80
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15909263721469384)
,p_name=>'P14_PPA_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'System Generated Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
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
 p_id=>wwv_flow_api.id(15909050023469382)
,p_name=>'P14_PPA_DATE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Document Uploaded Date'
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
 p_id=>wwv_flow_api.id(15908897482469381)
,p_name=>'P14_TYPE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:PPA;P,LOI;L,MOU;M'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15908799315469380)
,p_name=>'P14_BILL_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Billing Type'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:JMR;J,Scheduling;S,Exchange;I'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15908491902469377)
,p_name=>'P14_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15908382604469376)
,p_name=>'P14_PERIOD_FROM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Period From'
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
 p_id=>wwv_flow_api.id(15908306317469375)
,p_name=>'P14_PERIOD_TO'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Period To'
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
 p_id=>wwv_flow_api.id(15795027813050924)
,p_name=>'P14_CUSTOMER_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'and :P14_MODE <> ''V''',
'',
'union all',
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and :P14_MODE = ''V''',
'order by 1;'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_MODE'
,p_ajax_items_to_submit=>'P14_MODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Customers'
,p_attribute_08=>'500'
,p_attribute_09=>'500'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794951007050923)
,p_name=>'P14_ADDRESS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Address'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "Address 1" ||''''|| "Address 2" ||''''||"Address 3" ||'', ''|| "City"||''-''||"POSTAL_CODE"||'', ''||"State"  ||'', ''|| "Country" D, "ADDRESS_ID" R',
' --"Address 2"   ||'', ''||"State"  ||'', ''|| "Country" D, "ADDRESS_ID" R',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'AND  "EO_ID"    = :P14_CUSTOMER_CODE',
'order by 1;'))
,p_lov_cascade_parent_items=>'P14_CUSTOMER_CODE'
,p_ajax_items_to_submit=>'P14_CUSTOMER_CODE'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794811524050922)
,p_name=>'P14_EXT_DOC_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'PPA Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794717909050921)
,p_name=>'P14_EXT_DOC_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'PPA Date'
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
 p_id=>wwv_flow_api.id(15794660280050920)
,p_name=>'P14_METERING_POINT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_location d,NU_DOC_NO r',
'from dt_energy_flow',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND CH_METERING_POINT = ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'UNION',
'select ''Not Applicable'',0 r',
'from dual',
'order by 2 ;'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--SELECT---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794526577050919)
,p_name=>'P14_DELIVERY_POINT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Delivery Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_location d,NU_DOC_NO  r',
'from dt_energy_flow',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'order by 2 ',
';'))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794069736050915)
,p_name=>'P14_ITEM'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'AND   "ITEM_GRP_ID" = :P14_ITEM_GROUP',
'and :P14_MODE <> ''V''',
'',
'union all',
'select "Product Name" D,"ITM_ID" R ',
'from APPUA.vw_item_master',
'WHERE "ORG_ID" = :GLOBAL_COMP_CODE',
'AND   "ITEM_GRP_ID" = :P14_ITEM_GROUP',
'and :P14_MODE = ''V''',
'order by 1',
';'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_ITEM_GROUP'
,p_ajax_items_to_submit=>'P14_ITEM_GROUP,P14_MODE'
,p_ajax_optimize_refresh=>'Y'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P14_MODE'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Item'
,p_attribute_08=>'500'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15794049628050914)
,p_name=>'P14_UOM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(15793870936050913)
,p_name=>'P14_QTY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_prompt=>'Max Qty of sale as per PPA'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P14_MODE'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
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
 p_id=>wwv_flow_api.id(15793789586050912)
,p_name=>'P14_RATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_prompt=>'Rate'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>18
,p_tag_css_classes=>'allownumericwithdecimal'
,p_display_when_type=>'NEVER'
,p_read_only_when=>'P14_MODE'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793614992050910)
,p_name=>'P14_REBATE_DAYS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Rebate '
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'allownumeric'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793563816050909)
,p_name=>'P14_REBATE_PER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Rebate %'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793444184050908)
,p_name=>'P14_REBATE_BASIC'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13929450943746094)
,p_prompt=>'Start Date for Rebate Calculation '
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Date of Invoice;Date of Invoice,Date of Presentation of Invoice;Date of Presentation of Invoice '
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793307619050907)
,p_name=>'P14_PENALTY_DAYS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Surchage'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'allownumeric'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793257622050906)
,p_name=>'P14_PENALTY_PER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Surcharge%'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>5
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'0'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15793070895050905)
,p_name=>'P14_PENALTY_BASIC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(13929450943746094)
,p_prompt=>'Start Date for Surcharge Calculation'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Date of Invoice;Date of Invoice,Date of Presentation of Invoice ;Date of Presentation of Invoice '
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15791559379050889)
,p_name=>'P14_BENEFE_NAME'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15791598359050890)
,p_prompt=>'Baneficiary  Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15791370503050888)
,p_name=>'P14_BANK_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(15791598359050890)
,p_prompt=>'Bank Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
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
 p_id=>wwv_flow_api.id(15791345208050887)
,p_name=>'P14_BRANCH'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15791598359050890)
,p_prompt=>'Branch'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>100
,p_tag_css_classes=>'u-textUpper'
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
 p_id=>wwv_flow_api.id(15791194992050886)
,p_name=>'P14_ACCCOUNT_NO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15791598359050890)
,p_prompt=>'Account Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_css_classes=>'u-textUpper'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15791085537050885)
,p_name=>'P14_IFSC_CODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(15791598359050890)
,p_prompt=>'IFSC Code'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>20
,p_tag_css_classes=>'u-textUpper'
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
 p_id=>wwv_flow_api.id(15727132474127023)
,p_name=>'P14_BILL_PERIOD'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15790149386050875)
,p_prompt=>'Bill Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Daily;D,Weekly;W,Fortnightly;F,Monthly;M,Custom;C'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15727038856127022)
,p_name=>'P14_BILL_FROM'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15790149386050875)
,p_prompt=>'Period From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_10=>'showDropdowns'
,p_attribute_14=>'P14_BILL_TO'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15726916509127021)
,p_name=>'P14_BILL_TO'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(15790149386050875)
,p_prompt=>'Period To Date'
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
 p_id=>wwv_flow_api.id(15726566627127017)
,p_name=>'P14_CUST_ACC_NO'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15726181451127014)
,p_name=>'P14_ITEM_ACC_CODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15723884848126991)
,p_name=>'P14_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15725864184127010)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15463748715004920)
,p_name=>'P14_ITEM_GROUP'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(15794344523050917)
,p_prompt=>'Item Group'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and ACTIVE = ''Y''',
'and :P14_MODE <> ''V''',
'union all',
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and :P14_MODE  = ''V''',
'order by 1 asc'))
,p_lov_display_null=>'YES'
,p_lov_cascade_parent_items=>'P14_MODE'
,p_ajax_items_to_submit=>'P14_MODE'
,p_ajax_optimize_refresh=>'N'
,p_cSize=>30
,p_read_only_when=>'P14_MODE'
,p_read_only_when2=>'V'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'Y'
,p_attribute_06=>'0'
,p_attribute_07=>'Item Group'
,p_attribute_08=>'500'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15281221954151593)
,p_name=>'P14_WKF_STAGE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14990326661039277)
,p_name=>'P14_REQ_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14770097655186917)
,p_name=>'P14_LAST_PAGE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14668636563569477)
,p_name=>'P14_AUTH_FLAG'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14529426350438821)
,p_name=>'P14_LABEL_NAME'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P14_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3129510609852010)
,p_name=>'P14_TRADING_MARGING'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3132191094852037)
,p_item_default=>'N'
,p_prompt=>'Trading Marging Applicable'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3129324404852008)
,p_name=>'P14_METHOD_SALE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3132191094852037)
,p_prompt=>'Method of Sale'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Through Collective Transaction ;P,Through Bilateral Transaction;T'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13928870354746089)
,p_name=>'P14_MIN_SUPPLY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Min Supply%'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>2
,p_tag_css_classes=>'allownumeric'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929013401746090)
,p_name=>'P14_MAX_SUPPLY'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Max Supply%'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_tag_css_classes=>'allownumeric'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929071667746091)
,p_name=>'P14_MIN_SUPPLY_TERM'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Min Supply Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Monthly;M,Yearly;Y'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13929177883746092)
,p_name=>'P14_MAX_SUPPLY_TERM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(15794180205050916)
,p_prompt=>'Max Supply Period'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Monthly;M,Yearly;Y'
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15606953638956260)
,p_name=>'P14_AMENDMENT_NO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_prompt=>'Amendment No'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_display_when=>'P14_LAST_PAGE'
,p_display_when2=>'73'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15606998251956261)
,p_name=>'P14_AMENDMENT_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(15909365452469385)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Amendment  Date'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_begin_on_new_line=>'N'
,p_display_when=>'P14_LAST_PAGE'
,p_display_when2=>'73'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792978018050904)
,p_validation_name=>'Type not null'
,p_validation_sequence=>10
,p_validation=>'P14_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type.'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792700937050901)
,p_validation_name=>'BILL TYPE not null'
,p_validation_sequence=>20
,p_validation=>'P14_BILL_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Bill Type'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792586786050900)
,p_validation_name=>'Bill from not null'
,p_validation_sequence=>30
,p_validation=>'P14_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period From Date'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792549168050899)
,p_validation_name=>'Bill to not null'
,p_validation_sequence=>40
,p_validation=>'P14_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period To Date'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792450102050898)
,p_validation_name=>'Customer not null'
,p_validation_sequence=>50
,p_validation=>'P14_CUSTOMER_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Customer'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15726737533127019)
,p_validation_name=>'Address not null'
,p_validation_sequence=>60
,p_validation=>'P14_ADDRESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Address.'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792159686050895)
,p_validation_name=>'external doc no not null'
,p_validation_sequence=>70
,p_validation=>'P14_EXT_DOC_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter External Document No'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15792010290050894)
,p_validation_name=>'external doc date  not null'
,p_validation_sequence=>80
,p_validation=>'P14_EXT_DOC_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter External document Date'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283702053151618)
,p_validation_name=>'delivery point not null'
,p_validation_sequence=>90
,p_validation=>'P14_DELIVERY_POINT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Delivery Point'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283630914151617)
,p_validation_name=>'metering point not null'
,p_validation_sequence=>100
,p_validation=>'P14_METERING_POINT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Select Metering Point'
,p_validation_condition=>'P14_BILL_TYPE'
,p_validation_condition2=>'J'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43742092125546379)
,p_validation_name=>'metering point not null_1'
,p_validation_sequence=>110
,p_validation=>'P14_METERING_POINT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Metering Point'
,p_validation_condition=>'P14_BILL_TYPE'
,p_validation_condition2=>'J'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283505970151616)
,p_validation_name=>'Item group not null'
,p_validation_sequence=>120
,p_validation=>'P14_ITEM_GROUP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Item Group'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283426848151615)
,p_validation_name=>'Item not null'
,p_validation_sequence=>130
,p_validation=>'P14_ITEM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item not null'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283334303151614)
,p_validation_name=>'Uom not null'
,p_validation_sequence=>140
,p_validation=>'P14_UOM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'UOM not Found. Contact Administration'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283263089151613)
,p_validation_name=>'Qty not null'
,p_validation_sequence=>150
,p_validation=>'P14_QTY'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Qty'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283125224151612)
,p_validation_name=>'Rate not null'
,p_validation_sequence=>160
,p_validation=>'P14_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Not null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15791065735050884)
,p_validation_name=>'Rebate Days  not null'
,p_validation_sequence=>170
,p_validation=>'P14_REBATE_DAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Rebate Days'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15282045928151601)
,p_validation_name=>'Rebate per not null'
,p_validation_sequence=>180
,p_validation=>'P14_REBATE_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Rebate Per'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15568263043756185)
,p_validation_name=>'Rebate Days  not null  on billing button'
,p_validation_sequence=>190
,p_validation=>'P14_REBATE_DAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Rebate Days'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15569476555756198)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790943266050883)
,p_validation_name=>'Reabate Date not null'
,p_validation_sequence=>200
,p_validation=>'P14_REBATE_BASIC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Date Basic (Rebate)'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790843410050882)
,p_validation_name=>'penalty days not null'
,p_validation_sequence=>210
,p_validation=>'P14_PENALTY_DAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Penalty Days'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15281881450151600)
,p_validation_name=>'penalty per not null'
,p_validation_sequence=>220
,p_validation=>'P14_PENALTY_PER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Penalty Per'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15568405421756187)
,p_validation_name=>'penalty days not null on billing button'
,p_validation_sequence=>230
,p_validation=>'P14_PENALTY_DAYS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Penalty Days'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(15569476555756198)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790737350050881)
,p_validation_name=>'Penalty date not null'
,p_validation_sequence=>240
,p_validation=>'P14_PENALTY_BASIC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Date Basic (Penalty)'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790618561050880)
,p_validation_name=>'Baneficiary  Name not null'
,p_validation_sequence=>250
,p_validation=>'P14_BENEFE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Baneficiary Name'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790522972050879)
,p_validation_name=>'Bank Name not null'
,p_validation_sequence=>260
,p_validation=>'P14_BANK_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Bank Name'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790456545050878)
,p_validation_name=>'Branch not null'
,p_validation_sequence=>270
,p_validation=>'P14_BRANCH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Branch'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790364672050877)
,p_validation_name=>'Enter Account No not null'
,p_validation_sequence=>280
,p_validation=>'P14_ACCCOUNT_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Account No'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15790217331050876)
,p_validation_name=>'ifsc code not null'
,p_validation_sequence=>290
,p_validation=>'P14_IFSC_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Ifsc Code'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15726776893127020)
,p_validation_name=>'Bill Period not null'
,p_validation_sequence=>300
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P14_BILL_TYPE <> ''I'' then  ',
'',
' If :P14_BILL_PERIOD IS NULL THEN',
'    RETURN ''Select Bill Period'';',
' end if;',
' If :P14_BILL_FROM IS NULL THEN',
'    RETURN ''Select Bill From Date'';',
' end if;',
'  If :P14_BILL_TO IS NULL THEN',
'    RETURN ''Select Bill To Date'';',
' end if;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15568148656756184)
,p_validation_name=>'Bill Period not null on '
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
' If :P14_BILL_PERIOD IS NULL THEN',
'    RETURN ''Select Bill Period'';',
' end if;',
' If :P14_BILL_FROM IS NULL THEN',
'    RETURN ''Select Bill From Date'';',
' end if;',
'  If :P14_BILL_TO IS NULL THEN',
'    RETURN ''Select Bill To Date'';',
' end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15569476555756198)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15462932023004912)
,p_validation_name=>'Check Billing Scheduled Generate or not'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''BILLING_SCHEDULE'' ;',
'',
' IF :P14_BILL_TYPE <> ''I'' then  ',
'  IF :P14_BILL_PERIOD is not null and nvl(v_chk,0) = 0 then',
'   return ''Billing Schedule not found.Click on Greneate Billing Scheduled Button to generate'';',
'',
'  end if;',
'',
'  end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(15283839734151619)
,p_validation_name=>'check proj'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'    begin',
'     select VC_PROJ_PREFIX',
'      into v_chk  ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     exception  when no_data_found then  null;',
'    end;',
'      if nvl(v_chk,''XX'') = ''XX'' THEN',
'       RETURN ''Project Prefix not defined.Contact Administration'';',
'      END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13341255127615601)
,p_validation_name=>'Check financial year open or not'
,p_validation_sequence=>340
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'',
'      SELECT    count(*)',
'       INTO     v_chk',
'       FROM     APPUA.VW_FY',
'       WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ',
'       and     FY_STRT < sysdate ',
'       and      FY_END  > sysdate ;',
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
,p_error_message=>'Financial year  not open in ERP. Contact System Administration'
,p_validation_condition=>'P14_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
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
 p_id=>wwv_flow_api.id(10197762762309539)
,p_validation_name=>'check period from on rate slab'
,p_validation_sequence=>350
,p_validation=>'P14_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period From date'
,p_when_button_pressed=>wwv_flow_api.id(9170613681329238)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10198226868309544)
,p_validation_name=>'Check slab defined or not'
,p_validation_sequence=>360
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''RATE_SLAB'' ;',
'',
'',
'  IF  nvl(v_chk,0) = 0 then',
'   return ''Rate not found.Click on Generate or Edit Rate slab wise Button to generate'';',
'',
'  end if;',
'',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition=>'P14_BILL_TYPE'
,p_validation_condition2=>'I'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(10984745224197812)
,p_validation_name=>'Customer Acccount Not found'
,p_validation_sequence=>370
,p_validation=>'P14_CUST_ACC_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer Account Code Not found. Please Select customer again or Contact system Administration'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3129380990852009)
,p_validation_name=>'Trading marging applicable yes or no'
,p_validation_sequence=>380
,p_validation=>'P14_TRADING_MARGING'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Trading margin applicable Yes or No'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_associated_item=>wwv_flow_api.id(3129510609852010)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3129155383852007)
,p_validation_name=>'Select Method of sale'
,p_validation_sequence=>390
,p_validation=>'P14_METHOD_SALE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Method of sale'
,p_when_button_pressed=>wwv_flow_api.id(3131147009852027)
,p_associated_item=>wwv_flow_api.id(3129324404852008)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(13929326791746093)
,p_validation_name=>'PPA No Duplicate'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_count number;',
'',
'',
'begin',
'',
'        IF :P14_MODE = ''A''  THEN',
'',
'        Select',
'        COUNT(*)',
'        INTO V_COUNT',
'        from mst_ppa',
'        where ORG_ID   =  :GLOBAL_COMP_CODE',
'        AND PRJ_ID   =  :GLOBAL_PROJ_ID',
'        AND VC_EXTERNAL_DOC_NO = :P14_EXT_DOC_NO',
'        AND DT_EXTERNAL_DOC_DATE = :P14_EXT_DOC_DATE',
'        ;',
'',
'        ELSIF :P14_MODE = ''E'' then',
'        Select',
'        COUNT(*)',
'        INTO V_COUNT',
'        from mst_ppa',
'        where ORG_ID   =  :GLOBAL_COMP_CODE',
'        AND PRJ_ID   =  :GLOBAL_PROJ_ID',
'        AND VC_EXTERNAL_DOC_NO = :P14_EXT_DOC_NO',
'        AND DT_EXTERNAL_DOC_DATE = :P14_EXT_DOC_DATE',
'        AND VC_PPA_NO <> :P14_PPA_NO',
'        AND DT_PPA_DATE <> :P14_PPA_DATE',
'        ;',
'',
'        END IF;',
'',
'',
'IF V_COUNT > 0 THEN',
'',
'    RETURN ''PPA No and PPA Date already Created. Enter different PPA No and PPA Date'';',
'',
'end if;',
'',
'END ;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(15792959618050903)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1567962988481699)
,p_validation_name=>'Billing schedule from range'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P14_BILL_FROM,''DD-MM-YYYY'') <= to_date(:P14_PERIOD_TO,''DD-MM-YYYY'') ',
'and  to_date(:P14_BILL_FROM,''DD-MM-YYYY'') >= to_date(:P14_PERIOD_FROM,''DD-MM-YYYY'') then',
'return true;',
'else',
'return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Period from date should be between PPA Period Range (&P14_PERIOD_FROM. to &P14_PERIOD_TO.).'
,p_when_button_pressed=>wwv_flow_api.id(15569476555756198)
,p_associated_item=>wwv_flow_api.id(15727038856127022)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1568082577481700)
,p_validation_name=>'Billing schedule from range_1'
,p_validation_sequence=>420
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if to_date(:P14_BILL_TO,''DD-MM-YYYY'') <= to_date(:P14_PERIOD_TO,''DD-MM-YYYY'') ',
'and  to_date(:P14_BILL_TO,''DD-MM-YYYY'') >= to_date(:P14_PERIOD_FROM,''DD-MM-YYYY'') then',
'return true;',
'else',
'return false;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Period to date should be between PPA Period Range (&P14_PERIOD_FROM. to &P14_PERIOD_TO.).'
,p_when_button_pressed=>wwv_flow_api.id(15569476555756198)
,p_associated_item=>wwv_flow_api.id(15726916509127021)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6119172273947807)
,p_validation_name=>'period exclusion'
,p_validation_sequence=>430
,p_validation=>'P14_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period To date'
,p_when_button_pressed=>wwv_flow_api.id(6118453558947800)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6119299101947808)
,p_validation_name=>'period exclusion_1'
,p_validation_sequence=>440
,p_validation=>'P14_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Period from date'
,p_when_button_pressed=>wwv_flow_api.id(6118453558947800)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15726377890127016)
,p_name=>'SET CUSTOMER ACCOUNT CODE'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_CUSTOMER_CODE'
,p_condition_element=>'P14_CUSTOMER_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15726320630127015)
,p_event_id=>wwv_flow_api.id(15726377890127016)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_CUST_ACC_NO'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select distinct"COA_ID"',
'from APPUA.vw_customer',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'AND "EO_ID" = :P14_CUSTOMER_CODE'))
,p_attribute_07=>'P14_CUSTOMER_CODE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15724351474126995)
,p_name=>'SET CHARGE TYPE AND ACC CODE'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15725864184127010)
,p_triggering_element=>'NU_CHARGE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'NU_CHARGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15724263825126994)
,p_event_id=>wwv_flow_api.id(15724351474126995)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_CHARGE_TYPE,NU_ACCOUNT_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select vc_charge_type,coa_id',
'from mst_other_charges',
'where org_id = :GLOBAL_COMP_CODE',
'and  nu_charge_id = :NU_CHARGE_ID'))
,p_attribute_07=>'NU_CHARGE_ID'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15724127694126993)
,p_name=>'GET DUPLICATE VALUE'
,p_event_sequence=>30
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(15725864184127010)
,p_triggering_element=>'NU_CHARGE_ID'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'NU_CHARGE_ID'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15724057811126992)
,p_event_id=>wwv_flow_api.id(15724127694126993)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P14_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''CHARGE_DUPLICATE'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''CHARGE_DUPLICATE'' AND C001=:NU_CHARGE_ID;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P14_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''CHARGE_DUPLICATE'',',
'                                       P_C001            => :NU_CHARGE_ID',
'                                    ',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;'))
,p_attribute_02=>'NU_CHARGE_ID,P14_DUPLICATE'
,p_attribute_03=>'P14_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15723784897126990)
,p_name=>'SHOW ERROR DUPLICATE'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_DUPLICATE'
,p_condition_element=>'P14_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15723671176126989)
,p_event_id=>wwv_flow_api.id(15723784897126990)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'		apex.message.showErrors([',
'   		 {',
'       		 type:       "error",',
'        		location:   [ "page", "inline" ],',
'        		pageItem:   "",',
'        		message:    ''Duplicate Charge'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15723580735126988)
,p_event_id=>wwv_flow_api.id(15723784897126990)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'NU_CHARGE_ID'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'NULL'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15675947420016307)
,p_name=>'closed dialog refresh region'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15675769047016306)
,p_event_id=>wwv_flow_api.id(15675947420016307)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15677611725016324)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(13597305813128777)
,p_event_id=>wwv_flow_api.id(15675947420016307)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(13598448214128788)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3130098289852016)
,p_event_id=>wwv_flow_api.id(15675947420016307)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3132000216852035)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15354246020169062)
,p_event_id=>wwv_flow_api.id(15675947420016307)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15353602422169056)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15674494490016293)
,p_name=>'REFRESH ENERGY FLOW REGION ON DELIVERY POINT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_DELIVERY_POINT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15674449292016292)
,p_event_id=>wwv_flow_api.id(15674494490016293)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15791878959050893)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15674274293016291)
,p_name=>'REFRESH ENERGY FLOW REGION ON METERING POINT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_METERING_POINT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15674256259016290)
,p_event_id=>wwv_flow_api.id(15674274293016291)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15791878959050893)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15572047888756223)
,p_name=>'GET ITEM ACCOUNT CODE'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15571932814756222)
,p_event_id=>wwv_flow_api.id(15572047888756223)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_ITEM_ACC_CODE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT COA_ID',
'FROM APPUA.VW_ITM_COA',
'WHERE HO_ORG_ID = :GLOBAL_PARENT_COMP',
'AND   "ITM_ID"  = :P14_ITEM',
'AND   "ACCOUNT_FOR_ID" = ''145'''))
,p_attribute_07=>'P14_ITEM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15567483179756178)
,p_name=>'DELETE BILLING COLLECTION ON CHANGE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_BILL_PERIOD,P14_REBATE_DAYS,P14_PENALTY_DAYS,P14_BILL_FROM,P14_BILL_TO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15567382077756177)
,p_event_id=>wwv_flow_api.id(15567483179756178)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15463095689004914)
,p_name=>'GET ITEM UOM'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_ITEM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15462997886004913)
,p_event_id=>wwv_flow_api.id(15463095689004914)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_UOM'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>'SELECT get_item_uom(:GLOBAL_COMP_CODE,:P14_ITEM_GROUP,:P14_ITEM)uom  FROM DUAL;'
,p_attribute_07=>'P14_ITEM_GROUP,P14_ITEM'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15282271591151604)
,p_name=>'show hide billing & payment Scheduled'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_BILL_TYPE'
,p_condition_element=>'P14_BILL_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'I'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15282178619151603)
,p_event_id=>wwv_flow_api.id(15282271591151604)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15790149386050875)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15282153180151602)
,p_event_id=>wwv_flow_api.id(15282271591151604)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(15790149386050875)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12604444747129342)
,p_event_id=>wwv_flow_api.id(15282271591151604)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9170613681329238)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(12604350624129341)
,p_event_id=>wwv_flow_api.id(15282271591151604)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(9170613681329238)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14770724183186923)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>130
,p_condition_element=>'P14_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14770643782186922)
,p_event_id=>wwv_flow_api.id(14770724183186923)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14990380304039278)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P14_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14668807144569479)
,p_name=>'hide forward on add mode'
,p_event_sequence=>140
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P14_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14668677625569478)
,p_event_id=>wwv_flow_api.id(14668807144569479)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14990380304039278)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14668467376569475)
,p_name=>'hide forward on auth flag Y'
,p_event_sequence=>150
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14529720435438824)
,p_event_id=>wwv_flow_api.id(14668467376569475)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14990380304039278)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(9405750152209818)
,p_name=>'hide ppa no/ppa date'
,p_event_sequence=>160
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P14_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(9405587270209817)
,p_event_id=>wwv_flow_api.id(9405750152209818)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_PPA_NO,P14_PPA_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1815417206468346)
,p_name=>'MArgin applicable then show button'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TRADING_MARGING'
,p_condition_element=>'P14_TRADING_MARGING'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1815312224468345)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_METHOD_SALE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1814938702468342)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3131147009852027)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1815163098468344)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3131147009852027)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1815064181468343)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_METHOD_SALE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1814893998468341)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_METHOD_SALE'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1814741802468340)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;'))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1814718530468339)
,p_event_id=>wwv_flow_api.id(1815417206468346)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(3132000216852035)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6118625054947801)
,p_name=>'GET NAME'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6118702390947802)
,p_event_id=>wwv_flow_api.id(6118625054947801)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if ($v("P14_TYPE")==''P'') {',
'    $("label[for=P14_EXT_DOC_NO]").text("PPA Number")',
'     $("label[for=P14_EXT_DOC_DATE]").text("PPA Date")',
'} else if ($v("P14_TYPE")==''L'') {',
'    $("label[for=P14_EXT_DOC_NO]").text("LOI Number")',
'     $("label[for=P14_EXT_DOC_DATE]").text("LOI Date")',
'}',
'else if ($v("P14_TYPE")==''M'') {',
'    $("label[for=P14_EXT_DOC_NO]").text("MOU Number")',
'     $("label[for=P14_EXT_DOC_DATE]").text("MOU Date")',
'}',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6118776064947803)
,p_name=>'ref'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P14_EXT_DOC_NO_1'
,p_condition_element=>'P14_EXT_DOC_NO_1'
,p_triggering_condition_type=>'IN_LIST'
,p_triggering_expression=>'P,M,L'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6118845982947804)
,p_event_id=>wwv_flow_api.id(6118776064947803)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P14_EXT_DOC_NO,P14_EXT_DOC_DATE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15726584978127018)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into PPA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code VARCHAR2(30);',
'v_prj_prefix varchar2(5);',
'V_STRT_YEAR DATE;',
'V_END_YEAR  DATE;',
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
'            select  --lpad(nvl(max(to_number(substr(VC_PPA_NO,instr(VC_PPA_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'              ',
'               NVL (MAX(TO_NUMBER(SUBSTR(VC_PPA_NO,5))),0) +1 ',
'            into  v_code ',
'            from mst_ppa ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            and CH_TYPE = :P14_TYPE;',
'            --AND  DT_PPA_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'        --  :P14_PPA_NO :=v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'',
'              if :P14_TYPE = ''P'' then',
'            :P14_PPA_NO := ''PPA-'' ||v_code;',
'',
'            elsif :P14_TYPE = ''M'' then',
'',
'             :P14_PPA_NO := ''MOU-'' ||v_code;',
'',
'             else',
'            :P14_PPA_NO := ''LOI-'' ||v_code;',
'             end if;',
'    ',
'    end;',
'',
'insert into mst_ppa',
'(',
'ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, EO_ID, COA_ID, CH_TYPE, CH_BILLING_TYPE, DT_FROM_DATE, DT_TO_DATE, ',
'ADDS_ID, VC_EXTERNAL_DOC_NO, DT_EXTERNAL_DOC_DATE, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID,GRP_ID, ITM_ID, ITM_ID_COA, ',
'NU_QTY, NU_RATE, NU_REBATE_DAYS, NU_REBATE_PER, VC_REBATE_BASIS, NU_PENALTY_DAYS, NU_PENALTY_PER, VC_PENALTY_BASIS,  ',
'VC_BENEFICIARY, VC_BANK_NAME, VC_BRANCH, VC_BANK_ACC_NO, VC_IFSC_CODE, CH_BILLING_PERIOD, DT_BILL_FROM, DT_BILL_TO, USR_ID_CREATE, ',
'USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID,VC_TRADING_APPLICABLE,V_METHOD_OF_SALE,',
'NU_MAX_SUPPLY,VC_MAX_SUPPLY_PERIOD,NU_MIN_SUPPLY,VC_MIN_SUPPLY_PERIOD',
')',
'values',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO, :P14_PPA_DATE, :P14_CUSTOMER_CODE , :P14_CUST_ACC_NO, :P14_TYPE, :P14_BILL_TYPE, :P14_PERIOD_FROM,:P14_PERIOD_TO,',
':P14_ADDRESS, :P14_EXT_DOC_NO, :P14_EXT_DOC_DATE, :P14_DELIVERY_POINT, :P14_METERING_POINT,:P14_ITEM_GROUP, :P14_ITEM, :P14_ITEM_ACC_CODE,  ',
':P14_QTY, :P14_RATE, :P14_REBATE_DAYS, :P14_REBATE_PER, :P14_REBATE_BASIC, :P14_PENALTY_DAYS, :P14_PENALTY_PER, :P14_PENALTY_BASIC,',
'upper(:P14_BENEFE_NAME), upper(:P14_BANK_NAME), upper(:P14_BRANCH),upper( :P14_ACCCOUNT_NO), upper(:P14_IFSC_CODE), :P14_BILL_PERIOD, :P14_BILL_FROM, :P14_BILL_TO, :GLOBAL_USER_CODE,',
'SYSDATE, :GLOBAL_USER_CODE, sysdate , :GLOBAL_PARENT_COMP,:P14_TRADING_MARGING,:P14_METHOD_SALE,',
':P14_MAX_SUPPLY,:P14_MAX_SUPPLY_TERM,:P14_MIN_SUPPLY,:P14_MIN_SUPPLY_TERM',
'',
');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15724371364126996)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(15725864184127010)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Other Charges - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'  case v(''APEX$ROW_STATUS'')',
'    when ''C'' then',
'        insert into DT_OTHER_CHARGES_PPA ( ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE,',
'                            VC_REMARKS, COA_ID, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID )',
'        values ( :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO ,:P14_PPA_DATE , :NU_CHARGE_ID , :VC_CHARGE_TYPE , :NU_RATE ,',
'                 :VC_REMARKS,:NU_ACCOUNT_CODE, :GLOBAL_USER_CODE, SYSDATE , :GLOBAL_USER_CODE , SYSDATE,:GLOBAL_PARENT_COMP',
'               );',
'        --returning rowid into :PK_ROW;',
'    when ''U'' then',
'    insert into abc values(:P14_PPA_NO);',
'        update DT_OTHER_CHARGES_PPA',
'           set NU_CHARGE_ID     = :NU_CHARGE_ID,',
'               VC_CHARGE_TYPE   = :VC_CHARGE_TYPE,',
'               NU_RATE          = :NU_RATE,',
'               VC_REMARKS       = :VC_REMARKS,',
'               COA_ID  = :VC_ACCOUNT_CODE',
'         where rowid            = :PK_ROW;',
'    when ''D'' then',
'        delete DT_OTHER_CHARGES_PPA',
'         where rowid = :PK_ROW;',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_process_when_type=>'NEVER'
,p_exec_cond_for_each_row=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6119079094947806)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into exclusion period'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''EXCLUSION_PERIOD'';',
'      ',
' v_id  number;',
' ',
' begin',
'',
'IF :P14_MODE = ''E'' THEN',
'DELETE FROM DT_Exclusion_Period',
'       WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'       AND PRJ_ID     = :GLOBAL_PROJ_ID ',
'       AND VC_PPA_NO      = :P14_PPA_NO ',
'      AND DT_PPA_DATE     = :P14_PPA_DATE;',
'END IF;',
'',
'',
'FOR I IN C1 LOOP',
'INSERT INTO DT_Exclusion_Period',
'(',
'   ORG_ID,',
'    PRJ_ID,',
'     VC_PPA_NO,',
'      DT_PPA_DATE,',
'       DT_FROM_DATE,',
'        DT_TO_DATE,',
'         NU_ID,',
'          USR_ID_CREATE,',
'           USR_ID_CREATE_DT, ',
'           USR_ID_MOD_DT,',
'            HO_ORG_ID',
')',
'VALUES',
'(',
'    :GLOBAL_COMP_CODE,',
'     :GLOBAL_PROJ_ID,',
'      :P14_PPA_NO, ',
'      :P14_PPA_DATE,',
'       I.C001,',
'        I.C002,',
'        exc_period.nextval,',
'    :GLOBAL_USER_CODE, ',
'    SYSDATE,',
'     SYSDATE, ',
'     :GLOBAL_PARENT_COMP',
');',
'',
'END LOOP;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
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
 p_id=>wwv_flow_api.id(13597161015128775)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'other charges insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (Select c001 as NU_CHARGE_ID ,c002 as VC_CHARGE_TYPE ,c003 as NU_RATE ,c004 as VC_REMARKS ,c005  as NU_ACCOUNT_CODE',
'              from apex_collections ',
'             where COLLECTION_NAME=''OTHER_CHARGE'');   ',
'begin',
'',
'if :P14_MODE = ''E'' THEN',
'DELETE  from  DT_OTHER_CHARGES_PPA',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_PPA_NO   = :P14_PPA_NO ',
'               AND   DT_PPA_DATE   = :P14_PPA_DATE;',
'',
'END IF;',
'',
'for i in c1 loop',
'  insert into DT_OTHER_CHARGES_PPA ( ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE,',
'                            VC_REMARKS, COA_ID, USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID )',
'        values ( :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO ,:P14_PPA_DATE , I.NU_CHARGE_ID , I.VC_CHARGE_TYPE ,I.NU_RATE ,',
'                 I.VC_REMARKS,I.NU_ACCOUNT_CODE, :GLOBAL_USER_CODE, SYSDATE , :GLOBAL_USER_CODE , SYSDATE,:GLOBAL_PARENT_COMP',
'               );',
'',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15355104081169071)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SURCHARGES & REBATE insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (Select c001 as v_id ,c002 as v_type ,c003 as v_days ,c004 as v_perc , c005 as v_period',
'              from apex_collections ',
'             where COLLECTION_NAME=''SURCHARGE_REBATE_DETAIL'');   ',
'begin',
'',
'if :P14_MODE = ''E'' THEN',
'DELETE  from  DT_PPA_REBATE_SURCHARGE',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_PPA_NO   = :P14_PPA_NO ',
'               AND   DT_PPA_DATE   = :P14_PPA_DATE;',
'',
'END IF;',
'',
'for i in c1 loop',
'  insert into DT_PPA_REBATE_SURCHARGE ( ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, nu_id, CH_TYPE, NU_DAYS,',
'                            NU_PER, uSR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID, CH_PERIOD )',
'        values ( :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO ,:P14_PPA_DATE , I.v_id , I.v_type ,I.v_days ,',
'                 I.v_perc, :GLOBAL_USER_CODE, SYSDATE , :GLOBAL_USER_CODE , SYSDATE,:GLOBAL_PARENT_COMP, I.V_PERIOD',
'               );',
'',
'end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15675613845016304)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into upload file'
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
'IF :P14_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P14_PPA_NO ',
'                            AND DT_DOC_DATE = :P14_PPA_DATE',
'                            AND VC_TRANS_TYPE=''PPA'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,:P14_PPA_DATE,:P14_PPA_NO,:P14_PPA_DATE,''PPA'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15572127719756224)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE INTO PPA'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'AMT NUMBER;',
'',
'BEGIN',
'',
'IF :P14_LAST_PAGE = 73 THEN',
'SELECT NVL(MAX(NU_AMENDMENT_NO),0) + 1 INTO AMT ',
'FROM MST_PPA',
'WHERE  ORG_ID  = :global_comp_code',
'and   PRJ_ID    = :GLOBAL_PROJ_ID ',
'AND   VC_PPA_NO     = :P14_PPA_NO',
'AND   DT_PPA_DATE   = :P14_PPA_DATE;',
'END IF;',
'',
'UPDATE  mst_ppa',
'SET ',
'EO_ID                =  :P14_CUSTOMER_CODE, ',
'COA_ID                =  :P14_CUST_ACC_NO , ',
'CH_TYPE               =  :P14_TYPE,  ',
'CH_BILLING_TYPE       =  :P14_BILL_TYPE,',
'DT_FROM_DATE          =  :P14_PERIOD_FROM,  ',
'DT_TO_DATE            =  :P14_PERIOD_TO,',
'ADDS_ID                =  :P14_ADDRESS,',
'VC_EXTERNAL_DOC_NO    =  :P14_EXT_DOC_NO,',
'DT_EXTERNAL_DOC_DATE  =  :P14_EXT_DOC_DATE,',
'NU_DELIVERY_POINT_ID  =  :P14_DELIVERY_POINT,',
'NU_METERING_POINT_ID  =  :P14_METERING_POINT,',
'GRP_ID                =  :P14_ITEM_GROUP,',
'ITM_ID                =  :P14_ITEM,',
'ITM_ID_COA            =  :P14_ITEM_ACC_CODE,',
'NU_QTY                =  :P14_QTY, ',
'NU_RATE               =  :P14_RATE, ',
'NU_REBATE_DAYS        =  :P14_REBATE_DAYS, ',
'NU_REBATE_PER         =  :P14_REBATE_PER, ',
'VC_REBATE_BASIS       =  :P14_REBATE_BASIC, ',
'NU_PENALTY_DAYS       =  :P14_PENALTY_DAYS ,',
'NU_PENALTY_PER        =  :P14_PENALTY_PER,',
'VC_PENALTY_BASIS      =  :P14_PENALTY_BASIC, ',
'VC_BENEFICIARY        =  upper(:P14_BENEFE_NAME), ',
'VC_BANK_NAME          =  upper(:P14_BANK_NAME),        ',
'VC_BRANCH             =  upper(:P14_BRANCH), ',
'VC_BANK_ACC_NO        =  upper(:P14_ACCCOUNT_NO),',
'VC_IFSC_CODE          =  upper(:P14_IFSC_CODE),  ',
'CH_BILLING_PERIOD     =  :P14_BILL_PERIOD, ',
'DT_BILL_FROM          =  :P14_BILL_FROM, ',
'DT_BILL_TO            =  :P14_BILL_TO, ',
'--VC_AUTH_CODE          =  :GLOBAL_USER_CODE, ',
'USR_ID_MOD_DT           =  SYSDATE,',
'USR_ID_MOD            = :GLOBAL_USER_CODE,',
'VC_TRADING_APPLICABLE = :P14_TRADING_MARGING,',
'NU_MAX_SUPPLY          = :P14_MAX_SUPPLY,',
'VC_MAX_SUPPLY_PERIOD   =  :P14_MAX_SUPPLY_TERM,',
'NU_MIN_SUPPLY          = :P14_MIN_SUPPLY,',
'VC_MIN_SUPPLY_PERIOD   = :P14_MIN_SUPPLY_TERM,',
'NU_AMENDMENT_NO        =  AMT,',
'DT_AMENDMENT_DATE      = DECODE(:P14_LAST_PAGE,73,:P14_AMENDMENT_DATE,NULL)',
'',
'WHERE  ORG_ID  = :global_comp_code',
'and   PRJ_ID    = :GLOBAL_PROJ_ID ',
'AND   VC_PPA_NO     = :P14_PPA_NO',
'AND   DT_PPA_DATE   = :P14_PPA_DATE;',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15463969659004923)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert into billing scheduled'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,C004,C005,c006    ',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''BILLING_SCHEDULE'';',
'      ',
' v_id  number;',
' ',
' begin',
'',
'IF :P14_MODE = ''E'' THEN',
'DELETE FROM DT_BILL_PAYMENT_SCHEDULE',
'       WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'       AND PRJ_ID     = :GLOBAL_PROJ_ID ',
'       AND VC_PPA_NO      = :P14_PPA_NO ',
'      AND DT_PPA_DATE     = :P14_PPA_DATE;',
'END IF;',
'',
'',
'FOR I IN C1 LOOP',
'INSERT INTO DT_BILL_PAYMENT_SCHEDULE',
'(',
'    ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM_DATE, DT_BILL_TO_DATE, DT_BILL_DATE, DT_PAYMENT_DATE, DT_PENALTY_DATE,',
'     USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
')',
'VALUES',
'(',
'    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO, :P14_PPA_DATE, I.C001, I.C002, I.C003, I.C004, I.C005, ',
'    :GLOBAL_USER_CODE, SYSDATE, :GLOBAL_USER_CODE, SYSDATE, :GLOBAL_PARENT_COMP',
');',
'',
'END LOOP;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10197502652309537)
,p_process_sequence=>100
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert/update rate slab'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,C004',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''RATE_SLAB'';',
'      ',
' v_id  number;',
' ',
' begin',
'',
'IF :P14_MODE = ''E'' THEN',
'DELETE FROM dt_ppa_rate_slab',
'       WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'       AND PRJ_ID     = :GLOBAL_PROJ_ID ',
'       AND VC_PPA_NO      = :P14_PPA_NO ',
'      AND DT_PPA_DATE     = :P14_PPA_DATE;',
'END IF;',
'',
'',
'FOR I IN C1 LOOP',
'INSERT INTO dt_ppa_rate_slab',
'(',
'   ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, DT_FROM_DATE, DT_TO_DATE, NU_RATE, NU_ID, USR_ID_CREATE, USR_ID_CREATE_DT, USR_ID_MOD_DT, HO_ORG_ID',
')',
'VALUES',
'(',
'    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO, :P14_PPA_DATE, I.C001, I.C002, I.C003, I.C004, ',
'    :GLOBAL_USER_CODE, SYSDATE, SYSDATE, :GLOBAL_PARENT_COMP',
');',
'',
'END LOOP;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3129750189852013)
,p_process_sequence=>110
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert/update on Trade margin'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,C004,C005,C006',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''TRADE_MARGIN_PPA'';',
'      ',
' v_id  number;',
' ',
' begin',
'',
'IF :P14_MODE = ''E'' THEN',
'DELETE FROM DT_TRADING_MARGIN_PPA',
'       WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'       AND VC_PPA_NO      = :P14_PPA_NO ',
'      AND DT_PPA_DATE     = :P14_PPA_DATE;',
'END IF;',
'',
'',
'FOR I IN C1 LOOP',
'INSERT INTO DT_TRADING_MARGIN_PPA',
'(',
'   ORG_ID, PRJ_ID, VC_PPA_NO, DT_PPA_DATE, NU_ID,VC_METHOD_SALE, VC_TYPE, NU_NET_EX_BUS, NU_TRADE_MARGIN,NU_FIXED, ',
'   USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
')',
'VALUES',
'(',
'    :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P14_PPA_NO, :P14_PPA_DATE, I.C001, I.C002, I.C003, I.C004, I.C005,I.C006,',
'    :GLOBAL_USER_CODE, SYSDATE,:GLOBAL_USER_CODE ,SYSDATE, :GLOBAL_PARENT_COMP',
');',
'',
'END LOOP;',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15723524369126987)
,p_process_sequence=>120
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection on cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;',
'',
'',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'END IF;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792811106050902)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15568688815756190)
,p_process_sequence=>130
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection on save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'END IF;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15725880868127011)
,p_process_sequence=>140
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear item on cancel'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792811106050902)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15568598116756189)
,p_process_sequence=>150
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear item on save'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(15792959618050903)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(11265548483549014)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION ON MODE A'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHARGE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHARGE_DUPLICATE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'END IF;',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15672903810016277)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
'EO_ID, COA_ID, CH_TYPE, CH_BILLING_TYPE, DT_FROM_DATE, DT_TO_DATE, ',
'ADDS_ID, VC_EXTERNAL_DOC_NO, DT_EXTERNAL_DOC_DATE, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID,ITM_ID, ITM_ID_COA, --VC_UNIT, ',
'NU_QTY, NU_RATE, NU_REBATE_DAYS, NU_REBATE_PER, VC_REBATE_BASIS, NU_PENALTY_DAYS, NU_PENALTY_PER, VC_PENALTY_BASIS, --VC_STATUS, ',
'VC_BENEFICIARY, VC_BANK_NAME, VC_BRANCH, VC_BANK_ACC_NO, VC_IFSC_CODE, CH_BILLING_PERIOD, DT_BILL_FROM, DT_BILL_TO,',
'VC_TRADING_APPLICABLE,V_METHOD_OF_SALE,NU_MAX_SUPPLY,VC_MAX_SUPPLY_PERIOD,NU_MIN_SUPPLY,VC_MIN_SUPPLY_PERIOD , NU_AMENDMENT_NO , DT_AMENDMENT_DATE',
'INTO ',
':P14_CUSTOMER_CODE , :P14_CUST_ACC_NO, :P14_TYPE, :P14_BILL_TYPE, :P14_PERIOD_FROM,:P14_PERIOD_TO,',
':P14_ADDRESS, :P14_EXT_DOC_NO, :P14_EXT_DOC_DATE, :P14_DELIVERY_POINT, :P14_METERING_POINT,:P14_ITEM_GROUP, :P14_ITEM, :P14_ITEM_ACC_CODE, --:P14_UOM, ',
':P14_QTY, :P14_RATE, :P14_REBATE_DAYS, :P14_REBATE_PER, :P14_REBATE_BASIC, :P14_PENALTY_DAYS, :P14_PENALTY_PER, :P14_PENALTY_BASIC,',
':P14_BENEFE_NAME, :P14_BANK_NAME, :P14_BRANCH, :P14_ACCCOUNT_NO, :P14_IFSC_CODE, :P14_BILL_PERIOD, :P14_BILL_FROM, :P14_BILL_TO,:P14_TRADING_MARGING',
',:P14_METHOD_SALE,:P14_MAX_SUPPLY,:P14_MAX_SUPPLY_TERM,:P14_MIN_SUPPLY,:P14_MIN_SUPPLY_TERM , :P14_AMENDMENT_NO, :P14_AMENDMENT_DATE',
'FROM mst_ppa',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID   = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO    = :P14_PPA_NO',
'AND   DT_PPA_DATE  = :P14_PPA_DATE ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13597249984128776)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Other Charges Data'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_CHARGE_ID, VC_CHARGE_TYPE, NU_RATE, VC_REMARKS, COA_ID',
'              from  DT_OTHER_CHARGES_PPA',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_PPA_NO   = :P14_PPA_NO ',
'               AND   DT_PPA_DATE   = :P14_PPA_DATE',
'               );',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'FOR I IN C1 LOOP',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001          =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE,',
'                                P_C004           =>  I.VC_REMARKS ,     ',
'                                P_C005           =>  I.COA_ID  ',
'                                ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15355216230169072)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Other rebate  and charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ID, CH_TYPE, NU_DAYS, NU_PER , CH_PERIOD',
'              from  DT_PPA_REBATE_SURCHARGE',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_PPA_NO   = :P14_PPA_NO ',
'               AND   DT_PPA_DATE   = :P14_PPA_DATE',
'               );',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''SURCHARGE_REBATE_DETAIL'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''SURCHARGE_REBATE_DETAIL'');',
'         END IF;',
'FOR I IN C1 LOOP',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''SURCHARGE_REBATE_DETAIL'',',
'                                P_C001          =>  I.NU_ID,',
'                                P_C002           =>  I.CH_TYPE,',
'                                P_C003           =>  I.NU_DAYS,',
'                                P_C004           =>  to_char(I.NU_PER,''999G999G999G999G990D00'')  ,                     ',
'                                P_C005           =>  I.CH_PERIOD',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15672812544016276)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO OF ATTACHMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P14_PPA_NO ',
'               AND   DT_DOC_DATE   = :P14_PPA_DATE',
'               and   vc_trans_type = ''PPA'');',
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
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15462576746004909)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET BILLING DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor C1 is ',
'(',
'SELECT  ROWNUM,DT_BILL_FROM_DATE, DT_BILL_TO_DATE, DT_BILL_DATE, DT_PAYMENT_DATE, DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE',
'where ORG_ID = :GLOBAL_COMP_CODE',
'      AND PRJ_ID  = :GLOBAL_PROJ_ID',
'      AND VC_PPA_NO   = :P14_PPA_NO ',
'      AND  DT_PPA_DATE=  :P14_PPA_DATE',
');',
'BEGIN',
'IF   APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''BILLING_SCHEDULE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''BILLING_SCHEDULE'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''BILL_DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''BILL_DATE_DUPLICATE'');',
'END IF;',
'',
'FOR I IN C1 LOOP',
'    APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''BILLING_SCHEDULE'',',
'                                     ',
'                                       p_c001            => I.DT_BILL_FROM_DATE,',
'                                       P_C002            => I.DT_BILL_TO_DATE,',
'                                       P_C003            => I.DT_BILL_DATE,',
'                                       P_C004            => I.DT_PAYMENT_DATE,',
'                                       P_C005            => I.DT_PENALTY_DATE,',
'                                       p_c006            => i.ROWNUM',
'                            ',
'                              );',
'',
'       APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''BILL_DATE_DUPLICATE'',',
'                                            P_C001            => :FROM_DATE,',
'                                            P_C002            => :TO_DATE,',
'                                            P_C003            =>  i.ROWNUM,',
'                                            p_c004           =>   i.ROWNUM',
'                                        );                          ',
'END LOOP;',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(10198183882309543)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET RATE SLAB'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor C1 is ',
'(',
'SELECT DT_FROM_DATE, DT_TO_DATE, NU_RATE, NU_ID',
'FROM DT_PPA_RATE_SLAB',
'where ORG_ID = :GLOBAL_COMP_CODE',
'      AND PRJ_ID  = :GLOBAL_PROJ_ID',
'      AND VC_PPA_NO   = :P14_PPA_NO ',
'      AND  DT_PPA_DATE=  :P14_PPA_DATE',
');',
'BEGIN',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''RATE_SLAB'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''RATE_SLAB'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;',
'',
'FOR I IN C1 LOOP',
'    APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''RATE_SLAB'',',
'                                     ',
'                                       p_c001            => I.DT_FROM_DATE,',
'                                       P_C002            => I.DT_TO_DATE,',
'                                       P_C003            => I.NU_RATE,',
'                                       P_C004            => I.NU_ID',
'                                                                 ',
'                              );',
'     APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''DATE_DUPLICATE'',',
'                                     ',
'                                       p_c001            => I.DT_FROM_DATE,',
'                                       P_C002            => I.DT_TO_DATE,',
'                                       P_C003            => I.NU_ID  ,',
'                                       P_C004            => I.NU_ID                                                               ',
'                              );',
'END LOOP;',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(6119358987947809)
,p_process_sequence=>80
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET exclusion period'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor C1 is ',
'(',
'SELECT DT_FROM_DATE, DT_TO_DATE,NU_ID',
'FROM DT_Exclusion_Period',
'where ORG_ID = :GLOBAL_COMP_CODE',
'      AND PRJ_ID  = :GLOBAL_PROJ_ID',
'      AND VC_PPA_NO   = :P14_PPA_NO ',
'      AND  DT_PPA_DATE=  :P14_PPA_DATE',
');',
'BEGIN',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''EXCLUSION_PERIOD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''EXCLUSION_PERIOD'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''EXCLUSION_PERIOD'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''EXCLUSION_PERIOD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TO_DATE_DUP'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TO_DATE_DUP'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''TO_DATE_DUP'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''TO_DATE_DUP'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FROM_DATE_DUP'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FROM_DATE_DUP'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''FROM_DATE_DUP'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FROM_DATE_DUP'');',
'END IF;',
'',
'',
'FOR I IN C1 LOOP',
'    APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''EXCLUSION_PERIOD'',',
'                                     ',
'                                       p_c001            => I.DT_FROM_DATE,',
'                                       P_C002            => I.DT_TO_DATE,',
'                                       P_C003           => I.NU_ID',
'                                                                 ',
'                              );',
'     APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''TO_DATE_DUP'',',
'                                     ',
'                                    ',
'                                       P_C001            => I.DT_TO_DATE,',
'                                       P_C003            => I.NU_ID  ,',
'                                       P_C004            => I.NU_ID                                                               ',
'                              );',
'                              APEX_COLLECTION.ADD_MEMBER (',
'                                p_collection_name => ''FROM_DATE_DUP'',',
'                                     ',
'                                       p_c001            => I.DT_FROM_DATE,',
'                                       P_C003            => I.NU_ID  ,',
'                                       P_C004            => I.NU_ID                                                               ',
'                              );',
'END LOOP;',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
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
 p_id=>wwv_flow_api.id(3129638167852012)
,p_process_sequence=>90
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET TRADE MARGIN'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'cursor C1 is ',
'(',
'SELECT NU_ID,',
'VC_METHOD_SALE,',
'VC_TYPE,',
'NU_NET_EX_BUS,',
'NU_TRADE_MARGIN',
',NU_FIXED',
'FROM DT_TRADING_MARGIN_PPA',
'where ORG_ID = :GLOBAL_COMP_CODE',
'      AND PRJ_ID  = :GLOBAL_PROJ_ID',
'      AND VC_PPA_NO   = :P14_PPA_NO ',
'      AND  DT_PPA_DATE=  :P14_PPA_DATE',
');',
'',
'',
'',
'',
'',
'BEGIN',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
'',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''TRADE_MARGIN_PPA'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''TRADE_MARGIN_PPA'');',
'END IF;',
'',
'FOR I IN C1 LOOP',
'     APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''TRADE_MARGIN_PPA'',',
'                                       p_c001            =>  I.NU_ID,',
'                                       P_C002            =>  I.VC_METHOD_SALE,',
'                                       P_C003            =>  I.VC_TYPE,',
'                                       P_C004            =>  I.NU_NET_EX_BUS,',
'                                       P_C005            => I.NU_TRADE_MARGIN,',
'                                       P_C006           =>  I.NU_FIXED',
'                                    ',
'                                     ',
'                                       );',
'END LOOP;',
'',
'',
'',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(15281297262151594)
,p_process_sequence=>100
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P14_WKF_STAGE',
'from  mst_ppa',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID',
'and  vc_ppa_no   = :P14_PPA_NO',
'and  dt_ppa_date = :P14_PPA_DATE;',
'exception when no_data_found then :P14_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14770043335186916)
,p_process_sequence=>110
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P14_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P14_PPA_NO',
'AND      DT_DOC_DATE = :P14_PPA_DATE',
'AND      VC_DOC_TYPE  = ''PPA'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P14_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
