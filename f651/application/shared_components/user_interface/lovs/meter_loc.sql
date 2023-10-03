prompt --application/shared_components/user_interface/lovs/meter_loc
begin
--   Manifest
--     METER_LOC
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
 p_id=>wwv_flow_api.id(191385807818662)
,p_lov_name=>'METER_LOC'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select VC_LOCATION D, NU_DOC_NO R',
'from  DT_ENERGY_FLOW',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID  = :GLOBAL_PRoJ_ID',
'and   ch_auth_flag = ''Y''',
'and   CH_METER_INSTALLED = ''Y'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APPUA'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
