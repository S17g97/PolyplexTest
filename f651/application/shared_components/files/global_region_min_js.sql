prompt --application/shared_components/files/global_region_min_js
begin
--   Manifest
--     APP STATIC FILES: 651
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.g_varchar2_table := wwv_flow_api.empty_varchar2_table;
wwv_flow_api.g_varchar2_table(1) := '2428222E50305F53454C454354494F4E22292E617070656E64546F28222E53454C454354494F4E504F534954494F4E22292C2428222E53454C454354494F4E504F534954494F4E22292E70726570656E6428273C7370616E2069643D2273756264697622';
wwv_flow_api.g_varchar2_table(2) := '203E50726F6A656374204E616D653C2F7370616E3E27293B';
wwv_flow_api.create_app_static_file(
 p_id=>wwv_flow_api.id(36204974142799245)
,p_file_name=>'GLOBAL_REGION.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_api.varchar2_to_blob(wwv_flow_api.g_varchar2_table)
);
wwv_flow_api.component_end;
end;
/
