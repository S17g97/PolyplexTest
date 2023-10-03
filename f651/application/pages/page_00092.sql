prompt --application/pages/page_00092
begin
--   Manifest
--     PAGE: 00092
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
 p_id=>92
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Calibration'
,p_alias=>'METER-CALIBRATION1'
,p_step_title=>'Meter Calibration'
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
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230929121424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84917810235946185)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P92_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(3166102338574291)
,p_plug_name=>'Other Details'
,p_parent_plug_id=>wwv_flow_api.id(84917810235946185)
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(84920014873946207)
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
 p_id=>wwv_flow_api.id(84920119163946208)
,p_plug_name=>'Meter Calibration'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(105955632025829713)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P92_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106001422279940375)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(105955632025829713)
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
 p_id=>wwv_flow_api.id(106001550478940376)
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
,p_internal_uid=>124354417866202701
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3106554283112311)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3106990721112310)
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
 p_id=>wwv_flow_api.id(3107363835112310)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3107820090112309)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3108232043112309)
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
,p_display_condition=>'P92_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3108579322112309)
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
 p_id=>wwv_flow_api.id(106008304937953108)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'120123'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3167665902574307)
,p_button_sequence=>160
,p_button_plug_id=>wwv_flow_api.id(3166102338574291)
,p_button_name=>'addreason'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--large:t-Button--hoverIconPush:t-Button--stretch:t-Button--padLeft:t-Button--padRight:t-Button--gapTop:t-Button--gapBottom'
,p_button_template_id=>wwv_flow_api.id(16222587084492027)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Addreason'
,p_button_redirect_url=>'f?p=&APP_ID.:5:&SESSION.::&DEBUG.:5:P5_VC_CODE_TYPE:R'
,p_icon_css_classes=>'fa-plus'
,p_grid_new_row=>'N'
,p_grid_new_column=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3064871218112373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(84917810235946185)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P92_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P92_REQ_NO.,&P92_DOC_NO.,&P92_DOC_DATE.,CALIB,&P92_LAST_PAGE.,&P92_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3065293816112372)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(84917810235946185)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3065648428112372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(84917810235946185)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P92_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3105878767112312)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(105955632025829713)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:97:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P92_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3145392580112263)
,p_branch_name=>'Go To Page 86'
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3065648428112372)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(3168721462574317)
,p_branch_name=>'Go To Page 86'
,p_branch_action=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(3065293816112372)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1738477741090723)
,p_name=>'P92_VC_ACCU_CLS_REACT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter Accuracy Class Reactive'
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
 p_id=>wwv_flow_api.id(3066069296112371)
,p_name=>'P92_LOCATION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Installed Location'
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
 p_id=>wwv_flow_api.id(3066495300112368)
,p_name=>'P92_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Type of Meter'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Main Meter;M,Check Meter;C'
,p_lov_display_null=>'YES'
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
 p_id=>wwv_flow_api.id(3067255184112367)
,p_name=>'P92_MODE'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3067727682112366)
,p_name=>'P92_DOC_NO'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3068049135112366)
,p_name=>'P92_DOC_DATE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3068490506112365)
,p_name=>'P92_LABEL_NAME'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P92_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3068832906112363)
,p_name=>'P92_WKF_STAGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3069264652112363)
,p_name=>'P92_REQ_NO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3069690907112362)
,p_name=>'P92_LAST_PAGE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3070059728112362)
,p_name=>'P92_AUTH_FLAG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3071082048112360)
,p_name=>'P92_VC_METER_SR_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter Sr. No.'
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
 p_id=>wwv_flow_api.id(3071474616112359)
,p_name=>'P92_NU_MULT_FACTOR'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter MF (Multiplying Factor)'
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
 p_id=>wwv_flow_api.id(3071900569112358)
,p_name=>'P92_VC_METER_TYPE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter Make/ Model / Type'
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
 p_id=>wwv_flow_api.id(3072243501112358)
,p_name=>'P92_VC_ACCU_CLS_ACT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter Accuracy Class Active'
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
 p_id=>wwv_flow_api.id(3073115694112356)
,p_name=>'P92_VC_METER_CTR'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter CTR'
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
 p_id=>wwv_flow_api.id(3073481267112356)
,p_name=>'P92_VC_METER_PTR'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Meter PTR'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>4
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
 p_id=>wwv_flow_api.id(3073887579112355)
,p_name=>'P92_VC_CYCLE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Pulse/Cycle'
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
 p_id=>wwv_flow_api.id(3074249206112354)
,p_name=>'P92_VC_CUBE_PANEL_CTR'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Cubicle Panel -CTR'
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
 p_id=>wwv_flow_api.id(3074653839112354)
,p_name=>'P92_VC_CUBE_PANEL_PTR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Cubicle Panel -PTR'
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
 p_id=>wwv_flow_api.id(3075074298112353)
,p_name=>'P92_VC_CT_ACC_CLASS'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'CT Accuracy Class'
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
 p_id=>wwv_flow_api.id(3075530649112353)
,p_name=>'P92_VC_PT_ACC_CLASS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'PT Accuracy Class'
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
 p_id=>wwv_flow_api.id(3075866787112352)
,p_name=>'P92_NU_SPLY_VOLT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Supply Voltage'
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
 p_id=>wwv_flow_api.id(3076281710112352)
,p_name=>'P92_VC_CUBE_PANEL_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Cubical Panel Sr. No'
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
 p_id=>wwv_flow_api.id(3077113526112350)
,p_name=>'P92_VC_SEALING_DETAIL_OLD'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Sealing Detail Old'
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
 p_id=>wwv_flow_api.id(3077442012112350)
,p_name=>'P92_VC_SEALING_DETAIL_NEW'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(84917810235946185)
,p_prompt=>'Sealing Detail New'
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
 p_id=>wwv_flow_api.id(3166170907574292)
,p_name=>'P92_DT_METER_CALIB_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Meter Calibration Date'
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
 p_id=>wwv_flow_api.id(3166286474574293)
,p_name=>'P92_VC_REPORT_NO'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Report No'
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
 p_id=>wwv_flow_api.id(3166357060574294)
,p_name=>'P92_NU_RED_BEFORE_EXP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Reading Before Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166465178574295)
,p_name=>'P92_NU_RED_AFTER_EXP'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Reading After Export'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166623163574296)
,p_name=>'P92_NU_RED_AFTER_IMP'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Reading After Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166652122574297)
,p_name=>'P92_VC_UOM_KVAH_EXP'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'UOM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166739610574298)
,p_name=>'P92_VC_UOM_KVAH_IMP'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'UOM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3166931573574299)
,p_name=>'P92_VC_CALI_WITNESS'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Calibration Witness and Sealed By'
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
 p_id=>wwv_flow_api.id(3166987873574300)
,p_name=>'P92_DT_DUE_DATE'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Calibration Due Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>6
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
 p_id=>wwv_flow_api.id(3167121439574301)
,p_name=>'P92_NU_RED_BEFORE_IMP'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Reading Before Import'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167230196574302)
,p_name=>'P92_VC_UOM_KWH_EXP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'UOM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167286188574303)
,p_name=>'P92_VC_UOM_KWH_IMP'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'UOM'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'UOM_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select Uom_nm D , Uom_id r',
'',
'from APPUA.VW_UOM_PRF',
'where actv = ''Y''',
'-- and  UOM_CLASS = ''6'''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3167385778574304)
,p_name=>'P92_VC_METER_CALI_BY'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_item_default=>':SESSION_USER_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Meter Calibrated By'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
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
 p_id=>wwv_flow_api.id(3167491743574305)
,p_name=>'P92_VC_REASON'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(3166102338574291)
,p_prompt=>'Reason of Calibration'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_CODE_DESC d, VC_CODE r ',
'from mst_code',
'where VC_CODE_TYPE =''R''',
'and nvl(CH_active,''N'') = ''Y'''))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_colspan=>5
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3109391319112307)
,p_validation_name=>'Location not null'
,p_validation_sequence=>10
,p_validation=>'P92_LOCATION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Location'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3066069296112371)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3109786392112306)
,p_validation_name=>'Type not null'
,p_validation_sequence=>20
,p_validation=>'P92_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Type'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3066495300112368)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3110133580112306)
,p_validation_name=>'Sr No Not Null'
,p_validation_sequence=>30
,p_validation=>'P92_VC_METER_SR_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Meter Sr. No.'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3071082048112360)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3120609399112298)
,p_validation_name=>'multiplying factor not null'
,p_validation_sequence=>40
,p_validation=>'P92_NU_MULT_FACTOR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Multiplying Factor Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3110592093112306)
,p_validation_name=>'meter type Not Null'
,p_validation_sequence=>50
,p_validation=>'P92_VC_METER_TYPE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Meter Make/Model/Type Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3071900569112358)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3120955589112297)
,p_validation_name=>'Accuracy Class  Act Not Null'
,p_validation_sequence=>60
,p_validation=>'P92_VC_ACCU_CLS_ACT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Accuracy Class Active Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3110981949112305)
,p_validation_name=>'Meter CTR Not Null'
,p_validation_sequence=>70
,p_validation=>'P92_VC_METER_CTR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Meter CTR Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3073115694112356)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3121397803112297)
,p_validation_name=>'Meter PTR Not Null'
,p_validation_sequence=>80
,p_validation=>'P92_VC_METER_PTR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Meter PTR Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3111371146112305)
,p_validation_name=>'PulseCycle Not Null'
,p_validation_sequence=>90
,p_validation=>'P92_VC_CYCLE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Pulse/Cycle Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3073887579112355)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3121784295112297)
,p_validation_name=>'Accuracy Class Reactive Not Null'
,p_validation_sequence=>100
,p_validation=>'P92_VC_ACCU_CLS_REACT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Accuracy Class Reactive Can Not Be null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3122603519112296)
,p_validation_name=>'CT Accuracy Class Not Null'
,p_validation_sequence=>140
,p_validation=>'P92_VC_CT_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'CT Accuracy Class Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3112614112112304)
,p_validation_name=>'PT Accuracy Class not null'
,p_validation_sequence=>150
,p_validation=>'P92_VC_PT_ACC_CLASS'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'PT Accuracy Class Can Not be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3075530649112353)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3123032532112296)
,p_validation_name=>'Supply Voltage not null'
,p_validation_sequence=>160
,p_validation=>'P92_NU_SPLY_VOLT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Supply Voltage Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3112962277112304)
,p_validation_name=>'Cubical Panel CTR Not Null'
,p_validation_sequence=>170
,p_validation=>'P92_VC_CUBE_PANEL_CTR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Cubical Panel CTR Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3074249206112354)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3123370861112295)
,p_validation_name=>'Cubical Panel PTR Not Null'
,p_validation_sequence=>180
,p_validation=>'P92_VC_CUBE_PANEL_PTR'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Cubical Panel CTR Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3113381811112303)
,p_validation_name=>'Sealing Detail Old Not Null'
,p_validation_sequence=>190
,p_validation=>'P92_VC_SEALING_DETAIL_OLD'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sealing Details Old Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3077113526112350)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3123816790112295)
,p_validation_name=>'Sealing Detail New Not Null'
,p_validation_sequence=>200
,p_validation=>'P92_VC_SEALING_DETAIL_NEW'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Sealing Detail New Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3113753406112303)
,p_validation_name=>'Meter Calibration date Not Null'
,p_validation_sequence=>210
,p_validation=>'P92_DT_METER_CALIB_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Meter Calibration Date Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3166170907574292)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3124161713112295)
,p_validation_name=>'Report not null'
,p_validation_sequence=>220
,p_validation=>'P92_VC_REPORT_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Report No Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3114141081112303)
,p_validation_name=>'Reading Before Export Not Null'
,p_validation_sequence=>230
,p_validation=>'P92_NU_RED_BEFORE_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reading Before Export Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3166357060574294)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3124556927112294)
,p_validation_name=>'UOM KWH NOT NULL'
,p_validation_sequence=>240
,p_validation=>'P92_VC_UOM_KWH_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select UOM '
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3114563905112302)
,p_validation_name=>'Reading Before Import Not Null'
,p_validation_sequence=>250
,p_validation=>'P92_NU_RED_BEFORE_IMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reading Before Import Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3167121439574301)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3124991463112294)
,p_validation_name=>'UOM KWH IMP Not Null'
,p_validation_sequence=>260
,p_validation=>'P92_VC_UOM_KWH_IMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select UOM '
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3125422485112294)
,p_validation_name=>'Reading After Exp Not Null'
,p_validation_sequence=>280
,p_validation=>'P92_NU_RED_AFTER_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Reading After Export Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3125759554112294)
,p_validation_name=>'UOM After Exp Not Null'
,p_validation_sequence=>300
,p_validation=>'P92_VC_UOM_KVAH_EXP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select UOM'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3126589282112293)
,p_validation_name=>'Check new make not null'
,p_validation_sequence=>340
,p_validation=>'P92_VC_CALI_WITNESS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Calibration Witness and Sealed By Name'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3127000047112293)
,p_validation_name=>'check New type not null'
,p_validation_sequence=>360
,p_validation=>'P92_VC_REASON'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Reason Of Calibration '
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3127394668112292)
,p_validation_name=>'Check  New Acc Class not null'
,p_validation_sequence=>380
,p_validation=>'P92_DT_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Calibration Due Date'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3427562771288676)
,p_validation_name=>'Cubical Panel Not Null'
,p_validation_sequence=>390
,p_validation=>'P92_VC_CUBE_PANEL_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Cubical Panel Sr Number Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3076281710112352)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3427638467288677)
,p_validation_name=>'Reading After Import'
,p_validation_sequence=>400
,p_validation=>'P92_NU_RED_AFTER_IMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Reading After Import Can Not Be Null'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3166623163574296)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3427888355288679)
,p_validation_name=>'UOM Import'
,p_validation_sequence=>410
,p_validation=>'P92_VC_UOM_KVAH_IMP'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select UOM'
,p_when_button_pressed=>wwv_flow_api.id(3065648428112372)
,p_associated_item=>wwv_flow_api.id(3166739610574298)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3139866645112274)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>30
,p_condition_element=>'P92_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3140374252112271)
,p_event_id=>wwv_flow_api.id(3139866645112274)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3064871218112373)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P92_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3140738402112270)
,p_name=>'hide forward on add mode'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P92_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3141273342112270)
,p_event_id=>wwv_flow_api.id(3140738402112270)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3105878767112312)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3168317422574313)
,p_name=>'closed dialog refresh region'
,p_event_sequence=>100
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3168378678574314)
,p_event_id=>wwv_flow_api.id(3168317422574313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(106001422279940375)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3169003647574320)
,p_name=>'New'
,p_event_sequence=>110
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(3167665902574307)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3169078069574321)
,p_event_id=>wwv_flow_api.id(3169003647574320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P92_VC_REASON'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3131331095112289)
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
'from DT_METER_CALIBRATION ',
'where ORG_ID = :global_comp_code',
'and    PRJ_ID  =  :GLOBAL_PROJ_ID;',
'',
':P92_DOC_NO := V_ID;',
'',
'INSERT INTO DT_METER_CALIBRATION',
'(',
'ORG_ID,',
'PRJ_ID,',
'NU_DOC_NO,',
'DT_DOC_DATE,',
'NU_LOC_DOC_NO,',
'VC_METER_CHK_MAIN , ',
'VC_METER_SR_NO ,',
'NU_MULT_FACTOR ,',
'VC_METER_TYPE ,',
'VC_ACCU_CLS_ACT , ',
'VC_METER_CTR,',
'VC_METER_PTR,',
'VC_CYCLE,',
'VC_ACCU_CLS_REACT,',
'VC_CUBE_PANEL_CTR,',
'VC_CUBE_PANEL_PTR,',
'VC_CT_ACC_CLASS,',
'VC_PT_ACC_CLASS ,',
'NU_SPLY_VOLT , ',
'VC_CUBE_PANEL_NO ,',
'VC_SEALING_DETAIL_OLD ,',
' VC_SEALING_DETAIL_NEW,',
' DT_METER_CALIB_DATE,',
' VC_REPORT_NO,',
' NU_RED_BEFORE_EXP,',
'NU_RED_AFTER_EXP,',
'NU_RED_BEFORE_IMP,',
'NU_RED_AFTER_IMP,',
'VC_UOM_KWH_EXP,',
'VC_UOM_KVAH_EXP,',
'VC_UOM_KWH_IMP,',
'VC_UOM_KVAH_IMP,',
'VC_METER_CALI_BY',
',VC_CALI_WITNESS,',
'VC_REASON,',
' DT_DUE_DATE,',
' HO_ORG_ID,',
'USR_ID_CREATE,',
' USR_ID_CREATE_DT ',
'    )',
'VALUES',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID, :P92_DOC_NO,:P92_DOC_DATE,:P92_LOCATION,:P92_TYPE,:P92_VC_METER_SR_NO,:P92_NU_MULT_FACTOR,:P92_VC_METER_TYPE,:P92_VC_ACCU_CLS_ACT,',
'     :P92_VC_METER_CTR,',
':P92_VC_METER_PTR,',
':P92_VC_CYCLE,',
':P92_VC_ACCU_CLS_REACT,',
':P92_VC_CUBE_PANEL_CTR,',
':P92_VC_CUBE_PANEL_PTR,',
':P92_VC_CT_ACC_CLASS,',
':P92_VC_PT_ACC_CLASS,',
':P92_NU_SPLY_VOLT,',
':P92_VC_CUBE_PANEL_NO,',
':P92_VC_SEALING_DETAIL_OLD,',
':P92_VC_SEALING_DETAIL_NEW,',
':P92_DT_METER_CALIB_DATE,',
':P92_VC_REPORT_NO,',
':P92_NU_RED_BEFORE_EXP,',
':P92_NU_RED_AFTER_EXP,',
':P92_NU_RED_BEFORE_IMP,',
':P92_NU_RED_AFTER_IMP,',
':P92_VC_UOM_KWH_EXP,',
':P92_VC_UOM_KVAH_EXP,',
':P92_VC_UOM_KWH_IMP,',
':P92_VC_UOM_KVAH_IMP,',
':GLOBAL_USER_CODE,',
':P92_VC_CALI_WITNESS,',
':P92_VC_REASON ,',
':P92_DT_DUE_DATE ,',
':GLOBAL_PARENT_COMP,',
':GLOBAL_USER_CODE,',
'SYSDATE',
'',
'       ',
'',
');',
'',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3065648428112372)
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3132108010112287)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update DT_METER_CALIBRATION',
'SET',
'NU_LOC_DOC_NO                   = :P92_LOCATION,',
'VC_METER_CHK_MAIN               =   :P92_TYPE , ',
'	VC_METER_SR_NO              =	:P92_VC_METER_SR_NO , ',
'	NU_MULT_FACTOR              =	:P92_NU_MULT_FACTOR , ',
'	VC_METER_TYPE               =	:P92_VC_METER_TYPE , ',
'	VC_ACCU_CLS_ACT             =	:P92_VC_ACCU_CLS_ACT , ',
'	VC_METER_CTR                =	:P92_VC_METER_CTR , ',
'	VC_METER_PTR                =	:P92_VC_METER_PTR , ',
'	VC_CYCLE                    =	:P92_VC_CYCLE , ',
'	VC_ACCU_CLS_REACT           =	:P92_VC_ACCU_CLS_REACT , ',
'	VC_CUBE_PANEL_CTR           =	:P92_VC_CUBE_PANEL_CTR , ',
'	VC_CUBE_PANEL_PTR           =	:P92_VC_CUBE_PANEL_PTR , ',
'	VC_CT_ACC_CLASS             =	:P92_VC_CT_ACC_CLASS , ',
'	VC_PT_ACC_CLASS             =	:P92_VC_PT_ACC_CLASS , ',
'	NU_SPLY_VOLT                =	:P92_NU_SPLY_VOLT , ',
'	VC_CUBE_PANEL_NO            =	:P92_VC_CUBE_PANEL_NO , ',
'	VC_SEALING_DETAIL_OLD       =	:P92_VC_SEALING_DETAIL_OLD , ',
'	VC_SEALING_DETAIL_NEW       =	:P92_VC_SEALING_DETAIL_NEW , ',
'	DT_METER_CALIB_DATE         =	:P92_DT_METER_CALIB_DATE , ',
'	VC_REPORT_NO                =	:P92_VC_REPORT_NO , ',
'	NU_RED_BEFORE_EXP           =	:P92_NU_RED_BEFORE_EXP , ',
'	NU_RED_AFTER_EXP           =	:P92_NU_RED_AFTER_EXP , ',
'	NU_RED_BEFORE_IMP          = 	:P92_NU_RED_BEFORE_IMP , ',
'	NU_RED_AFTER_IMP           = 	:P92_NU_RED_AFTER_IMP , ',
'	VC_UOM_KWH_EXP             =	:P92_VC_UOM_KWH_EXP , ',
'	VC_UOM_KVAH_EXP            =	:P92_VC_UOM_KVAH_EXP , ',
'	VC_UOM_KWH_IMP             =	:P92_VC_UOM_KWH_IMP , ',
'	VC_UOM_KVAH_IMP            =	:P92_VC_UOM_KVAH_IMP , ',
'	-- VC_METER_CALI_BY           =	:P92_VC_METER_CALI_BY , ',
'	VC_CALI_WITNESS            =	:P92_VC_CALI_WITNESS , ',
'	VC_REASON                  =	:P92_VC_REASON , ',
'	DT_DUE_DATE                 =	:P92_DT_DUE_DATE ,',
'    USR_ID_MOD_DT               =   SYSDATE,',
'    USR_ID_MOD_BY               =   :GLOBAL_USER_CODE',
'',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P92_DOC_NO;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(3065648428112372)
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3133263536112285)
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
'IF :P92_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P92_DOC_NO ',
'                            AND DT_DOC_DATE = :P92_DOC_DATE',
'                            AND VC_TRANS_TYPE=''CALIB'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,:P92_DOC_DATE,:P92_DOC_NO,:P92_DOC_DATE,''CALIB'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(3065648428112372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3131704791112288)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'Select ',
'NU_DOC_NO,',
'DT_DOC_DATE,',
'NU_LOC_DOC_NO,',
'VC_METER_CHK_MAIN , ',
'VC_METER_SR_NO ,',
'NU_MULT_FACTOR ,',
'VC_METER_TYPE ,',
'VC_ACCU_CLS_ACT , ',
'VC_METER_CTR,',
'VC_METER_PTR,',
'VC_CYCLE,',
'VC_ACCU_CLS_REACT,',
'VC_CUBE_PANEL_CTR,',
'VC_CUBE_PANEL_PTR,',
'VC_CT_ACC_CLASS,',
'VC_PT_ACC_CLASS ,',
'NU_SPLY_VOLT , ',
'VC_CUBE_PANEL_NO ,',
'VC_SEALING_DETAIL_OLD ,',
'VC_SEALING_DETAIL_NEW,',
'DT_METER_CALIB_DATE,',
'VC_REPORT_NO,',
'NU_RED_BEFORE_EXP,',
'NU_RED_AFTER_EXP,',
'NU_RED_BEFORE_IMP,',
'NU_RED_AFTER_IMP,',
'VC_UOM_KWH_EXP,',
'VC_UOM_KVAH_EXP,',
'VC_UOM_KWH_IMP,',
'VC_UOM_KVAH_IMP,',
'VC_METER_CALI_BY',
',VC_CALI_WITNESS,',
'VC_REASON,',
'DT_DUE_DATE',
'INTO',
':P92_DOC_NO,',
':P92_DOC_DATE,:P92_LOCATION,',
':P92_TYPE,',
':P92_VC_METER_SR_NO,',
':P92_NU_MULT_FACTOR,',
':P92_VC_METER_TYPE,',
':P92_VC_ACCU_CLS_ACT,',
':P92_VC_METER_CTR,',
':P92_VC_METER_PTR,',
':P92_VC_CYCLE,',
':P92_VC_ACCU_CLS_REACT,',
':P92_VC_CUBE_PANEL_CTR,',
':P92_VC_CUBE_PANEL_PTR,',
':P92_VC_CT_ACC_CLASS,',
':P92_VC_PT_ACC_CLASS,',
':P92_NU_SPLY_VOLT,',
':P92_VC_CUBE_PANEL_NO,',
':P92_VC_SEALING_DETAIL_OLD,',
':P92_VC_SEALING_DETAIL_NEW,',
':P92_DT_METER_CALIB_DATE,',
':P92_VC_REPORT_NO,',
':P92_NU_RED_BEFORE_EXP,',
':P92_NU_RED_AFTER_EXP,',
':P92_NU_RED_BEFORE_IMP,',
':P92_NU_RED_AFTER_IMP,',
':P92_VC_UOM_KWH_EXP,',
':P92_VC_UOM_KVAH_EXP,',
':P92_VC_UOM_KWH_IMP,',
':P92_VC_UOM_KVAH_IMP,',
':P92_VC_METER_CALI_BY,',
':P92_VC_CALI_WITNESS,',
':P92_VC_REASON ,',
':P92_DT_DUE_DATE ',
'from DT_METER_CALIBRATION',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P92_DOC_NO',
';',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3132483650112286)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P92_WKF_STAGE',
'from  DT_METER_REPLACEMENT',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO  = :P92_DOC_NO;',
'exception when no_data_found then :P92_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3133723306112284)
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
'               AND   VC_DOC_ID    = :P92_DOC_NO ',
'               AND   DT_DOC_DATE   = :P92_DOC_DATE',
'               and   vc_trans_type = ''CALIB'');',
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
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3132884582112285)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P92_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P92_DOC_NO',
'AND      DT_DOC_DATE = :P92_DOC_DATE',
'AND      VC_DOC_TYPE  = ''CALIB'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(3577298416521984)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DELETE COLLECTION'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P92_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
