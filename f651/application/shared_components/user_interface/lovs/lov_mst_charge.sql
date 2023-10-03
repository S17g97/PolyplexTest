prompt --application/shared_components/user_interface/lovs/lov_mst_charge
begin
--   Manifest
--     LOV_MST_CHARGE
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
 p_id=>wwv_flow_api.id(15924160876825127)
,p_lov_name=>'LOV_MST_CHARGE'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_charge_name D ,nu_charge_id R ,vc_charge_name, vc_charge_type , get_codedesc(HO_ORG_ID,vc_charge_type) charge_type_name,COA_ID',
'',
'from mst_other_charges',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and    vc_active = ''Y''; '))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPUA'
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15923627031810143)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15923247339810141)
,p_query_column_name=>'D'
,p_heading=>'D'
,p_display_sequence=>20
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15922863408810141)
,p_query_column_name=>'VC_CHARGE_NAME'
,p_heading=>'Charges Name'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15922380487810141)
,p_query_column_name=>'VC_CHARGE_TYPE'
,p_heading=>'Vc Charge Type'
,p_display_sequence=>40
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15922033029810138)
,p_query_column_name=>'CHARGE_TYPE_NAME'
,p_heading=>'Charges Type'
,p_display_sequence=>50
,p_data_type=>'VARCHAR2'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(13553391774592263)
,p_query_column_name=>'COA_ID'
,p_heading=>'Coa Id'
,p_display_sequence=>60
,p_data_type=>'NUMBER'
,p_is_visible=>'N'
);
wwv_flow_api.component_end;
end;
/
