prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Home'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>'$( "#P1_SUB_DIVISION" ).appendTo( ".select_list" );'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.t-Report-colHead {',
'    border: 0px solid #131111;',
'    border-right-width: 0;',
'}',
'',
'',
'.t-Report-report tr:last-child .t-Report-cell {',
'    border-bottom: 0px solid #0c0c0c;',
'}',
'',
'',
'.t-Report-report tr .t-Report-colHead:last-child {',
'    border-right: 0px solid #131212;',
'}',
'',
'.t-Report-cell, .t-Report-colHead {',
'    border: 0px solid #0a0a0a;',
'    border-right-width: 0;',
'}',
'',
'.t-Report-report tr .t-Report-cell:last-child, .t-Report-report tr .t-Report-colHead:last-child {',
'    border-right: 0px solid #0e0d0d;',
'}',
'',
'.t-Report-paginationText {',
'    padding: 4px 8px;',
'    visibility: hidden;',
'}',
'',
'.t-Report-cell, .t-Report-colHead {',
'    /*border: 1px solid #e6e6e6;',
'    border-right-width: 0;*/',
'    font-weight: 700;',
'}',
'',
'.t-Report-cell, .t-Report-colHead {',
'    ',
'    text-align: left;',
'}',
'',
'',
'a t-Report-cell {',
'    background-color: #bd8fdc;',
'   color: red;',
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
'',
'.t-Region-body {',
'    BACKGROUND-COLOR: transparent !important;',
'}',
'',
'main#main {',
'    background-color: #99bed1;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230929171015'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(15280816927151589)
,p_name=>'Document for Approval'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--accent5:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_grid_column_span=>4
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_DOC_TYPE as Doc_Type,',
'       count(nu_req_no),',
'       decode(VC_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',''Invoice Schedule-Provisional'',',
'       ''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Exchange'',''MTR'', ''Meter Replacement'',''CALIB'',''Meter Calibration'',VC_DOC_TYPE) as Doc',
'From   DT_SUBMIT_WKFREQUEST',
'where vc_comp_code=:GLOBAL_COMP_CODE',
'and   VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and   ch_req_stat=''N''',
'and   VC_REQUSER_CODE=:GLOBAL_USER_CODE',
'group by VC_DOC_TYPE',
'order by decode(VC_DOC_TYPE,''PPA'',''1'',''JMR'',''2'',''IJMR'',''3'',''SCH'',''4'',''IPSCH'',''5'',''IFSCH'',''6'')'))
,p_ajax_enabled=>'Y'
,p_ajax_items_to_submit=>'GLOBAL_PROJ_ID'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Document for Approval'
,p_query_num_rows_type=>'ROW_RANGES_WITH_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280749147151588)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280579234151587)
,p_query_column_id=>2
,p_column_alias=>'COUNT(NU_REQ_NO)'
,p_column_display_sequence=>30
,p_column_heading=>'Count(nu Req No)'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_DOCUMENT_TYPE,P24_MODE:#DOC_TYPE#,1'
,p_column_linktext=>'#COUNT(NU_REQ_NO)#'
,p_column_alignment=>'RIGHT'
,p_heading_alignment=>'RIGHT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(15280488567151586)
,p_query_column_id=>3
,p_column_alias=>'DOC'
,p_column_display_sequence=>20
,p_column_heading=>'Doc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:24:P24_DOCUMENT_TYPE,P24_MODE:#DOC_TYPE#,1'
,p_column_linktext=>'#DOC#'
,p_heading_alignment=>'LEFT'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14768849085186904)
,p_name=>'Your Document @Others'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--accent6:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_DOC_TYPE as Doc_Type,count(nu_req_no),',
'decode(VC_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',''Invoice Schedule-Provisional'',',
'''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Exchange'',''MTR'', ''Meter Replacement'',''CALIB'',''Meter Calibration'',VC_DOC_TYPE) as Doc',
' From DT_SUBMIT_WKFREQUEST',
'where ch_req_stat=''N''',
'and vc_comp_code=:GLOBAL_COMP_CODE',
'and   VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and VC_prvUSER_CODE=:GLOBAL_USER_CODE',
'group by VC_DOC_TYPE',
'order by decode(VC_DOC_TYPE,''PPA'',''1'',''JMR'',''2'',''IJMR'',''3'',''SCH'',''4'',''IPSCH'',''5'',''IFSCH'',''6'')',
'',
'  ',
''))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Document Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768710757186903)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768583033186902)
,p_query_column_id=>2
,p_column_alias=>'COUNT(NU_REQ_NO)'
,p_column_display_sequence=>40
,p_column_heading=>'Count(nu Req No)'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_DOCUMENT_TYPE,P24_MODE:#DOC_TYPE#,2'
,p_column_linktext=>'#COUNT(NU_REQ_NO)#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768551303186901)
,p_query_column_id=>3
,p_column_alias=>'DOC'
,p_column_display_sequence=>30
,p_column_heading=>'Doc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_DOCUMENT_TYPE,P24_MODE:#DOC_TYPE#,2'
,p_column_linktext=>'#DOC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_region(
 p_id=>wwv_flow_api.id(14768368591186900)
,p_name=>'Recently Approved Documents'
,p_template=>wwv_flow_api.id(16286970926492132)
,p_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:i-h240:t-Region--accent7:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Report--stretch:t-Report--altRowsDefault:t-Report--rowHighlight'
,p_new_grid_row=>false
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_DOC_TYPE as Doc_Type,Count(nu_req_no),',
'decode(VC_DOC_TYPE,''PPA'',''PPA'',''JMR'',''JMR'',''IJMR'',''Invoice-JMR'',''SCH'',''Schedule'',''IPSCH'',''Invoice Schedule-Provisional'',',
'''IFSCH'',''Invoice Schedule-Final'',''IEX'',''Exchange'',''MTR'', ''Meter Replacement'',''CALIB'',''Meter Calibration'',VC_DOC_TYPE) as Doc',
'',
' From  DT_SUBMIT_WKFREQUEST',
'where ch_req_stat=''Y''',
'and vc_comp_code=:GLOBAL_COMP_CODE',
'and   VC_PRJ_ID = :GLOBAL_PROJ_ID',
'and CH_ACTION =''A''',
'--and (VC_reqUSER_CODE=:GLOBAL_USER_Code)-- or VC_prvUSER_CODE=:GLOBAL_USER_Code)',
'group by VC_DOC_TYPE',
'order by decode(VC_DOC_TYPE,''PPA'',''1'',''JMR'',''2'',''IJMR'',''3'',''SCH'',''4'',''IPSCH'',''5'',''IFSCH'',''6'')'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_api.id(16256918890492086)
,p_query_headings_type=>'NO_HEADINGS'
,p_query_num_rows=>5
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_no_data_found=>'No Document Found'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768340220186899)
,p_query_column_id=>1
,p_column_alias=>'DOC_TYPE'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768202746186898)
,p_query_column_id=>2
,p_column_alias=>'COUNT(NU_REQ_NO)'
,p_column_display_sequence=>40
,p_column_heading=>'Count(nu Req No)'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.::P24_MODE,P24_DOCUMENT_TYPE:3,#DOC_TYPE#'
,p_column_linktext=>'#COUNT(NU_REQ_NO)#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.create_report_columns(
 p_id=>wwv_flow_api.id(14768101078186897)
,p_query_column_id=>3
,p_column_alias=>'DOC'
,p_column_display_sequence=>30
,p_column_heading=>'Doc'
,p_use_as_row_header=>'N'
,p_column_link=>'f?p=&APP_ID.:24:&SESSION.::&DEBUG.:RP,24:P24_DOCUMENT_TYPE,P24_MODE:#DOC_TYPE#,3'
,p_column_linktext=>'#DOC#'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_api.component_end;
end;
/
