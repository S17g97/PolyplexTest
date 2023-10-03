prompt --application/pages/page_00048
begin
--   Manifest
--     PAGE: 00048
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
 p_id=>48
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Replacement'
,p_alias=>'METER-REPLACEMENT'
,p_step_title=>'Meter Replacement'
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
'$(".allownumeric").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'     ',
'        });'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div#OLD_CHECK {',
'    pointer-events: none;',
'    /* tabindex: -1; */',
'}',
'',
'div#OLD_MAIN {',
'    pointer-events: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230930121119'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63500650054571485)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P48_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63501476415571493)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P48_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63501532138571494)
,p_plug_name=>'Old Main Meter'
,p_region_name=>'OLD_MAIN'
,p_parent_plug_id=>wwv_flow_api.id(63501476415571493)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63503166872571510)
,p_plug_name=>'New Main Meter'
,p_parent_plug_id=>wwv_flow_api.id(63501476415571493)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63502854692571507)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63502958982571508)
,p_plug_name=>'Meter Replacement'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63504571345571524)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P48_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63504683090571525)
,p_plug_name=>'Old Check Meter'
,p_region_name=>'OLD_CHECK'
,p_parent_plug_id=>wwv_flow_api.id(63504571345571524)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(63540440740014689)
,p_plug_name=>'New Check Meter'
,p_parent_plug_id=>wwv_flow_api.id(63504571345571524)
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84538471844455013)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P48_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84584262098565675)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(84538471844455013)
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
 p_id=>wwv_flow_api.id(84584390297565676)
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
,p_internal_uid=>102937257684828001
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(346924464670907)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(346490552670907)
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
 p_id=>wwv_flow_api.id(346111937670908)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(345704876670908)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(345269746670909)
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
,p_display_condition=>'P48_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(344877490670909)
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
 p_id=>wwv_flow_api.id(84591144756578408)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120123'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(388597967670845)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(63500650054571485)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P48_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P48_REQ_NO.,&P48_DOC_NO.,&P48_DOC_DATE.,MTR,&P48_LAST_PAGE.,&P48_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(388258319670847)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(63500650054571485)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(387822961670847)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(63500650054571485)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P48_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(347667157670903)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(84538471844455013)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P48_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(308108436670953)
,p_branch_action=>'f?p=&APP_ID.:47:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(387429732670853)
,p_name=>'P48_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_prompt=>'Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_LOCATION D, NU_DOC_NO R',
'from  DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PRoJ_ID',
'and   ch_auth_flag = ''Y''',
'and   CH_METER_INSTALLED = ''Y'';'))
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
 p_id=>wwv_flow_api.id(386998821670855)
,p_name=>'P48_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_prompt=>'Type of Meter'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Main Meter;M,Check Meter;C,Both;B'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(386645045670856)
,p_name=>'P48_COMMON_REMARKS'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_prompt=>'Common Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>1000
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
 p_id=>wwv_flow_api.id(386202309670857)
,p_name=>'P48_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(385793028670857)
,p_name=>'P48_DOC_NO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(385472126670857)
,p_name=>'P48_DOC_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(385152629670858)
,p_name=>'P48_LABEL_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P48_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(384670519670858)
,p_name=>'P48_WKF_STAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(384314689670859)
,p_name=>'P48_REQ_NO'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(383923386670859)
,p_name=>'P48_LAST_PAGE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(383529527670860)
,p_name=>'P48_AUTH_FLAG'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(63500650054571485)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(382519166670864)
,p_name=>'P48_MAIN_OLD_METER_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Meter No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(382161977670864)
,p_name=>'P48_MAIN_OLD_MULTI_FAC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(381702466670865)
,p_name=>'P48_MAIN_OLD_MAKE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Make/ Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(381354209670865)
,p_name=>'P48_MAIN_OLD_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(380913009670866)
,p_name=>'P48_MAIN_OLD_ACC_CLASS'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Accuracy Class'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(380520925670866)
,p_name=>'P48_MAIN_OLD_RATIO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Ratio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(380096552670867)
,p_name=>'P48_MAIN_OLD_MFG_YEAR'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Year of Mfg.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(379702842670867)
,p_name=>'P48_MAIN_OLD_BY_MT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Meter Sealed By Agency 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(379293316670868)
,p_name=>'P48_MAIN_OLD_BY_HPSEBL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Meter Sealed By Agency 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(378873258670868)
,p_name=>'P48_MAIN_OLD_IMPORT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Meter Reading Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(378515058670869)
,p_name=>'P48_MAIN_OLD_UNIT_IMP'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
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
 p_id=>wwv_flow_api.id(378152740670869)
,p_name=>'P48_MAIN_OLD_EXPORT'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Meter Reading Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(377670520670870)
,p_name=>'P48_MAIN_OLD_UNIT_EXP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
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
 p_id=>wwv_flow_api.id(377274921670871)
,p_name=>'P48_MAIN_OLD_EXP_KVAH_READ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>' Export kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(376930462670871)
,p_name=>'P48_MAIN_OLD_UNIT_KVAH_EXP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
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
 p_id=>wwv_flow_api.id(376557958670872)
,p_name=>'P48_MAIN_OLD_IMP_KVAH_READ'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>' Import kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(376126137670872)
,p_name=>'P48_MAIN_OLD_UNIT_KVAH_IMP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
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
 p_id=>wwv_flow_api.id(375675436670873)
,p_name=>'P48_MAIN_OLD_LOCA_PANEL_NO'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Location/Panel No.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>300
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
 p_id=>wwv_flow_api.id(375329772670873)
,p_name=>'P48_MAIN_OLD_REPLC_DATE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Removal/Replacement Date'
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
 p_id=>wwv_flow_api.id(374936521670874)
,p_name=>'P48_MAIN_OLD_REMARKS'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(63501532138571494)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
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
 p_id=>wwv_flow_api.id(374216180670875)
,p_name=>'P48_MAIN_NEW_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Meter No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(373792145670876)
,p_name=>'P48_MAIN_NEW_MULTI_FAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(373368548670876)
,p_name=>'P48_MAIN_NEW_MAKE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Make/ Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(373010614670877)
,p_name=>'P48_MAIN_NEW_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(372609619670877)
,p_name=>'P48_MAIN_NEW_ACC_CLASS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Accuracy Class'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(372233705670878)
,p_name=>'P48_MAIN_NEW_RATIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Ratio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(371838213670878)
,p_name=>'P48_MAIN_NEW_MFG_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Year of Mfg.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(371455498670879)
,p_name=>'P48_MAIN_NEW_BY_MT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Meter Sealed By Agency 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(370983857670879)
,p_name=>'P48_MAIN_NEW_HPSEBL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Meter Sealed By Agency 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(370665863670879)
,p_name=>'P48_MAIN_NEW_IMPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Meter Reading Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(370172275670880)
,p_name=>'P48_MAIN_NEW_UNIT_IMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(369852380670881)
,p_name=>'P48_MAIN_NEW_EXPORT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Meter Reading Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(369464978670881)
,p_name=>'P48_MAIN_NEW_UNIT_EXP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(369038080670881)
,p_name=>'P48_MAIN_NEW_EXP_KVAH_READ'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>' Export kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(368652261670882)
,p_name=>'P48_MAIN_NEW_UNIT_KVAH_EXP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(368267201670882)
,p_name=>'P48_MAIN_NEW_IMP_KVAH_READ'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>' Import kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(367824059670883)
,p_name=>'P48_MAIN_NEW_UNIT_KVAH_IMP'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(367414690670883)
,p_name=>'P48_MAIN_NEW_LOCA_PANEL_NO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Location/Panel No.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>300
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
 p_id=>wwv_flow_api.id(367012116670884)
,p_name=>'P48_MAIN_NEW_INSTALL_DATE'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Installation Date'
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
 p_id=>wwv_flow_api.id(366661827670884)
,p_name=>'P48_MAIN_NEW_CALLIB_DATE'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Calibration Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(366173311670885)
,p_name=>'P48_MAIN_NEW_REMARKS'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(63503166872571510)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
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
 p_id=>wwv_flow_api.id(364640182670888)
,p_name=>'P48_CHK_OLD_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Meter No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(364245343670888)
,p_name=>'P48_CHK_OLD_MULTI_FAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(363817404670888)
,p_name=>'P48_CHK_OLD_MAKE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Make/ Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(363385118670889)
,p_name=>'P48_CHK_OLD_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(363048114670889)
,p_name=>'P48_CHK_OLD_ACC_CLASS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Accuracy Class'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(362616925670889)
,p_name=>'P48_CHK_OLD_RATIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Ratio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(362191372670890)
,p_name=>'P48_CHK_OLD_MFG_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Year of Mfg.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(361862130670890)
,p_name=>'P48_CHK_OLD_BY_MT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Meter Sealed By Agency 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(361448801670890)
,p_name=>'P48_CHK_OLD_BY_HPSEBL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Meter Sealed By Agency 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(361024311670891)
,p_name=>'P48_CHK_OLD_IMPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Meter Reading Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(360650735670891)
,p_name=>'P48_CHK_OLD_UNIT_IMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
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
 p_id=>wwv_flow_api.id(360198218670891)
,p_name=>'P48_CHK_OLD_EXPORT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Meter Reading Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(359856171670892)
,p_name=>'P48_CHK_OLD_UNIT_EXP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
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
 p_id=>wwv_flow_api.id(359467302670892)
,p_name=>'P48_CHK_OLD_EXP_KVAH_READ'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>' Export kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(358975716670892)
,p_name=>'P48_CHK_OLD_UNIT_KVAH_EXP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
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
 p_id=>wwv_flow_api.id(358656125670893)
,p_name=>'P48_CHK_OLD_IMP_KVAH_READ'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>' Import kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(358229632670893)
,p_name=>'P48_CHK_OLD_UNIT_KVAH_IMP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
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
 p_id=>wwv_flow_api.id(357771630670893)
,p_name=>'P48_CHK_OLD_LOCA_PANEL_NO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Location/Panel No.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cHeight=>2
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(357451238670894)
,p_name=>'P48_CHK_OLD_REPLC_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Removal/Replacement Date'
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
 p_id=>wwv_flow_api.id(357021661670894)
,p_name=>'P48_CHK_OLD_REMARKS'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(63504683090571525)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(356335323670895)
,p_name=>'P48_CHK_NEW_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Meter No.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(355906054670895)
,p_name=>'P48_CHK_NEW_MULTI_FAC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Multiplying Factor'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(355471218670896)
,p_name=>'P48_CHK_NEW_MAKE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Make/ Model'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(355133064670896)
,p_name=>'P48_CHK_NEW_TYPE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Type'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(354746392670896)
,p_name=>'P48_CHK_NEW_ACC_CLASS'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Accuracy Class'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(354273794670897)
,p_name=>'P48_CHK_NEW_RATIO'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Ratio'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(353934167670897)
,p_name=>'P48_CHK_NEW_MFG_YEAR'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Year of Mfg.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(353481214670897)
,p_name=>'P48_CHK_NEW_BY_MT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Meter Sealed By Agency 1'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(353070290670898)
,p_name=>'P48_CHK_NEW_BY_HPSEBL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Meter Sealed By Agency 2'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>50
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
 p_id=>wwv_flow_api.id(352737219670898)
,p_name=>'P48_CHK_NEW_IMPORT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Meter Reading Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(352323338670898)
,p_name=>'P48_CHK_NEW_UNIT_IMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(351872191670899)
,p_name=>'P48_CHK_NEW_EXPORT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Meter Reading Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
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
 p_id=>wwv_flow_api.id(351491845670899)
,p_name=>'P48_CHK_NEW_UNIT_EXP'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(351086625670900)
,p_name=>'P48_CHK_NEW_EXP_KVAH_READ'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>' Export kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(350749911670900)
,p_name=>'P48_CHK_NEW_UNIT_KVAH_EXP'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(350297110670900)
,p_name=>'P48_CHK_NEW_IMP_KVAH_READ'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>' Import kVAh Reading'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(349957945670901)
,p_name=>'P48_CHK_NEW_UNIT_KVAH_IMP'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'----Select---'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(349525691670901)
,p_name=>'P48_CHK_NEW_LOCA_PANEL_NO'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Location/Panel No.'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>300
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
 p_id=>wwv_flow_api.id(349113967670901)
,p_name=>'P48_CHK_NEW_INSTALL_DATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Removal/Replacement Date'
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
 p_id=>wwv_flow_api.id(348734622670902)
,p_name=>'P48_CHECK_NEW_CALLIB_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
,p_prompt=>'Calibration date'
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
 p_id=>wwv_flow_api.id(348281307670902)
,p_name=>'P48_CHK_NEW_REMARKS'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(63540440740014689)
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
 p_id=>wwv_flow_api.id(344149126670917)
,p_validation_name=>'Location not null'
,p_validation_sequence=>10
,p_validation=>'P48_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Location'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(387429732670853)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(343691579670918)
,p_validation_name=>'Type not null'
,p_validation_sequence=>20
,p_validation=>'P48_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(386998821670855)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(343350233670918)
,p_validation_name=>'Main Old Meter No not null'
,p_validation_sequence=>30
,p_validation=>'P48_MAIN_OLD_METER_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter No'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(382519166670864)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(332890603670926)
,p_validation_name=>'Check Old Meter No not null'
,p_validation_sequence=>40
,p_validation=>'P48_CHK_OLD_METER_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter No'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(342921834670918)
,p_validation_name=>'Main old multi fac not null'
,p_validation_sequence=>50
,p_validation=>'P48_MAIN_OLD_MULTI_FAC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Multiplying Factor'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(382161977670864)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(332499158670926)
,p_validation_name=>'Check old multi fac not null'
,p_validation_sequence=>60
,p_validation=>'P48_CHK_OLD_MULTI_FAC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Multiplying Factor'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(342473585670918)
,p_validation_name=>'Main old make not null'
,p_validation_sequence=>70
,p_validation=>'P48_MAIN_OLD_MAKE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Make'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(381702466670865)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(332090539670926)
,p_validation_name=>'Check old make not null'
,p_validation_sequence=>80
,p_validation=>'P48_CHK_OLD_MAKE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Make'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(342150971670919)
,p_validation_name=>'Main Old type not null'
,p_validation_sequence=>90
,p_validation=>'P48_MAIN_OLD_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Type'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(381354209670865)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(331677571670926)
,p_validation_name=>'Check Old type not null'
,p_validation_sequence=>100
,p_validation=>'P48_CHK_OLD_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Type'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(341753595670919)
,p_validation_name=>'Main Old Acc Class not null'
,p_validation_sequence=>110
,p_validation=>'P48_MAIN_OLD_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Accuracy Class'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(380913009670866)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(331282012670927)
,p_validation_name=>'Check Old Acc Class not null'
,p_validation_sequence=>120
,p_validation=>'P48_CHK_OLD_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Accuracy Class'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(341357764670919)
,p_validation_name=>'Main old Ratio not null'
,p_validation_sequence=>130
,p_validation=>'P48_MAIN_OLD_RATIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Ratio'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(380520925670866)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(330965071670927)
,p_validation_name=>'Check old Ratio not null'
,p_validation_sequence=>140
,p_validation=>'P48_CHK_OLD_RATIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Ratio'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(340873536670920)
,p_validation_name=>'Main old  MFG Year not null'
,p_validation_sequence=>150
,p_validation=>'P48_MAIN_OLD_MFG_YEAR'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Old Main Meter Year Of MFG. '
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(380096552670867)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(330491093670927)
,p_validation_name=>'Check old  MFG Year not null'
,p_validation_sequence=>160
,p_validation=>'P48_CHK_OLD_MFG_YEAR'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Old Check Meter Year Of MFG. '
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(340517889670920)
,p_validation_name=>'Main old By MT not null'
,p_validation_sequence=>170
,p_validation=>'P48_MAIN_OLD_BY_MT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Sealed Provided By M.T'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(379702842670867)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(330075078670928)
,p_validation_name=>'Check Old By MT not null'
,p_validation_sequence=>180
,p_validation=>'P48_CHK_OLD_BY_MT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Sealed Provided By M.T'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(340106453670920)
,p_validation_name=>'Main old by HPSEBL not null'
,p_validation_sequence=>190
,p_validation=>'P48_MAIN_OLD_BY_HPSEBL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Sealed Provided By HPSEBL'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(379293316670868)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(329750885670928)
,p_validation_name=>'Check old by HPSEBL not null'
,p_validation_sequence=>200
,p_validation=>'P48_CHK_OLD_BY_HPSEBL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Sealed Provided By HPSEBL'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(339714453670921)
,p_validation_name=>'Main Old Import not null'
,p_validation_sequence=>210
,p_validation=>'P48_MAIN_OLD_IMPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter import'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(378873258670868)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(329361200670928)
,p_validation_name=>'Check Old Import not null'
,p_validation_sequence=>220
,p_validation=>'P48_CHK_OLD_IMPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter import'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(339301720670921)
,p_validation_name=>'Main Old Export not null'
,p_validation_sequence=>230
,p_validation=>'P48_MAIN_OLD_EXPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Export'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(378152740670869)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(328913305670928)
,p_validation_name=>'Check Old Export not null'
,p_validation_sequence=>240
,p_validation=>'P48_CHK_OLD_EXPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Export'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(338946089670921)
,p_validation_name=>'Main old Unit not null'
,p_validation_sequence=>250
,p_validation=>'P48_MAIN_OLD_UNIT_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Main Meter Unit'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(377670520670870)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(328553465670929)
,p_validation_name=>'Check old Unit not null'
,p_validation_sequence=>260
,p_validation=>'P48_CHK_OLD_UNIT_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Unit'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(338545105670921)
,p_validation_name=>'Main Old Loc/Panel not null'
,p_validation_sequence=>270
,p_validation=>'P48_MAIN_OLD_LOCA_PANEL_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old mAIN Meter Location/Panel No'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(375675436670873)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(328128749670929)
,p_validation_name=>'Check Old Loc/Panel not null'
,p_validation_sequence=>280
,p_validation=>'P48_CHK_OLD_LOCA_PANEL_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Old Check Meter Location/Panel No'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(338151255670922)
,p_validation_name=>'Main New Meter No not null'
,p_validation_sequence=>290
,p_validation=>'P48_MAIN_NEW_METER_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter No'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(374216180670875)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(327713446670929)
,p_validation_name=>'Check New Meter No not null'
,p_validation_sequence=>300
,p_validation=>'P48_CHK_NEW_METER_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter No'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(337735248670922)
,p_validation_name=>'Main new multi fac not null'
,p_validation_sequence=>310
,p_validation=>'P48_MAIN_NEW_MULTI_FAC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Multiplying Factor'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(373792145670876)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(327359479670929)
,p_validation_name=>'Check new multi fac not null'
,p_validation_sequence=>320
,p_validation=>'P48_CHK_NEW_MULTI_FAC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Multiplying Factor'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(337329266670922)
,p_validation_name=>'main new make not null'
,p_validation_sequence=>330
,p_validation=>'P48_MAIN_NEW_MAKE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Make'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(373368548670876)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(326958279670930)
,p_validation_name=>'Check new make not null'
,p_validation_sequence=>340
,p_validation=>'P48_CHK_NEW_MAKE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Make'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336938620670923)
,p_validation_name=>'Main New type not null'
,p_validation_sequence=>350
,p_validation=>'P48_MAIN_NEW_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Type'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(373010614670877)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(326566036670930)
,p_validation_name=>'check New type not null'
,p_validation_sequence=>360
,p_validation=>'P48_CHK_NEW_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Type'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336499738670923)
,p_validation_name=>'Main new  Acc Class not null'
,p_validation_sequence=>370
,p_validation=>'P48_MAIN_NEW_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Accuracy Class'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(372609619670877)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(326096106670930)
,p_validation_name=>'Check  New Acc Class not null'
,p_validation_sequence=>380
,p_validation=>'P48_CHK_NEW_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Accuracy Class'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(336119022670923)
,p_validation_name=>'Main new Ratio not null'
,p_validation_sequence=>390
,p_validation=>'P48_MAIN_NEW_RATIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Ratio'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(372233705670878)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(325708770670931)
,p_validation_name=>'Check new Ratio not null'
,p_validation_sequence=>400
,p_validation=>'P48_CHK_NEW_RATIO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Ratio'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(335757473670923)
,p_validation_name=>'Main New MFG Year not null'
,p_validation_sequence=>410
,p_validation=>'P48_MAIN_NEW_MFG_YEAR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Year Of MFG. '
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(371838213670878)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(325296073670931)
,p_validation_name=>'Check New MFG Year not null'
,p_validation_sequence=>420
,p_validation=>'P48_CHK_NEW_MFG_YEAR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Year Of MFG. '
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(335272217670924)
,p_validation_name=>'Main New By MT not null'
,p_validation_sequence=>430
,p_validation=>'P48_MAIN_NEW_BY_MT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Sealed Provided By M.T'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(371455498670879)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(324890220670931)
,p_validation_name=>'Check New By MT not null'
,p_validation_sequence=>440
,p_validation=>'P48_CHK_NEW_BY_MT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Sealed Provided By M.T'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(334928272670924)
,p_validation_name=>'Main new  by HPSEBL not null'
,p_validation_sequence=>450
,p_validation=>'P48_MAIN_NEW_HPSEBL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Sealed Provided By HPSEBL'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(370983857670879)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(324563816670931)
,p_validation_name=>'Check new  by HPSEBL not null'
,p_validation_sequence=>460
,p_validation=>'P48_CHK_NEW_BY_HPSEBL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Sealed Provided By HPSEBL'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(334542201670924)
,p_validation_name=>'Main New Import not null'
,p_validation_sequence=>470
,p_validation=>'P48_MAIN_NEW_IMPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Import'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(370665863670879)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(324156646670932)
,p_validation_name=>'check New Import not null'
,p_validation_sequence=>480
,p_validation=>'P48_CHK_NEW_IMPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Import'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(334095591670925)
,p_validation_name=>'Main New Export not null'
,p_validation_sequence=>490
,p_validation=>'P48_MAIN_NEW_EXPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Export'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(369852380670881)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(323748141670932)
,p_validation_name=>'Check New Export not null'
,p_validation_sequence=>500
,p_validation=>'P48_CHK_NEW_EXPORT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Export'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(333701040670925)
,p_validation_name=>'Main New Unit not null'
,p_validation_sequence=>510
,p_validation=>'P48_MAIN_NEW_UNIT_IMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Unit'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(370172275670880)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(323308960670932)
,p_validation_name=>'Check New Unit not null'
,p_validation_sequence=>520
,p_validation=>'P48_CHK_NEW_UNIT_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New check Meter Unit'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(333323630670925)
,p_validation_name=>'Main New Loc/Panel not null'
,p_validation_sequence=>530
,p_validation=>'P48_MAIN_NEW_LOCA_PANEL_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Main Meter Location/Panel No'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(367414690670883)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(322894094670933)
,p_validation_name=>'Check New Loc/Panel not null'
,p_validation_sequence=>540
,p_validation=>'P48_CHK_NEW_LOCA_PANEL_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter New Check Meter Location/Panel No'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:C'
,p_validation_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(322489143670933)
,p_validation_name=>'new exp not null'
,p_validation_sequence=>550
,p_validation=>'P48_MAIN_NEW_UNIT_EXP'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Select Unit'
,p_validation_condition=>'P48_TYPE'
,p_validation_condition2=>'B:M'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(387822961670847)
,p_associated_item=>wwv_flow_api.id(369464978670881)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(319387280670938)
,p_name=>'Show/hide region'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_TYPE'
,p_condition_element=>'P48_TYPE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'B'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(318949148670940)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63504571345571524)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(318370570670941)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63504571345571524)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'C'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(317873729670941)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63501476415571493)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(317459166670942)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63504571345571524)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'M'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(316966991670942)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_MAIN_OLD_METER_NO,P48_MAIN_OLD_MULTI_FAC,P48_MAIN_OLD_MAKE,P48_MAIN_OLD_TYPE,P48_MAIN_OLD_ACC_CLASS,P48_MAIN_OLD_RATIO,P48_MAIN_OLD_MFG_YEAR,P48_MAIN_OLD_BY_MT,P48_MAIN_OLD_BY_HPSEBL,P48_MAIN_OLD_IMPORT,P48_MAIN_OLD_EXPORT,P48_MAIN_OLD_UNIT_EXP,P'
||'48_MAIN_OLD_LOCA_PANEL_NO,P48_MAIN_OLD_REMARKS,P48_MAIN_NEW_METER_NO,P48_MAIN_NEW_MULTI_FAC,P48_MAIN_NEW_MAKE,P48_MAIN_NEW_TYPE,P48_MAIN_NEW_ACC_CLASS,P48_MAIN_NEW_RATIO,P48_MAIN_NEW_MFG_YEAR,P48_MAIN_NEW_BY_MT,P48_MAIN_NEW_HPSEBL,P48_MAIN_NEW_IMPORT'
||',P48_MAIN_NEW_EXPORT,P48_MAIN_NEW_UNIT_IMP,P48_MAIN_NEW_LOCA_PANEL_NO,P48_MAIN_NEW_REMARKS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'M'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(316386989670943)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63501476415571493)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'M'
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
 p_id=>wwv_flow_api.id(315931348670944)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63501476415571493)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'C'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(315456612670944)
,p_event_id=>wwv_flow_api.id(319387280670938)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CLEAR'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P48_CHK_OLD_METER_NO,P48_CHK_OLD_MULTI_FAC,P48_CHK_OLD_MAKE,P48_CHK_OLD_TYPE,P48_CHK_OLD_ACC_CLASS,P48_CHK_OLD_RATIO,P48_CHK_OLD_MFG_YEAR,P48_CHK_OLD_BY_MT,P48_CHK_OLD_BY_HPSEBL,P48_CHK_OLD_IMPORT,P48_CHK_OLD_EXPORT,P48_CHK_OLD_UNIT_EXP,P48_CHK_OLD_L'
||'OCA_PANEL_NO,P48_CHK_OLD_REMARKS,P48_CHK_NEW_METER_NO,P48_CHK_NEW_MULTI_FAC,P48_CHK_NEW_MAKE,P48_CHK_NEW_TYPE,P48_CHK_NEW_ACC_CLASS,P48_CHK_NEW_RATIO,P48_CHK_NEW_MFG_YEAR,P48_CHK_NEW_BY_MT,P48_CHK_NEW_BY_HPSEBL,P48_CHK_NEW_IMPORT,P48_CHK_NEW_EXPORT,P'
||'48_CHK_NEW_UNIT_EXP,P48_CHK_NEW_LOCA_PANEL_NO,P48_CHK_NEW_REMARKS'
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P48_TYPE'
,p_client_condition_expression=>'C'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(314975795670944)
,p_name=>'Show/hide region on null'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_TYPE'
,p_condition_element=>'P48_TYPE'
,p_triggering_condition_type=>'NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(314483574670945)
,p_event_id=>wwv_flow_api.id(314975795670944)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63501476415571493)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(313991707670946)
,p_event_id=>wwv_flow_api.id(314975795670944)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(63504571345571524)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(313568706670946)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>30
,p_condition_element=>'P48_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(313067747670947)
,p_event_id=>wwv_flow_api.id(313568706670946)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(388597967670845)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P48_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(312761382670947)
,p_name=>'hide forward on add mode'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P48_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(312224930670947)
,p_event_id=>wwv_flow_api.id(312761382670947)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(347667157670903)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(311854951670948)
,p_name=>'closed dialog refresh region'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(311354002670948)
,p_event_id=>wwv_flow_api.id(311854951670948)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(84584262098565675)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(310901781670949)
,p_name=>'OLD METER INFO '
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_LOCATION,P48_TYPE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P48_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(310452496670950)
,p_event_id=>wwv_flow_api.id(310901781670949)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'',
'IF :P48_TYPE =''M'' THEN',
'',
'Select VC_MAIN_METER_NO,',
'NU_MAIN_FACTOR ',
'INTO ',
':P48_MAIN_OLD_METER_NO,',
':P48_MAIN_OLD_MULTI_FAC',
'from  DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PRoJ_ID',
'and NU_DOC_NO = :P48_LOCATION;',
'',
'',
':P48_CHK_OLD_METER_NO :=NULL;',
':P48_CHK_OLD_MULTI_FAC :=NULL;',
':P48_CHK_OLD_MAKE :=NULL;',
':P48_CHK_OLD_TYPE :=NULL;',
':P48_CHK_OLD_ACC_CLASS :=NULL;',
':P48_CHK_OLD_RATIO :=NULL;',
':P48_CHK_OLD_MFG_YEAR :=NULL;',
':P48_CHK_OLD_BY_MT :=NULL;',
':P48_CHK_OLD_BY_HPSEBL :=NULL;',
':P48_CHK_OLD_IMPORT :=NULL;',
':P48_CHK_OLD_EXPORT :=NULL;',
':P48_CHK_OLD_UNIT_EXP :=NULL;',
':P48_CHK_OLD_LOCA_PANEL_NO :=NULL;',
':P48_CHK_OLD_REMARKS :=NULL;',
':P48_CHK_NEW_METER_NO :=NULL;',
':P48_CHK_NEW_MULTI_FAC :=NULL;',
':P48_CHK_NEW_MAKE :=NULL;',
':P48_CHK_NEW_TYPE :=NULL;',
':P48_CHK_NEW_ACC_CLASS :=NULL;',
':P48_CHK_NEW_RATIO :=NULL;',
':P48_CHK_NEW_MFG_YEAR :=NULL;',
':P48_CHK_NEW_BY_MT :=NULL;',
':P48_CHK_NEW_BY_HPSEBL :=NULL;',
':P48_CHK_NEW_IMPORT :=NULL;',
':P48_CHK_NEW_EXPORT :=NULL;',
':P48_CHK_NEW_UNIT_EXP :=NULL;',
':P48_CHK_NEW_LOCA_PANEL_NO :=NULL;',
':P48_CHK_NEW_REMARKS :=NULL;',
'',
'',
'',
'',
'',
'END IF;',
'',
'IF :P48_TYPE =''C'' THEN',
'Select VC_CHK_METER_NO,',
'NU_CHK_FACTOR ',
'INTO ',
':P48_CHK_OLD_METER_NO,',
':P48_CHK_OLD_MULTI_FAC',
'from  DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PRoJ_ID',
'and NU_DOC_NO = :P48_LOCATION;',
'',
'',
'',
':P48_MAIN_OLD_METER_NO  := NULL;',
':P48_MAIN_OLD_MULTI_FAC := NULL;',
':P48_MAIN_OLD_MAKE := NULL;',
':P48_MAIN_OLD_TYPE := NULL;',
':P48_MAIN_OLD_ACC_CLASS := NULL;',
':P48_MAIN_OLD_RATIO := NULL;',
':P48_MAIN_OLD_MFG_YEAR := NULL;',
':P48_MAIN_OLD_BY_MT := NULL;',
':P48_MAIN_OLD_BY_HPSEBL := NULL;',
':P48_MAIN_OLD_IMPORT := NULL;',
':P48_MAIN_OLD_EXPORT := NULL;',
':P48_MAIN_OLD_UNIT_EXP := NULL;',
':P48_MAIN_OLD_LOCA_PANEL_NO := NULL;',
':P48_MAIN_OLD_REMARKS := NULL;',
':P48_MAIN_NEW_METER_NO := NULL;',
':P48_MAIN_NEW_MULTI_FAC := NULL;',
':P48_MAIN_NEW_MAKE := NULL;',
':P48_MAIN_NEW_TYPE := NULL;',
':P48_MAIN_NEW_ACC_CLASS := NULL;',
':P48_MAIN_NEW_RATIO := NULL;',
':P48_MAIN_NEW_MFG_YEAR := NULL;',
':P48_MAIN_NEW_BY_MT := NULL;',
':P48_MAIN_NEW_HPSEBL := NULL;',
':P48_MAIN_NEW_IMPORT := NULL;',
':P48_MAIN_NEW_EXPORT := NULL;',
':P48_MAIN_NEW_UNIT_IMP := NULL;',
':P48_MAIN_NEW_LOCA_PANEL_NO := NULL;',
':P48_MAIN_NEW_REMARKS := NULL;',
'',
'END IF;',
'',
'IF :P48_TYPE =''B'' THEN',
'Select VC_MAIN_METER_NO,',
'NU_MAIN_FACTOR ,VC_CHK_METER_NO,',
'NU_CHK_FACTOR ',
'',
'INTO',
':P48_MAIN_OLD_METER_NO,:P48_MAIN_OLD_MULTI_FAC,',
':P48_CHK_OLD_METER_NO,:P48_CHK_OLD_MULTI_FAC',
'from  DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PRoJ_ID',
'and NU_DOC_NO = :P48_LOCATION;',
'END IF;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_attribute_02=>'P48_LOCATION,P48_TYPE'
,p_attribute_03=>'P48_MAIN_OLD_METER_NO,P48_MAIN_OLD_MULTI_FAC,P48_CHK_OLD_METER_NO,P48_CHK_OLD_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(310047512670950)
,p_name=>'meter Info'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_MAIN_OLD_METER_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P48_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(309566555670951)
,p_event_id=>wwv_flow_api.id(310047512670950)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT VC_MAIN_NEW_MAKE,',
'VC_MAIN_NEW_TYPE,',
'VC_MAIN_NEW_ACCU_CLS,',
'VC_MAIN_NEW_RATIO,',
'VC_MAIN_NEW_MFG,',
'VC_MAIN_NEW_BY_MT,',
'VC_MAIN_NEW_BY_HPSEBL,',
'NU_MAIN_NEW_IMP,',
'NU_MAIN_NEW_EXP,',
'VC_MAIN_NEW_UNIT_exp,',
'VC_MAIN_NEW_UNIT_imp,',
'VC_MAIN_NEW_LOC_PANE,',
'VC_MAIN_NEW_REMARKS,',
'dt_MAIN_NEW_INSTALL_DATE,',
' NU_MAIN_new_KVAh_read_exp,',
'vC_MAIN_new_kvah_UNIT_EXP,',
'NU_MAIN_new_KVAh_read_imp,',
'VC_MAIN_new_kvah_UNIT_imp',
'',
'INTO ',
'',
':P48_MAIN_OLD_MAKE,',
':P48_MAIN_OLD_TYPE,',
':P48_MAIN_OLD_ACC_CLASS,',
':P48_MAIN_OLD_RATIO,',
':P48_MAIN_OLD_MFG_YEAR,',
':P48_MAIN_OLD_BY_MT,',
':P48_MAIN_OLD_BY_HPSEBL,',
':P48_MAIN_OLD_IMPORT,',
':P48_MAIN_OLD_EXPORT,',
':P48_MAIN_OLD_UNIT_KVAH_EXP,',
':P48_MAIN_OLD_UNIT_KVAH_IMP,',
':P48_MAIN_OLD_LOCA_PANEL_NO,',
':P48_MAIN_OLD_REMARKS,',
':P48_MAIN_OLD_REPLC_DATE,',
':P48_MAIN_OLD_EXP_KVAH_READ,',
':P48_MAIN_OLD_UNIT_KVAH_EXP,',
':P48_MAIN_OLD_IMP_KVAH_READ,',
':P48_MAIN_OLD_UNIT_KVAH_IMP',
'FROM DT_METER_REPLACEMENT',
'WHERE VC_MAIN_NEW_METER_NO = :P48_MAIN_OLD_METER_NO',
'AND  ORG_ID =:GLOBAL_COMP_CODE',
' AND PRJ_ID =:GLOBAL_PROJ_ID;',
'',
' EXCEPTION WHEN OTHERS THEN NULL;',
' END;'))
,p_attribute_02=>'P48_MAIN_OLD_METER_NO'
,p_attribute_03=>'P48_MAIN_OLD_MAKE, P48_MAIN_OLD_TYPE, P48_MAIN_OLD_ACC_CLASS, P48_MAIN_OLD_RATIO, P48_MAIN_OLD_MFG_YEAR, P48_MAIN_OLD_BY_MT, P48_MAIN_OLD_BY_HPSEBL, P48_MAIN_OLD_IMPORT, P48_MAIN_OLD_EXPORT, P48_MAIN_OLD_UNIT_KVAH_EXP, P48_MAIN_OLD_UNIT_KVAH_IMP, P48'
||'_MAIN_OLD_LOCA_PANEL_NO, P48_MAIN_OLD_REMARKS, P48_MAIN_OLD_REPLC_DATE, P48_MAIN_OLD_EXP_KVAH_READ, P48_MAIN_OLD_UNIT_KVAH_EXP, P48_MAIN_OLD_IMP_KVAH_READ, P48_MAIN_OLD_UNIT_KVAH_IMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(309148734670951)
,p_name=>'METER INFO'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P48_CHK_OLD_METER_NO'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(308642399670952)
,p_event_id=>wwv_flow_api.id(309148734670951)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT ',
'',
'VC_CHECK_NEW_MAKE,',
'VC_CHECK_NEW_TYPE,',
'VC_CHECK_NEW_ACCU_CLS,',
'VC_CHECK_NEW_RATIO,',
'VC_CHECK_NEW_MFG,',
'VC_CHECK_NEW_BY_MT,',
'VC_CHECK_NEW_BY_HPSEBL,',
'NU_CHECK_NEW_IMP,',
'NU_CHECK_NEW_EXP,',
'VC_CHECK_NEW_UNIT_exp,',
'VC_CHECK_NEW_UNIT_imp,',
'VC_CHECK_NEW_LOC_PANE,',
'VC_CHECK_NEW_REMARKS,',
'dt_CHECK_NEW_INSTALL_DATE,',
'NU_chk_new_KVAh_read_EXP,',
'VC_chk_new_kvah_UNIT_EXP,',
'NU_chk_new_KVAh_read_imp,',
'VC_chk_new_kvah_UNIT_imp',
'',
'INTO',
':P48_CHK_OLD_MAKE,',
':P48_CHK_OLD_TYPE,',
':P48_CHK_OLD_ACC_CLASS,',
':P48_CHK_OLD_RATIO,',
':P48_CHK_OLD_MFG_YEAR,',
':P48_CHK_OLD_BY_MT,',
':P48_CHK_OLD_BY_HPSEBL,',
':P48_CHK_OLD_IMPORT,',
':P48_CHK_OLD_EXPORT,',
':P48_CHK_OLD_UNIT_EXP,',
':P48_CHK_OLD_UNIT_IMP,',
':P48_CHK_OLD_LOCA_PANEL_NO,',
':P48_CHK_OLD_REMARKS,',
':P48_CHK_OLD_REPLC_DATE,',
':P48_CHK_OLD_EXP_KVAH_READ,',
':P48_CHK_OLD_UNIT_KVAH_EXP,',
':P48_CHK_OLD_IMP_KVAH_READ,',
':P48_CHK_OLD_UNIT_KVAH_IMP',
' FROM DT_METER_REPLACEMENT',
' WHERE ORG_ID = :GLOBAL_COMP_CODE',
' AND PRJ_ID = :GLOBAL_PROJ_ID',
' AND VC_CHECK_NEW_METER_NO = :P48_CHK_OLD_METER_NO;',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
' END;'))
,p_attribute_02=>'P48_CHK_OLD_METER_NO'
,p_attribute_03=>'P48_CHK_OLD_MAKE, P48_CHK_OLD_TYPE, P48_CHK_OLD_ACC_CLASS, P48_CHK_OLD_RATIO, P48_CHK_OLD_MFG_YEAR, P48_CHK_OLD_BY_MT, P48_CHK_OLD_BY_HPSEBL, P48_CHK_OLD_IMPORT, P48_CHK_OLD_EXPORT, P48_CHK_OLD_UNIT_EXP, P48_CHK_OLD_UNIT_IMP, P48_CHK_OLD_LOCA_PANEL_N'
||'O, P48_CHK_OLD_REMARKS, P48_CHK_OLD_REPLC_DATE, P48_CHK_OLD_EXP_KVAH_READ, P48_CHK_OLD_UNIT_KVAH_EXP, P48_CHK_OLD_IMP_KVAH_READ, P48_CHK_OLD_UNIT_KVAH_IMP'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(322171105670933)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_id number;',
'begin',
'',
'select nvl(max(NU_DOC_NO),0) +1 ',
'into  v_id ',
'from DT_METER_REPLACEMENT ',
'where ORG_ID = :global_comp_code',
'and    PRJ_ID  =  :GLOBAL_PROJ_ID;',
'',
':P48_DOC_NO := V_ID;',
'',
'INSERT INTO DT_METER_REPLACEMENT',
'(',
'ORG_ID, PRJ_ID, NU_DOC_NO, DT_DOC_DATE, NU_LOC_DOC_NO, CH_TYPE, VC_COMMON_REMARKS, VC_MAIN_OLD_METER_NO, NU_MAIN_OLD_FACTOR, ',
'VC_MAIN_OLD_MAKE, VC_MAIN_OLD_TYPE, VC_MAIN_OLD_ACCU_CLS, VC_MAIN_OLD_RATIO, VC_MAIN_OLD_MFG, VC_MAIN_OLD_BY_MT, VC_MAIN_OLD_BY_HPSEBL, ',
'NU_MAIN_OLD_IMP, NU_MAIN_OLD_EXP,VC_MAIN_OLD_UNIT_EXP,VC_MAIN_OLD_UNIT_IMP, VC_MAIN_OLD_LOC_PANE, VC_MAIN_OLD_REMARKS, ',
'VC_MAIN_NEW_METER_NO, NU_MAIN_NEW_FACTOR, VC_MAIN_NEW_MAKE, VC_MAIN_NEW_TYPE, ',
'VC_MAIN_NEW_ACCU_CLS, VC_MAIN_NEW_RATIO, VC_MAIN_NEW_MFG, VC_MAIN_NEW_BY_MT, VC_MAIN_NEW_BY_HPSEBL, NU_MAIN_NEW_IMP, NU_MAIN_NEW_EXP, ',
'VC_MAIN_NEW_UNIT_exp,VC_MAIN_NEW_UNIT_imp, VC_MAIN_NEW_LOC_PANE, VC_MAIN_NEW_REMARKS, dt_MAIN_NEW_INSTALL_DATE,dt_MAIN_OLD_REPLC_DATE,',
'VC_CHECK_OLD_METER_NO, NU_CHECK_OLD_FACTOR, VC_CHECK_OLD_MAKE, VC_CHECK_OLD_TYPE, VC_CHECK_OLD_ACCU_CLS, VC_CHECK_OLD_RATIO, VC_CHECK_OLD_MFG, ',
'VC_CHECK_OLD_BY_MT, VC_CHECK_OLD_BY_HPSEBL, NU_CHECK_OLD_IMP, NU_CHECK_OLD_EXP, VC_CHECK_OLD_UNIT_exp, VC_CHECK_OLD_LOC_PANE, ',
'VC_CHECK_OLD_REMARKS, ',
'VC_CHECK_NEW_METER_NO, NU_CHECK_NEW_FACTOR, VC_CHECK_NEW_MAKE, VC_CHECK_NEW_TYPE, VC_CHECK_NEW_ACCU_CLS, VC_CHECK_NEW_RATIO, ',
'VC_CHECK_NEW_MFG, VC_CHECK_NEW_BY_MT, VC_CHECK_NEW_BY_HPSEBL, NU_CHECK_NEW_IMP, NU_CHECK_NEW_EXP, VC_CHECK_NEW_UNIT_exp,VC_CHECK_NEW_UNIT_imp, VC_CHECK_NEW_LOC_PANE, ',
'VC_CHECK_NEW_REMARKS,dt_CHECK_NEW_INSTALL_DATE, dt_CHECK_OLD_REPLC_DATE,',
'USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,',
'DT_MAIN_NEW_CALLIB_DATE, DT_CHECK_NEW_CALLIB_DATE,',
'',
'NU_MAIN_OLD_KVAh_read_EXP,VC_MAIN_OLD_kvah_UNIT_EXP ,NU_MAIN_OLD_KVAh_read_imp,VC_MAIN_OLD_kvah_UNIT_imp ,',
'NU_MAIN_new_KVAh_read_exp,vC_MAIN_new_kvah_UNIT_EXP,NU_MAIN_new_KVAh_read_imp,VC_MAIN_new_kvah_UNIT_imp,',
'NU_chk_old_KVAh_read_EXP,VC_chk_old_kvah_UNIT_EXP ,NU_chk_old_KVAh_read_imp,VC_chk_old_kvah_UNIT_imp,',
'NU_chk_new_KVAh_read_EXP,VC_chk_new_kvah_UNIT_EXP ,NU_chk_new_KVAh_read_imp ,VC_chk_new_kvah_UNIT_imp ',
')',
'VALUES',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P48_DOC_NO, :P48_DOC_DATE, :P48_LOCATION, :P48_TYPE, :P48_COMMON_REMARKS, :P48_MAIN_OLD_METER_NO, :P48_MAIN_OLD_MULTI_FAC,',
':P48_MAIN_OLD_MAKE, :P48_MAIN_OLD_TYPE, :P48_MAIN_OLD_ACC_CLASS, :P48_MAIN_OLD_RATIO, :P48_MAIN_OLD_MFG_YEAR, :P48_MAIN_OLD_BY_MT, :P48_MAIN_OLD_BY_HPSEBL,',
':P48_MAIN_OLD_IMPORT, :P48_MAIN_OLD_EXPORT, :P48_MAIN_OLD_UNIT_EXP,:P48_MAIN_OLD_UNIT_IMP, :P48_MAIN_OLD_LOCA_PANEL_NO, :P48_MAIN_OLD_REMARKS,',
':P48_MAIN_NEW_METER_NO, :P48_MAIN_NEW_MULTI_FAC, :P48_MAIN_NEW_MAKE, :P48_MAIN_NEW_TYPE, ',
':P48_MAIN_NEW_ACC_CLASS, :P48_MAIN_NEW_RATIO, :P48_MAIN_NEW_MFG_YEAR, :P48_MAIN_NEW_BY_MT, :P48_MAIN_NEW_HPSEBL, :P48_MAIN_NEW_IMPORT, :P48_MAIN_NEW_EXPORT,',
':P48_MAIN_NEW_UNIT_EXP,:P48_MAIN_NEW_UNIT_IMP,  :P48_MAIN_NEW_LOCA_PANEL_NO, :P48_MAIN_NEW_REMARKS,:P48_MAIN_NEW_INSTALL_DATE, :P48_MAIN_OLD_REPLC_DATE, ',
':P48_CHK_OLD_METER_NO, :P48_CHK_OLD_MULTI_FAC, :P48_CHK_OLD_MAKE, :P48_CHK_OLD_TYPE, :P48_CHK_OLD_ACC_CLASS, :P48_CHK_OLD_RATIO, :P48_CHK_OLD_MFG_YEAR,',
':P48_CHK_OLD_BY_MT, :P48_CHK_OLD_BY_HPSEBL, :P48_CHK_OLD_IMPORT, :P48_CHK_OLD_EXPORT, :P48_CHK_OLD_UNIT_EXP, :P48_CHK_OLD_LOCA_PANEL_NO,',
':P48_CHK_OLD_REMARKS, ',
':P48_CHK_NEW_METER_NO, :P48_CHK_NEW_MULTI_FAC, :P48_CHK_NEW_MAKE, :P48_CHK_NEW_TYPE, :P48_CHK_NEW_ACC_CLASS, :P48_CHK_NEW_RATIO,',
':P48_CHK_NEW_MFG_YEAR, :P48_CHK_NEW_BY_MT, :P48_CHK_NEW_BY_HPSEBL, :P48_CHK_NEW_IMPORT, :P48_CHK_NEW_EXPORT, :P48_CHK_NEW_UNIT_EXP,:P48_CHK_NEW_UNIT_IMP, :P48_CHK_NEW_LOCA_PANEL_NO,',
':P48_CHK_NEW_REMARKS,:P48_CHK_NEW_INSTALL_DATE, :P48_CHK_OLD_REPLC_DATE,',
':GLOBAL_USER_CODE, SYSDATE, :GLOBAL_PARENT_COMP,',
':P48_MAIN_NEW_CALLIB_DATE, :P48_CHECK_NEW_CALLIB_DATE,',
'',
':P48_MAIN_OLD_EXP_KVAH_READ , :P48_MAIN_OLD_UNIT_KVAH_EXP , :P48_MAIN_OLD_IMP_KVAH_READ, :P48_MAIN_OLD_UNIT_KVAH_IMP, ',
':P48_MAIN_NEW_EXP_KVAH_READ,  :P48_MAIN_NEW_UNIT_KVAH_EXP ,  :P48_MAIN_NEW_IMP_KVAH_READ, :P48_MAIN_NEW_UNIT_KVAH_IMP,',
':P48_CHK_OLD_EXP_KVAH_READ, :P48_CHK_OLD_UNIT_KVAH_EXP,  :P48_CHK_OLD_IMP_KVAH_READ, :P48_CHK_OLD_UNIT_KVAH_IMP , ',
':P48_CHK_NEW_EXP_KVAH_READ, :P48_CHK_NEW_UNIT_KVAH_EXP , :P48_CHK_NEW_IMP_KVAH_READ,  :P48_CHK_NEW_UNIT_KVAH_IMP',
'',
'',
'',
'',
');',
'',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(387822961670847)
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(321417303670935)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update DT_METER_REPLACEMENT',
'SET',
'NU_LOC_DOC_NO               = :P48_LOCATION,',
'CH_TYPE                     = :P48_TYPE,',
'VC_COMMON_REMARKS           = :P48_COMMON_REMARKS,',
'VC_MAIN_OLD_METER_NO        = :P48_MAIN_OLD_METER_NO,',
'NU_MAIN_OLD_FACTOR          = :P48_MAIN_OLD_MULTI_FAC,',
'VC_MAIN_OLD_MAKE            = :P48_MAIN_OLD_MAKE,',
'VC_MAIN_OLD_TYPE            = :P48_MAIN_OLD_TYPE,',
'VC_MAIN_OLD_ACCU_CLS        = :P48_MAIN_OLD_ACC_CLASS,',
'VC_MAIN_OLD_RATIO           = :P48_MAIN_OLD_RATIO,',
'VC_MAIN_OLD_MFG             = :P48_MAIN_OLD_MFG_YEAR,',
'VC_MAIN_OLD_BY_MT           = :P48_MAIN_OLD_BY_MT,',
'VC_MAIN_OLD_BY_HPSEBL       = :P48_MAIN_OLD_BY_HPSEBL,',
'NU_MAIN_OLD_IMP             = :P48_MAIN_OLD_IMPORT,',
'NU_MAIN_OLD_EXP             = :P48_MAIN_OLD_EXPORT,',
'VC_MAIN_OLD_UNIT_EXP            = :P48_MAIN_OLD_UNIT_EXP,',
'VC_MAIN_OLD_UNIT_IMP            = :P48_MAIN_OLD_UNIT_IMP,',
'VC_MAIN_OLD_LOC_PANE        = :P48_MAIN_OLD_LOCA_PANEL_NO,',
'VC_MAIN_OLD_REMARKS         = :P48_MAIN_OLD_REMARKS,',
'VC_MAIN_NEW_METER_NO        = :P48_MAIN_NEW_METER_NO,',
'NU_MAIN_NEW_FACTOR          = :P48_MAIN_NEW_MULTI_FAC,',
'VC_MAIN_NEW_MAKE            = :P48_MAIN_NEW_MAKE,',
'VC_MAIN_NEW_TYPE            = :P48_MAIN_NEW_TYPE,',
'VC_MAIN_NEW_ACCU_CLS        = :P48_MAIN_NEW_ACC_CLASS,',
'VC_MAIN_NEW_RATIO           = :P48_MAIN_NEW_RATIO,',
'VC_MAIN_NEW_MFG             = :P48_MAIN_NEW_MFG_YEAR,',
'VC_MAIN_NEW_BY_MT           = :P48_MAIN_NEW_BY_MT,',
'VC_MAIN_NEW_BY_HPSEBL       = :P48_MAIN_NEW_HPSEBL,',
'NU_MAIN_NEW_IMP             = :P48_MAIN_NEW_IMPORT,',
'NU_MAIN_NEW_EXP             = :P48_MAIN_NEW_EXPORT,',
'VC_MAIN_NEW_UNIT_EXP            = :P48_MAIN_NEW_UNIT_EXP,',
'VC_MAIN_NEW_UNIT_IMP            = :P48_MAIN_NEW_UNIT_IMP,',
'VC_MAIN_NEW_LOC_PANE        = :P48_MAIN_NEW_LOCA_PANEL_NO,',
'VC_MAIN_NEW_REMARKS         = :P48_MAIN_NEW_REMARKS,',
'VC_CHECK_OLD_METER_NO       = :P48_CHK_OLD_METER_NO,',
'NU_CHECK_OLD_FACTOR         = :P48_CHK_OLD_MULTI_FAC,',
'VC_CHECK_OLD_MAKE           = :P48_CHK_OLD_MAKE,',
'VC_CHECK_OLD_TYPE           = :P48_CHK_OLD_TYPE,',
'VC_CHECK_OLD_ACCU_CLS       = :P48_CHK_OLD_ACC_CLASS,',
'VC_CHECK_OLD_RATIO          = :P48_CHK_OLD_RATIO,',
'VC_CHECK_OLD_MFG            = :P48_CHK_OLD_MFG_YEAR,',
'VC_CHECK_OLD_BY_MT          = :P48_CHK_OLD_BY_MT,',
'VC_CHECK_OLD_BY_HPSEBL      = :P48_CHK_OLD_BY_HPSEBL,',
'NU_CHECK_OLD_IMP            = :P48_CHK_OLD_IMPORT,',
'NU_CHECK_OLD_EXP            = :P48_CHK_OLD_EXPORT,',
'VC_CHECK_OLD_UNIT_EXP           = :P48_CHK_OLD_UNIT_EXP,',
'VC_CHECK_OLD_UNIT_IMP           = :P48_CHK_OLD_UNIT_IMP,',
'VC_CHECK_OLD_LOC_PANE       = :P48_CHK_OLD_LOCA_PANEL_NO,',
'VC_CHECK_OLD_REMARKS        = :P48_CHK_OLD_REMARKS,',
'VC_CHECK_NEW_METER_NO       = :P48_CHK_NEW_METER_NO,',
'NU_CHECK_NEW_FACTOR         = :P48_CHK_NEW_MULTI_FAC,',
'VC_CHECK_NEW_MAKE           = :P48_CHK_NEW_MAKE,',
'VC_CHECK_NEW_TYPE           = :P48_CHK_NEW_TYPE,',
'VC_CHECK_NEW_ACCU_CLS       = :P48_CHK_NEW_ACC_CLASS,',
'VC_CHECK_NEW_RATIO          = :P48_CHK_NEW_RATIO,',
'VC_CHECK_NEW_MFG            = :P48_CHK_NEW_MFG_YEAR,',
'VC_CHECK_NEW_BY_MT          = :P48_CHK_NEW_BY_MT,',
'VC_CHECK_NEW_BY_HPSEBL      = :P48_CHK_NEW_BY_HPSEBL,',
'NU_CHECK_NEW_IMP            = :P48_CHK_NEW_IMPORT,',
'NU_CHECK_NEW_EXP            = :P48_CHK_NEW_EXPORT,',
'VC_CHECK_NEW_UNIT_EXP           = :P48_CHK_NEW_UNIT_EXP,',
'VC_CHECK_NEW_UNIT_IMP           = :P48_CHK_NEW_UNIT_IMP,',
'VC_CHECK_NEW_LOC_PANE       = :P48_CHK_NEW_LOCA_PANEL_NO,',
'DT_MAIN_NEW_INSTALL_DATE    = :P48_MAIN_NEW_INSTALL_DATE,',
'DT_MAIN_OLD_REPLC_DATE      = :P48_MAIN_OLD_REPLC_DATE, ',
'DT_CHECK_NEW_INSTALL_DATE   = :P48_CHK_NEW_INSTALL_DATE,',
'DT_CHECK_OLD_REPLC_DATE     = :P48_CHK_OLD_REPLC_DATE ,',
'USR_ID_MOD_DT               = sysdate ,',
'DT_CHECK_NEW_CALLIB_DATE    =  :P48_CHECK_NEW_CALLIB_DATE,',
'DT_MAIN_NEW_CALLIB_DATE     =  :P48_MAIN_NEW_CALLIB_DATE,',
'',
'NU_MAIN_OLD_KVAh_read_EXP   = :P48_MAIN_OLD_EXP_KVAH_READ ,',
'VC_MAIN_OLD_kvah_UNIT_EXP   = :P48_MAIN_OLD_UNIT_KVAH_EXP ,',
'NU_MAIN_OLD_KVAh_read_imp  = :P48_MAIN_OLD_IMP_KVAH_READ, ',
'VC_MAIN_OLD_kvah_UNIT_imp   = :P48_MAIN_OLD_UNIT_KVAH_IMP, ',
'NU_MAIN_new_KVAh_read_exp   = :P48_MAIN_NEW_EXP_KVAH_READ,  ',
'vC_MAIN_new_kvah_UNIT_EXP   = :P48_MAIN_NEW_UNIT_KVAH_EXP , ',
'NU_MAIN_new_KVAh_read_imp   = :P48_MAIN_NEW_IMP_KVAH_READ, ',
'VC_MAIN_new_kvah_UNIT_imp   = :P48_MAIN_NEW_UNIT_KVAH_IMP,',
'NU_chk_old_KVAh_read_EXP    = :P48_CHK_OLD_EXP_KVAH_READ, ',
'VC_chk_old_kvah_UNIT_EXP    = :P48_CHK_OLD_UNIT_KVAH_EXP,  ',
'NU_chk_old_KVAh_read_imp    = :P48_CHK_OLD_IMP_KVAH_READ, ',
'VC_chk_old_kvah_UNIT_imp    = :P48_CHK_OLD_UNIT_KVAH_IMP , ',
'NU_chk_new_KVAh_read_EXP    = :P48_CHK_NEW_EXP_KVAH_READ, ',
'VC_chk_new_kvah_UNIT_EXP    = :P48_CHK_NEW_UNIT_KVAH_EXP , ',
'NU_chk_new_KVAh_read_imp    = :P48_CHK_NEW_IMP_KVAH_READ, ',
'VC_chk_new_kvah_UNIT_imp    =  :P48_CHK_NEW_UNIT_KVAH_IMP',
'',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P48_DOC_NO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(387822961670847)
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(320168148670937)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert attach file'
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
'IF :P48_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P48_DOC_NO ',
'                            AND DT_DOC_DATE = :P48_DOC_DATE',
'                            AND VC_TRANS_TYPE=''MTR'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,:P48_DOC_DATE,:P48_DOC_NO,:P48_DOC_DATE,''MTR'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(387822961670847)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(321810750670934)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'DT_DOC_DATE, NU_LOC_DOC_NO, CH_TYPE, VC_COMMON_REMARKS, VC_MAIN_OLD_METER_NO, NU_MAIN_OLD_FACTOR, ',
'VC_MAIN_OLD_MAKE, VC_MAIN_OLD_TYPE, VC_MAIN_OLD_ACCU_CLS, VC_MAIN_OLD_RATIO, VC_MAIN_OLD_MFG, VC_MAIN_OLD_BY_MT, VC_MAIN_OLD_BY_HPSEBL, ',
'NU_MAIN_OLD_IMP, NU_MAIN_OLD_EXP,VC_MAIN_OLD_UNIT_EXP,VC_MAIN_OLD_UNIT_IMP, VC_MAIN_OLD_LOC_PANE, VC_MAIN_OLD_REMARKS, ',
'VC_MAIN_NEW_METER_NO, NU_MAIN_NEW_FACTOR, VC_MAIN_NEW_MAKE, VC_MAIN_NEW_TYPE, ',
'VC_MAIN_NEW_ACCU_CLS, VC_MAIN_NEW_RATIO, VC_MAIN_NEW_MFG, VC_MAIN_NEW_BY_MT, VC_MAIN_NEW_BY_HPSEBL, NU_MAIN_NEW_IMP, NU_MAIN_NEW_EXP, ',
'VC_MAIN_NEW_UNIT_EXP,VC_MAIN_NEW_UNIT_IMP, VC_MAIN_NEW_LOC_PANE, VC_MAIN_NEW_REMARKS, ',
'VC_CHECK_OLD_METER_NO, NU_CHECK_OLD_FACTOR, VC_CHECK_OLD_MAKE, VC_CHECK_OLD_TYPE, VC_CHECK_OLD_ACCU_CLS, VC_CHECK_OLD_RATIO, VC_CHECK_OLD_MFG, ',
'VC_CHECK_OLD_BY_MT, VC_CHECK_OLD_BY_HPSEBL, NU_CHECK_OLD_IMP, NU_CHECK_OLD_EXP, VC_CHECK_OLD_UNIT_EXP,VC_CHECK_OLD_UNIT_IMP, VC_CHECK_OLD_LOC_PANE, ',
'VC_CHECK_OLD_REMARKS, ',
'VC_CHECK_NEW_METER_NO, NU_CHECK_NEW_FACTOR, VC_CHECK_NEW_MAKE, VC_CHECK_NEW_TYPE, VC_CHECK_NEW_ACCU_CLS, VC_CHECK_NEW_RATIO, ',
'VC_CHECK_NEW_MFG, VC_CHECK_NEW_BY_MT, VC_CHECK_NEW_BY_HPSEBL, NU_CHECK_NEW_IMP, NU_CHECK_NEW_EXP, VC_CHECK_NEW_UNIT_EXP,VC_CHECK_NEW_UNIT_IMP, VC_CHECK_NEW_LOC_PANE, ',
'VC_CHECK_NEW_REMARKS,',
'dt_CHECK_NEW_INSTALL_DATE, dt_CHECK_OLD_REPLC_DATE,dt_MAIN_NEW_INSTALL_DATE,dt_MAIN_OLD_REPLC_DATE,',
'',
'DT_MAIN_NEW_CALLIB_DATE, DT_CHECK_NEW_CALLIB_DATE,',
'',
'',
'NU_MAIN_OLD_KVAh_read_EXP,VC_MAIN_OLD_kvah_UNIT_EXP ,NU_MAIN_OLD_KVAh_read_imp,VC_MAIN_OLD_kvah_UNIT_imp ,',
'NU_MAIN_new_KVAh_read_exp,vC_MAIN_new_kvah_UNIT_EXP,NU_MAIN_new_KVAh_read_imp,VC_MAIN_new_kvah_UNIT_imp,',
'NU_chk_old_KVAh_read_EXP,VC_chk_old_kvah_UNIT_EXP ,NU_chk_old_KVAh_read_imp,VC_chk_old_kvah_UNIT_imp,',
'NU_chk_new_KVAh_read_EXP,VC_chk_new_kvah_UNIT_EXP ,NU_chk_new_KVAh_read_imp ,VC_chk_new_kvah_UNIT_imp ',
'',
',NU_chk_new_KVAh_read_EXP',
'INTO',
'',
':P48_DOC_DATE, :P48_LOCATION, :P48_TYPE, :P48_COMMON_REMARKS, :P48_MAIN_OLD_METER_NO, :P48_MAIN_OLD_MULTI_FAC,',
':P48_MAIN_OLD_MAKE, :P48_MAIN_OLD_TYPE, :P48_MAIN_OLD_ACC_CLASS, :P48_MAIN_OLD_RATIO, :P48_MAIN_OLD_MFG_YEAR, :P48_MAIN_OLD_BY_MT, :P48_MAIN_OLD_BY_HPSEBL,',
':P48_MAIN_OLD_IMPORT, :P48_MAIN_OLD_EXPORT, :P48_MAIN_OLD_UNIT_EXP,:P48_MAIN_OLD_UNIT_IMP, :P48_MAIN_OLD_LOCA_PANEL_NO, :P48_MAIN_OLD_REMARKS,',
':P48_MAIN_NEW_METER_NO, :P48_MAIN_NEW_MULTI_FAC, :P48_MAIN_NEW_MAKE, :P48_MAIN_NEW_TYPE, ',
':P48_MAIN_NEW_ACC_CLASS, :P48_MAIN_NEW_RATIO, :P48_MAIN_NEW_MFG_YEAR, :P48_MAIN_NEW_BY_MT, :P48_MAIN_NEW_HPSEBL, :P48_MAIN_NEW_IMPORT, :P48_MAIN_NEW_EXPORT,',
':P48_MAIN_NEW_UNIT_EXP,:P48_MAIN_NEW_UNIT_IMP,  :P48_MAIN_NEW_LOCA_PANEL_NO, :P48_MAIN_NEW_REMARKS, ',
':P48_CHK_OLD_METER_NO, :P48_CHK_OLD_MULTI_FAC, :P48_CHK_OLD_MAKE, :P48_CHK_OLD_TYPE, :P48_CHK_OLD_ACC_CLASS, :P48_CHK_OLD_RATIO, :P48_CHK_OLD_MFG_YEAR,',
':P48_CHK_OLD_BY_MT, :P48_CHK_OLD_BY_HPSEBL, :P48_CHK_OLD_IMPORT, :P48_CHK_OLD_EXPORT, :P48_CHK_OLD_UNIT_EXP,:P48_CHK_OLD_UNIT_IMP, :P48_CHK_OLD_LOCA_PANEL_NO,',
':P48_CHK_OLD_REMARKS, ',
':P48_CHK_NEW_METER_NO, :P48_CHK_NEW_MULTI_FAC, :P48_CHK_NEW_MAKE, :P48_CHK_NEW_TYPE, :P48_CHK_NEW_ACC_CLASS, :P48_CHK_NEW_RATIO,',
':P48_CHK_NEW_MFG_YEAR, :P48_CHK_NEW_BY_MT, :P48_CHK_NEW_BY_HPSEBL, :P48_CHK_NEW_IMPORT, :P48_CHK_NEW_EXPORT, :P48_CHK_NEW_UNIT_EXP,:P48_CHK_NEW_UNIT_IMP, :P48_CHK_NEW_LOCA_PANEL_NO,',
':P48_CHK_NEW_REMARKS,',
':P48_CHK_NEW_INSTALL_DATE, :P48_MAIN_OLD_REPLC_DATE,:P48_MAIN_NEW_INSTALL_DATE, :P48_CHK_OLD_REPLC_DATE,',
':P48_MAIN_NEW_CALLIB_DATE, :P48_CHECK_NEW_CALLIB_DATE ,',
'',
'',
'',
':P48_MAIN_OLD_EXP_KVAH_READ , :P48_MAIN_OLD_UNIT_KVAH_EXP , :P48_MAIN_OLD_IMP_KVAH_READ, :P48_MAIN_OLD_UNIT_KVAH_IMP, ',
':P48_MAIN_NEW_EXP_KVAH_READ,  :P48_MAIN_NEW_UNIT_KVAH_EXP ,  :P48_MAIN_NEW_IMP_KVAH_READ, :P48_MAIN_NEW_UNIT_KVAH_IMP,',
':P48_CHK_OLD_EXP_KVAH_READ, :P48_CHK_OLD_UNIT_KVAH_EXP,  :P48_CHK_OLD_IMP_KVAH_READ, :P48_CHK_OLD_UNIT_KVAH_IMP , ',
':P48_CHK_OLD_UNIT_KVAH_IMP, :P48_CHK_NEW_UNIT_KVAH_EXP , :P48_CHK_NEW_IMP_KVAH_READ,  :P48_CHK_NEW_UNIT_KVAH_IMP',
',:P48_CHK_NEW_EXP_KVAH_READ',
'',
'from DT_METER_REPLACEMENT',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P48_DOC_NO',
';',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(320987740670936)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P48_WKF_STAGE',
'from  DT_METER_REPLACEMENT',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P48_DOC_NO;',
'exception when no_data_found then :P48_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(319774489670937)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO OF ATTACHMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P48_DOC_NO ',
'               AND   DT_DOC_DATE   = :P48_DOC_DATE',
'               and   vc_trans_type = ''MTR'');',
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
,p_process_when=>'P48_MODE'
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
 p_id=>wwv_flow_api.id(320599864670936)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P48_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P48_DOC_NO',
'AND      DT_DOC_DATE = :P48_DOC_DATE',
'AND      VC_DOC_TYPE  = ''MTR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3577141499521983)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE COLLETION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P48_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
