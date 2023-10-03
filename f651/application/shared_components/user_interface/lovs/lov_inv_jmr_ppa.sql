prompt --application/shared_components/user_interface/lovs/lov_inv_jmr_ppa
begin
--   Manifest
--     LOV_INV_JMR_PPA
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
 p_id=>wwv_flow_api.id(13970766346778959)
,p_lov_name=>'LOV_INV_JMR_PPA'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_JMR_NO D, VC_JMR_NO R,DT_JMR_DATE ,GET_CUST_NAME(ORG_ID,EO_ID)CUSTOMER',
'FROM  DT_JMR',
'where  ORG_ID       = :GLOBAL_COMP_CODE',
'AND    PRJ_ID       = :GLOBAL_PROJ_ID',
'AND    VC_PPA_NO    = :P30_PPA_NO',
'AND    DT_PPA_DATE  = :P30_PPA_DATE',
'and    ch_auth_flag = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPUA'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(13970266742743282)
,p_query_column_name=>'D'
,p_heading=>'JMR Number'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(13969822591743282)
,p_query_column_name=>'R'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(13969403937743282)
,p_query_column_name=>'DT_JMR_DATE'
,p_heading=>'JMR Date'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(13969022344743281)
,p_query_column_name=>'CUSTOMER'
,p_heading=>'Customer'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.component_end;
end;
/
