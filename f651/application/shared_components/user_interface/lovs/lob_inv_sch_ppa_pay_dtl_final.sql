prompt --application/shared_components/user_interface/lovs/lob_inv_sch_ppa_pay_dtl_final
begin
--   Manifest
--     LOB_INV_SCH_PPA_PAY_DTL_FINAL
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
 p_id=>wwv_flow_api.id(11160708600900538)
,p_lov_name=>'LOB_INV_SCH_PPA_PAY_DTL_FINAL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO = :P41_PPA_NO_TEMP',
'AND   DT_PPA_DATE = :P41_PPA_DATE',
'AND   :P41_MODE  = ''A''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_FINAL_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                 )',
'union all',
'SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE A.ORG_ID = :GLOBAL_COMP_CODE',
'AND   A.PRJ_ID = :GLOBAL_PROJ_ID',
'AND   A.VC_PPA_NO = :P41_PPA_NO_TEMP',
'AND   A.DT_PPA_DATE = :P41_PPA_DATE',
'AND   :P41_MODE  = ''E''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                   AND    B.VC_INVOICE_NO   <> :P41_INV_SCH_NO',
'                  AND     B.DT_INVOICE_DATE <> :P41_INV_SCH_DATE',
'                )',
''))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_use_local_sync_table=>false
,p_return_column_name=>'R'
,p_display_column_name=>'D'
,p_group_sort_direction=>'ASC'
,p_default_sort_column_name=>'D'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11160387975900534)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'DATE'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11159993555900534)
,p_query_column_name=>'D'
,p_heading=>'Bill From Date'
,p_display_sequence=>20
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11159613582900534)
,p_query_column_name=>'DT_BILL_TO_DATE'
,p_heading=>'Bill To Date'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11159178818900533)
,p_query_column_name=>'DT_PAYMENT_DATE'
,p_heading=>'Payment Date'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11158847667900533)
,p_query_column_name=>'DT_PENALTY_DATE'
,p_heading=>'Surcharge Date'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_api.component_end;
end;
/
