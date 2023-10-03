prompt --application/shared_components/logic/application_processes/getfile
begin
--   Manifest
--     APPLICATION PROCESS: GETFILE
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_flow_process(
 p_id=>wwv_flow_api.id(15581461589005829)
,p_process_sequence=>1
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GETFILE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'    for c1 in (select *',
'                      FROM APEX_COLLECTIONS ',
'                 WHERE COLLECTION_NAME=''FILE_UPLOAD''',
'                 AND C003 = :FILE_ID ) loop',
'        --',
'        sys.htp.init;',
'        sys.owa_util.mime_header( c1.C002, FALSE );',
'        sys.htp.p(''Content-length: '' || sys.dbms_lob.getlength( c1.BLOB001 ));',
'        sys.htp.p(''Content-Disposition: attachment; filename="'' || c1.C001 || ''"'' );',
'        sys.htp.p(''Cache-Control: max-age=3600'');  -- tell the browser to cache for one hour, adjust as necessary',
'        sys.owa_util.http_header_close;',
'        sys.wpg_docload.download_file( c1.BLOB001 );',
'     ',
'        apex_application.stop_apex_engine;',
'    end loop;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_security_scheme=>'MUST_NOT_BE_PUBLIC_USER'
);
wwv_flow_api.component_end;
end;
/
