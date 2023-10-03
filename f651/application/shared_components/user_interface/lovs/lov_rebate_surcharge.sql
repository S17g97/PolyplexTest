prompt --application/shared_components/user_interface/lovs/lov_rebate_surcharge
begin
--   Manifest
--     LOV_REBATE_SURCHARGE
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
 p_id=>wwv_flow_api.id(2677877294388320)
,p_lov_name=>'LOV_REBATE_SURCHARGE'
,p_lov_query=>'.'||wwv_flow_api.id(2677877294388320)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2678200210388316)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Rebate'
,p_lov_return_value=>'R'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2678540976388315)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Surcharge'
,p_lov_return_value=>'S'
);
wwv_flow_api.component_end;
end;
/
