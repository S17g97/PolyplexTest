prompt --application/shared_components/user_interface/lovs/lov_invoice_notes
begin
--   Manifest
--     LOV_INVOICE_NOTES 
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
 p_id=>wwv_flow_api.id(15420610927949719)
,p_lov_name=>'LOV_INVOICE_NOTES '
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_doc_id , dt_doc_date , vc_inv_subject_desc ',
'from mst_INVOICE_SUBJECT',
'WHERE ORG_ID = :global_comp_code',
'AND HO_ORG_ID = :global_parent_comp',
'and PRJ_ID = :GLOBAL_PROJ_ID',
'and nvl(vc_status,''N'') = ''Y'';'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_query_owner=>'APPUA'
,p_return_column_name=>'VC_INV_SUBJECT_DESC'
,p_display_column_name=>'VC_INV_SUBJECT_DESC'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'VC_INV_SUBJECT_DESC'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15421106560962235)
,p_query_column_name=>'VC_INV_SUBJECT_DESC'
,p_heading=>'invoice_notes'
,p_display_sequence=>10
,p_data_type=>'VARCHAR2'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15421521495962236)
,p_query_column_name=>'DT_DOC_DATE'
,p_heading=>'Doc_Date'
,p_display_sequence=>20
,p_data_type=>'DATE'
,p_is_visible=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(15421894325962236)
,p_query_column_name=>'VC_DOC_ID'
,p_heading=>'Doc_Id'
,p_display_sequence=>30
,p_data_type=>'VARCHAR2'
,p_is_visible=>'N'
);
wwv_flow_api.component_end;
end;
/
