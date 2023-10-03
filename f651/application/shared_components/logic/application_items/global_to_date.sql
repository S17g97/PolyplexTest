prompt --application/shared_components/logic/application_items/global_to_date
begin
--   Manifest
--     APPLICATION ITEM: GLOBAL_TO_DATE
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
 p_id=>wwv_flow_api.id(10268380306086815)
,p_name=>'GLOBAL_TO_DATE'
,p_protection_level=>'I'
,p_escape_on_http_output=>'N'
);
wwv_flow_api.component_end;
end;
/
