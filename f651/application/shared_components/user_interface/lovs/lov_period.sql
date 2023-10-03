prompt --application/shared_components/user_interface/lovs/lov_period
begin
--   Manifest
--     LOV_PERIOD
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
 p_id=>wwv_flow_api.id(2705750244259850)
,p_lov_name=>'LOV_PERIOD'
,p_lov_query=>'.'||wwv_flow_api.id(2705750244259850)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2706073509259849)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Annual'
,p_lov_return_value=>'A'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2706477360259849)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Flat'
,p_lov_return_value=>'F'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(2706932250259848)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Month'
,p_lov_return_value=>'M'
);
wwv_flow_api.component_end;
end;
/
