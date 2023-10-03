prompt --application/pages/page_00024
begin
--   Manifest
--     PAGE: 00024
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
 p_id=>24
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Document List'
,p_alias=>'DOCUMENT-LIST'
,p_page_mode=>'MODAL'
,p_step_title=>'Document'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide()'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Region .t-Region-body {',
'    padding: 16px;',
'    background: lightblue;',
'}',
'',
'',
'',
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
'.col-12>.rel-col .col-2 {',
'    width: 0.0%;',
'}',
'',
'',
'.t-Report--altRowsDefault .t-Report-report tr:nth-child(odd) .t-Report-cell {',
'    background-color: skyblue;',
'}',
'.t-Report--altRowsDefault .t-Report-report tr:nth-child(even) .t-Report-cell {',
'    background-color: lightgrey;',
'}',
'',
'.t-Report-cell, .t-Report-colHead {',
'    border: 1px solid #0a0a0a;',
'    border-right-width: 0;',
'    background: transparent;',
'}',
'',
'.t-Button--simple {',
'    --a-button-type-background-color: WHITE;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230930161827'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14767892007186895)
,p_name=>'Your Document @ Others'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select NU_REQ_NO Req_NO,',
'VC_DOC_TYPE  as Doc_Type',
',vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_REQuser_code)  Sent_to,',
'decode(ch_action,''F'',''Forwared'',''R'',''Revision'') Action',
' From DT_SUBMIT_WKFREQUEST',
'where ch_req_stat=''N''',
'and vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and VC_prvUSER_CODE=:GLOBAL_USER_CODE',
'and VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date desc'))
,p_display_when_condition=>'P24_MODE'
,p_display_when_cond2=>'2'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'P24_DOCUMENT_TYPE'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767864519186894)
,p_query_column_id=>1
,p_column_alias=>'REQ_NO'
,p_column_display_sequence=>50
,p_column_heading=>'Req No'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767672908186893)
,p_query_column_id=>2
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>20
,p_column_heading=>'Document Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767589303186892)
,p_query_column_id=>3
,p_column_alias=>'Document No'
,p_column_display_sequence=>30
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767480091186891)
,p_query_column_id=>4
,p_column_alias=>'Document Date'
,p_column_display_sequence=>40
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767425936186890)
,p_query_column_id=>5
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>60
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767325044186889)
,p_query_column_id=>6
,p_column_alias=>'SENT_TO'
,p_column_display_sequence=>70
,p_column_heading=>'Sent To'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14767203200186888)
,p_query_column_id=>7
,p_column_alias=>'ACTION'
,p_column_display_sequence=>80
,p_column_heading=>'Action'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14767143517186887)
,p_name=>'Recently Approved Documents'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
' decode(VC_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',''Invoice Schedule-Provisional'',',
'       ''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Exchange'',''MTR'', ''Meter Replacement'',''CALIB'',''Meter Calibration'',VC_DOC_TYPE) as Doc_Type',
',vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'GET_USER_NAME(vc_comp_code,vc_prvuser_code)  Sent_by ,',
'decode(ch_action,''A'',''Approved'',''F'',''Forward'',''Revision'') Status,',
'vc_remark Remark',
' From DT_SUBMIT_WKFREQUEST',
'where ch_req_stat=''Y''',
'and   VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and vc_comp_code=:GLOBAL_COMP_CODE',
'--and (VC_reqUSER_CODE=:GLOBAL_USER_Code )--or VC_prvUSER_CODE=:GLOBAL_USER_Code)',
'and VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by vc_doc_no, dt_req_date desc'))
,p_display_when_condition=>'P24_MODE'
,p_display_when_cond2=>'3'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766994588186886)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_column_heading=>'Document Type'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766883917186885)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766786400186884)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766751455186883)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766656112186882)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766536580186881)
,p_query_column_id=>6
,p_column_alias=>'STATUS'
,p_column_display_sequence=>60
,p_column_heading=>'Status'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14766375509186880)
,p_query_column_id=>7
,p_column_alias=>'REMARK'
,p_column_display_sequence=>70
,p_column_heading=>'Remark'
,p_use_as_row_header=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14204769808003103)
,p_plug_name=>'Mode'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14204576424003101)
,p_plug_name=>'Documents for your Approval'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'P24_MODE'
,p_plug_display_when_cond2=>'1'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15280397922151585)
,p_name=>'Documents for your Approval - PPA'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>40
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'PPA'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280277115151584)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280227319151583)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::P14_PPA_NO,P14_PPA_DATE,P14_MODE,P14_REQ_NO,P14_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280139627151582)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280032486151581)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15279915203151580)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15279793721151579)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15279750257151578)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14204535439003100)
,p_name=>'Documents for your Approval - JMR'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>50
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'JMR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14204302974003098)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14204238023003097)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:27:&SESSION.::&DEBUG.:27:P27_JMR_NO,P27_JMR_DATE,P27_MODE,P27_REQ_NO,P27_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14204133925003096)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14204004635003095)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14203909481003094)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14203845073003093)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14203739461003092)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(13493550720276515)
,p_name=>'Documents for your Approval - IJMR'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>60
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'IJMR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13493267778276513)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13493174081276512)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_INVOICE_NO,P30_INVOICE_DATE,P30_MODE,P30_REQ_NO,P30_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13493152766276511)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13493014841276510)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13492872506276509)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13492833266276508)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(13492709291276507)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12358246641769940)
,p_name=>'Documents for your Approval - MTR'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>110
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'MTR'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358466660769942)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358514471769943)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_DOC_NO,P48_DOC_DATE,P48_MODE,P48_REQ_NO,P48_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358621179769944)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358743049769945)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358851427769946)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12358933477769947)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12359091958769948)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(12113257191920977)
,p_name=>'Documents for your Approval - SCH'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>70
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'SCH'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12113036296920975)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12012108916271224)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:35:&SESSION.::&DEBUG.:30:P35_SCHEDULE_NO,P35_SCHEDULE_DATE,P35_MODE,P35_REQ_NO,P35_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12012011608271223)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12011932285271222)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12011865779271221)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12011671870271220)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(12011636004271219)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11434140535319209)
,p_name=>'Documents for your Approval - IPSCH'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>80
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'IPSCH'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433923637319207)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433783773319206)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:38:&SESSION.::&DEBUG.:38:P38_INV_SCH_NO,P38_INV_SCH_DATE,P38_MODE,P38_REQ_NO,P38_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433687860319205)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433583248319204)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433483826319203)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
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
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433386657319202)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11433330436319201)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(11433254168319200)
,p_name=>'Documents for your Approval - IFSCH'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>90
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'IFSCH'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432987413319198)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432952494319197)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41:P41_INV_SCH_NO,P41_INV_SCH_DATE,P41_MODE,P41_REQ_NO,P41_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432783202319196)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432697665319195)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432608815319194)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432519756319193)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(11432390552319192)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(10720091101945917)
,p_name=>'Documents for your Approval - IEX'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>100
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'IEX'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719905338945915)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719862229945914)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:44:&SESSION.::&DEBUG.:44:P44_INV_SCH_NO,P44_INV_SCH_DATE,P44_MODE,P44_REQ_NO,P44_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719737880945913)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719665296945912)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719555451945911)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719457427945910)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(10719273739945909)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(6807786284492618)
,p_name=>'Documents for your Approval - REC'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>120
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'REC'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807611613492616)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807478466492615)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:64:&SESSION.::&DEBUG.:64:P64_INVOICE_NO,P64_INVOICE_DATE,P64_MODE,P64_REQ_NO,P64_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807430633492614)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807274900492613)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807196955492612)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6807094650492611)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(6806976003492610)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(3169460192574325)
,p_name=>'Documents for your Approval - CALIB'
,p_parent_plug_id=>wwv_flow_api.id(14204576424003101)
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>130
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_display_point=>'SUB_REGIONS'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'VC_DOC_TYPE  as Doc_Type,',
'vc_doc_no as "Document No",',
'dt_doc_date as "Document Date" ,',
'dt_req_date as Sent_date,',
'get_user_name(vc_comp_code,vc_prvuser_code)  Sent_by,',
'nu_req_no,',
'vc_comp_code',
'From   DT_SUBMIT_WKFREQUEST',
'where  vc_comp_code=:GLOBAL_COMP_CODE',
'and    VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and    ch_req_stat=''N''',
'and    VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'and    VC_DOC_TYPE = :P24_DOCUMENT_TYPE',
'order by dt_req_date;'))
,p_display_when_condition=>'P24_DOCUMENT_TYPE'
,p_display_when_cond2=>'CALIB'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3457838169788377)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3457950449788378)
,p_query_column_id=>2
,p_column_alias=>'Document No'
,p_column_display_sequence=>20
,p_column_heading=>'Document Number'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:92:&SESSION.::&DEBUG.:92:P92_DOC_NO,P92_DOC_DATE,P64_MODE,P64_REQ_NO,P64_LAST_PAGE:#Document No#,#Document Date#,V,#NU_REQ_NO#,1'
,p_column_linktext=>'#Document No#'
,p_column_link_attr=>'class="t-Button t-Button--simple t-Button--hot t-Button--stretch"'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3458091841788379)
,p_query_column_id=>3
,p_column_alias=>'Document Date'
,p_column_display_sequence=>30
,p_column_heading=>'Document Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3458160917788380)
,p_query_column_id=>4
,p_column_alias=>'SENT_DATE'
,p_column_display_sequence=>40
,p_column_heading=>'Sent Date'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3458246382788381)
,p_query_column_id=>5
,p_column_alias=>'SENT_BY'
,p_column_display_sequence=>50
,p_column_heading=>'Sent By'
,p_use_as_row_header=>'N'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3458386938788382)
,p_query_column_id=>6
,p_column_alias=>'NU_REQ_NO'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(3458487616788383)
,p_query_column_id=>7
,p_column_alias=>'VC_COMP_CODE'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14995017998039324)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14204576424003101)
,p_button_name=>'CLOSE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>Close'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14766365426186879)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14767892007186895)
,p_button_name=>'CLOSE_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>Close'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14766230424186878)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(14767143517186887)
,p_button_name=>'CLOSE_1_1'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>Close'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-remove'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15279519125151576)
,p_name=>'P24_DOCUMENT_TYPE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(14204769808003103)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(15279433936151575)
,p_name=>'P24_DOCUMENT_NAME'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(15280397922151585)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''PPA'',''PPA'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14768047170186896)
,p_name=>'P24_MODE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14204769808003103)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(14204398886003099)
,p_name=>'P24_DOCUMENT_NAME_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(14204535439003100)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(13493415230276514)
,p_name=>'P24_DOCUMENT_NAME_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(13493550720276515)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12358374370769941)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12358246641769940)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(12113139282920976)
,p_name=>'P24_DOCUMENT_NAME_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(12113257191920977)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11434056716319208)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11434140535319209)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(11433095526319199)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(11433254168319200)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(10720018594945916)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(10720091101945917)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6807681299492617)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(6807786284492618)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''JMR'',''JMR'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3457824614788376)
,p_name=>'P24_DOCUMENT_NAME_1_1_1_1_1_1_1_1_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(3169460192574325)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT decode(:P24_DOCUMENT_TYPE,''CALIB'',''CALIB'')aa',
'              FROM DUAL;',
''))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14994925449039323)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14994809652039322)
,p_event_id=>wwv_flow_api.id(14994925449039323)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(14994492070039319)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
