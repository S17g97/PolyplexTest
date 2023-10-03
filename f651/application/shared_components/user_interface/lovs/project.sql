prompt --application/shared_components/user_interface/lovs/project
begin
--   Manifest
--     PROJECT
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
 p_id=>wwv_flow_api.id(38278522080582451)
,p_lov_name=>'PROJECT'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT PROJECT_NAME D ,PRj_id R',
'FROM APPUA.VW_USR_PRJ',
'WHERE ORG_ID =:GLOBAL_COMP_CODE',
'AND  USR_ID = :GLOBAL_USER_CODE',
'order by 2 desc'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_query_owner=>'APPUA'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
);
wwv_flow_api.component_end;
end;
/
