prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Workflow Console'
,p_alias=>'WORKFLOW-CONSOLE'
,p_step_title=>'Workflow Console'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-colHead {',
'    border: 1px solid #131111;',
'    border-right-width: 0;',
'}',
'',
'',
'.t-Report-report tr:last-child .t-Report-cell {',
'    border-bottom: 1px solid #0c0c0c;',
'}',
'',
'',
'.t-Report-report tr .t-Report-colHead:last-child {',
'    border-right: 1px solid #131212;',
'}',
'',
'.t-Report-cell, .t-Report-colHead {',
'    border: 1px solid #0a0a0a;',
'    border-right-width: 0;',
'}',
'',
'.t-Report-report tr .t-Report-cell:last-child, .t-Report-report tr .t-Report-colHead:last-child {',
'    border-right: 1px solid #0e0d0d;',
'}',
'',
'.t-Region-title {',
'    display: inline-block;',
'    margin: 0;',
'    color: black;',
'}',
'',
'',
'.t-Report--altRowsDefault .t-Report-report tr:nth-child(odd) .t-Report-cell {',
'    background-color: lightblue;',
'}',
'.t-Report--altRowsDefault .t-Report-report tr:nth-child(even) .t-Report-cell {',
'    background-color: #E6E6FA;',
'}',
'',
'',
'#region1 .t-Region-headerItems--title {',
'    text-align: left;',
'    padding: 1.6rem 1.2rem;',
'    background: #F5F5DC;',
'}',
'',
'#region1 .t-Region-headerItems--buttons, .u-RTL .t-Region-headerItems--title {',
'    text-align: right;',
'    background: #F5F5DC;',
'}',
'',
'#region1 .t-Region-header {',
'    --ut-region-header-background-color: #F5F5DC !Important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220805165911'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14994434020039318)
,p_plug_name=>'Document Detail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14993318392039307)
,p_plug_name=>'<b>&P25_DOC_NME. </b>&nbsp&nbsp&nbsp Document Number: &nbsp&P25_DOC_NO.&nbsp&nbsp&nbsp Document Date: &nbsp &P25_DOC_DATE.  &nbsp&nbsp&nbsp &P25_LABEL. &nbsp&P25_PRVUSER_NAME.'
,p_region_name=>'region1'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hiddenOverflow:t-Form--noPadding'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14992080277039295)
,p_plug_name=>'Workflow Status'
,p_region_template_options=>'#DEFAULT#:t-Region--accent6:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_grid_column_span=>6
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'P25_AUTH_FLAG'
,p_plug_display_when_cond2=>'Y'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14991546418039289)
,p_plug_name=>'Audit Trail'
,p_region_template_options=>'#DEFAULT#:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>80
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select    decode(ch_action,''R'', GET_USER_NAME(vc_comp_code,vc_prvuser_code)|| '' sent to Revision to '' ,''F'' , GET_USER_NAME(vc_comp_code,vc_prvuser_code)||'' Forwared to '' ,''A'', '' Approved by '' )||',
'           GET_USER_NAME(vc_comp_code,vc_requser_code)',
'           ||'' On Date '' ||',
'           to_char(dt_crt_date,''dd-mm-yyyy'') Audit_Trail,',
'           vc_Remark as Remark,NU_REQ_NO',
'from DT_SUBMIT_WKFREQUEST',
'where vc_comp_code= :GLOBAL_COMP_CODE',
'and  vc_prj_id   = :GLOBAL_PROJ_ID',
'and vc_doc_type=trim(:P25_DOC_TYPE)     ',
'and vc_doc_no=trim(:P25_DOC_NO)',
'and DT_doc_DATE=trim(:P25_DOC_DATE)',
'order by dt_crt_date asc',
'',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P25_DOC_TYPE,P25_DOC_NO,P25_DOC_DATE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Audit Trail'
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
 p_id=>wwv_flow_api.id(14991412288039288)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Audit Trail found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>3361455099223037
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14991313677039287)
,p_db_column_name=>'AUDIT_TRAIL'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Audit Trail'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14991189755039286)
,p_db_column_name=>'REMARK'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Remark'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14991118465039285)
,p_db_column_name=>'NU_REQ_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nu Req No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(14785996477633954)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'35669'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'AUDIT_TRAIL:REMARK:NU_REQ_NO'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14672036664569511)
,p_name=>'Document Download & Upload'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_new_grid_column=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select nu_sr_no,',
'vc_comp_code, ',
'vc_doc_no, ',
'dt_doc_date, ',
'vc_reference, ',
'vc_ref_doc_name, ',
'dt_ref_doc_date, ',
'sys.dbms_lob.getlength(vc_logo) logo, ',
'dbms_lob.getlength(vc_logo) download_blob,',
'vc_logo, ',
'nu_value,',
'VC_PATH,',
'nu_seq_no,',
'vc_remark,',
'vc_ref_doc_no,',
'VC_USER_CODE,',
'get_user_name(vc_comp_code,VC_USER_CODE)created_by,',
'DT_CREATED_DATE,',
'VC_MOD_USERCODE,',
'DT_MOD_DATE',
'from dt_upload_dms',
'where VC_COMP_CODE =:GLOBAL_COMP_CODE',
'AND   VC_PRJ_ID    = :GLOBAL_PROJ_ID',
'AND   vc_doc_no = :P25_DOC_NO ',
'AND   dt_doc_date=:P25_DOC_DATE',
'--AND     TO_DATE(DT_DOC_DATE,''DD-MM-YYYY'') = :P600_DOC_DATE;',
'',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Document found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671889649569510)
,p_query_column_id=>1
,p_column_alias=>'NU_SR_NO'
,p_column_display_sequence=>20
,p_column_heading=>'Sr No'
,p_use_as_row_header=>'N'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671821888569509)
,p_query_column_id=>2
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>30
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671667975569508)
,p_query_column_id=>3
,p_column_alias=>'VC_DOC_NO'
,p_column_display_sequence=>40
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671573120569507)
,p_query_column_id=>4
,p_column_alias=>'DT_DOC_DATE'
,p_column_display_sequence=>50
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671494809569506)
,p_query_column_id=>5
,p_column_alias=>'VC_REFERENCE'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671399279569505)
,p_query_column_id=>6
,p_column_alias=>'VC_REF_DOC_NAME'
,p_column_display_sequence=>70
,p_column_heading=>'Document Name'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671300277569504)
,p_query_column_id=>7
,p_column_alias=>'DT_REF_DOC_DATE'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671218498569503)
,p_query_column_id=>8
,p_column_alias=>'LOGO'
,p_column_display_sequence=>90
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671150777569502)
,p_query_column_id=>9
,p_column_alias=>'DOWNLOAD_BLOB'
,p_column_display_sequence=>100
,p_column_heading=>'Document Download'
,p_use_as_row_header=>'N'
,p_column_format=>'DOWNLOAD:DT_UPLOAD_DMS:VC_LOGO:NU_SEQ_NO:::VC_FILE_NAME:DT_MOD_DATE::attachment::'
,p_column_alignment=>'CENTER'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14671047342569501)
,p_query_column_id=>10
,p_column_alias=>'VC_LOGO'
,p_column_display_sequence=>110
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670947056569500)
,p_query_column_id=>11
,p_column_alias=>'NU_VALUE'
,p_column_display_sequence=>120
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670801729569499)
,p_query_column_id=>12
,p_column_alias=>'VC_PATH'
,p_column_display_sequence=>130
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670699672569498)
,p_query_column_id=>13
,p_column_alias=>'NU_SEQ_NO'
,p_column_display_sequence=>140
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670665368569497)
,p_query_column_id=>14
,p_column_alias=>'VC_REMARK'
,p_column_display_sequence=>150
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670471879569496)
,p_query_column_id=>15
,p_column_alias=>'VC_REF_DOC_NO'
,p_column_display_sequence=>160
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670456259569495)
,p_query_column_id=>16
,p_column_alias=>'VC_USER_CODE'
,p_column_display_sequence=>170
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14529628634438823)
,p_query_column_id=>17
,p_column_alias=>'CREATED_BY'
,p_column_display_sequence=>200
,p_column_heading=>'Upload By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670287016569494)
,p_query_column_id=>18
,p_column_alias=>'DT_CREATED_DATE'
,p_column_display_sequence=>210
,p_column_heading=>'Upload on'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670202914569493)
,p_query_column_id=>19
,p_column_alias=>'VC_MOD_USERCODE'
,p_column_display_sequence=>180
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14670163608569492)
,p_query_column_id=>20
,p_column_alias=>'DT_MOD_DATE'
,p_column_display_sequence=>190
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14669978948569491)
,p_query_column_id=>20
,p_column_alias=>'DERIVED$01'
,p_column_display_sequence=>10
,p_column_heading=>'Edit'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.::P28_VC_COMP_CODE,P28_VC_DOC_NO,P28_DT_DOC_DATE,P28_VC_REF_DOC_NO,P28_VC_REF_DOC_NAME,P28_DT_REF_DOC_DATE,P28_NU_VALUE,P28_VC_LOGO,P28_NU_SEQ_NO,P28_NU_SR_NO,P28_VC_PATH,P28_VC_REFERENCE,P28_VC_REMARK,P28_ACTION,P28'
||'_VC_MOD_USERCODE,P28_VC_USER_CODE,P28_DT_CREATED_DATE,P28_DOC_TYPE,P28_PRJ_ID:&GLOBAL_COMP_CODE.,#VC_DOC_NO#,#DT_DOC_DATE#,#VC_REF_DOC_NO#,#VC_REF_DOC_NAME#,#DT_REF_DOC_DATE#,#NU_VALUE#,#VC_LOGO#,#NU_SEQ_NO#,#NU_SR_NO#,#VC_PATH#,#VC_REFERENCE#,#VC_RE'
||'MARK#,U,#VC_MOD_USERCODE#,#VC_USER_CODE#,#DT_CREATED_DATE#,&P25_DOC_TYPE.,&GLOBAL_PROJ_ID.'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_column_alignment=>'CENTER'
,p_display_when_cond_type=>'FUNCTION_BODY'
,p_display_when_condition=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P25_MAX_LEVEL = :P25_CURR_LEVEL-1 THEN',
'RETURN FALSE;',
'else',
'    IF :P25_REQ_NO IS NOT NULL and :P25_CURR_CODE != :GLOBAL_USER_CODE THEN',
'    RETURN false;',
'    else',
'    return true;',
'    END IF;',
'end if;',
''))
,p_display_when_condition2=>'PLSQL'
,p_derived_column=>'Y'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14992192587039296)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14993318392039307)
,p_button_name=>'bACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:&P25_LAST_PAGE.:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14669874469569490)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14672036664569511)
,p_button_name=>'DOCUMENT_UPLOAD'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Document Upload'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:28:P28_DOC_TYPE,P28_VC_DOC_NO,P28_DT_DOC_DATE,P28_VC_COMP_CODE,P28_ACTION,P28_PRJ_ID:&P25_DOC_TYPE.,&P25_DOC_NO.,&P25_DOC_DATE.,&GLOBAL_COMP_CODE.,I,&GLOBAL_PROJ_ID.'
,p_icon_css_classes=>'fa-upload'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14990746013039281)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14992080277039295)
,p_button_name=>'save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(13341097477615600)
,p_branch_name=>'Go To Page page 1'
,p_branch_action=>'f?p=&APP_ID.:&P25_LAST_PAGE.:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>20
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14994332419039317)
,p_name=>'P25_REQ_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Req No'
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
 p_id=>wwv_flow_api.id(14994196064039316)
,p_name=>'P25_REQ_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Req Date'
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
 p_id=>wwv_flow_api.id(14994163431039315)
,p_name=>'P25_PRVUSER_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Prvuser Code'
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
 p_id=>wwv_flow_api.id(14994063078039314)
,p_name=>'P25_CURR_CODE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Curr Code'
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
 p_id=>wwv_flow_api.id(14993880620039313)
,p_name=>'P25_DOC_TYPE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Doc Type'
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
 p_id=>wwv_flow_api.id(14993863736039312)
,p_name=>'P25_DOC_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Doc Date'
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
 p_id=>wwv_flow_api.id(14993669307039311)
,p_name=>'P25_DOC_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Doc No'
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
 p_id=>wwv_flow_api.id(14993640475039310)
,p_name=>'P25_PRVUSER_NAME'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Prvuser Name'
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
 p_id=>wwv_flow_api.id(14993549804039309)
,p_name=>'P25_DOC_NME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Doc Nme'
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
 p_id=>wwv_flow_api.id(14992912863039303)
,p_name=>'P25_CURR_LEVEL'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Curr Level'
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
 p_id=>wwv_flow_api.id(14992836283039302)
,p_name=>'P25_NEXT_LEVEL'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Next Level'
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
 p_id=>wwv_flow_api.id(14992709060039301)
,p_name=>'P25_MAX_LEVEL'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Max Level'
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
 p_id=>wwv_flow_api.id(14992607099039300)
,p_name=>'P25_WORKFLOW_NO'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Workflow No'
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
 p_id=>wwv_flow_api.id(14992486804039299)
,p_name=>'P25_CREATOR'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Creator'
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
 p_id=>wwv_flow_api.id(14992006519039294)
,p_name=>'P25_ACTION'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14992080277039295)
,p_prompt=>'Action'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 D ,',
'c002 R',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''ACTION''; '))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14991955940039293)
,p_name=>'P25_USER_LIST'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(14992080277039295)
,p_prompt=>'User'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  GET_USER_NAME(a.vc_comp_code,a.vc_user_code) vc_user_name,vc_user_code',
'from    dt_workflow a',
'where   a.vc_comp_code	= :GLOBAL_COMP_CODE',
'and     VC_PRJ_ID       =  :GLOBAL_PROJ_ID',
'and 	vc_workflow_no  =  :p25_WORKFLOW_NO',
'and     NU_LEVEL_SEQ	= (select decode(:P25_ACTION,''R'',:p25_curr_level-1,:p25_curr_level+1) from dual)',
'and     :P25_REQ_NO IS not null  ',
'',
'union all',
'',
'select  GET_USER_NAME(:GLOBAL_COMP_CODE,:P25_CREATOR ),:P25_CREATOR ',
'from    dual',
'where   trim(:p25_curr_level)  = 1',
'and     trim(:P25_ACTION)      =''R'' ',
'and     :P25_REQ_NO IS not null ',
'',
'union all',
'',
'select  get_uSER_NAME(a.vc_comp_code,a.vc_user_code) vc_user_name,vc_user_code',
'from    dt_workflow a    ',
'where   a.vc_comp_code    =  :GLOBAL_COMP_CODE',
'and     VC_PRJ_ID         =  :GLOBAL_PROJ_ID',
'and     vc_workflow_no    =  :p25_WORKFLOW_NO',
'and     NU_LEVEL_SEQ      =  1',
'and     :P25_REQ_NO IS  null ;',
'',
'   '))
,p_lov_cascade_parent_items=>'P25_ACTION'
,p_ajax_items_to_submit=>'P25_ACTION,P25_CREATOR,P25_CURR_LEVEL'
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
 p_id=>wwv_flow_api.id(14991573772039290)
,p_name=>'P25_REMARK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(14992080277039295)
,p_prompt=>'Remark'
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
 p_id=>wwv_flow_api.id(14770242576186918)
,p_name=>'P25_LAST_PAGE'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_prompt=>'Last Page'
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
 p_id=>wwv_flow_api.id(14768960357186905)
,p_name=>'P25_LABEL'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14529566384438822)
,p_name=>'P25_AUTH_FLAG'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(14994434020039318)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14990880354039283)
,p_validation_name=>'SELECT ACTION'
,p_validation_sequence=>10
,p_validation=>'P25_ACTION'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Action'
,p_when_button_pressed=>wwv_flow_api.id(14990746013039281)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14990795983039282)
,p_validation_name=>'select User'
,p_validation_sequence=>20
,p_validation=>'P25_USER_LIST'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select User'
,p_validation_condition_type=>'NEVER'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14991847111039292)
,p_name=>'get_next_level'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P25_ACTION'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14991730332039291)
,p_event_id=>wwv_flow_api.id(14991847111039292)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'     if :P25_ACTION =''R'' then',
' 			:P25_next_level:=:P25_curr_level-1;',
' 		else',
' 			:P25_next_level:=:P25_curr_level+1;',
' 		end if;',
''))
,p_attribute_02=>'P25_ACTION,P25_NEXT_LEVEL'
,p_attribute_03=>'P25_CURR_LEVEL'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14769962966186915)
,p_name=>'HIDE SAVE BUTTON'
,p_event_sequence=>20
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P25_MAX_LEVEL >= :P25_CURR_LEVEL THEN',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14769809369186914)
,p_event_id=>wwv_flow_api.id(14769962966186915)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14990746013039281)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14669737283569488)
,p_event_id=>wwv_flow_api.id(14769962966186915)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14669874469569490)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14769472020186911)
,p_name=>'HIDE SAVE BUTTON_1'
,p_event_sequence=>30
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'FUNCTION_BODY'
,p_display_when_cond=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P25_REQ_NO IS NOT NULL THEN',
'IF :P25_CURR_CODE != :GLOBAL_USER_CODE THEN',
'RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;',
'END IF;'))
,p_display_when_cond2=>'PLSQL'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14769450402186910)
,p_event_id=>wwv_flow_api.id(14769472020186911)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14990746013039281)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14669819005569489)
,p_event_id=>wwv_flow_api.id(14769472020186911)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(14669874469569490)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14669071050569482)
,p_name=>'closed'
,p_event_sequence=>40
,p_triggering_element_type=>'JQUERY_SELECTOR'
,p_triggering_element=>'body'
,p_bind_type=>'bind'
,p_bind_event_type=>'custom'
,p_bind_event_type_custom=>'dialogclose'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14669008769569481)
,p_event_id=>wwv_flow_api.id(14669071050569482)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(14672036664569511)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14205066881003105)
,p_name=>'Check work Flow N0 not null'
,p_event_sequence=>50
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'ITEM_IS_NULL'
,p_display_when_cond=>'P25_WORKFLOW_NO'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14204873935003104)
,p_event_id=>wwv_flow_api.id(14205066881003105)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ALERT'
,p_attribute_01=>'Workflow not define against &P25_DOC_TYPE. docucment Type. Contact System Administration.'
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
 p_id=>wwv_flow_api.id(14990992775039284)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'call process'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'       declare',
'       next_user varchar2(20);',
' 	 	begin',
'        ',
'        if :P25_NEXT_LEVEL=:P25_MAX_LEVEL and  :P25_ACTION=''A'' then',
'        next_user:=:P25_CURR_CODE;',
'        else',
'        next_user:=replace(:P25_USER_LIST,'':'','','');',
'        end if;',
' 	 		Gen_workflow_request (:GLOBAL_COMP_CODE,:P25_REQ_NO,:P25_DOC_TYPE,NULL,:P25_DOC_NO,:P25_DOC_DATE  ,',
'                                         :P25_CURR_LEVEL,:P25_NEXT_LEVEL ,next_user,:P25_CURR_CODE,:P25_REMARK,:P25_ACTION,:GLOBAL_PROJ_ID); ',
' 	 	 ',
' 	 		COMMIT;',
'		end;',
'		commit;',
'        ',
'  '))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14770530241186921)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''ACTION'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''ACTION'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14993032333039304)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info on req no not null'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    max_level number;',
'    curr_level number;',
' Begin',
' Begin',
'Select vc_doc_type,vc_doc_no,dt_doc_date,NU_REQ_LEVEL,vc_prvuser_Code,VC_REQUSER_CODE,vc_WORKFLOW_NO ,',
'        DT_REQ_DATE, get_user_name(:global_comp_code,vc_prvuser_Code )forwaded_by,',
'        DECODE(:P25_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',',
'              ''Invoice Schedule-Provisional'',''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Invoice-IEX'',''MTR'', ''Meter Replacement'',''REC'',''REC'')doc_name,',
'        decode(ch_action,''F'','' Forwarded By: '',''A'',''Approved By: '',''R'','' Forwarded By: '')label1',
'Into  :P25_DOC_TYPE,:P25_DOC_NO,:P25_DOC_DATE,:P25_CURR_LEVEL,:P25_PRVUSER_CODE,:P25_CURR_CODE,:P25_WORKFLOW_NO,',
'        :P25_REQ_DATE,:P25_PRVUSER_NAME,:P25_DOC_NME,:P25_LABEL',
'From DT_SUBMIT_WKFREQUEST',
'Where vc_comp_code=:GLOBAL_COMP_CODE',
'and   vc_prj_id   = :GLOBAL_PROJ_ID',
'and nu_req_no=:P25_REQ_NO;',
'exception when no_data_found then',
'null;',
'end;',
'',
'begin',
'Select NU_LEVEL , NU_LEVEL  into :P25_MAX_LEVEL,max_level',
'From hd_workflow',
'Where vc_comp_code=:GLOBAL_COMP_CODE',
' and   VC_PRJ_ID =  :GLOBAL_PROJ_ID',
'and vc_doc_type=:p25_doc_type	 ',
'-- and nvl(vc_doc_subtype,'' '')=nvl(:p25_doc_subtype,'' '')	',
'AND NVL(CH_ACTIVE,''X'' )  =  ''Y'';',
'exception when no_data_found then null;',
'end;',
' ',
'',
'curr_level:=to_number(:p25_curr_level);',
':p25_next_level:=curr_level+1;',
'',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''ACTION'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''ACTION'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''ACTION'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''ACTION'');',
'END IF;',
' ',
'',
'if trim(nvl(curr_level,0))=0 then',
'      APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Forward'',',
'                                       P_C002            => ''F''',
'                                      ',
'                                    );',
'elsif trim(curr_level)>0 and trim(curr_level)<>trim(max_level) then',
'      APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Forward'',',
'                                       P_C002            => ''F''',
'                                      ',
'                                    );',
'      APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Revert'',',
'                                       P_C002            => ''R''',
'                                      ',
'                                    );',
'elsif trim(curr_level)= trim(max_level) then ',
'    APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Approved'',',
'                                       P_C002            => ''A''',
'                                      ',
'                                    );',
'      APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Revert'',',
'                                       P_C002            => ''R''',
'                                      ',
'                                    );',
'end if;',
'commit;',
'',
'',
'Begin',
'select  vc_prvuser_code into :P25_CREATOR',
'from  DT_SUBMIT_WKFREQUEST',
'where vc_comp_code=:GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and vc_doc_type=:P25_DOC_TYPE',
'--and nvl(vc_doc_subtype,'' '')=nvl(:P25_DOC_SUBTYPE,'' '')',
'and vc_doc_no=:P25_DOC_NO',
'and dt_doc_date=:P25_DOC_DATE',
'and nu_prvreq_no is null;',
'exception when others then ',
'null;',
'End;',
'End;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P25_REQ_NO'
,p_process_when_type=>'ITEM_IS_NOT_NULL'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14770800614186924)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get info on req no null'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select vc_workflow_no,NU_LEVEL ,''1'',''1'',:GLOBAL_USER_CODE,',
'DECODE(:P25_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',''Invoice Schedule-Provisional'',',
'''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Invoice-IEX'',''MTR'', ''Meter Replacement'',''REC'',''REC'')doc_name',
'INTO :P25_WORKFLOW_NO, :P25_MAX_LEVEL,:P25_CURR_LEVEL,:P25_NEXT_LEVEL,:P25_CURR_CODE , :P25_DOC_NME',
'from hd_workflow',
'where vc_comp_code=:GLOBAL_COMP_CODE',
' and   VC_PRJ_ID =  :GLOBAL_PROJ_ID',
'and vc_doc_type=:P25_DOC_TYPE	 ',
'and nvl(CH_ACTIVE,''N'')=''Y'';',
'exception when no_data_found then null;',
'end;',
'      ',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''ACTION'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''ACTION'');',
'END IF;',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''ACTION'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''ACTION'');',
'END IF;',
' ',
'',
'      APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''ACTION'',',
'                                       p_c001            =>  ''Forward'',',
'                                       P_C002            =>   ''F''',
'                                      ',
'      );'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P25_REQ_NO'
,p_process_when_type=>'ITEM_IS_NULL'
);
wwv_flow_api.component_end;
end;
/
