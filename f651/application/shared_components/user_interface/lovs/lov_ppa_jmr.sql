prompt --application/shared_components/user_interface/lovs/lov_ppa_jmr
begin
--   Manifest
--     LOV_PPA_JMR
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_list_of_values(
 p_id=>wwv_flow_api.id(14661940307350853)
,p_lov_name=>'LOV_PPA_JMR'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer,VC_EXTERNAL_DOC_NO,DT_EXTERNAL_DOC_DATE',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''J''',
'and  ch_auth_flag = ''Y''',
'order by 2 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14435774713457203)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15317079553763416)
,p_query_column_name=>'VC_EXTERNAL_DOC_NO'
,p_heading=>'PPA Number'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15317536455763417)
,p_query_column_name=>'DT_EXTERNAL_DOC_DATE'
,p_heading=>'PPA Date'
,p_display_sequence=>15
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14435464972457202)
,p_query_column_name=>'D'
,p_heading=>'System Generated Number'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14434993609457202)
,p_query_column_name=>'DT_PPA_DATE'
,p_heading=>'Document Uploaded Date'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(14434616863457201)
,p_query_column_name=>'CUSTOMER'
,p_heading=>'Customer'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
