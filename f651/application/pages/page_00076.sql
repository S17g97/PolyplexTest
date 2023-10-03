prompt --application/pages/page_00076
begin
--   Manifest
--     PAGE: 00076
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
 p_id=>76
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'JRM copy 30-09-2022'
,p_alias=>'JRM-COPY-30-09-2022'
,p_step_title=>'JRM copy 30-09-2022'
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
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
')'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20220930132331'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64475056451075103)
,p_plug_name=>'Joint Meter Reading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64567650885692454)
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
 p_id=>wwv_flow_api.id(64567805443692455)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P76_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64567873024692456)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P76_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404248677878755)
,p_plug_name=>'Main Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64567873024692456)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404419381878756)
,p_plug_name=>'Main Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64567873024692456)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404543098878757)
,p_plug_name=>'Main Net '
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64567873024692456)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64856198354436163)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P76_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404643480878758)
,p_plug_name=>'Check Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64856198354436163)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404672480878759)
,p_plug_name=>'Check Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64856198354436163)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(65404768067878760)
,p_plug_name=>'check Net'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(64856198354436163)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64932754799192383)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(64932993832192385)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(64932754799192383)
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
 p_id=>wwv_flow_api.id(64933050394192386)
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
,p_internal_uid=>101638785168717036
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42575557430737407)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42575902508737409)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42576317821737409)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42576718531737410)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42577077405737410)
,p_db_column_name=>'DELETE1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#C003#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P76_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42577503742737411)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download'
,p_column_link=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GETFILE:&DEBUG.::FILE_ID:#C003#'
,p_column_linktext=>'<span aria-label="download"><span class="fa fa-download" aria-hidden="true" title="download"></span></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(65009874505889095)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'41218'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42536552548737358)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(64567805443692455)
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
 p_id=>wwv_flow_api.id(42536912287737359)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64567805443692455)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P76_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P76_REQ_NO.,&P76_JMR_NO.,&P76_JMR_DATE.,JMR,&P76_LAST_PAGE.,&P76_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42537340503737360)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(64567805443692455)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P76_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42574802736737402)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(64932754799192383)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P76_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42633044386737459)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:76::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42537682629737360)
,p_name=>'P76_PERIOD_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Period From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDP'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_14=>'P76_PERIOD_TO'
,p_attribute_15=>'both'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42538094466737362)
,p_name=>'P76_PERIOD_TO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Period To'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(42538561079737363)
,p_name=>'P76_JMR_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42538921564737363)
,p_name=>'P76_JMR_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42539272391737363)
,p_name=>'P76_PPA_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
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
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'PPA'
,p_attribute_08=>'800'
,p_attribute_09=>'500'
,p_attribute_10=>'DT_PPA_DATE:P76_PPA_DATE,VC_EXTERNAL_DOC_NO:P76_PPA_NO_NEW,DT_EXTERNAL_DOC_DATE:P76_PPA_DATE_NEW'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42539729310737364)
,p_name=>'P76_PPA_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Document Uploaded Date'
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
 p_id=>wwv_flow_api.id(42540141284737364)
,p_name=>'P76_PPA_NO_NEW'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'PPA Number'
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
 p_id=>wwv_flow_api.id(42540496035737365)
,p_name=>'P76_PPA_DATE_NEW'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'PPA Date'
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
 p_id=>wwv_flow_api.id(42540888333737365)
,p_name=>'P76_CUSTOMER_CODE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42541315708737365)
,p_name=>'P76_CUSTOMER_NAME'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42541737061737366)
,p_name=>'P76_BILLING_POINT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
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
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42542089845737366)
,p_name=>'P76_BILLING_POINT_DESC'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42542472816737367)
,p_name=>'P76_METERING_POINT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42542889087737367)
,p_name=>'P76_METERING_POINT_DESC'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'--AND   NU_DOC_NO <= :P76_METERING_POINT',
'AND CH_METER_INSTALLED = ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'--AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P76_PPA_NO,:P76_PPA_DATE) = ''Y''',
'/*',
'UNION ALL',
'',
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO <= :P76_METERING_POINT+1',
'AND CH_METER_INSTALLED = ''Y''',
'AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P76_PPA_NO,:P76_PPA_DATE) = ''N''',
'*/',
'',
';'))
,p_lov_cascade_parent_items=>'P76_METERING_POINT'
,p_ajax_items_to_submit=>'P76_METERING_POINT,P76_PPA_NO_NEW,P76_PPA_DATE_NEW'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42543318725737367)
,p_name=>'P76_GRP_ID'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42543689777737368)
,p_name=>'P76_ITEM_CODE'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42544145465737368)
,p_name=>'P76_ITEM_DESC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(42544468961737369)
,p_name=>'P76_UOM'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(42544940442737369)
,p_name=>'P76_QTY'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42545289200737369)
,p_name=>'P76_RATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>unistr('Rate(\20B9)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
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
 p_id=>wwv_flow_api.id(42545703786737370)
,p_name=>'P76_MODE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42546081602737370)
,p_name=>'P76_WKF_STAGE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42546533556737371)
,p_name=>'P76_REQ_NO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42546898812737371)
,p_name=>'P76_LAST_PAGE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42547269621737371)
,p_name=>'P76_AUTH_FLAG'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42547702634737372)
,p_name=>'P76_LABEL_NAME'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P76_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42548130741737372)
,p_name=>'P76_REMARKS'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
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
 p_id=>wwv_flow_api.id(42548468924737373)
,p_name=>'P76_INVOICE_EXP_UNIT'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(64567805443692455)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42549256261737374)
,p_name=>'P76_MAIN_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64567873024692456)
,p_prompt=>'Main Meter Number'
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
 p_id=>wwv_flow_api.id(42549611815737374)
,p_name=>'P76_MAIN_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64567873024692456)
,p_prompt=>'Meter Location'
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
 p_id=>wwv_flow_api.id(42549977564737374)
,p_name=>'P76_MAIN_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64567873024692456)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42550675242737375)
,p_name=>'P76_MAIN_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero '
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42551088710737376)
,p_name=>'P76_MAIN_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(42551560833737376)
,p_name=>'P76_MAIN_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
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
 p_id=>wwv_flow_api.id(42551924987737377)
,p_name=>'P76_MAIN_EXP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(42552304707737377)
,p_name=>'P76_MAIN_EXP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(42552754540737378)
,p_name=>'P76_MAIN_EXP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(42553124860737378)
,p_name=>'P76_MAIN_EXP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(42553520329737378)
,p_name=>'P76_MAIN_EXP_NET_UNIT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
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
 p_id=>wwv_flow_api.id(42553929188737379)
,p_name=>'P76_EXPORT_PRV_KVAH'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Export Previous kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42554338074737379)
,p_name=>'P76_EXPORT_CUR_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Export Current kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42554724648737380)
,p_name=>'P76_EXP_DIFFERENCE_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Difference kVAh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42555132267737380)
,p_name=>'P76_EXP_TOTAL_UNIT_KAVH'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Total Unit kVAh'
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
 p_id=>wwv_flow_api.id(42555536086737380)
,p_name=>'P76_EXP_UOM_KAVH'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'kAVh'
,p_prompt=>'UoM kAVh'
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
 p_id=>wwv_flow_api.id(42555924550737381)
,p_name=>'P76_EXP_ADJUSTMENT_KVAH'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_prompt=>'Adjustment kVAh'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42556300777737381)
,p_name=>'P76_EXP_NET_UNIT_KVAH'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(65404248677878755)
,p_item_default=>'0'
,p_prompt=>'Net Unit kVAh'
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
 p_id=>wwv_flow_api.id(42556989681737382)
,p_name=>'P76_MAIN_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42557410988737383)
,p_name=>'P76_MAIN_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(42557815189737383)
,p_name=>'P76_MAIN_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
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
 p_id=>wwv_flow_api.id(42558165849737384)
,p_name=>'P76_MAIN_IMP_MULTI_FAC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(42558578341737384)
,p_name=>'P76_MAIN_IMP_TOTAL_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(42559042283737384)
,p_name=>'P76_MAIN_IMP_UOM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(42559446421737385)
,p_name=>'P76_MAIN_IMP_ADJUSMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(42559786979737385)
,p_name=>'P76_MAIN_IMP_NET_UNIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
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
 p_id=>wwv_flow_api.id(42560199645737386)
,p_name=>'P76_IMPORT_PRV_KVAH'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Import Previous kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42560662031737386)
,p_name=>'P76_IMPORT_CUR_KVAH'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Import Current kVAh Reading '
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42560969903737386)
,p_name=>'P76_IMP_DIFFERENCE_KVAH_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Difference kVAh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42561367803737387)
,p_name=>'P76_IMP_TOTAL_UNIT_KAVH_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Total Unit kVAh'
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
 p_id=>wwv_flow_api.id(42561821752737387)
,p_name=>'P76_IMP_UOM_KAVH_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'kAVh'
,p_prompt=>'UoM kAVh'
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
 p_id=>wwv_flow_api.id(42562224338737388)
,p_name=>'P76_IMP_ADJUSTMENT_KVAH_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_prompt=>'Adjustment kVAh'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42562567635737388)
,p_name=>'P76_IMP_NET_UNIT_KVAH_1'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(65404419381878756)
,p_item_default=>'0'
,p_prompt=>'Net Unit kVAh'
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
 p_id=>wwv_flow_api.id(42563331620737389)
,p_name=>'P76_MAIN_NET_EXP_UNIT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(65404543098878757)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42563694352737389)
,p_name=>'P76_MAIN_METER_WORK'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65404543098878757)
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
 p_id=>wwv_flow_api.id(42564103888737390)
,p_name=>'P76_MAIN_METER_REMARK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65404543098878757)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
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
 p_id=>wwv_flow_api.id(42564794416737391)
,p_name=>'P76_CHECK_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(64856198354436163)
,p_prompt=>'Check Meter Number'
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
 p_id=>wwv_flow_api.id(42565260984737391)
,p_name=>'P76_CHECK_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(64856198354436163)
,p_prompt=>'Meter Location'
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
 p_id=>wwv_flow_api.id(42565656267737392)
,p_name=>'P76_CHECK_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(64856198354436163)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42566358917737393)
,p_name=>'P76_CHECK_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42566725822737393)
,p_name=>'P76_CHECK_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(42567090430737393)
,p_name=>'P76_CHECK_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
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
 p_id=>wwv_flow_api.id(42567495241737394)
,p_name=>'P76_CHECK_EXP_MULTI_FAC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(42567865922737394)
,p_name=>'P76_CHECK_EXP_TOTAL_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(42568330436737395)
,p_name=>'P76_CHECK_EXP_UOM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(42568713933737395)
,p_name=>'P76_CHECK_EXP_ADJUSMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(42569124920737395)
,p_name=>'P76_CHECK_EXP_NET_UNIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(65404643480878758)
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
 p_id=>wwv_flow_api.id(42569819380737396)
,p_name=>'P76_CHECK_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42570171889737397)
,p_name=>'P76_CHECK_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
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
 p_id=>wwv_flow_api.id(42570650976737397)
,p_name=>'P76_CHECK_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
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
 p_id=>wwv_flow_api.id(42570971123737398)
,p_name=>'P76_CHECK_IMP_MULTI_FAC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_prompt=>'Multiplying Factor'
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
 p_id=>wwv_flow_api.id(42571392034737398)
,p_name=>'P76_CHECK_IMP_TOTAL_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
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
 p_id=>wwv_flow_api.id(42571795336737399)
,p_name=>'P76_CHECK_IMP_UOM'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_prompt=>'UoM'
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
 p_id=>wwv_flow_api.id(42572247364737399)
,p_name=>'P76_CHECK_IMP_ADJUSMENT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
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
 p_id=>wwv_flow_api.id(42572607903737399)
,p_name=>'P76_CHECK_IMP_NET_UNIT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(65404672480878759)
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
 p_id=>wwv_flow_api.id(42573332019737401)
,p_name=>'P76_CHECK_NET_EXP_UNIT'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(65404768067878760)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42573723275737401)
,p_name=>'P76_CHECK_METER_WORK'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(65404768067878760)
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
 p_id=>wwv_flow_api.id(42574084995737401)
,p_name=>'P76_CHECK_METER_REMARK'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(65404768067878760)
,p_prompt=>'Check Meter Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42582687011737424)
,p_validation_name=>'PPA Not Null'
,p_validation_sequence=>10
,p_validation=>'P76_PPA_NO_NEW'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42579560612737421)
,p_validation_name=>'Main Exp Prv Read not null'
,p_validation_sequence=>30
,p_validation=>'P76_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42585105334737426)
,p_validation_name=>'Main Exp Prv Read numeric'
,p_validation_sequence=>40
,p_validation=>'P76_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42579882571737421)
,p_validation_name=>'Main Exp Curr Read not null'
,p_validation_sequence=>50
,p_validation=>'P76_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42585549456737426)
,p_validation_name=>'Main Exp Curr Read numeric'
,p_validation_sequence=>60
,p_validation=>'P76_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42588715776737429)
,p_validation_name=>'Main Exp diff value not negative'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_EXP_DIFFERENCE < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42551560833737376)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42589131417737430)
,p_validation_name=>'Main Exp Total unit value not negative'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_EXP_TOTAL_UNIT < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42552304707737377)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42589495092737431)
,p_validation_name=>'Main Exp Net  unit value not negative'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_EXP_NET_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42553520329737378)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42580343039737422)
,p_validation_name=>'Main Imp Prv Read not null'
,p_validation_sequence=>110
,p_validation=>'P76_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Import Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42585933299737426)
,p_validation_name=>'Main Imp Prv Read numeric'
,p_validation_sequence=>120
,p_validation=>'P76_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42580716078737422)
,p_validation_name=>'Main Imp Curr Read not null'
,p_validation_sequence=>130
,p_validation=>'P76_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter import Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42586338855737427)
,p_validation_name=>'Main Imp Curr Read numeric'
,p_validation_sequence=>140
,p_validation=>'P76_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
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
 p_id=>wwv_flow_api.id(42589904848737431)
,p_validation_name=>'Main Imp diff unit value not negative'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_IMP_DIFFERENCE < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42557815189737383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42590288318737431)
,p_validation_name=>'Main Imp toral unit value not negative'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_IMP_TOTAL_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42558578341737384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42590674924737431)
,p_validation_name=>'Main Imp net unit value not negative'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_IMP_NET_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42559786979737385)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42591132324737431)
,p_validation_name=>'Main Net export unit value not negative'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_NET_EXP_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42563331620737389)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42594308253737433)
,p_validation_name=>'Main Net Export Unit Cannot be Null or Zero'
,p_validation_sequence=>190
,p_validation=>'P76_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42581097307737422)
,p_validation_name=>'Check Exp Prv Read not null'
,p_validation_sequence=>200
,p_validation=>'P76_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42586690517737427)
,p_validation_name=>'Check Exp Prv Read numeric'
,p_validation_sequence=>210
,p_validation=>'P76_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42581518849737423)
,p_validation_name=>'Check Exp Curr Read not null'
,p_validation_sequence=>220
,p_validation=>'P76_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42587071188737427)
,p_validation_name=>'Check Exp Curr Read numeric'
,p_validation_sequence=>230
,p_validation=>'P76_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42591508305737432)
,p_validation_name=>'Check Exp diff unit value not negative'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_EXP_DIFFERENCE < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42567090430737393)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42591940125737432)
,p_validation_name=>'Check Exp total unit value not negative'
,p_validation_sequence=>250
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_EXP_TOTAL_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42567865922737394)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42592329252737432)
,p_validation_name=>'Check Exp ne tunit value not negative'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_EXP_NET_UNIT < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42569124920737395)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42581915383737423)
,p_validation_name=>'Check Imp Prv Read not null'
,p_validation_sequence=>270
,p_validation=>'P76_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Import Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42587532522737428)
,p_validation_name=>'Check Imp Prv Read  numeric'
,p_validation_sequence=>280
,p_validation=>'P76_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42582316509737423)
,p_validation_name=>'Check Imp Curr Read not null'
,p_validation_sequence=>290
,p_validation=>'P76_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter import Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42587959519737428)
,p_validation_name=>'Check Imp Curr Read numeric'
,p_validation_sequence=>300
,p_validation=>'P76_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42592672935737432)
,p_validation_name=>'Check Imp diff unit value not negative'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_IMP_DIFFERENCE< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42570650976737397)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42593141671737433)
,p_validation_name=>'Check Imp Total  unit value not negative'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_IMP_TOTAL_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42571392034737398)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42593483075737433)
,p_validation_name=>'Check Imp Net unit value not negative'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_IMP_NET_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42572607903737399)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42593928630737433)
,p_validation_name=>'Check  Net Export unit value not negative'
,p_validation_sequence=>340
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_NET_EXP_UNIT< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42573332019737401)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42594725824737433)
,p_validation_name=>'Check Net Export Unit Cannot be null or Zero'
,p_validation_sequence=>350
,p_validation=>'P76_CHECK_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42583076473737424)
,p_validation_name=>'Main meter work not null'
,p_validation_sequence=>360
,p_validation=>'P76_MAIN_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Main Meter Working'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42583959510737425)
,p_validation_name=>'Main Meter remark not null'
,p_validation_sequence=>370
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_MAIN_METER_WORK = ''N''  and :P76_MAIN_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42564103888737390)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42583516223737424)
,p_validation_name=>'check Meter Work or not'
,p_validation_sequence=>380
,p_validation=>'P76_CHECK_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Check Meter Working.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42584300355737425)
,p_validation_name=>'Check  Meter remark not null'
,p_validation_sequence=>390
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P76_CHECK_METER_WORK = ''N''  and :P76_CHECK_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42574084995737401)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42584692007737425)
,p_validation_name=>'check JMR EXISTS OR NOT'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'if :P76_MODE = ''A'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P76_PPA_NO',
'AND   DT_PPA_DATE   = :P76_PPA_DATE',
'AND   DT_JMR_DATE   = :P76_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P76_METERING_POINT_DESC;',
'end if;',
'',
'if :P76_MODE = ''E'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P76_PPA_NO',
'AND   DT_PPA_DATE   = :P76_PPA_DATE',
'AND   DT_JMR_DATE   = :P76_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P76_METERING_POINT_DESC',
'AND   VC_JMR_NO     <> :P76_JMR_NO;',
'end if;',
'',
'',
'IF V_CHK <> 0 THEN ',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'JMR for this PPA and Metering Point is Already Created.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42588280955737428)
,p_validation_name=>'proj_prefix'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'      begin',
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
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42595069720737434)
,p_validation_name=>'Main Exp diff null or zero'
,p_validation_sequence=>420
,p_validation=>'P76_MAIN_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42551560833737376)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42595547724737434)
,p_validation_name=>'Main Exp Total unit null or zero'
,p_validation_sequence=>430
,p_validation=>'P76_MAIN_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42552304707737377)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42595878831737434)
,p_validation_name=>'Main Exp Net unit value cannot null or zero'
,p_validation_sequence=>440
,p_validation=>'P76_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42596305543737434)
,p_validation_name=>'Main Exp Net Unit not null or zero'
,p_validation_sequence=>450
,p_validation=>'P76_MAIN_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42553520329737378)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42596752980737434)
,p_validation_name=>'Main Imp Diff not null or zero'
,p_validation_sequence=>460
,p_validation=>'P76_MAIN_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42557815189737383)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42597078759737435)
,p_validation_name=>'Main Imp Total Unit Value null or zero'
,p_validation_sequence=>470
,p_validation=>'P76_MAIN_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42558578341737384)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42597510129737435)
,p_validation_name=>'Main Inp Net unit null or zero'
,p_validation_sequence=>480
,p_validation=>'P76_MAIN_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42559786979737385)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42597947930737435)
,p_validation_name=>'Check Exp diff not null or zero'
,p_validation_sequence=>490
,p_validation=>'P76_CHECK_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42567090430737393)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42598277527737435)
,p_validation_name=>'Check Exp total unit not null or zero'
,p_validation_sequence=>500
,p_validation=>'P76_CHECK_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42567865922737394)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42598720422737436)
,p_validation_name=>'Check Exp net unit calue not null or zero'
,p_validation_sequence=>510
,p_validation=>'P76_CHECK_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42569124920737395)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42599083711737436)
,p_validation_name=>'Check Imp diff unit value not null or zero'
,p_validation_sequence=>520
,p_validation=>'P76_CHECK_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42570650976737397)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42599504819737436)
,p_validation_name=>'Check Imp Total unit not null or zero'
,p_validation_sequence=>530
,p_validation=>'P76_CHECK_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42571392034737398)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42599871012737437)
,p_validation_name=>'Check Imp net unit Value not null or zero'
,p_validation_sequence=>540
,p_validation=>'P76_CHECK_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42572607903737399)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42600335092737437)
,p_validation_name=>'Check financial year open or not'
,p_validation_sequence=>550
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
,p_error_message=>'Financial year not found not open in ERP. Contact System Administration'
,p_validation_condition=>'P76_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42578321566737420)
,p_validation_name=>'Rate not null or zero'
,p_validation_sequence=>560
,p_validation=>'P76_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Not found. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_associated_item=>wwv_flow_api.id(42545289200737369)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42578694767737420)
,p_validation_name=>'PERIOD_FROM Not null'
,p_validation_sequence=>570
,p_validation=>'P76_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select From date'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42579093954737421)
,p_validation_name=>'Period To'
,p_validation_sequence=>580
,p_validation=>'P76_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select To date'
,p_when_button_pressed=>wwv_flow_api.id(42537340503737360)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42600718678737437)
,p_validation_name=>'P76_PERIOD_TO'
,p_validation_sequence=>590
,p_validation=>':P76_PERIOD_TO<=sysdate'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Period To Date is not greater then today''s date.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42610322293737445)
,p_name=>'Set Values'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_PPA_DATE_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42610852222737446)
,p_event_id=>wwv_flow_api.id(42610322293737445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select EO_ID , get_cust_name(org_id,EO_ID)cust_name, ',
'       NU_DELIVERY_POINT_ID , get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       NU_METERING_POINT_ID ,NU_METERING_POINT_ID, --get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       ITM_ID ,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,GRP_ID,',
'       NU_QTY,',
'       GET_RATE (ORG_ID,PRJ_ID,VC_PPA_NO,DT_PPA_DATE,to_date(sysdate,''DD-MM-YYYY''),null)',
'     --  NU_RATE',
'',
'into   :P76_CUSTOMER_CODE,:P76_CUSTOMER_NAME,',
'       :P76_BILLING_POINT,:P76_BILLING_POINT_DESC,',
'       :P76_METERING_POINT,:P76_METERING_POINT_DESC,',
'       :P76_ITEM_CODE ,:P76_ITEM_DESC,',
'       :P76_UOM,:P76_GRP_ID,',
'       :P76_QTY,:P76_RATE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P76_PPA_NO',
'AND   DT_PPA_DATE = :P76_PPA_DATE;',
'',
'begin',
'select ',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING',
'',
'into',
':P76_MAIN_EXP_PREV_READ,',
':P76_MAIN_IMP_PREV_READ,',
':P76_CHECK_EXP_PREV_READ,',
':P76_CHECK_IMP_PREV_READ',
'',
'',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P76_PPA_NO',
'AND   DT_PPA_DATE = :P76_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P76_PPA_NO,P76_PPA_DATE'
,p_attribute_03=>'P76_CUSTOMER_CODE,P76_CUSTOMER_NAME,P76_BILLING_POINT,P76_BILLING_POINT_DESC,P76_METERING_POINT,P76_METERING_POINT_DESC,P76_ITEM_CODE ,P76_ITEM_DESC,P76_UOM,P76_GRP_ID,P76_QTY,P76_RATE,P76_MAIN_EXP_PREV_READ,P76_MAIN_IMP_PREV_READ,P76_CHECK_EXP_PREV_'
||'READ,P76_CHECK_IMP_PREV_READ'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42611261396737446)
,p_name=>'Set meter loc/No'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_BILLING_POINT'
,p_condition_element=>'P76_BILLING_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42611693516737446)
,p_event_id=>wwv_flow_api.id(42611261396737446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NU_DOC_NO,VC_LOCATION,NU_MAIN_FACTOR,NU_MAIN_FACTOR,',
'        VC_CHK_METER_NO,NU_DOC_NO,VC_LOCATION,NU_chk_FACTOR,NU_chk_FACTOR',
'into   :P76_MAIN_METER_NO,:P76_MAIN_METER_LOC,:P76_MAIN_METER_LOC_DESC,:P76_MAIN_EXP_MULTI_FAC,:P76_MAIN_IMP_MULTI_FAC',
'       ,:P76_CHECK_METER_NO,:P76_CHECK_METER_LOC,:P76_CHECK_METER_LOC_DESC,:P76_CHECK_EXP_MULTI_FAC,:P76_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P76_BILLING_POINT',
';'))
,p_attribute_02=>'P76_BILLING_POINT'
,p_attribute_03=>'P76_MAIN_METER_NO,P76_MAIN_METER_LOC,P76_MAIN_METER_LOC_DESC,P76_MAIN_EXP_MULTI_FAC,P76_MAIN_IMP_MULTI_FAC,P76_CHECK_METER_NO,P76_CHECK_METER_LOC,P76_CHECK_METER_LOC_DESC,P76_CHECK_EXP_MULTI_FAC,P76_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42612093050737446)
,p_name=>'Calculate Main EXP  Diff Curr/Prev'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_EXP_CURR_READ,P76_MAIN_EXP_PREV_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42612579569737447)
,p_event_id=>wwv_flow_api.id(42612093050737446)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P76_MAIN_EXP_DIFFERENCE:=NVL(:P76_MAIN_EXP_CURR_READ,0)-NVL(:P76_MAIN_EXP_PREV_READ,0) ;',
'',
''))
,p_attribute_02=>'P76_MAIN_EXP_PREV_READ,P76_MAIN_EXP_CURR_READ'
,p_attribute_03=>'P76_MAIN_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42613012128737447)
,p_name=>'Calculate Main EXP  Total Unit'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_EXP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42613530550737447)
,p_event_id=>wwv_flow_api.id(42613012128737447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_EXP_TOTAL_UNIT := NVL(NVL(:P76_MAIN_EXP_DIFFERENCE ,0)* NVL(:P76_MAIN_EXP_MULTI_FAC,0),0) ;'
,p_attribute_02=>'P76_MAIN_EXP_DIFFERENCE,P76_MAIN_EXP_MULTI_FAC'
,p_attribute_03=>'P76_MAIN_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42613941941737447)
,p_name=>'Calculate Main EXP  Net Unit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_EXP_ADJUSMENT,P76_MAIN_EXP_TOTAL_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42614411867737448)
,p_event_id=>wwv_flow_api.id(42613941941737447)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_EXP_NET_UNIT := (NVL(:P76_MAIN_EXP_TOTAL_UNIT,0)-NVL(:P76_MAIN_EXP_ADJUSMENT,0)) ; '
,p_attribute_02=>'P76_MAIN_EXP_TOTAL_UNIT,P76_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P76_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42614804029737448)
,p_name=>'Calculate Main IMP  Diff Curr/Prev'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_IMP_PREV_READ,P76_MAIN_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42615295800737448)
,p_event_id=>wwv_flow_api.id(42614804029737448)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_IMP_DIFFERENCE := NVL(:P76_MAIN_IMP_CURR_READ,0)-NVL(:P76_MAIN_IMP_PREV_READ,0) ;'
,p_attribute_02=>'P76_MAIN_IMP_PREV_READ,P76_MAIN_IMP_CURR_READ'
,p_attribute_03=>'P76_MAIN_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42615760251737449)
,p_name=>'Calculate Main IMP  Total Unit'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
 p_id=>wwv_flow_api.id(42616222294737449)
,p_event_id=>wwv_flow_api.id(42615760251737449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_IMP_TOTAL_UNIT := NVL(NVL(:P76_MAIN_IMP_DIFFERENCE ,0)* NVL(:P76_MAIN_IMP_MULTI_FAC,0),0) ;'
,p_attribute_02=>'P76_MAIN_IMP_DIFFERENCE,P76_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P76_MAIN_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42616642160737449)
,p_name=>'Calculate Main IMP  Net Unit'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_IMP_ADJUSMENT,P76_MAIN_IMP_TOTAL_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42617141030737449)
,p_event_id=>wwv_flow_api.id(42616642160737449)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_IMP_NET_UNIT := (NVL(:P76_MAIN_IMP_TOTAL_UNIT,0)-NVL(:P76_MAIN_IMP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P76_MAIN_IMP_TOTAL_UNIT,P76_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P76_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42617515477737450)
,p_name=>'Calculate Check EXP Diff Curr/Prev'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_EXP_PREV_READ,P76_CHECK_EXP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42618010354737450)
,p_event_id=>wwv_flow_api.id(42617515477737450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_EXP_DIFFERENCE := NVL(:P76_CHECK_EXP_CURR_READ,0)-NVL(:P76_CHECK_EXP_PREV_READ,0) ;'
,p_attribute_02=>'P76_CHECK_EXP_CURR_READ,P76_CHECK_EXP_PREV_READ'
,p_attribute_03=>'P76_CHECK_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42618378445737450)
,p_name=>'Calculate Check EXP  Total Unit'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_EXP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42618881863737450)
,p_event_id=>wwv_flow_api.id(42618378445737450)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_EXP_TOTAL_UNIT := NVL(NVL(:P76_CHECK_EXP_DIFFERENCE ,0)* NVL(:P76_CHECK_EXP_MULTI_FAC,0),0) ;'
,p_attribute_02=>'P76_CHECK_EXP_DIFFERENCE,P76_CHECK_EXP_MULTI_FAC'
,p_attribute_03=>'P76_CHECK_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42619359055737451)
,p_name=>'Calculate Check EXP  Net Unit'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_EXP_ADJUSMENT,P76_CHECK_EXP_TOTAL_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42619828953737451)
,p_event_id=>wwv_flow_api.id(42619359055737451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_EXP_NET_UNIT := (NVL(:P76_CHECK_EXP_TOTAL_UNIT,0)-NVL(:P76_CHECK_EXP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P76_CHECK_EXP_TOTAL_UNIT,P76_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P76_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42620208996737451)
,p_name=>'Calculate Check IMP Diff Curr/Prev'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_IMP_PREV_READ,P76_CHECK_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42620695248737451)
,p_event_id=>wwv_flow_api.id(42620208996737451)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_IMP_DIFFERENCE := NVL(:P76_CHECK_IMP_CURR_READ,0)-NVL(:P76_CHECK_IMP_PREV_READ,0) ;'
,p_attribute_02=>'P76_CHECK_IMP_CURR_READ,P76_CHECK_IMP_PREV_READ'
,p_attribute_03=>'P76_CHECK_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42621135427737452)
,p_name=>'Calculate CHECK IMP Total Unit'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_EXP_DIFFERENCE,P76_CHECK_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42621614517737452)
,p_event_id=>wwv_flow_api.id(42621135427737452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_IMP_TOTAL_UNIT := NVL(NVL(:P76_CHECK_IMP_DIFFERENCE ,0)* NVL(:P76_CHECK_IMP_MULTI_FAC,0),0) ;'
,p_attribute_02=>'P76_CHECK_IMP_DIFFERENCE,P76_CHECK_IMP_MULTI_FAC'
,p_attribute_03=>'P76_CHECK_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42622038780737452)
,p_name=>'Calculate Check IMP  Net Unit'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_IMP_TOTAL_UNIT,P76_CHECK_IMP_ADJUSMENT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42622521405737453)
,p_event_id=>wwv_flow_api.id(42622038780737452)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_IMP_NET_UNIT := (NVL(:P76_CHECK_IMP_TOTAL_UNIT,0)-NVL(:P76_CHECK_IMP_ADJUSMENT,0)) ;'
,p_attribute_02=>'P76_CHECK_IMP_TOTAL_UNIT,P76_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P76_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42622870449737453)
,p_name=>'Calculate Main Exported Unit'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_IMP_NET_UNIT,P76_MAIN_EXP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42623412554737453)
,p_event_id=>wwv_flow_api.id(42622870449737453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_MAIN_NET_EXP_UNIT := NVL(NVL(:P76_MAIN_EXP_NET_UNIT,0)- NVL(:P76_MAIN_IMP_NET_UNIT,0),0);'
,p_attribute_02=>'P76_MAIN_EXP_NET_UNIT,P76_MAIN_IMP_NET_UNIT'
,p_attribute_03=>'P76_MAIN_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42623807036737453)
,p_name=>'Calculate Check Exported Unit'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_EXP_NET_UNIT,P76_CHECK_IMP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42624324055737454)
,p_event_id=>wwv_flow_api.id(42623807036737453)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_CHECK_NET_EXP_UNIT := NVL(NVL(:P76_CHECK_EXP_NET_UNIT,0)- NVL(:P76_CHECK_IMP_NET_UNIT,0),0);'
,p_attribute_02=>'EP76_CHECK_XP_NET_UNIT,P76_CHECK_IMP_NET_UNIT'
,p_attribute_03=>'P76_CHECK_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42624714439737454)
,p_name=>'Show/hide main meter Remark'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_METER_WORK'
,p_condition_element=>'P76_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42625170288737454)
,p_event_id=>wwv_flow_api.id(42624714439737454)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42625752601737454)
,p_event_id=>wwv_flow_api.id(42624714439737454)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42626098039737455)
,p_name=>'Show/Hide Check Meter Remark'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_METER_WORK'
,p_condition_element=>'P76_CHECK_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42626581383737455)
,p_event_id=>wwv_flow_api.id(42626098039737455)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42627132469737455)
,p_event_id=>wwv_flow_api.id(42626098039737455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P76_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42627556080737455)
,p_name=>'Refresh'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42628027273737456)
,p_event_id=>wwv_flow_api.id(42627556080737455)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(64932993832192385)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42628424334737456)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>210
,p_condition_element=>'P76_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42628944777737456)
,p_event_id=>wwv_flow_api.id(42628424334737456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42536912287737359)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P76_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42629313081737456)
,p_name=>'hide forward on add mode'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P76_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42629826443737457)
,p_event_id=>wwv_flow_api.id(42629313081737456)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42536912287737359)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42630236607737457)
,p_name=>'SET Main factor'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_MAIN_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42630679387737457)
,p_event_id=>wwv_flow_api.id(42630236607737457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NVL(NU_MAIN_FACTOR,0),NVL(NU_MAIN_FACTOR,0)',
'       ',
'into   :P76_MAIN_METER_NO,:P76_MAIN_EXP_MULTI_FAC,:P76_MAIN_IMP_MULTI_FAC',
'      ',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P76_MAIN_METER_LOC',
';'))
,p_attribute_02=>'P76_MAIN_METER_LOC'
,p_attribute_03=>'P76_MAIN_METER_NO,P76_MAIN_EXP_MULTI_FAC,P76_MAIN_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42631074196737457)
,p_name=>'SET CHECK  factor1'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_CHECK_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42631580415737458)
,p_event_id=>wwv_flow_api.id(42631074196737457)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_CHK_METER_NO,nvl(nU_chk_FACTOR,0),nvl(NU_chk_FACTOR,0)',
'into   :P76_CHECK_METER_NO,:P76_CHECK_EXP_MULTI_FAC,:P76_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P76_CHECK_METER_LOC',
';'))
,p_attribute_02=>'P76_CHECK_METER_LOC'
,p_attribute_03=>'P76_CHECK_METER_NO,P76_CHECK_EXP_MULTI_FAC,P76_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42632028582737458)
,p_name=>'Set UOm'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_UOM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42632524573737458)
,p_event_id=>wwv_flow_api.id(42632028582737458)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P76_MAIN_EXP_UOM :=  :P76_UOM ;',
'',
':P76_MAIN_IMP_UOM := :P76_UOM ;',
'',
':P76_CHECK_EXP_UOM  := :P76_UOM ;',
'',
':P76_CHECK_IMP_UOM  := :P76_UOM ;'))
,p_attribute_02=>'P76_UOM'
,p_attribute_03=>'P76_MAIN_EXP_UOM,P76_MAIN_IMP_UOM ,P76_CHECK_EXP_UOM  ,P76_CHECK_IMP_UOM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42606730744737443)
,p_name=>'Difference'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_IMPORT_PRV_KVAH,P76_IMPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42607185223737443)
,p_event_id=>wwv_flow_api.id(42606730744737443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_IMP_DIFFERENCE_KVAH_1:=:P76_IMPORT_CUR_KVAH - :P76_IMPORT_PRV_KVAH;'
,p_attribute_02=>'P76_IMPORT_PRV_KVAH,P76_IMPORT_CUR_KVAH'
,p_attribute_03=>'P76_IMP_DIFFERENCE_KVAH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42607579559737444)
,p_name=>'total unit kavh'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_IMP_DIFFERENCE_KVAH_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42608133171737444)
,p_event_id=>wwv_flow_api.id(42607579559737444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_IMP_TOTAL_UNIT_KAVH_1:=:P76_IMP_DIFFERENCE_KVAH_1*:P76_MAIN_IMP_MULTI_FAC;'
,p_attribute_02=>'P76_IMP_DIFFERENCE_KVAH_1,P76_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P76_IMP_TOTAL_UNIT_KAVH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42608559078737444)
,p_name=>'net unit kavh'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_IMP_TOTAL_UNIT_KAVH_1,P76_IMP_ADJUSTMENT_KVAH_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42608975409737444)
,p_event_id=>wwv_flow_api.id(42608559078737444)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_IMP_NET_UNIT_KVAH_1:=:P76_IMP_TOTAL_UNIT_KAVH_1-nvl(:P76_IMP_ADJUSTMENT_KVAH_1,''0'');'
,p_attribute_02=>'P76_IMP_TOTAL_UNIT_KAVH_1,P76_IMP_ADJUSTMENT_KVAH_1'
,p_attribute_03=>'P76_IMP_NET_UNIT_KVAH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42604893270737441)
,p_name=>'exp diff kvah'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_EXPORT_PRV_KVAH,P76_EXPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42605378485737442)
,p_event_id=>wwv_flow_api.id(42604893270737441)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_EXP_DIFFERENCE_KVAH:=:P76_EXPORT_CUR_KVAH-:P76_EXPORT_PRV_KVAH;'
,p_attribute_02=>'P76_EXPORT_CUR_KVAH,P76_EXPORT_PRV_KVAH'
,p_attribute_03=>'P76_EXP_DIFFERENCE_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42605787415737443)
,p_name=>'tot unit exp kavh'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_EXP_DIFFERENCE_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42606331048737443)
,p_event_id=>wwv_flow_api.id(42605787415737443)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_EXP_TOTAL_UNIT_KAVH:=:P76_EXP_DIFFERENCE_KVAH*:P76_MAIN_EXP_MULTI_FAC;'
,p_attribute_02=>'P76_MAIN_EXP_MULTI_FAC,P76_EXP_DIFFERENCE_KVAH'
,p_attribute_03=>'P76_EXP_TOTAL_UNIT_KAVH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42609427087737445)
,p_name=>'net unit exp kavh'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P76_EXP_TOTAL_UNIT_KAVH,P76_EXP_ADJUSTMENT_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42609884571737445)
,p_event_id=>wwv_flow_api.id(42609427087737445)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P76_EXP_NET_UNIT_KVAH:=nvl(:P76_EXP_TOTAL_UNIT_KAVH,''0'')-nvL(:P76_EXP_ADJUSTMENT_KVAH,''0'');'
,p_attribute_02=>'P76_EXP_ADJUSTMENT_KVAH,P76_EXP_TOTAL_UNIT_KAVH'
,p_attribute_03=>'P76_EXP_NET_UNIT_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42601378771737438)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
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
'            select  lpad(nvl(max(to_number(substr(VC_JMR_NO,instr(VC_JMR_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'            into  v_code ',
'            from DT_JMR ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_JMR_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'          :P76_JMR_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'    ',
'    end;',
'',
'insert into DT_JMR',
'(',
'ORG_ID, PRJ_ID, VC_JMR_NO, DT_JMR_DATE, VC_PPA_NO, DT_PPA_DATE, EO_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID, ITM_ID,  ',
'NU_QTY, NU_RATE, VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE, ',
'NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING, ',
'NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, ',
'CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR, ',
'NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, ',
'NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, ',
'VC_CHK_METER_REMARKS, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,DT_PERIOD_FROM,DT_PERIOD_TO,VC_REMARKS,',
'NU_INV_NET_UNIT,NU_MAIN_EXP_PRV_KVAH_READ,NU_MAIN_EXP_CUR_KVAH_READ,NU_MAIN_IMP_PRV_KVAH_READ,NU_MAIN_IMP_CUR_KVAH_READ',
')',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P76_JMR_NO,:P76_JMR_DATE,:P76_PPA_NO,:P76_PPA_DATE,:P76_CUSTOMER_CODE,:P76_BILLING_POINT,:P76_METERING_POINT_DESC,:P76_GRP_ID,:P76_ITEM_CODE,',
':P76_QTY,:P76_RATE,:P76_MAIN_METER_NO,:P76_MAIN_METER_LOC,:P76_MAIN_EXP_PREV_READ,:P76_MAIN_EXP_CURR_READ,:P76_MAIN_EXP_DIFFERENCE,',
':P76_MAIN_EXP_MULTI_FAC,:P76_MAIN_EXP_TOTAL_UNIT,:P76_MAIN_EXP_ADJUSMENT,:P76_MAIN_EXP_NET_UNIT,:P76_MAIN_IMP_PREV_READ,:P76_MAIN_IMP_CURR_READ,',
':P76_MAIN_IMP_DIFFERENCE,:P76_MAIN_IMP_MULTI_FAC,:P76_MAIN_IMP_TOTAL_UNIT,:P76_MAIN_IMP_ADJUSMENT,:P76_MAIN_IMP_NET_UNIT,:P76_MAIN_NET_EXP_UNIT,',
':P76_MAIN_METER_WORK,:P76_MAIN_METER_REMARK,',
':P76_CHECK_METER_NO,:P76_CHECK_METER_LOC,:P76_CHECK_EXP_PREV_READ,:P76_CHECK_EXP_CURR_READ,:P76_CHECK_EXP_DIFFERENCE,:P76_CHECK_EXP_MULTI_FAC,',
':P76_CHECK_EXP_TOTAL_UNIT,:P76_CHECK_EXP_ADJUSMENT,:P76_CHECK_EXP_NET_UNIT,:P76_CHECK_IMP_PREV_READ,:P76_CHECK_IMP_CURR_READ,:P76_CHECK_IMP_DIFFERENCE,',
':P76_CHECK_IMP_MULTI_FAC,:P76_CHECK_IMP_TOTAL_UNIT,:P76_CHECK_IMP_ADJUSMENT,:P76_CHECK_IMP_NET_UNIT,:P76_CHECK_NET_EXP_UNIT,:P76_CHECK_METER_WORK,',
':P76_CHECK_METER_REMARK,:GLOBAL_USER_CODE,sysdate,:GLOBAL_PARENT_COMP,:P76_PERIOD_FROM,:P76_PERIOD_TO,:P76_REMARKS,',
'decode(:P76_MAIN_METER_WORK,''Y'',:P76_MAIN_NET_EXP_UNIT,:P76_CHECK_NET_EXP_UNIT),:P76_EXPORT_PRV_KVAH,:P76_EXPORT_CUR_KVAH,:P76_IMPORT_PRV_KVAH,:P76_IMPORT_CUR_KVAH',
');',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42537340503737360)
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42602196247737439)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update DT_JMR',
'set',
'VC_PPA_NO   			    =:P76_PPA_NO, ',
'DT_PPA_DATE			        =:P76_PPA_DATE, ',
'EO_ID				        =:P76_CUSTOMER_CODE, ',
'NU_DELIVERY_POINT_ID	    =:P76_BILLING_POINT, ',
'NU_METERING_POINT_ID	    =:P76_METERING_POINT_DESC, ',
'GRP_ID				        =:P76_GRP_ID, ',
'ITM_ID				        =:P76_ITEM_CODE,  ',
'NU_QTY				        =:P76_QTY,',
'NU_RATE				        =:P76_RATE,',
'VC_MAIN_METER_NO		    =:P76_MAIN_METER_NO,',
'NU_MAIN_METER_LOC_ID		=:P76_MAIN_METER_LOC,',
'NU_MAIN_EXP_PRV_READING		=:P76_MAIN_EXP_PREV_READ,',
'NU_MAIN_EXP_CUR_READING		=:P76_MAIN_EXP_CURR_READ,',
'NU_MAIN_EXP_DIFFERNCE		=:P76_MAIN_EXP_DIFFERENCE,',
'NU_MAIN_EXP_FACTOR	    	=:P76_MAIN_EXP_MULTI_FAC,',
'NU_MAIN_EXP_TOTAL_UNIT		=:P76_MAIN_EXP_TOTAL_UNIT, ',
'NU_MAIN_EXP_ADJUSTMENT		=:P76_MAIN_EXP_ADJUSMENT,',
'NU_MAIN_EXP_NET_UNIT		=:P76_MAIN_EXP_NET_UNIT,',
'NU_MAIN_IMP_PRV_READING		=:P76_MAIN_IMP_PREV_READ,',
'NU_MAIN_IMP_CUR_READING		=:P76_MAIN_IMP_CURR_READ,',
'NU_MAIN_IMP_DIFFERNCE		=:P76_MAIN_IMP_DIFFERENCE,',
'NU_MAIN_IMP_FACTOR		    =:P76_MAIN_IMP_MULTI_FAC,',
'NU_MAIN_IMP_TOTAL_UNIT		=:P76_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_ADJUSTMENT		=:P76_MAIN_IMP_ADJUSMENT,',
'NU_MAIN_IMP_NET_UNIT        =:P76_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT        =:P76_MAIN_NET_EXP_UNIT,',
'CH_MAIN_METER_WORKING		=:P76_MAIN_METER_WORK,',
'VC_MAIN_METER_REMARKS		=:P76_MAIN_METER_REMARK,',
'VC_CHK_METER_NO			    =:P76_CHECK_METER_NO,',
'NU_CHK_METER_LOC_ID		    =:P76_CHECK_METER_LOC,',
'NU_CHK_EXP_PRV_READING		=:P76_CHECK_EXP_PREV_READ,',
'NU_CHK_EXP_CUR_READING		=:P76_CHECK_EXP_CURR_READ,',
'NU_CHK_EXP_DIFFERNCE		=:P76_CHECK_EXP_DIFFERENCE,',
'NU_CHK_EXP_FACTOR	    	=:P76_CHECK_EXP_MULTI_FAC,',
'NU_CHK_EXP_TOTAL_UNIT		=:P76_CHECK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_ADJUSTMENT		=:P76_CHECK_EXP_ADJUSMENT,',
'NU_CHK_EXP_NET_UNIT		    =:P76_CHECK_EXP_NET_UNIT,',
'NU_CHK_IMP_PRV_READING		=:P76_CHECK_IMP_PREV_READ,',
'NU_CHK_IMP_CUR_READING		=:P76_CHECK_IMP_CURR_READ,',
'NU_CHK_IMP_DIFFERNCE		=:P76_CHECK_IMP_DIFFERENCE,',
'NU_CHK_IMP_FACTOR		    =:P76_CHECK_IMP_MULTI_FAC,',
'NU_CHK_IMP_TOTAL_UNIT		=:P76_CHECK_IMP_TOTAL_UNIT,',
'NU_CHK_IMP_ADJUSTMENT		=:P76_CHECK_IMP_ADJUSMENT,',
'NU_CHK_IMP_NET_UNIT	    	=:P76_CHECK_IMP_NET_UNIT,',
'NU_CHK_NET_EXP_UNIT		    =:P76_CHECK_NET_EXP_UNIT,',
'CH_CHK_METER_WORKING		=:P76_CHECK_METER_WORK,',
'VC_CHK_METER_REMARKS		=:P76_CHECK_METER_REMARK,',
'DT_PERIOD_FROM              =:P76_PERIOD_FROM,',
'DT_PERIOD_TO                =:P76_PERIOD_TO,',
'VC_REMARKS                  = :P76_REMARKS,',
'NU_INV_NET_UNIT             =decode(:P76_MAIN_METER_WORK,''Y'',:P76_MAIN_NET_EXP_UNIT,:P76_CHECK_NET_EXP_UNIT),',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'NU_MAIN_EXP_PRV_KVAH_READ = :P76_EXPORT_PRV_KVAH,',
'NU_MAIN_EXP_CUR_KVAH_READ = :P76_EXPORT_CUR_KVAH,',
'NU_MAIN_IMP_PRV_KVAH_READ = :P76_IMPORT_PRV_KVAH,',
'NU_MAIN_IMP_CUR_KVAH_READ = :P76_IMPORT_CUR_KVAH',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P76_JMR_NO',
'AND   DT_JMR_DATE = :P76_JMR_DATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42537340503737360)
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42603366773737440)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert Upload File'
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
'IF :P76_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P76_JMR_DATE ',
'                            AND DT_DOC_DATE = :P76_JMR_NO',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P76_JMR_NO,:P76_JMR_DATE,''JMR'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(42537340503737360)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42600981892737437)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42602993789737439)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42601786128737438)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'',
' VC_PPA_NO, DT_PPA_DATE, EO_ID, REPLACE(TO_CHAR(NU_DELIVERY_POINT_ID,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_METERING_POINT_ID,''999G999G999G999G990D00''),'','',''''), GRP_ID, ITM_ID,  ',
'REPLACE(TO_CHAR(NU_QTY,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_RATE,''999G999G999G999G990D00''),'','',''''), VC_MAIN_METER_NO,NU_MAIN_METER_LOC_ID,--  REPLACE(TO_CHAR(NU_MAIN_METER_LOC_ID,''999G999G999G999G990D00''),'','',''''),',
' REPLACE(TO_CHAR(NU_MAIN_EXP_PRV_READING,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_CUR_READING,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_DIFFERNCE,''999G999G999G999G990D00''),'','',''''), ',
'REPLACE(TO_CHAR(NU_MAIN_EXP_FACTOR,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_TOTAL_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_ADJUSTMENT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_NET_'
||'UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_PRV_READING,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_CUR_READING,''999G999G999G999G990D00''),'','',''''), ',
'REPLACE(TO_CHAR(NU_MAIN_IMP_DIFFERNCE,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_FACTOR,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_TOTAL_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_ADJUS'
||'TMENT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_NET_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_NET_EXP_UNIT,''999G999G999G999G990D00''),'','',''''), ',
'CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,',
'VC_CHK_METER_NO,NU_CHK_METER_LOC_ID, -- REPLACE(TO_CHAR(NU_CHK_METER_LOC_ID,''999G999G999G999G990D00''),'','',''''),',
' REPLACE(TO_CHAR(NU_CHK_EXP_PRV_READING,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_CUR_READING,''999G999G999G999G990D00''),'','',''''),REPLACE(TO_CHAR(NU_CHK_EXP_DIFFERNCE,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_FAC'
||'TOR,''999G999G999G999G990D00''),'','',''''), ',
'REPLACE(TO_CHAR(NU_CHK_EXP_TOTAL_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_ADJUSTMENT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_NET_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_PRV_RE'
||'ADING,''999G999G999G999G990D00''),'','',''''),REPLACE(TO_CHAR(NU_CHK_IMP_CUR_READING,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_DIFFERNCE,''999G999G999G999G990D00''),'','',''''), ',
'REPLACE(TO_CHAR(NU_CHK_IMP_FACTOR,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_TOTAL_UNIT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_ADJUSTMENT,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_NET_UNIT'
||',''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_CHK_NET_EXP_UNIT,''999G999G999G999G990D00''),'','',''''), CH_CHK_METER_WORKING, ',
'VC_CHK_METER_REMARKS,DT_PERIOD_FROM,DT_PERIOD_TO,VC_REMARKS,REPLACE(TO_CHAR(NU_MAIN_EXP_PRV_KVAH_READ,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_CUR_KVAH_READ,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_PRV_KVAH'
||'_READ,''999G999G999G999G990D00''),'','',''''),REPLACE(TO_CHAR(NU_MAIN_IMP_CUR_KVAH_READ,''999G999G999G999G990D00''),'','','''')',
'',
'P76_MAIN_METER_LOC',
'INTO',
'',
':P76_PPA_NO, :P76_PPA_DATE, :P76_CUSTOMER_CODE,:P76_BILLING_POINT,:P76_METERING_POINT_DESC,:P76_GRP_ID,:P76_ITEM_CODE,',
':P76_QTY,:P76_RATE,:P76_MAIN_METER_NO,:P76_MAIN_METER_LOC,:P76_MAIN_EXP_PREV_READ,:P76_MAIN_EXP_CURR_READ,:P76_MAIN_EXP_DIFFERENCE,',
':P76_MAIN_EXP_MULTI_FAC,:P76_MAIN_EXP_TOTAL_UNIT,:P76_MAIN_EXP_ADJUSMENT,:P76_MAIN_EXP_NET_UNIT,:P76_MAIN_IMP_PREV_READ,:P76_MAIN_IMP_CURR_READ,',
':P76_MAIN_IMP_DIFFERENCE,:P76_MAIN_IMP_MULTI_FAC,:P76_MAIN_IMP_TOTAL_UNIT,:P76_MAIN_IMP_ADJUSMENT,:P76_MAIN_IMP_NET_UNIT,:P76_MAIN_NET_EXP_UNIT,',
':P76_MAIN_METER_WORK,:P76_MAIN_METER_REMARK,',
':P76_CHECK_METER_NO,:P76_CHECK_METER_LOC,:P76_CHECK_EXP_PREV_READ,:P76_CHECK_EXP_CURR_READ,:P76_CHECK_EXP_DIFFERENCE,:P76_CHECK_EXP_MULTI_FAC,',
':P76_CHECK_EXP_TOTAL_UNIT,:P76_CHECK_EXP_ADJUSMENT,:P76_CHECK_EXP_NET_UNIT,:P76_CHECK_IMP_PREV_READ,:P76_CHECK_IMP_CURR_READ,:P76_CHECK_IMP_DIFFERENCE,',
':P76_CHECK_IMP_MULTI_FAC,:P76_CHECK_IMP_TOTAL_UNIT,:P76_CHECK_IMP_ADJUSMENT,:P76_CHECK_IMP_NET_UNIT,:P76_CHECK_NET_EXP_UNIT,:P76_CHECK_METER_WORK,',
':P76_CHECK_METER_REMARK,:P76_PERIOD_FROM,:P76_PERIOD_TO,:P76_REMARKS,:P76_EXPORT_PRV_KVAH,:P76_EXPORT_CUR_KVAH,:P76_IMPORT_PRV_KVAH,:P76_IMPORT_CUR_KVAH',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P76_JMR_NO',
'AND   DT_JMR_DATE = :P76_JMR_DATE;',
'',
'',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       NU_METERING_POINT_ID,',
'    --   NU_METERING_POINT_ID,',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'       VC_EXTERNAL_DOC_no,DT_EXTERNAL_DOC_DATE',
'     ',
'',
'into   :P76_CUSTOMER_NAME,',
'       :P76_BILLING_POINT_DESC,',
'       :P76_METERING_POINT,',
'   --    :P76_METERING_POINT_DESC,',
'       :P76_ITEM_DESC,',
'       :P76_UOM',
'       ,:P76_PPA_NO_NEW',
'       ,:P76_PPA_DATE_NEW',
'',
'       ',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P76_PPA_NO',
'AND   DT_PPA_DATE = :P76_PPA_DATE;',
'',
'',
'select  VC_LOCATION,',
'        VC_LOCATION',
'into   :P76_MAIN_METER_LOC_DESC,',
'       :P76_CHECK_METER_LOC_DESC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P76_METERING_POINT',
';',
'',
':P76_MAIN_EXP_UOM :=  :P76_UOM ;',
'',
':P76_MAIN_IMP_UOM := :P76_UOM ;',
'',
':P76_CHECK_EXP_UOM  := :P76_UOM ;',
'',
':P76_CHECK_IMP_UOM  := :P76_UOM ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P76_MODE'
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
 p_id=>wwv_flow_api.id(42603845267737440)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO OF ATTACHMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P76_JMR_NO ',
'               AND   DT_DOC_DATE   = :P76_JMR_DATE',
'               and   vc_trans_type = ''JMR'');',
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
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42602604214737439)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection On JMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42604077132737440)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P76_WKF_STAGE',
'from  DT_JMR',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  vc_JMR_no   = :P76_JMR_NO',
'and  dt_JMR_date = :P76_JMR_DATE;',
'exception when no_data_found then :P76_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42604538101737441)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P76_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P76_JMR_NO',
'AND      DT_DOC_DATE = :P76_JMR_DATE',
'AND      VC_DOC_TYPE  = ''JMR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P76_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
