prompt --application/shared_components/user_interface/lovs/lov_inv_sch_ppa_pay_dtl
begin
--   Manifest
--     LOV_INV_SCH_PPA_PAY_DTL
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
 p_id=>wwv_flow_api.id(11917993399746875)
,p_lov_name=>'LOV_INV_SCH_PPA_PAY_DTL'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO = :P38_PPA_NO_TEMP',
'AND   DT_PPA_DATE = :P38_PPA_DATE',
'AND   :P38_MODE  = ''A''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
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
'AND   A.VC_PPA_NO = :P38_PPA_NO_TEMP',
'AND   A.DT_PPA_DATE = :P38_PPA_DATE',
'AND   :P38_MODE  = ''E''',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                   AND    B.VC_INVOICE_NO   <> :P38_INV_SCH_NO',
'                  AND     B.DT_INVOICE_DATE <> :P38_INV_SCH_DATE',
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
 p_id=>wwv_flow_api.id(11917515787743903)
,p_query_column_name=>'R'
,p_display_sequence=>10
,p_data_type=>'DATE'
,p_is_visible=>'N'
,p_is_searchable=>'N'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11917074581743902)
,p_query_column_name=>'D'
,p_heading=>'Bill From Date'
,p_display_sequence=>20
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11916762300743902)
,p_query_column_name=>'DT_BILL_TO_DATE'
,p_heading=>'Bill To Date'
,p_display_sequence=>30
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11916277990743902)
,p_query_column_name=>'DT_PAYMENT_DATE'
,p_heading=>'Payment Date'
,p_display_sequence=>40
,p_data_type=>'DATE'
);
wwv_flow_api.create_list_of_values_cols(
 p_id=>wwv_flow_api.id(11915946216743901)
,p_query_column_name=>'DT_PENALTY_DATE'
,p_heading=>'Surcharge Date'
,p_display_sequence=>50
,p_data_type=>'DATE'
);
wwv_flow_api.component_end;
end;
/
