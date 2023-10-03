prompt --application/shared_components/user_interface/lovs/lov_method_sale_trade
begin
--   Manifest
--     LOV_METHOD_SALE_TRADE
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
 p_id=>wwv_flow_api.id(3082181448392603)
,p_lov_name=>'LOV_METHOD_SALE_TRADE'
,p_lov_query=>'.'||wwv_flow_api.id(3082181448392603)||'.'
,p_location=>'STATIC'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3081912247392597)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Through Power Exchange'
,p_lov_return_value=>'P'
);
wwv_flow_api.create_static_lov_data(
 p_id=>wwv_flow_api.id(3081462925392596)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>'Through Bi-latrel Transcation'
,p_lov_return_value=>'T'
);
wwv_flow_api.component_end;
end;
/
