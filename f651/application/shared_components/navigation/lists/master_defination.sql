prompt --application/shared_components/navigation/lists/master_defination
begin
--   Manifest
--     LIST: Master_defination
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_list(
 p_id=>wwv_flow_api.id(16100009353992705)
,p_name=>'Master_defination'
,p_list_type=>'SQL_QUERY'
,p_list_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select',
'--   Level       As  lvl,',
'null as lvl,',
'  menu_name (A.vc_menu_code,''N'') As label',
' ,DECODE(B.VC_MENU_TARGET,''#'',''f?p=&APP_ID.:&APP_PAGE_ID.:&SESSION.::::#'',''f?p=&APP_ID.:''||menu_name (A.vc_menu_code,''T'')||'':&SESSION.::::'')  As target',
'  ,null is_current_list_entry',
' ,menu_name (A.vc_menu_code,''I'') as imagevalue',
'  ,null  image_attribute',
'  ,null  image_alt_attribute',
'  ,null as attr1',
'  ,null',
'From MST_MENU_BASKET A,MST_MODULE_MENU B',
'WHERE A.VC_MENU_CODE = B.VC_MENU_CODE',
'AND VC_COMP_CODE=:GLOBAL_PARENT_COMP',
'AND VC_ROLE_CODE=:GLOBAL_ROLE_CODE',
'and  b.ch_active = ''Y''',
'and  B.vc_menu_code like ''810%''',
'and   B.vc_menu_code <> ''810''',
'--Connect By Prior A.vc_menu_code = substr(A.vc_menu_code,1,length(A.vc_menu_code)-2) AND vc_role_code=:GLOBAL_ROLE_CODE and vc_comp_code=:GLOBAL_COMP_CODE',
'--Start With substr(A.vc_menu_code,1,length(A.vc_menu_code)-2) is null and vc_role_code=:GLOBAL_ROLE_CODE and vc_comp_code=:GLOBAL_PARENT_COMP',
'order by B.NU_SR_NO;'))
,p_list_status=>'PUBLIC'
);
wwv_flow_api.component_end;
end;
/
