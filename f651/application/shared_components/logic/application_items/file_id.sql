prompt --application/shared_components/logic/application_items/file_id
begin
--   Manifest
--     APPLICATION ITEM: FILE_ID
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_flow_item(
 p_id=>wwv_flow_api.id(15579599464966677)
,p_name=>'FILE_ID'
,p_scope=>'GLOBAL'
,p_protection_level=>'N'
);
wwv_flow_api.component_end;
end;
/
