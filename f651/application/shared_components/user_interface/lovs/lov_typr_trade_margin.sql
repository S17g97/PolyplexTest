prompt --application/shared_components/user_interface/lovs/lov_typr_trade_margin
begin
--   Manifest
--     LOV_TYPR_TRADE_MARGIN
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
 p_id=>wwv_flow_api.id(3081078054389096)
,p_lov_name=>'LOV_TYPR_TRADE_MARGIN'
,p_lov_query=>'.'||wwv_flow_api.id(3081078054389096)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3080804362389096)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Greater Then'
,p_lov_return_value=>'1'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3080415224389095)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Less Then'
,p_lov_return_value=>'2'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(45960167555656967)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Fixed'
,p_lov_return_value=>'3'
);
wwv_flow_api.component_end;
end;
/
