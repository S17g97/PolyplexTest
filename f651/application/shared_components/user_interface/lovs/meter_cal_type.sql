prompt --application/shared_components/user_interface/lovs/meter_cal_type
begin
--   Manifest
--     METER_CAL_TYPE
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
 p_id=>wwv_flow_api.id(42209746519138057)
,p_lov_name=>'METER_CAL_TYPE'
,p_lov_query=>'.'||wwv_flow_api.id(42209746519138057)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42210148626138060)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Panel CT Ratio'
,p_lov_return_value=>'Panel CT Ratio'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42210609969138061)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'TVM CT Ratio'
,p_lov_return_value=>'TVM CT Ratio'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42210962783138062)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'MF for CT Ratio'
,p_lov_return_value=>'MF for CT Ratio'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42211429349138062)
,p_lov_disp_sequence=>4
,p_lov_disp_value=>'TVM '
,p_lov_return_value=>'TVM '
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42211769426138063)
,p_lov_disp_sequence=>5
,p_lov_disp_value=>'Meter PT Line Voltage'
,p_lov_return_value=>'Meter PT Line Voltage'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42212190455138064)
,p_lov_disp_sequence=>6
,p_lov_disp_value=>'Panel PT Line Voltage Ratio'
,p_lov_return_value=>'Panel PT Line Voltage Ratio'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42212626191138064)
,p_lov_disp_sequence=>7
,p_lov_disp_value=>'MF for PT Factor'
,p_lov_return_value=>'MF for PT Factor'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(42212945309138064)
,p_lov_disp_sequence=>8
,p_lov_disp_value=>'Hence Total MF'
,p_lov_return_value=>'Hence Total MF'
);
wwv_flow_api.component_end;
end;
/
