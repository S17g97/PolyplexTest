prompt --application/shared_components/user_interface/lovs/lov
begin
--   Manifest
--     LOV
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
 p_id=>wwv_flow_api.id(11445114447527415)
,p_lov_name=>'LOV'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'v_query varchar2(4000);',
'BEGIN',
'if :MODE = ''E'' THEN',
' V_QUERY := ''SELECT DT_BILL_FROM_DATE D,DT_BILL_FROM_DATE R,DT_BILL_TO_DATE,DT_PAYMENT_DATE,DT_PENALTY_DATE',
'FROM DT_BILL_PAYMENT_SCHEDULE A',
'WHERE A.ORG_ID = :GLOBAL_COMP_CODE',
'AND   A.PRJ_ID = :GLOBAL_PROJ_ID',
'AND   A.VC_PPA_NO = :P38_PPA_NO_TEMP',
'AND   A.DT_PPA_DATE = :P38_PPA_DATE',
'AND   NOT EXISTS ( SELECT 1 ',
'                   FROM DT_SCH_PROV_INV B',
'                   WHERE  B.ORG_ID          = A.ORG_ID ',
'                   AND    B.PRJ_ID          = A.PRJ_ID',
'                   AND    B.VC_PPA_NO       = A.VC_PPA_NO ',
'                   AND    B.DT_PPA_DATE     = A.DT_PPA_DATE',
'                   AND    B.DT_BILL_FROM    = A.DT_BILL_FROM_DATE',
'                   AND    B.DT_BILL_TO      = A.DT_BILL_TO_DATE',
'                   AND    B.VC_INVOICE_NO   <> :P38_INV_SCH_NO',
'                  ',
'                )',
''';',
'',
'else ',
'v_query := ''select 1 from dual''; ',
'',
'END IF;',
'',
'',
'return v_query  ;',
'END;'))
,p_source_type=>'FUNC_BODY_RETURNING_SQL'
,p_function_body_language=>'PLSQL'
,p_location=>'LOCAL'
,p_return_column_name=>'1'
,p_default_sort_column_name=>'1'
,p_default_sort_direction=>'ASC'
);
wwv_flow_api.component_end;
end;
/
