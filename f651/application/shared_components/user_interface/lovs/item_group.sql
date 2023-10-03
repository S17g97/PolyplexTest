prompt --application/shared_components/user_interface/lovs/item_group
begin
--   Manifest
--     ITEM_GROUP
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
 p_id=>wwv_flow_api.id(15441528732186280)
,p_lov_name=>'ITEM_GROUP'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select "GRP_NM" D, "GRP_ID" R',
'from APPUA."VW_ITEM_GRP"',
'where HO_ORG_ID = :GLOBAL_PARENT_COMP',
'and ACTIVE = ''Y'''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPUA'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
