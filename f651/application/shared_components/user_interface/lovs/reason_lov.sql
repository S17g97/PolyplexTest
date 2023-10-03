prompt --application/shared_components/user_interface/lovs/reason_lov
begin
--   Manifest
--     REASON_LOV
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
 p_id=>wwv_flow_api.id(3652235066087298)
,p_lov_name=>'REASON_LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_CODE_DESC d, VC_CODE r ',
'from mst_code',
'where VC_CODE_TYPE =''R''',
'and nvl(CH_active,''N'') = ''Y'''))
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
