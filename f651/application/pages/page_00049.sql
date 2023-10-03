prompt --application/pages/page_00049
begin
--   Manifest
--     PAGE: 00049
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
 p_id=>49
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Finalize Schedule'
,p_alias=>'FINALIZE-SCHEDULE'
,p_step_title=>'Finalize Schedule'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function download_reports(action)',
'{',
'    if (action == ''81'') {',
'window.open(''f?p=''+''&APP_ID.''+'':81:''+''&SESSION.''+'':xlsx''+'':NO'');',
'    }',
'',
'}',
'',
'function download_reports1(action)',
'{',
'    if (action == ''83'') {',
'window.open(''f?p=''+''&APP_ID.''+'':83:''+''&SESSION.''+'':xlsx''+'':NO'');',
'    }',
'',
'}'))
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function hideElement(elementId) {',
'    var element = document.getElementById(elementId);',
'    if (element) {',
'        element.style.display = ''none'';',
'    }',
'}',
'',
'function showElement(elementId) {',
'    var element = document.getElementById(elementId);',
'    if (element) {',
'        element.style.display = ''block''; // or ''inline'', ''flex'', etc. based on the element type',
'    }',
'}'))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
'}',
'',
'.apex-item-group--file-browse .apex-item-filedrop {',
'       background: white !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'GAURAV'
,p_last_upd_yyyymmddhh24miss=>'20230929113109'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18228387578551608)
,p_plug_name=>'Report'
,p_region_name=>'rgn_brdr'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'TO_NUMBER(c001) as Block,',
'c002 as from1,',
'c003 as To1,',
'C004 as Rn,',
'c005 as rnx',
'',
' from apex_collections ',
' where COLLECTION_NAME=''FILE_SCH''',
' ORDER BY 2 ASC',
' ; ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P49_MODE'
,p_plug_display_when_cond2=>'A'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'New'
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
 p_id=>wwv_flow_api.id(18228446754551609)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>18228446754551609
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18228694201551611)
,p_db_column_name=>'FROM1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18228735196551612)
,p_db_column_name=>'TO1'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18228841772551613)
,p_db_column_name=>'RN'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Quantum(MW) R0 (GT)'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18228994806551614)
,p_db_column_name=>'RNX'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantum(MW)  Rnx'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'NEVER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18070376818503349)
,p_db_column_name=>'BLOCK'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Block'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18252417528774799)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'182525'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'BLOCK:FROM1:TO1:RN:RNX:'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18068836690503334)
,p_plug_name=>'Finalize Schedule'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
' select NU_BLOCK, NU_FROM, NU_TO ,NU_QUANT_R0, NU_QUANT_RN,NU_QUANT_RNX,VC_BUYER_NAME, VC_END_BUYER_NAME,nu_id',
'from DT_FINALIZE_SCHEDULE',
' where ORG_ID      = :GLOBAL_COMP_CODE',
'and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'and NU_DOC_NO =:P49_DOC_NO',
' ORDER BY nu_id ASC'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P49_DOC_NO'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P49_MODE'
,p_plug_display_when_cond2=>'A'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Finalize Schedule'
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
 p_id=>wwv_flow_api.id(18068799749503333)
,p_max_row_count=>'1000000'
,p_allow_report_saving=>'N'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_textbox=>'N'
,p_report_list_mode=>'NONE'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_select_columns=>'N'
,p_show_rows_per_page=>'N'
,p_show_filter=>'N'
,p_show_sort=>'N'
,p_show_control_break=>'N'
,p_show_highlight=>'N'
,p_show_computation=>'N'
,p_show_aggregate=>'N'
,p_show_chart=>'N'
,p_show_group_by=>'N'
,p_show_pivot=>'N'
,p_show_flashback=>'N'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'XLSX'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>18636935025021317
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068686239503332)
,p_db_column_name=>'NU_BLOCK'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Block'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068540667503331)
,p_db_column_name=>'NU_FROM'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'From'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068480221503330)
,p_db_column_name=>'NU_TO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'To'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068340198503329)
,p_db_column_name=>'NU_QUANT_R0'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Quantum(MW) R0 (GT)'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068305578503328)
,p_db_column_name=>'NU_QUANT_RN'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Quantum(MW) R-&P49_REVISION_NO. &P49_DELIVERY_POINT_NAME.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18068219347503327)
,p_db_column_name=>'NU_QUANT_RNX'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Quantum(MW) R-&P49_OLD_REV.&P49_AMENDED_NO.'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_display_condition_type=>'FUNCTION_BODY'
,p_display_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'iF :P49_AMENDED_NO IS NOT NULL THEN',
'    IF  :P49_REVISION_NO <> :P49_OLD_REV THEN',
'        RETURN FALSE;',
'    ELSE ',
'         RETURN TRUE;',
'    END IF;',
'',
'END IF;'))
,p_display_condition2=>'PLSQL'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17158948844471742)
,p_db_column_name=>'VC_BUYER_NAME'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Buyer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17158865208471741)
,p_db_column_name=>'VC_END_BUYER_NAME'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'End Buyer Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17158529533471737)
,p_db_column_name=>'NU_ID'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Nu Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18050166125084658)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'186556'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'NU_BLOCK:NU_FROM:NU_TO:NU_QUANT_R0:NU_QUANT_RN:NU_QUANT_RNX:VC_BUYER_NAME:VC_END_BUYER_NAME:NU_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(12604851233129346)
,p_plug_name=>'Finalize Schedule'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18229022140551615)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17159096138471743)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'TEMPLATE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Download Finalize <br>Scheduled Template '
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#APP_IMAGES#Finalize Scheduled Template1.xlsx'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3489666875544479)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'TEMPLATE_BUY'
,p_button_static_id=>'TB'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Download Finalize <br>Scheduled Template '
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#APP_FILES#Finalize Scheduled TemplateBuy.xlsx'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(6120824459947823)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'TEMPLATE_1'
,p_button_static_id=>'btn1'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Download Finalize <br>Scheduled Template'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#APP_FILES#Finalize Scheduled Template60min.xlsx'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(3489241057544475)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'TEMPLATE_BUY60'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Download Finalize <br>Scheduled Template '
,p_button_position=>'CREATE'
,p_button_redirect_url=>'#APP_FILES#Finalize Scheduled TemplateBuy60min.xlsx'
,p_button_execute_validations=>'N'
,p_button_condition=>'P49_MODE'
,p_button_condition2=>'E'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_icon_css_classes=>'fa-download fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18228277158551607)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'Upload_Excel'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Upload Excel'
,p_button_position=>'CREATE'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-upload fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18229945906551624)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(12604851233129346)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P49_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1735222364090690)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18068836690503334)
,p_button_name=>'download_Revision'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Revision'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:download_reports1(83);'
,p_icon_css_classes=>'fa-arrow-down'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(722517993714722)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(18068836690503334)
,p_button_name=>'download'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Download Total'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'javascript:download_reports(81);'
,p_icon_css_classes=>'fa-arrow-down'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18068004216503325)
,p_branch_name=>'Go To Page 50'
,p_branch_action=>'f?p=&APP_ID.:50:&SESSION.::&DEBUG.::P50_MODE,P50_STATUS:&P49_MODE.,&P49_STATUS.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18228277158551607)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(18230727984551632)
,p_branch_name=>'Go To Page 51'
,p_branch_action=>'f?p=&APP_ID.:51:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(18229945906551624)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18230926707551634)
,p_name=>'P49_SCHEDULED_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Scheduled Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_read_only_when=>'P49_MODE'
,p_read_only_when2=>'A'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
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
 p_id=>wwv_flow_api.id(18230812764551633)
,p_name=>'P49_STATUS'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Status'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Amendment;A,Revision;R,Add Buyer;S'
,p_display_when=>'P49_MODE'
,p_display_when2=>'E'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'3'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18230614991551631)
,p_name=>'P49_MODE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18229882103551623)
,p_name=>'P49_DOC_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18229706759551622)
,p_name=>'P49_DOC_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18228186613551606)
,p_name=>'P49_TIME_BLOCK'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Time Block'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:15;15,60;60'
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
 p_id=>wwv_flow_api.id(18228021023551605)
,p_name=>'P49_REMARKS'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Remarks'
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
 p_id=>wwv_flow_api.id(18227968668551604)
,p_name=>'P49_END_BUYER'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'End Buyer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'order by 1 asc;',
''))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18227813039551603)
,p_name=>'P49_BUYER'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Buyer'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select DISTINCT "Customer Name" D ,"EO_ID" R',
'',
'from appua.VW_CUSTOMER',
'WHERE "Customer Branch" = :GLOBAL_COMP_CODE',
'and ACTIVE = ''Y''',
'order by 1 asc;',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'--Select---'
,p_cSize=>30
,p_display_when_type=>'NEVER'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18227758332551602)
,p_name=>'P49_LOSS'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'LOSS FOR GROSSING TO GT		'
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
 p_id=>wwv_flow_api.id(18227653122551601)
,p_name=>'P49_DELIVERY_POINT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_item_default=>'1'
,p_prompt=>'Delivery Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_LOCATION d, NU_DOC_NO r',
'',
'from DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and PRJ_ID  = :GLOBAL_PROJ_ID',
'order by 2 desc',
';',
'',
''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select---'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_read_only_when=>'P49_MODE'
,p_read_only_when2=>'A'
,p_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18069356474503339)
,p_name=>'P49_AMENDED_NO'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18069281694503338)
,p_name=>'P49_REVISION_NO'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18067533611503320)
,p_name=>'P49_OLD_REV'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18067259666503318)
,p_name=>'P49_UPLOAD_FILE'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Upload File'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_display_when=>'P49_MODE'
,p_display_when2=>'E'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'INLINE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18067067894503316)
,p_name=>'P49_REVISION_NO_NEW'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(18066969146503315)
,p_name=>'P49_AMENDED_NO_NEW'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17823504689315301)
,p_name=>'P49_CHK'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12605280964129350)
,p_name=>'P49_DELIVERY_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Delivery Date'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
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
 p_id=>wwv_flow_api.id(12605132751129349)
,p_name=>'P49_TYPE_OF_POWER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_prompt=>'Type Of Power'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Conventional;C,Non-Conventional;N,Nill;A'
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
 p_id=>wwv_flow_api.id(12605077368129348)
,p_name=>'P49_TYPE_OF_BID'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_item_default=>'S'
,p_prompt=>'Type Of Bid'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Sell;S,Buy;B'
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
 p_id=>wwv_flow_api.id(12604916313129347)
,p_name=>'P49_PLANT_NAME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_item_default=>'get_proj_desc(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID)'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Plant Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(721502190714712)
,p_name=>'P49_DELIVERY_POINT_NAME'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6120527795947820)
,p_name=>'P49_LEVEL'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(12604851233129346)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17824499096315311)
,p_validation_name=>'DATE NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P49_SCHEDULED_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Scheduled date'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18230926707551634)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17823987813315306)
,p_validation_name=>'Power not null'
,p_validation_sequence=>20
,p_validation=>'P49_TYPE_OF_POWER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Power'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(12605132751129349)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17823868645315305)
,p_validation_name=>'Buyer not null'
,p_validation_sequence=>30
,p_validation=>'P49_BUYER'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Buyer'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18227813039551603)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17823808399315304)
,p_validation_name=>'Time block not null'
,p_validation_sequence=>40
,p_validation=>'P49_TIME_BLOCK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Time block'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18228186613551606)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17823724022315303)
,p_validation_name=>'Deivery Point not null'
,p_validation_sequence=>50
,p_validation=>'P49_DELIVERY_POINT'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Delivery Point not null'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18227653122551601)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17823615634315302)
,p_validation_name=>'Loss not null'
,p_validation_sequence=>60
,p_validation=>'P49_LOSS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Loss not specified'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18227758332551602)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17159328936471745)
,p_validation_name=>'STATUS not null'
,p_validation_sequence=>70
,p_validation=>'P49_STATUS'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Status'
,p_validation_condition=>'P49_MODE'
,p_validation_condition2=>'E'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18230812764551633)
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
 p_id=>wwv_flow_api.id(17159233294471744)
,p_validation_name=>'File Upload Not null'
,p_validation_sequence=>80
,p_validation=>'P49_UPLOAD_FILE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please Upload File'
,p_validation_condition=>'P49_MODE'
,p_validation_condition2=>'E'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_associated_item=>wwv_flow_api.id(18067259666503318)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(17158816126471740)
,p_validation_name=>'check scheduled date not repeat'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk  number;',
'begin',
'',
'select count(*)',
'into v_chk',
'from hd_FINALIZE_SCHEDULE',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   DT_SCHEDULED_DATE = :P49_SCHEDULED_DATE;',
'',
'if v_chk > 0 then',
'return false;',
'else',
'return true;',
'',
'end if;',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'For This Schedule Date Finalize Schedule already exists.'
,p_validation_condition=>'P49_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(18229945906551624)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(3169175951574322)
,p_validation_name=>' check collection'
,p_validation_sequence=>100
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk  number;',
'begin',
'',
'select count(*)',
'into v_chk',
'from apex_collections ',
' where COLLECTION_NAME=''FILE_SCH'';',
'',
'if v_chk>0 then',
'return true;',
'else',
'return false;',
'',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'The load schedule does not exist.'
,p_validation_condition=>'P49_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18229368882551618)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18229448282551619)
,p_event_id=>wwv_flow_api.id(18229368882551618)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18228387578551608)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18068081265503326)
,p_event_id=>wwv_flow_api.id(18229368882551618)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18068836690503334)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18231044808551635)
,p_name=>'set loss level'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_DELIVERY_POINT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231155104551636)
,p_event_id=>wwv_flow_api.id(18231044808551635)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- begin',
'-- select NVL(nu_loss,0)',
'-- into :P49_LOSS',
'-- from DT_ENERGY_FLOW ',
'-- where ORG_ID = :GLOBAL_COMP_CODE',
'-- and PRJ_ID  = :GLOBAL_PROJ_ID',
'-- and NU_DOC_NO = :P49_DELIVERY_POINT;',
'-- exception when others then :P49_LOSS := 0;',
'-- end ;',
'begin',
'select NU_LEVEL',
'into :P49_LEVEL',
'from DT_ENERGY_FLOW ',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and PRJ_ID  = :GLOBAL_PROJ_ID',
'and NU_DOC_NO = :P49_DELIVERY_POINT;',
'exception when others then :P49_LEVEL := 0;',
'end ;'))
,p_attribute_02=>'P49_DELIVERY_POINT'
,p_attribute_03=>'P49_LEVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(18231247353551637)
,p_name=>'enter collection'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_SCHEDULED_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231302887551638)
,p_event_id=>wwv_flow_api.id(18231247353551637)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is ',
'        (',
'        select  NU_SR_NO,FROM_TIME, TO_TIME,NU_TOTAL_SCHEDULE',
'        from    HD_LOAD_SCHEDULE_PROD',
'        where   org_id=:GLOBAL_COMP_CODE ',
'        and     PRJ_ID   = :GLOBAL_PROJ_ID ',
'        AND     TO_CHAR(dt_crt_date,''DD-MM-YY'') =   TO_CHAR(TO_DATE(:P49_SCHEDULED_DATE,''DD-MM-YY'') ,''DD-MM-YY'')   );',
'begin',
':P49_CHK :='''';',
':P49_CHK :=''Y'';',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_SCH'');',
'END IF;',
' for I in c1 loop',
'   :P49_CHK :=''N'';',
'   APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_SCH'',',
'                                            p_c001            => I.NU_SR_NO,',
'                                            p_c002            => I.FROM_TIME,',
'                                            P_C003            => I.TO_TIME,',
'                                            P_C004            => I.NU_TOTAL_SCHEDULE,',
'                                            P_c005            => null',
'                                            );',
'',
'end loop;',
'end ;'))
,p_attribute_02=>'P49_SCHEDULED_DATE'
,p_attribute_03=>'P49_CHK'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(18231473757551639)
,p_event_id=>wwv_flow_api.id(18231247353551637)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18228387578551608)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(17823368187315300)
,p_name=>'show alert on no data found'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_CHK'
,p_condition_element=>'P49_CHK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(17159690710471749)
,p_event_id=>wwv_flow_api.id(17823368187315300)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'No Data Found for this Scheduled Date'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(6120589174947821)
,p_name=>'set_loss'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_LEVEL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(6120671437947822)
,p_event_id=>wwv_flow_api.id(6120589174947821)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select nu_loss --sum(nu_loss)',
'into :P49_LOSS',
'from DT_ENERGY_FLOW ',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and PRJ_ID  = :GLOBAL_PROJ_ID',
'and NU_LEVEL = :P49_LEVEL;',
'--and NU_DOC_NO = :P49_DELIVERY_POINT',
'--and NU_LEVEL <= :P49_LEVEL;',
'--exception when others then :P49_LOSS := 0;',
'end ;'))
,p_attribute_02=>'P49_LEVEL'
,p_attribute_03=>'P49_LOSS'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(719794131714695)
,p_name=>'TEMPLATE_1'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_TIME_BLOCK,P49_TYPE_OF_BID'
,p_condition_element=>'P49_TIME_BLOCK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'60'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(719891516714696)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6120824459947823)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(719998900714697)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(17159096138471743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720071977714698)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489241057544475)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720196564714699)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489666875544479)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720249183714700)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(17159096138471743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720373012714701)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>30
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6120824459947823)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720493548714702)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489666875544479)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720548820714703)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>40
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489241057544475)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720650963714704)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6120824459947823)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TIME_BLOCK'
,p_client_condition_expression=>'15'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721022743714707)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>50
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489241057544475)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720823890714705)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489241057544475)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TIME_BLOCK'
,p_client_condition_expression=>'15'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721032863714708)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>60
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489666875544479)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(720877045714706)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489666875544479)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721376798714711)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'FALSE'
,p_action_sequence=>70
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(17159096138471743)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721150543714709)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>80
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(6120824459947823)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'B'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721253566714710)
,p_event_id=>wwv_flow_api.id(719794131714695)
,p_event_result=>'TRUE'
,p_action_sequence=>90
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(3489241057544475)
,p_client_condition_type=>'EQUALS'
,p_client_condition_element=>'P49_TYPE_OF_BID'
,p_client_condition_expression=>'S'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43743897449546397)
,p_name=>'schedule date'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P49_SCHEDULED_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43743968440546398)
,p_event_id=>wwv_flow_api.id(43743897449546397)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
':P49_DELIVERY_DATE :=TO_DATE(:P49_SCHEDULED_DATE,''DD-MM-YYYY'') +1   ;',
'END;'))
,p_attribute_02=>'P49_SCHEDULED_DATE'
,p_attribute_03=>'P49_DELIVERY_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(721552778714713)
,p_name=>'get delivery point name'
,p_event_sequence=>90
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721654169714714)
,p_event_id=>wwv_flow_api.id(721552778714713)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'Select VC_LOCATION into :P49_DELIVERY_POINT_NAME',
'from DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and PRJ_ID  = :GLOBAL_PROJ_ID',
'and NU_DOC_NO = :P49_DELIVERY_POINT;',
'exception when others then null;',
'',
'end;'))
,p_attribute_02=>'P49_DELIVERY_POINT'
,p_attribute_03=>'P49_DELIVERY_POINT_NAME'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(721745093714715)
,p_event_id=>wwv_flow_api.id(721552778714713)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(18068836690503334)
,p_server_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_server_condition_expr1=>'P49_MODE'
,p_server_condition_expr2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18230054303551625)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert header'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_code varchar2(100);',
'',
'',
'begin',
'',
'select nvl(max(NU_DOC_NO),0) +1 into  v_code ',
'from HD_FINALIZE_SCHEDULE ',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID;',
'',
'',
':P49_DOC_NO := v_code;',
'',
'',
'insert into HD_FINALIZE_SCHEDULE ',
'(',
'ORG_ID, PRJ_ID, NU_DOC_NO, NU_DOC_DATE, VC_TYPE, VC_POWER_TYPE, DT_DELIVERY_DATE,DT_SCHEDULED_DATE,VC_DEL_POINT,',
'NU_LOSS,VC_BUYER,VC_END_BUYER,NU_TIME_BLOCK,VC_REMARKS,USR_ID_CREATE,USR_ID_CREATE_DT,VC_AUTH_CODE,HO_ORG_ID',
')',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID, :P49_DOC_NO, SYSDATE , :P49_TYPE_OF_BID, :P49_TYPE_OF_POWER , :P49_DELIVERY_DATE ,:P49_SCHEDULED_DATE,:P49_DELIVERY_POINT,',
':P49_LOSS,:P49_BUYER,:P49_END_BUYER,:P49_TIME_BLOCK,:P49_REMARKS,:GLOBAL_USER_CODE,SYSDATE,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP',
'',
');',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18229945906551624)
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18229694366551621)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT detail'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_total_ro number;',
'v_count_num number;',
'cursor c1 is  ( select * from(',
'                   SELECT c001,c002,c003,c004,c005',
'                   from apex_collections ',
'                   where COLLECTION_NAME=''FILE_SCH''',
'                    ORDER BY 2 ASC',
'                ) ',
'              );',
'',
'',
'begin',
'/*',
'',
'IF :P35_TYPE = ''P'' THEN',
'',
'DELETE FROM DT_SCHEDULE_PROV_DTL',
'WHERE ORG_ID            = :GLOBAL_COMP_CODE ',
'AND   PRJ_ID            = :GLOBAL_PROJ_ID',
'AND   VC_SCHEDULE_NO    = :P35_SCHEDULE_NO ',
'AND   DT_SCHEDULE_DATE  = :P35_SCHEDULE_DATE;',
'',
'*/',
'v_count_num  := 12;',
' ',
'',
'for i in c1 loop',
'begin',
'',
'v_count_num := v_count_num +1;',
'insert into DT_FINALIZE_SCHEDULE',
'            (',
'            ORG_ID, PRJ_ID, NU_DOC_NO, NU_DOC_DATE, NU_BLOCK, NU_FROM, NU_TO, NU_QUANT_R0, ',
'            USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, HO_ORG_ID , nu_id',
'            )',
'        values',
'            (',
'            :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P49_DOC_NO,sysdate ,I.C001,I.C002,I.C003, I.C004,',
'            :GLOBAL_USER_CODE, sysdate,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP, v_count_num',
'            );',
'        ',
'exception when others then ',
'            rollback;',
'            raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'            delete from hd_FINALIZE_SCHEDULE where ORG_ID = :GLOBAL_COMP_CODE',
'                                            and   PRJ_ID =  :GLOBAL_PROJ_ID',
'                                            and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'',
'end; ',
'    ',
'end loop;',
'',
'',
'',
'select sum(C004)',
'into v_total_ro',
'from apex_collections ',
'where COLLECTION_NAME=''FILE_SCH'';',
'',
'',
'',
'update HD_FINALIZE_SCHEDULE',
'set   NU_TOTAL_UNIT  =  v_total_ro',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18229945906551624)
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18069219538503337)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'update HEADER'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code number;',
'',
'begin',
'',
'',
'update HD_FINALIZE_SCHEDULE',
'set  ',
'VC_TYPE			=  :P49_TYPE_OF_BID, ',
'VC_POWER_TYPE		=  :P49_TYPE_OF_POWER, ',
'DT_DELIVERY_DATE        =  :P49_DELIVERY_DATE,',
'DT_SCHEDULED_DATE       =  :P49_SCHEDULED_DATE,',
'VC_DEL_POINT            =  :P49_DELIVERY_POINT,',
'NU_LOSS                 =  :P49_LOSS,',
'VC_BUYER                =  :P49_BUYER,',
'VC_END_BUYER            =  :P49_END_BUYER,',
'NU_TIME_BLOCK           =  :P49_TIME_BLOCK,',
'VC_REMARKS              =  :P49_REMARKS',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'',
'',
'if :P49_STATUS = ''R'' then',
'',
'select nvl(max(NU_REVISION_NO),0) +1 ',
'into  v_code from HD_FINALIZE_SCHEDULE',
' where ORG_ID = :global_comp_code and NU_DOC_NO = :P49_DOC_NO;',
'',
'update HD_FINALIZE_SCHEDULE',
'set NU_REVISION_NO = v_code ',
'where  ',
'ORG_ID      = :GLOBAL_COMP_CODE',
'and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'and NU_DOC_NO = :P49_DOC_NO;',
'',
':P49_REVISION_NO_NEW := ''R-''||v_code ;',
'',
'',
'if :P49_AMENDED_NO is null  and :P49_REVISION_NO is null then',
'',
'update HD_FINALIZE_SCHEDULE',
'set NU_REVISION_NO_OLD = v_code ',
'where  ',
'ORG_ID      = :GLOBAL_COMP_CODE',
'and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'and NU_DOC_NO = :P49_DOC_NO;',
'end if;',
'end if;',
'if :P49_STATUS = ''A'' then',
'',
'select nvl(max(NU_AMENDMENT_NO),0)',
'into  v_code from HD_FINALIZE_SCHEDULE ',
'where ORG_ID = :global_comp_code and NU_DOC_NO = :P49_DOC_NO;',
'',
'if :P49_OLD_REV != :P49_REVISION_NO THEN',
'v_code := 0;',
'',
'END IF;',
'',
'if nvl(v_code,0) = 0 then',
' v_code := 65;',
'else',
'  v_code := v_code +1 ;',
'  end if;',
':P49_AMENDED_NO_NEW := ''R''||''-''||:P49_REVISION_NO||CHR(v_code) ;',
'update HD_FINALIZE_SCHEDULE',
'set   NU_AMENDMENT_NO  = v_code,',
'     NU_REVISION_NO_OLD = :P49_REVISION_NO --|| v_code',
'where  ',
'ORG_ID      = :GLOBAL_COMP_CODE',
'and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'and NU_DOC_NO = :P49_DOC_NO;',
'',
'',
'end if;',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18229945906551624)
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18067194743503317)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE DETAIL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_error_log_exists  boolean := false;',
'    l_data              raw(32767);',
'    ermsg               varchar2(2000);',
'    v_cnt               number :=0;',
'    v_badge             number;',
'    v_logdate           date;',
'    v_checkdate         date;',
'    l_query             varchar2(3000);',
'    v_sum               number;',
'    v_min               number;',
'    v_max               number;',
'    v_avg               number;',
'    V_TOTAL             number;',
'    v_cnt_row           number;',
'    v_quant_ro          number;',
'    v_from              varchar2(3000);',
'    v_to                varchar2(3000);',
'   ',
'begin',
'',
' ',
'',
'    begin',
'        for r1 in (select *  from',
'                    apex_application_temp_files f, table( apex_data_parser.parse(',
'                                    p_content                     => f.blob_content,',
'                                    p_add_headers_row             => ''Y'',',
'                                --   p_xlsx_sheet_name             => :P31_XLSX_WORKSHEET,',
'                                --   p_max_rows                    => 9999,',
'                                    p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                                    p_file_name                   => f.filename ) ) p',
'                where      f.name = :P49_UPLOAD_FILE ',
'                )',
'',
'        loop',
'',
'            if r1.LINE_NUMBER between 13 and 200 then',
'                if :P49_STATUS = ''S'' then',
'                  ',
'                      select count(*)',
'                      into v_cnt_row',
'                      from     DT_FINALIZE_SCHEDULE',
'                      where',
'                      ORG_ID = :GLOBAL_COMP_CODE',
'                      and    PRJ_ID =  :GLOBAL_PROJ_ID',
'                      and    NU_DOC_NO =  :P49_DOC_NO  ',
'                      and    nu_id      =  r1.LINE_NUMBER;',
'                      ',
'                        if v_cnt_row > 0 then',
'                          begin',
'                            UPDATE DT_FINALIZE_SCHEDULE',
'                            SET VC_BUYER_NAME      =   r1.col010',
'                                ,VC_END_BUYER_NAME  =  r1.col011',
'                            WHERE  ORG_ID = :GLOBAL_COMP_CODE',
'                            and    PRJ_ID =  :GLOBAL_PROJ_ID',
'                            and    NU_DOC_NO =  :P49_DOC_NO  ',
'                            AND    nu_id  =  r1.LINE_NUMBER ; --- to_number(r1.col001);',
'                          end ;',
'                        else ',
'                                begin',
'                                select distinct NU_QUANT_R0 , NU_FROM,NU_TO',
'                                into v_quant_ro ,v_from ,v_to',
'                                from     DT_FINALIZE_SCHEDULE',
'                                WHERE  ORG_ID = :GLOBAL_COMP_CODE',
'                                and    PRJ_ID =  :GLOBAL_PROJ_ID',
'                                and    NU_DOC_NO =  :P49_DOC_NO  ',
'                                AND    to_number(replace(NU_FROM,'':'',''''))  = to_number( r1.col002);',
'',
'                              exception when others then',
'                             -- raise_application_error(''-20001'',r1.col002 || ''------''||r1.LINE_NUMBER);',
'                                raise_application_error(''-20002'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                              -- null;',
'                                end;',
'                                ',
'                                begin',
'                                insert into DT_FINALIZE_SCHEDULE',
'                                (',
'                                ORG_ID, PRJ_ID, NU_DOC_NO, NU_DOC_DATE, NU_BLOCK, NU_FROM, NU_TO, NU_QUANT_R0, ',
'                                USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, HO_ORG_ID , nu_id',
'                                  ,VC_BUYER_NAME ,VC_END_BUYER_NAME  ',
'                                )',
'                                values',
'                                (',
'                                :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID,:P49_DOC_NO,:P49_DOC_DATE , r1.col001,v_from,v_to,v_quant_ro,',
'                                :GLOBAL_USER_CODE, sysdate,:GLOBAL_USER_CODE,:GLOBAL_PARENT_COMP,  r1.LINE_NUMBER,',
'                                r1.col010 , r1.col011',
'                                );',
'                                exception when others then ',
'                                                rollback;',
'                                                raise_application_error(''-20003'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.''); ',
'                                end;        ',
'                                                ',
'',
'                        end if;',
'',
'',
'                end if;',
'',
'',
'            ',
'             /* if  r1.col001 is null or r1.col002 is null or r1.col003 is null  then',
'                     raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                 end if;*/',
'',
'                    if :P49_STATUS = ''R'' THEN',
'                     if  r1.col004 is null or  nvl(r1.col004,''x'') = ''x'' then',
'                        rollback;',
'                        raise_application_error(''-20001'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                          ',
'                        end if;',
'                    ',
'                          begin',
'                            UPDATE DT_FINALIZE_SCHEDULE',
'                            SET  NU_QUANT_RN        =  round(r1.col004 - ((r1.col004*:P49_LOSS)/100) ,2)',
'                                , VC_REVISION_NO    = :P49_REVISION_NO_NEW ',
'                            WHERE  ORG_ID = :GLOBAL_COMP_CODE',
'                            and    PRJ_ID =  :GLOBAL_PROJ_ID',
'                            and    NU_DOC_NO =  :P49_DOC_NO  ',
'                            AND    nu_id  =  r1.LINE_NUMBER ; --- to_number(r1.col001);',
'                          end ;',
'                        ',
'',
'                    END IF;',
'',
'                    if :P49_STATUS = ''A'' THEN',
'                    --  if  r1.col008 is null or  nvl(r1.col008,''x'') = ''x'' then',
'                    --     rollback;',
'                    --     raise_application_error(''-20004'',''Error occurred while saving data from excel sheet. Check sample Excel sheet for valid data or Contact administration.'');',
'                          ',
'                    --     end if;',
'                     ',
'                            UPDATE DT_FINALIZE_SCHEDULE',
'                            SET ',
'                                NU_QUANT_RNX = round(r1.col008 - ((r1.col008*:P49_LOSS)/100),2)',
'                                ,VC_AMENDMENT_NO = :P49_AMENDED_NO_NEW ',
'                                ,VC_BUYER_NAME      =   r1.col010',
'                                ,VC_END_BUYER_NAME  =  r1.col011',
'                            WHERE  ORG_ID = :GLOBAL_COMP_CODE',
'                            and    PRJ_ID =  :GLOBAL_PROJ_ID',
'                            and    NU_DOC_NO =  :P49_DOC_NO  ',
'                            AND     nu_id  =  r1.LINE_NUMBER;',
'                      ',
'',
'                    END IF;',
'',
'',
'            ',
'            end if;',
'',
' end loop;',
'',
'----TO UPDATE TOTAL UNIT  IN HEADER---------',
'if :P49_STATUS = ''A'' THEN',
'',
'SELECT SUM(NU_QUANT_RNX)',
'INTO V_TOTAL',
'FROM DT_FINALIZE_SCHEDULE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'',
'update HD_FINALIZE_SCHEDULE',
'set   NU_TOTAL_UNIT  =  V_TOTAL',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'END IF;',
'',
'if :P49_STATUS = ''R'' THEN',
'',
'SELECT SUM(NU_QUANT_RN)',
'INTO V_TOTAL',
'FROM DT_FINALIZE_SCHEDULE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'update HD_FINALIZE_SCHEDULE',
'set   NU_TOTAL_UNIT  =  V_TOTAL',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'',
'END IF;',
'------------------------------------------',
'',
'end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18229945906551624)
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Updated'
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
 p_id=>wwv_flow_api.id(18229234105551617)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'cLEAR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(18229022140551615)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17159577618471748)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get header info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ',
'',
' VC_TYPE, VC_POWER_TYPE, DT_DELIVERY_DATE,DT_SCHEDULED_DATE,VC_DEL_POINT,',
'NU_LOSS,VC_BUYER,VC_END_BUYER,NU_TIME_BLOCK,VC_REMARKS',
'',
'into ',
' :P49_TYPE_OF_BID, :P49_TYPE_OF_POWER , :P49_DELIVERY_DATE ,:P49_SCHEDULED_DATE,:P49_DELIVERY_POINT,',
':P49_LOSS,:P49_BUYER,:P49_END_BUYER,:P49_TIME_BLOCK,:P49_REMARKS',
'',
'from HD_FINALIZE_SCHEDULE ',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and   PRJ_ID =  :GLOBAL_PROJ_ID',
'and   NU_DOC_NO  = :P49_DOC_NO ;',
'',
'exception when no_data_found then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(18069084942503336)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get detail info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (',
'                select NU_BLOCK, NU_FROM, NU_TO ,NU_QUANT_R0, NU_QUANT_RN,NU_QUANT_RNX',
'                from DT_FINALIZE_SCHEDULE',
'                where ORG_ID      = :GLOBAL_COMP_CODE',
'                and PRJ_ID  =  :GLOBAL_PROJ_ID	',
'                and NU_DOC_NO = :P49_DOC_NO',
'                ',
');',
'',
'begin',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FILE_SCH'');',
'END IF;',
'',
'FOR r1 IN C1 LOOP',
'   APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FILE_SCH'',',
'                                            p_c001            => r1.NU_BLOCK,',
'                                            p_c002            => r1.NU_FROM,',
'                                            P_C003            => r1.NU_TO,',
'                                            P_C004            => r1.NU_QUANT_R0,',
'                                            P_c005            => r1.NU_QUANT_RN,',
'                                            P_c006            => r1.NU_QUANT_RNX',
'                                            );',
'',
'END LOOP;',
'',
'end;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1735289060090691)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'New'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_SCH'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_SCH'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P49_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
