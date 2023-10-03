prompt --application/shared_components/user_interface/lovs/lov_param1
begin
--   Manifest
--     LOV_PARAM1
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
 p_id=>wwv_flow_api.id(16087885411881087)
,p_lov_name=>'LOV_PARAM1'
,p_lov_query=>'.'||wwv_flow_api.id(16087885411881087)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(16087471747881081)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Charge Type'
,p_lov_return_value=>'C'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(10148158165849387)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Exchange Name'
,p_lov_return_value=>'E'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(10148524528849390)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Market'
,p_lov_return_value=>'M'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3247125976317826)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'Reason of Calibration'
,p_lov_return_value=>'R'
);
wwv_flow_api.component_end;
end;
/
