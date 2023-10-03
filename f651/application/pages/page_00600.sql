prompt --application/pages/page_00600
begin
--   Manifest
--     PAGE: 00600
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page(
 p_id=>600
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'JMR'
,p_alias=>'JMR1'
,p_step_title=>'JMR'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.2.8/es6-promise.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js'))
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(".allownumericwithdecimal").on("keypress keyup blur",function (event) {',
'            //this.value = this.value.replace(/[^0-9\.]/g,'''');',
'     $(this).val($(this).val().replace(/[^0-9\.]/g,''''));',
'            if ((event.which != 46 || $(this).val().indexOf(''.'') != -1) && (event.which < 48 || event.which > 57)) {',
'                event.preventDefault();',
'            }',
'      var text = $(this).val();',
'    if ((text.indexOf(''.'') != -1) &&',
'        (text.substring(text.indexOf(''.'')).length > 4) &&',
'        (event.which != 0 && event.which != 8) &&',
'        ($(this)[0].selectionStart >= text.length - 4)) {',
'        event.preventDefault();',
'        }',
'        });',
'',
'$(".addzero").on("keypress keyup blur",function (event) {',
'         var text1 = $(this).val();',
'         if (text1 == ''.''){',
'             $(this).val(''0.00'');',
'',
'         }',
'       });',
'',
'',
''))
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#rgn_brdr.t-Region {',
'    border-color: black;',
'}',
'',
'',
'span#P27_MAIN_IMPORT_CUR_KVAH_DISPLAY{',
'  ',
'    BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'span#P27_MAIN_IMP_CURR_READ_DISPLAY {',
'    BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'',
'span#P27_MAIN_EXP_CURR_READ_DISPLAY {',
'    BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'span#P27_MAIN_EXPORT_CUR_KVAH_DISPLAY {',
'    BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'span#P27_CHECK_IMPORT_CUR_KVAH_DISPLAY {',
'        BACKGROUND-COLOR: #7070708a !important;',
'',
'}',
'',
'',
'span#P27_CHECK_IMP_CURR_READ_DISPLAY {',
'        BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'',
'span#P27_CHECK_EXPORT_CUR_KVAH_DISPLAY {',
'        BACKGROUND-COLOR: #7070708a !important;',
'}',
'',
'',
'span#P27_CHECK_EXP_CURR_READ_DISPLAY {',
'        BACKGROUND-COLOR: #7070708a !important;',
'}',
''))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230530182928'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106914758560265577)
,p_plug_name=>'Print KILLA'
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>100
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'v_header                        VARCHAR2(5000);',
'v_body                          VARCHAR2(30000);',
'v_footer                        VARCHAR2(5000);',
'NU_MAIN_EXP_PRV_READING         NUMBER;',
'NU_MAIN_EXP_CUR_READING         NUMBER;',
'NU_MAIN_EXP_DIFFERNCE           NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_EXP_NET_UNIT            NUMBER;',
'NU_MAIN_IMP_PRV_READING         NUMBER;',
'NU_MAIN_IMP_CUR_READING         NUMBER;',
'NU_MAIN_IMP_DIFFERNCE           NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_IMP_NET_UNIT            NUMBER;',
'NU_MAIN_NET_EXP_UNIT            NUMBER;',
'NU_CHK_EXP_PRV_READING          NUMBER;',
'NU_CHK_EXP_CUR_READING          NUMBER;',
'NU_CHK_EXP_DIFFERNCE            NUMBER;',
'NU_CHK_EXP_TOTAL_UNIT           NUMBER;',
'NU_CHK_EXP_NET_UNIT             NUMBER;',
'NU_CHK_IMP_PRV_READING          NUMBER;',
'NU_CHK_IMP_CUR_READING          NUMBER;',
'NU_CHK_IMP_DIFFERNCE            NUMBER;',
'NU_CHK_IMP_TOTAL_UNIT           NUMBER;',
'NU_CHK_NET_EXP_UNIT             NUMBER;',
'NU_MAIN_EXP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_CUR_KVAH_READ       NUMBER;',
'NU_MAIN_EXP_CUR_KVAH_READ       NUMBER;',
'NU_CHECK_IMP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_IMP_CUR_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_CUR_KVAH_READ      NUMBER;',
'NU_MAIN_EXP_DIFFERNCE_1         NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_EXP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_IMP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_DIFFERNCE_1         NUMBER;',
'NU_CHK_EXP_DIFFERNCE_1          NUMBER;',
'NU_CHK_IMP_DIFFERNCE_1          NUMBER;',
'PREV_DATE                       DATE;',
'AUTH_SIGN_COMP                  VARCHAR2(200);',
'AUTH_SIGN_PSPCL                 VARCHAR2(200);',
'AUTH_SIGN_PSPCL_1               VARCHAR2(200);',
'PLANT_CAPACITY                  VARCHAR2(200);',
'PLANT_LOCATION                  VARCHAR2(200);',
'COMMISSION_DATE                 DATE;',
'POWER_FACTOR                    NUMBER;                    ',
'CHK_POWER_FACTOR                NUMBER;',
'LOC_NAME                        VARCHAR2(200);',
'PREV_TIME                       VARCHAR2(20);',
'AUTH_NAME                       varchar2(200);',
'AUTH_DES                        VARCHAR2(200);    ',
'AUTH_NAME_PSPCL                 VARCHAR2(200);',
'AUTH_DES_PSPCL                  VARCHAR2(200);',
'AUTH_NAME_PSPCL1                VARCHAR2(200);',
'AUTH_DES_PSPCL1                 VARCHAR2(200);              ',
'',
'',
'',
'BEGIN',
'begin',
'select vc_location',
'into LOC_NAME ',
'from dt_energy_flow',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  NU_DOC_NO = :P600_CHECK_METER_LOC',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y'';',
'exception when others then null;',
'end;',
'',
'',
'BEGIN',
'',
'select VC_PLANT_CAPACITY ,',
'VC_LOCATION, ',
'VC_DATE_COMMISSION',
'',
'into ',
'PLANT_CAPACITY,',
'PLANT_LOCATION,',
'COMMISSION_DATE',
'from MST_PLANT ',
'where VC_COMP_CODE = :global_comp_code',
'and VC_PROJ_ID = :GLOBAL_PROJ_ID',
'AND NVL(CH_ACTIVE,''Y'') = ''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'BEGIN',
'',
'-- SELECT SUBSTR(DT_JMR_READING,1,10) ,SUBSTR(DT_JMR_READING,-5) INTO PREV_DATE ,PREV_TIME',
'-- FROM dt_jmr',
'-- WHERE ORG_ID = :GLOBAL_COMP_CODE',
'--   AND PRJ_ID = :GLOBAL_PROJ_ID',
'--   AND VC_PPA_NO = :P600_PPA_NO',
'--   AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P600_PPA_DATE,''DD-MM-YYYY''), -1), ''MM'')',
'--   AND DT_JMR_READING < :P600_JMR_READING_DATE',
'-- ORDER BY USR_ID_CREATE_DT DESC',
'-- fetch first 1 rows only;',
'-- EXCEPTION WHEN OTHERS THEN NULL;',
'SELECT SUBSTR(DT_JMR_READING, 1, 10) AS PREV_DATE, SUBSTR(DT_JMR_READING, -5) --AS PREV_TIME,to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'--,USR_ID_CREATE_DT',
'INTO PREV_DATE, PREV_TIME',
'FROM dt_jmr',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'  AND PRJ_ID = :GLOBAL_PROJ_ID',
'  AND VC_PPA_NO = :P600_PPA_NO',
'  AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P600_PPA_DATE, ''DD-MM-YYYY''), -1), ''MM'')',
' and to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'') < to_date(SUBSTR(to_date(:P600_JMR_READING_DATE, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'--   AND TO_TIMESTAMP(SUBSTR(DT_JMR_READING, 1, 10), ''DD-MM-YYYY'') < TO_TIMESTAMP(SUBSTR(:P600_JMR_READING_DATE, 1, 10), ''DD-MM-YYYY'')',
'ORDER BY USR_ID_CREATE_DT DESC',
'fetch first 1 rows only;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'begin',
'SELECT',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'',
'',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- VC_AUTH_SIGN_COMP,',
'-- VC_AUTH_SIGN_PSPCL,',
'-- VC_AUTH_SIGN_PSPCL_1,',
'NU_MAIN_POWER_FACT,',
'NU_CHK_POWER_FACT,',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 2)',
'',
'INTO',
'',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- AUTH_SIGN_COMP,',
'-- AUTH_SIGN_PSPCL,',
'-- AUTH_SIGN_PSPCL_1,',
'POWER_FACTOR,',
'CHK_POWER_FACTOR,',
'AUTH_NAME,',
'AUTH_DES,',
'AUTH_NAME_PSPCL,',
'AUTH_DES_PSPCL,',
'AUTH_NAME_PSPCL1,',
'AUTH_DES_PSPCL1',
'',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P600_JMR_NO',
'AND   DT_JMR_DATE = :P600_JMR_DATE;',
'exception when no_data_found then null;',
'end;',
'',
'',
'v_header :=''<!DOCTYPE html>',
'<html>',
'    <head>',
'        <meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'    body{',
'     ',
'        border-collapse: collapse; ',
'        ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: small;',
'            line-height: 1.3;',
'            margin: auto;    ',
'    }',
'    .head{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'      ',
'    }',
'  .info{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 11px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px;',
'      ',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:100px;',
'        vertical-align: bottom;',
'        bottom: 0;',
'        border-collapse: collapse;',
'        ',
'    }',
'    .diff{',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'    .BR {',
'        border-right: 1px solid black;',
'        border-collapse: collapse;',
'    }',
'',
'',
'</style>',
'</head>',
'<body>',
'    <table class="contenct ">',
'',
'        <table class ="head">',
'            <tr>',
'            <td > <h2 align="center"> JOINT METER READINGS OF MHP ''||UPPER(:GLOBAL_PROJ_NAME)||''</h2></td>',
'            </tr>',
'        </table>',
'        ',
'        <table class ="info">',
'            <tr>',
'                <th class="th1" align="left">Name of Firm:</th>',
'                <td>''||:GLOBAL_COMP_NAME||''</td>',
'                <th class="th1" align="left">Date:</th>',
'                <td>''||:P600_JMR_DATE||''</td>',
'            </tr>',
'',
'            <tr>',
'                <th class="th1" align="left">Name of Plant:</th>',
'                <td>''||:GLOBAL_PROJ_NAME||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Capacity:</th>',
'                <td>2 X 400 KW = 800 KW</td>',
'                <th class="th1" align="left">Date Of Commissioning: </th>',
'                <td>''||COMMISSION_DATE||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Plant:</th>',
'                <td>''||PLANT_LOCATION||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Grid: </th>',
'                <td>''||LOC_NAME||''</td>',
'            </tr>',
'        ',
'        </table>',
'',
'        <table class ="head">',
'            <tr>',
'            <td> <h3 align="center" style="height:10px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
'            </tr>',
'        </table>',
'',
'    <table class = "main">',
'        <thead>',
'         <tr>',
'            <th rowspan = "2" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</th>',
'            <th align = "center" class="td2">Plant Side</th>',
'            <th align = "center" class="td2"> Grid Side</th>',
'        </tr>',
'        <tr>',
'            <th align = "center" class="td2">Main Meter</th>',
'            <th align = "center" class="td2">  Check Meter</th>',
'        </tr>',
'       ',
'        </thead>'';',
'',
'        for I in ( select VC_PARTICULARS,VC_MAIN_METER,VC_MAIN_CAL_TYPE,VC_MAIN_CAL,VC_CHK_METER,VC_CHK_CAL_TYPE,VC_CHK_CAL',
'       FROM MST_METER_DETAILS',
'       where org_id=:GLOBAL_COMP_CODE',
'       and prj_id = :GLOBAL_PROJ_ID) loop ',
'        ',
'         v_body := v_body ||''',
'',
'        <tr>',
'            <td class="td2">''||I.VC_PARTICULARS||''</td>',
'            <td class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td class="td2">''||I.VC_CHK_METER||''</td>',
'          ',
'        ',
'        ',
'        </tr>'';',
'        END LOOP; v_body := v_body || ''',
'       ',
'        ',
'',
'    </table>',
'',
'    <table class ="head">',
'        <tr>',
'        <td > <h3 align="center" style="height:10px;"> Plant Side Main Meter</h3></td>',
'        </tr>',
'    </table>',
'',
'<table class="meter">',
'    ',
'   <tr>     <th class ="BR"  > &nbsp;</th> ',
'            <th class ="td2" colspan = "2" rowspan = "2"> Previous Month Reading</th> ',
'            <th class ="td2" colspan = "2" rowspan = "2">Current Month Reading</th> ',
'            <th colspan="2" class ="td2" align="center">Time</th>',
'            <th  colspan="2" class ="td2" align="center">''||SUBSTR(:P600_JMR_READING_DATE,-5)||''</th>',
'    </tr>',
'',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'       ',
'        <th  rowspan="2" colspan="2" class ="BR" align="center">Diff Of Reading </th>',
'        <th  rowspan="2" colspan="2" class ="td2" align="center">Net KWH units (kwh diff X MF)</th>',
'        ',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td colspan = "2" align="center" class="td2">''||PREV_DATE||''</td>',
'        <td colspan = "2" align="center" class="td2">''||SUBSTR(:P600_JMR_READING_DATE,1,10)||''</td>',
'  ',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'',
'    <tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_CUR_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE_1,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
'    <tr>',
'         <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE_1,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
'    <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''|| (nvl(NU_MAIN_EXP_PRV_READING,0)    -  NVL(NU_MAIN_IMP_PRV_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_PRV_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_CUR_READING,0)    -  NVL(NU_MAIN_IMP_CUR_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE,0)   -     NVL(NU_MAIN_IMP_DIFFERNCE  ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE_1,0) -     NVL(NU_MAIN_IMP_DIFFERNCE_1,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_TOTAL_UNIT,0)   -    NVL(NU_MAIN_IMP_TOTAL_UNIT ,0)) ||   ''</td>',
'       ',
'       ',
'    </tr>',
'    <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||to_char(POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'    </tr>',
'',
'',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:10px;"> Grid Side Check Meter</h3></td>',
'    </tr>',
'</table>',
'',
'',
'<table class="meter">',
'     <tr> <th class ="BR"  > &nbsp;</th> ',
'        <th class ="td2" colspan = "2" rowspan = "2"> Previous Month Reading</th> ',
'        <th class ="td2" colspan = "2" rowspan = "2">Current Month Reading</th> ',
'        <th colspan="2" class ="td2" align="center">Time</th>',
'         <th  colspan="2" class ="td2" align="center">''||SUBSTR(:P600_JMR_READING_DATE,-5)||''</th>',
'    </tr>',
'',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th  rowspan="2" colspan="2" class ="BR" align="center">Diff Of Reading </th>',
'        <th  rowspan="3" colspan="2" class ="td2" align="center">Net KWH units (kwh diff X MF)</th>',
'        ',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td colspan = "2" align="center" class="td2">''||PREV_DATE||''</td>',
'        <td colspan = "2" align="center" class="td2">''||SUBSTR(:P600_JMR_READING_DATE,1,10)||''</td>',
'  ',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'',
'    <tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_PRV_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_CUR_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE   ,0)    ||       ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE_1 ,0)    ||     ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_TOTAL_UNIT   ,0)    ||       ''</td>',
'       ',
'       ',
'    </tr>',
'    <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_PRV_READING,  0)  ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_PRV_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_CUR_READING,   0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_CUR_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE,  0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE_1,0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_TOTAL_UNIT,  0) ||''</td>',
'       ',
'    </tr>',
'    <tr>',
'       <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING,0)    -       NVL(NU_CHK_IMP_PRV_READING ,0))   ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_PRV_KVAH_READ,0) -      NVL(NU_CHECK_IMP_PRV_KVAH_READ,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING ,0)    -      NVL(NU_CHK_IMP_CUR_READING,0))    ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_CUR_KVAH_READ,0)   -    NVL(NU_CHECK_IMP_CUR_KVAH_READ,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE,0 )   -         NVL(NU_CHK_IMP_DIFFERNCE,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE_1,0)  -         NVL(NU_CHK_IMP_DIFFERNCE_1,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_TOTAL_UNIT ,0)  -         NVL(NU_CHK_IMP_TOTAL_UNIT,0))   ||''</td>',
'',
'       ',
'    </tr>',
'    <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||to_char(CHK_POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'    </tr>',
'</table>',
'<table class="sign">',
'    <tr>',
'         <td align = "center" class = "sign1"> ''||AUTH_NAME||''<br>''||AUTH_DES||''<br> Authorised Signatory (''||:GLOBAL_COMP_PREFIX ||'')</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL||'' <br>''||AUTH_DES_PSPCL||''<br> Authorised Signatory (PSPCL)</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL1||'' <br>''||AUTH_DES_PSPCL1||''<br> Authorised Signatory (PSPCL)</td>',
'    </tr>',
'</table>',
'</table>',
'</body>',
'</html>',
''';',
'HTP.P (v_header || v_body);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GLOBAL_PROJ_ID'
,p_plug_display_when_cond2=>'0000.01.07.0001.00XR.00.1UYw3QadlF'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106915872344265589)
,p_plug_name=>'Print Killa'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>110
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_header               VARCHAR2(5000);',
'v_body                 VARCHAR2(30000);',
'v_footer               VARCHAR2(5000);',
'NU_MAIN_EXP_PRV_READING       NUMBER;',
'NU_MAIN_EXP_CUR_READING       NUMBER;',
'NU_MAIN_EXP_DIFFERNCE       NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT       NUMBER;',
'NU_MAIN_EXP_NET_UNIT       NUMBER;',
'NU_MAIN_IMP_PRV_READING       NUMBER;',
'NU_MAIN_IMP_CUR_READING       NUMBER;',
'NU_MAIN_IMP_DIFFERNCE       NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT       NUMBER;',
'NU_MAIN_IMP_NET_UNIT       NUMBER;',
'NU_MAIN_NET_EXP_UNIT       NUMBER;',
'NU_CHK_EXP_PRV_READING       NUMBER;',
'NU_CHK_EXP_CUR_READING       NUMBER;',
'NU_CHK_EXP_DIFFERNCE       NUMBER;',
'NU_CHK_EXP_TOTAL_UNIT       NUMBER;',
'NU_CHK_EXP_NET_UNIT       NUMBER;',
'NU_CHK_IMP_PRV_READING       NUMBER;',
'NU_CHK_IMP_CUR_READING       NUMBER;',
'NU_CHK_IMP_DIFFERNCE       NUMBER;',
'NU_CHK_IMP_TOTAL_UNIT       NUMBER;',
'NU_CHK_NET_EXP_UNIT       NUMBER;',
'NU_MAIN_EXP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_CUR_KVAH_READ       NUMBER;',
'NU_MAIN_EXP_CUR_KVAH_READ       NUMBER;',
'NU_CHECK_IMP_PRV_KVAH_READ       NUMBER;',
'NU_CHECK_EXP_PRV_KVAH_READ       NUMBER;',
'NU_CHECK_IMP_CUR_KVAH_READ       NUMBER;',
'NU_CHECK_EXP_CUR_KVAH_READ       NUMBER;',
'NU_MAIN_EXP_DIFFERNCE_1       NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT_1       NUMBER;',
'NU_MAIN_EXP_NET_UNIT_1       NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT_1       NUMBER;',
'NU_MAIN_IMP_NET_UNIT_1       NUMBER;',
'NU_MAIN_IMP_PRV_KVAH_READ    NUMBER;',
'NU_MAIN_IMP_DIFFERNCE_1      NUMBER;',
'NU_CHK_EXP_DIFFERNCE_1      NUMBER;',
'NU_CHK_IMP_DIFFERNCE_1      NUMBER;',
'',
'BEGIN',
'',
'begin',
'SELECT',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'',
'',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1',
'',
'INTO',
'',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P600_JMR_NO',
'AND   DT_JMR_DATE = :P600_JMR_DATE;',
'exception when no_data_found then null;',
'end;',
'',
'',
'v_header :=''<!DOCTYPE html>',
'<html>',
'    <head>',
'        <meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'    body{',
'     ',
'        border-collapse: collapse; ',
'        ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: small;',
'            line-height: 1.3;',
'            margin: auto;',
'          ',
'          ',
'        ',
'    }',
'    .head{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'      ',
'    }',
'',
'    .info{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 11px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px;',
'      ',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:100px;',
'        vertical-align: bottom;',
'        bottom: 0;',
'        border-collapse: collapse;',
'        ',
'    }',
'    .diff{',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'    .BR {',
'        border-right: 1px solid black;',
'        border-collapse: collapse;',
'    }',
'',
'',
'</style>',
'</head>',
'<body>',
'    <table class="contenct ">',
'',
'        <table class ="head">',
'            <tr>',
'            <td > <h2 align="center"> JOINT METER READINGS OF MHP</h2></td>',
'            </tr>',
'        </table>',
'        ',
'        <table class ="info">',
'            <tr>',
'                <th class="th1" align="left">Name of Firm:</th>',
'                <td>Kotla Renewables pvt ltd</td>',
'                <th class="th1" align="left">Date:</th>',
'                <td>5-May-2023</td>',
'            </tr>',
'',
'            <tr>',
'                <th class="th1" align="left">Name of Plant:</th>',
'                <td>MHP THUI</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Capacity:</th>',
'                <td>2 X 400 KW = 800 KW</td>',
'                <th class="th1" align="left">Date Of Commissioning: </th>',
'                <td>9-May-2023</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Plant:</th>',
'                <td>Ghaggar Branch canal on VPO thui,Post Nabha,Distt Patiala</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Grid: </th>',
'                <td>66 KV G/S/S Bharo, Distt Sangrur</td>',
'            </tr>',
'        ',
'        </table>',
'',
'        <table class ="head">',
'            <tr>',
'            <td> <h3 align="center" style="height:10px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
'            </tr>',
'        </table>',
'',
'    <table class = "main">',
'        <thead>',
'        <tr>',
'            <th rowspan = "2" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</th>',
'            <th align = "center" class="td2">Plant Side</th>',
'            <th align = "center" class="td2"> Grid Side</th>',
'        </tr>',
'        <tr>',
'            <th align = "center" class="td2">Main Meter</th>',
'            <th align = "center" class="td2">  Check Meter</th>',
'        </tr>',
'       ',
'        </thead>'';',
'',
'        for I in ( select VC_PARTICULARS,VC_MAIN_METER,VC_MAIN_CAL_TYPE,VC_MAIN_CAL,VC_CHK_METER,VC_CHK_CAL_TYPE,VC_CHK_CAL',
'       FROM MST_METER_DETAILS',
'       where org_id=:GLOBAL_COMP_CODE',
'       and prj_id = :GLOBAL_PROJ_ID) loop ',
'        ',
'         v_body := v_body ||''',
'',
'        <tr>',
'            <td class="td2">''||I.VC_PARTICULARS||''</td>',
'            <td class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td class="td2">''||I.VC_CHK_METER||''</td>',
'     ',
'        ',
'        ',
'        </tr>'';',
'        END LOOP; v_body := v_body || ''',
'       ',
'        ',
'',
'    </table>',
'',
'    <table class ="head">',
'        <tr>',
'        <td > <h3 align="center" style="height:10px;"> Plant Side Main Meter</h3></td>',
'        </tr>',
'    </table>',
'',
'<table class="meter">',
'    ',
'    ',
'   <tr> <th class ="BR"  > &nbsp;</th> ',
'        <th class ="td2" colspan = "2" rowspan = "2"> Previous Month Reading</th> ',
'        <th class ="td2" colspan = "2" rowspan = "2">Current Month Reading</th> ',
'',
'        <th colspan="2" class ="td2" align="center">Time</th>',
'         <th  colspan="2" class ="td2" align="center">2:00 PM</th>',
'    </tr>',
'',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'       ',
'        <th  rowspan="2" colspan="2" class ="BR" align="center">Diff Of Reading </th>',
'        <th  rowspan="2" colspan="2" class ="td2" align="center">Net KWH units (kwh diff X MF)</th>',
'        ',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td colspan = "2" align="center" class="td2">5-May-2023</td>',
'        <td colspan = "2" align="center" class="td2">15-May-2023</td>',
'  ',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'',
'    <tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_CUR_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE_1,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
'',
'',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE_1,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
' ',
' <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''|| (nvl(NU_MAIN_EXP_PRV_READING,0)    -  NVL(NU_MAIN_IMP_PRV_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_PRV_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_CUR_READING,0)    -  NVL(NU_MAIN_IMP_CUR_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE,0)   -     NVL(NU_MAIN_IMP_DIFFERNCE  ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE_1,0) -     NVL(NU_MAIN_IMP_DIFFERNCE_1,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_TOTAL_UNIT,0)   -    NVL(NU_MAIN_IMP_TOTAL_UNIT ,0)) ||   ''</td>',
'       ',
'    </tr>',
'',
'',
'        <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||NVL(:P600_POWER_FACTOR_EXPORT,0)||''</td>',
'    </tr>',
'',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:10px;"> Grid Side Check Meter</h3></td>',
'    </tr>',
'</table>',
'',
'',
'<table class="meter">',
'     ',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th colspan="2" align="center" class="BR" > Previous Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Current Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Time</th>',
'        <th  colspan="2" class ="td2" align="center">2:00 PM</th>',
'        ',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td colspan = "2" align="center" class="td2">5-May-2023</td>',
'       ',
'        <td colspan = "2" align="center" class="td2">15-May-2023</td>',
'        ',
'        <th  colspan = "2" class ="td2" align="center">Diff Of Reading </th>',
'        <th align="center" class ="BR" style = "vertical-align:center"> Net KWH units (kwh diff X MF)</th>',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'<tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_PRV_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_CUR_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE   ,0)    ||       ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE_1 ,0)    ||     ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_TOTAL_UNIT   ,0)    ||       ''</td>',
'       ',
'    </tr>',
' ',
'    ',
' ',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_PRV_READING,  0)  ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_PRV_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_CUR_READING,   0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_CUR_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE,  0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE_1,0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_TOTAL_UNIT,  0) ||''</td>',
'       ',
'    </tr>',
'',
'  <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING,0)    -       NVL(NU_CHK_IMP_PRV_READING ,0))   ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_PRV_KVAH_READ,0) -      NVL(NU_CHECK_IMP_PRV_KVAH_READ,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING ,0)    -      NVL(NU_CHK_IMP_CUR_READING,0))    ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_CUR_KVAH_READ,0)   -    NVL(NU_CHECK_IMP_CUR_KVAH_READ,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE,0 )   -         NVL(NU_CHK_IMP_DIFFERNCE,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE_1,0)  -         NVL(NU_CHK_IMP_DIFFERNCE_1,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_TOTAL_UNIT ,0)  -         NVL(NU_CHK_IMP_TOTAL_UNIT,0))   ||''</td>',
'',
'       ',
'       ',
'    </tr>',
'',
'   ',
'    <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff" > <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||NVL(:P600_CHK_POWER_FACTOR_EXPORT,0)||''</td>',
'    </tr>',
'',
'</table>',
'<table class="sign">',
'    <tr>',
'        <td align = "center" class = "sign1"> ER Rampal<br> Authorised Signatory (KRPL)</td>',
'        <td align = "center"  class = "sign1"> DS subtableision Nabha <br> Authorised Signatory (PSPCL)</td>',
'        <td align = "center"  class = "sign1"> DS subtableision Nabha <br> Authorised Signatory (FSPCL)</td>',
'    </tr>',
'</table>',
'</table>',
'</body>',
'</html>',
''';',
'HTP.P (v_header || v_body);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(106915983106265590)
,p_plug_name=>'Print Daudhar'
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>90
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'v_header                        VARCHAR2(5000);',
'v_body                          VARCHAR2(30000);',
'v_footer                        VARCHAR2(5000);',
'NU_MAIN_EXP_PRV_READING         NUMBER;',
'NU_MAIN_EXP_CUR_READING         NUMBER;',
'NU_MAIN_EXP_DIFFERNCE           NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_EXP_NET_UNIT            NUMBER;',
'NU_MAIN_IMP_PRV_READING         NUMBER;',
'NU_MAIN_IMP_CUR_READING         NUMBER;',
'NU_MAIN_IMP_DIFFERNCE           NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_IMP_NET_UNIT            NUMBER;',
'NU_MAIN_NET_EXP_UNIT            NUMBER;',
'NU_CHK_EXP_PRV_READING          NUMBER;',
'NU_CHK_EXP_CUR_READING          NUMBER;',
'NU_CHK_EXP_DIFFERNCE            NUMBER;',
'NU_CHK_EXP_TOTAL_UNIT           NUMBER;',
'NU_CHK_EXP_NET_UNIT             NUMBER;',
'NU_CHK_IMP_PRV_READING          NUMBER;',
'NU_CHK_IMP_CUR_READING          NUMBER;',
'NU_CHK_IMP_DIFFERNCE            NUMBER;',
'NU_CHK_IMP_TOTAL_UNIT           NUMBER;',
'NU_CHK_NET_EXP_UNIT             NUMBER;',
'NU_MAIN_EXP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_CUR_KVAH_READ       NUMBER;',
'NU_MAIN_EXP_CUR_KVAH_READ       NUMBER;',
'NU_CHECK_IMP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_IMP_CUR_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_CUR_KVAH_READ      NUMBER;',
'NU_MAIN_EXP_DIFFERNCE_1         NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_EXP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_IMP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_DIFFERNCE_1         NUMBER;',
'NU_CHK_EXP_DIFFERNCE_1          NUMBER;',
'NU_CHK_IMP_DIFFERNCE_1          NUMBER;',
'PREV_DATE                       DATE;',
'AUTH_SIGN_COMP                  VARCHAR2(200);',
'AUTH_SIGN_PSPCL                 VARCHAR2(200);',
'AUTH_SIGN_PSPCL_1               VARCHAR2(200);',
'PLANT_CAPACITY                  VARCHAR2(200);',
'PLANT_LOCATION                  VARCHAR2(200);',
'COMMISSION_DATE                 DATE;',
'POWER_FACTOR                    NUMBER;                    ',
'CHK_POWER_FACTOR                NUMBER;',
'LOC_NAME                        VARCHAR2(200);',
'PREV_TIME                       VARCHAR2(20);',
'AUTH_NAME                       varchar2(200);',
'AUTH_DES                        VARCHAR2(200);    ',
'AUTH_NAME_PSPCL                 VARCHAR2(200);',
'AUTH_DES_PSPCL                  VARCHAR2(200);',
'AUTH_NAME_PSPCL1                VARCHAR2(200);',
'AUTH_DES_PSPCL1                 VARCHAR2(200);',
'',
'',
'',
'BEGIN',
'',
'begin',
'select vc_location',
'into LOC_NAME ',
'from dt_energy_flow',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  NU_DOC_NO = :P600_CHECK_METER_LOC',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y'';',
'exception when others then null;',
'end;',
'',
'BEGIN',
'',
'select VC_PLANT_CAPACITY ,',
'VC_LOCATION, ',
'VC_DATE_COMMISSION',
'',
'into ',
'PLANT_CAPACITY,',
'PLANT_LOCATION,',
'COMMISSION_DATE',
'from MST_PLANT ',
'where VC_COMP_CODE = :global_comp_code',
'and VC_PROJ_ID = :GLOBAL_PROJ_ID',
'AND NVL(CH_ACTIVE,''Y'') = ''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'BEGIN',
'',
'-- SELECT SUBSTR(DT_JMR_READING,1,10) ,SUBSTR(DT_JMR_READING,-5) INTO PREV_DATE ,PREV_TIME',
'-- FROM dt_jmr',
'-- WHERE ORG_ID = :GLOBAL_COMP_CODE',
'--   AND PRJ_ID = :GLOBAL_PROJ_ID',
'--   AND VC_PPA_NO = :P600_PPA_NO',
'--   AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P600_PPA_DATE,''DD-MM-YYYY''), -1), ''MM'')',
'--   AND DT_JMR_READING < TO_DATE(SUBSTR(:P600_JMR_READING_DATE,1,10),''DD-MM-YYYY'')',
'-- ORDER BY USR_ID_CREATE_DT DESC',
'-- fetch first 1 rows only;',
'-- EXCEPTION WHEN OTHERS THEN NULL;',
'',
'SELECT SUBSTR(DT_JMR_READING, 1, 10) AS PREV_DATE, SUBSTR(DT_JMR_READING, -5) --AS PREV_TIME,to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'--,USR_ID_CREATE_DT',
'INTO PREV_DATE, PREV_TIME',
'FROM dt_jmr',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'  AND PRJ_ID = :GLOBAL_PROJ_ID',
'  AND VC_PPA_NO = :P600_PPA_NO',
'  AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P600_PPA_DATE, ''DD-MM-YYYY''), -1), ''MM'')',
' and to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'') < to_date(SUBSTR(to_date(:P600_JMR_READING_DATE, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'ORDER BY USR_ID_CREATE_DT DESC',
'fetch first 1 rows only;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'',
'END;',
'',
'begin',
'SELECT',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'',
'',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- VC_AUTH_SIGN_COMP,',
'-- VC_AUTH_SIGN_PSPCL,',
'-- VC_AUTH_SIGN_PSPCL_1,',
'NU_MAIN_POWER_FACT,',
'NU_CHK_POWER_FACT,',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 2)',
'',
'INTO',
'',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- AUTH_SIGN_COMP,',
'-- AUTH_SIGN_PSPCL,',
'-- AUTH_SIGN_PSPCL_1,',
'POWER_FACTOR,',
'CHK_POWER_FACTOR,',
'AUTH_NAME,',
'AUTH_DES,',
'AUTH_NAME_PSPCL,',
'AUTH_DES_PSPCL,',
'AUTH_NAME_PSPCL1,',
'AUTH_DES_PSPCL1',
'',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P600_JMR_NO',
'AND   DT_JMR_DATE = :P600_JMR_DATE;',
'exception when no_data_found then null;',
'end;',
'',
'',
'v_header :=''<!DOCTYPE html>',
'<html>',
'    <head>',
'        <meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'    body{',
'     ',
'        border-collapse: collapse; ',
'        ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: small;',
'            line-height: 1.3;',
'            margin: auto;    ',
'    }',
'    .head{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'      ',
'    }',
'  .info{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 11px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px;',
'      ',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:100px;',
'        vertical-align: bottom;',
'        bottom: 0;',
'        border-collapse: collapse;',
'        ',
'    }',
'    .diff{',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'    .BR {',
'        border-right: 1px solid black;',
'        border-collapse: collapse;',
'    }',
'',
'',
'</style>',
'</head>',
'<body>',
'    <table class="contenct ">',
'',
'        <table class ="head">',
'            <tr>',
'            <td > <h2 align="center"> JOINT METER READINGS OF MHP ''||UPPER(:GLOBAL_PROJ_NAME)||''</h2></td>',
'            </tr>',
'        </table>',
'        ',
'        <table class ="info">',
'            <tr>',
'                <th class="th1" align="left">Name of Firm:</th>',
'                <td>''||:GLOBAL_COMP_NAME||''</td>',
'                <th class="th1" align="left">Date:</th>',
'                <td>''||:P600_JMR_DATE||''</td>',
'            </tr>',
'',
'            <tr>',
'                <th class="th1" align="left">Name of Plant:</th>',
'                <td>''||:GLOBAL_PROJ_NAME||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Capacity:</th>',
'                <td>2 X 400 KW = 800 KW</td>',
'                <th class="th1" align="left">Date Of Commissioning: </th>',
'                <td>''||COMMISSION_DATE||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Plant:</th>',
'                <td>''||PLANT_LOCATION||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Grid: </th>',
'                <td>''||LOC_NAME||''</td>',
'            </tr>',
'        ',
'        </table>',
'',
'        <table class ="head">',
'            <tr>',
'            <td> <h3 align="center" style="height:10px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
'            </tr>',
'        </table>',
'',
'    <table class = "main">',
'        <thead>',
'        <tr>',
'            <th rowspan = "2" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</th>',
'            <th align = "center" class="td2">Plant Side</th>',
'            <th align = "center" class="td2"> Grid Side</th>',
'        </tr>',
'        <tr>',
'            <th align = "center" class="td2">Main Meter</th>',
'            <th align = "center" class="td2">  Check Meter</th>',
'            <th colspan="2" align = "center" class="td2">Calculation</th>',
'        </tr>',
'        </thead>'';',
'',
'        for I in ( select VC_PARTICULARS,VC_MAIN_METER,VC_MAIN_CAL_TYPE,VC_MAIN_CAL,VC_CHK_METER,VC_CHK_CAL_TYPE,VC_CHK_CAL',
'       FROM MST_METER_DETAILS',
'       where org_id=:GLOBAL_COMP_CODE',
'       and prj_id = :GLOBAL_PROJ_ID) loop ',
'        ',
'         v_body := v_body ||''',
'',
'        <tr>',
'            <td class="td2">''||I.VC_PARTICULARS||''</td>',
'            <td class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td class="td2">''||I.VC_CHK_METER||''</td>',
'            <td class="td2">''||nvl(I.VC_MAIN_CAL_TYPE,I.VC_CHK_CAL_TYPE)||''</td>',
'            <td class="td2">''||nvl(I.VC_MAIN_CAL,I.VC_CHK_CAL)||''</td>',
'        ',
'        ',
'        </tr>'';',
'        END LOOP; v_body := v_body || ''',
'       ',
'        ',
'',
'    </table>',
'',
'    <table class ="head">',
'        <tr>',
'        <td > <h3 align="center" style="height:10px;"> Plant Side Main Meter</h3></td>',
'        </tr>',
'    </table>',
'',
'<table class="meter">',
'    ',
'    ',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th colspan="2" align="center" class="BR" > Previous Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Current Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Time</th>',
'        <th  colspan="2" class ="td2" align="center">2:00 PM</th>',
'        ',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2"> Time ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P600_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time ''||SUBSTR(:P600_JMR_READING_DATE,-5)||''</td>',
'        <th  colspan = "2" class ="td2" align="center">Diff Of Reading </th>',
'        <th align="center" class ="BR" style = "vertical-align:center"> Net KWH units (kwh diff X MF)</th>',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'',
'    <tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_PRV_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_CUR_READING,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_DIFFERNCE_1,0)||''</td>',
'        <td align = "right" class="td2">''||nvl(NU_MAIN_EXP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
'',
'',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_READING,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_DIFFERNCE_1,0)||''</td>',
'        <td align="right" class="td2">''||NVL(NU_MAIN_IMP_TOTAL_UNIT,0)||''</td>',
'       ',
'    </tr>',
' ',
' <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''|| (nvl(NU_MAIN_EXP_PRV_READING,0)    -  NVL(NU_MAIN_IMP_PRV_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_PRV_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_PRV_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_CUR_READING,0)    -  NVL(NU_MAIN_IMP_CUR_READING,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE,0)   -     NVL(NU_MAIN_IMP_DIFFERNCE  ,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_DIFFERNCE_1,0) -     NVL(NU_MAIN_IMP_DIFFERNCE_1,0)) ||   ''</td>',
'        <td align="right" class="td2">''|| (NVL(NU_MAIN_EXP_TOTAL_UNIT,0)   -    NVL(NU_MAIN_IMP_TOTAL_UNIT ,0)) ||   ''</td>',
'       ',
'    </tr>',
'',
'',
'        <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||to_char(POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'    </tr>',
'',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:10px;"> Grid Side Check Meter</h3></td>',
'    </tr>',
'</table>',
'',
'',
'<table class="meter">',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th colspan="2" align="center" class="BR" > Previous Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Current Month Reading</th>',
'        <th colspan="2" rowspan ="2"class ="BR" align="center">Diff Of Reading </th>',
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net KWH units (kwh diff X MF)</th>',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2">Time ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P600_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time ''||SUBSTR(:P600_JMR_READING_DATE,-5)||''</td>',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kwh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'       ',
'    </tr>',
'',
'<tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_PRV_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_CUR_READING    ,0)    ||        ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0)    ||      ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE   ,0)    ||       ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_DIFFERNCE_1 ,0)    ||     ''</td>',
'        <td align = "right" class="td2">''||NVL(NU_CHK_EXP_TOTAL_UNIT   ,0)    ||       ''</td>',
'       ',
'    </tr>',
' ',
'    ',
' ',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_PRV_READING,  0)  ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_PRV_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_CUR_READING,   0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHECK_IMP_CUR_KVAH_READ, 0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE,  0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_DIFFERNCE_1,0) ||''</td>',
'        <td align="right" class="td2">''||NVL(NU_CHK_IMP_TOTAL_UNIT,  0) ||''</td>',
'       ',
'    </tr>',
'',
'  <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING,0)    -       NVL(NU_CHK_IMP_PRV_READING ,0))   ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_PRV_KVAH_READ,0) -      NVL(NU_CHECK_IMP_PRV_KVAH_READ,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_CUR_READING ,0)    -      NVL(NU_CHK_IMP_CUR_READING,0))    ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHECK_EXP_CUR_KVAH_READ,0)   -    NVL(NU_CHECK_IMP_CUR_KVAH_READ,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE,0 )   -         NVL(NU_CHK_IMP_DIFFERNCE,0))  ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_DIFFERNCE_1,0)  -         NVL(NU_CHK_IMP_DIFFERNCE_1,0)) ||''</td>',
'        <td align="right" class="td2">''||(NVL(NU_CHK_EXP_TOTAL_UNIT ,0)  -         NVL(NU_CHK_IMP_TOTAL_UNIT,0))   ||''</td>',
'',
'       ',
'       ',
'    </tr>',
'',
'   ',
'    <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff" > <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "right"style = "width:18.2%">''||to_char(CHK_POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'    </tr>',
'',
'</table>',
'<table class="sign">',
'    <tr>',
'         <td align = "center" class = "sign1"> ''||AUTH_NAME||''<br>''||AUTH_DES||''<br> Authorised Signatory (''||:GLOBAL_COMP_PREFIX ||'') </td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL||'' <br>''||AUTH_DES_PSPCL||''<br> Authorised Signatory (PSPCL)</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL1||'' <br>''||AUTH_DES_PSPCL1||''<br> Authorised Signatory (PSPCL)</td>',
'    </tr>',
'</table>',
'</table>',
'</body>',
'</html>',
''';',
'HTP.P (v_header || v_body);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_display_when_condition=>'GLOBAL_PROJ_ID'
,p_plug_display_when_cond2=>'0000.01.0B.0001.00XR.00.1UYw3QcLd3'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(123121321309067536)
,p_plug_name=>'Print Thui NIdampur'
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16317789100492177)
,p_plug_display_sequence=>80
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'',
'',
'v_header                        VARCHAR2(5000);',
'v_body                          VARCHAR2(30000);',
'v_footer                        VARCHAR2(5000);',
'NU_MAIN_EXP_PRV_READING         NUMBER;',
'NU_MAIN_EXP_CUR_READING         NUMBER;',
'NU_MAIN_EXP_DIFFERNCE           NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_EXP_NET_UNIT            NUMBER;',
'NU_MAIN_IMP_PRV_READING         NUMBER;',
'NU_MAIN_IMP_CUR_READING         NUMBER;',
'NU_MAIN_IMP_DIFFERNCE           NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT          NUMBER;',
'NU_MAIN_IMP_NET_UNIT            NUMBER;',
'NU_MAIN_NET_EXP_UNIT            NUMBER;',
'NU_CHK_EXP_PRV_READING          NUMBER;',
'NU_CHK_EXP_CUR_READING          NUMBER;',
'NU_CHK_EXP_DIFFERNCE            NUMBER;',
'NU_CHK_EXP_TOTAL_UNIT           NUMBER;',
'NU_CHK_EXP_NET_UNIT             NUMBER;',
'NU_CHK_IMP_PRV_READING          NUMBER;',
'NU_CHK_IMP_CUR_READING          NUMBER;',
'NU_CHK_IMP_DIFFERNCE            NUMBER;',
'NU_CHK_IMP_TOTAL_UNIT           NUMBER;',
'NU_CHK_NET_EXP_UNIT             NUMBER;',
'NU_MAIN_EXP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_CUR_KVAH_READ       NUMBER;',
'NU_MAIN_EXP_CUR_KVAH_READ       NUMBER;',
'NU_CHECK_IMP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_PRV_KVAH_READ      NUMBER;',
'NU_CHECK_IMP_CUR_KVAH_READ      NUMBER;',
'NU_CHECK_EXP_CUR_KVAH_READ      NUMBER;',
'NU_MAIN_EXP_DIFFERNCE_1         NUMBER;',
'NU_MAIN_EXP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_EXP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_TOTAL_UNIT_1        NUMBER;',
'NU_MAIN_IMP_NET_UNIT_1          NUMBER;',
'NU_MAIN_IMP_PRV_KVAH_READ       NUMBER;',
'NU_MAIN_IMP_DIFFERNCE_1         NUMBER;',
'NU_CHK_EXP_DIFFERNCE_1          NUMBER;',
'NU_CHK_IMP_DIFFERNCE_1          NUMBER;',
'PREV_DATE                       DATE;',
'AUTH_SIGN_COMP                  VARCHAR2(200);',
'AUTH_SIGN_PSPCL                 VARCHAR2(200);',
'AUTH_SIGN_PSPCL_1               VARCHAR2(200);',
'PLANT_CAPACITY                  VARCHAR2(200);',
'PLANT_LOCATION                  VARCHAR2(200);',
'COMMISSION_DATE                 DATE;',
'POWER_FACTOR                    NUMBER;                    ',
'CHK_POWER_FACTOR                NUMBER;',
'LOC_NAME                        VARCHAR2(200);',
'PREV_TIME                       VARCHAR2(20);',
'AUTH_NAME                       varchar2(200);',
'AUTH_DES                        VARCHAR2(200);    ',
'AUTH_NAME_PSPCL                 VARCHAR2(200);',
'AUTH_DES_PSPCL                  VARCHAR2(200);',
'AUTH_NAME_PSPCL1                VARCHAR2(200);',
'AUTH_DES_PSPCL1                 VARCHAR2(200);',
'BEGIN',
'',
'begin',
'select vc_location',
'into LOC_NAME ',
'from dt_energy_flow',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  NU_DOC_NO = :P27_CHECK_METER_LOC',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y'';',
'exception when others then null;',
'end;',
'',
'BEGIN',
'',
'',
'select VC_PLANT_CAPACITY ,',
'VC_LOCATION, ',
'VC_DATE_COMMISSION',
'',
'into ',
'PLANT_CAPACITY,',
'PLANT_LOCATION,',
'COMMISSION_DATE',
'from MST_PLANT ',
'where VC_COMP_CODE = :global_comp_code',
'and VC_PROJ_ID = :GLOBAL_PROJ_ID',
'AND NVL(CH_ACTIVE,''Y'') = ''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'BEGIN',
'',
'-- SELECT SUBSTR(DT_JMR_READING,1,10) ,SUBSTR(DT_JMR_READING,-5) INTO PREV_DATE ,PREV_TIME',
'-- FROM dt_jmr',
'-- WHERE ORG_ID = :GLOBAL_COMP_CODE',
'--   AND PRJ_ID = :GLOBAL_PROJ_ID',
'--   AND VC_PPA_NO = :P27_PPA_NO',
'--   AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P27_PPA_DATE,''DD-MM-YYYY''), -1), ''MM'')',
'--   AND DT_JMR_READING < :P27_JMR_READING_DATE',
'-- ORDER BY USR_ID_CREATE_DT DESC',
'-- fetch first 1 rows only;',
'-- EXCEPTION WHEN OTHERS THEN NULL;',
'',
'SELECT SUBSTR(DT_JMR_READING, 1, 10) AS PREV_DATE, SUBSTR(DT_JMR_READING, -5) --AS PREV_TIME,to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'--,USR_ID_CREATE_DT',
'INTO PREV_DATE, PREV_TIME',
'FROM dt_jmr',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'  AND PRJ_ID = :GLOBAL_PROJ_ID',
'  AND VC_PPA_NO = :P27_PPA_NO',
'  AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P27_PPA_DATE, ''DD-MM-YYYY''), -1), ''MM'')',
' and to_date(SUBSTR(to_date(DT_JMR_READING, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'') < to_date(SUBSTR(to_date(:P27_JMR_READING_DATE, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'')',
'--   AND TO_TIMESTAMP(SUBSTR(DT_JMR_READING, 1, 10), ''DD-MM-YYYY'') < TO_TIMESTAMP(SUBSTR(:P27_JMR_READING_DATE, 1, 10), ''DD-MM-YYYY'')',
'ORDER BY USR_ID_CREATE_DT DESC',
'fetch first 1 rows only;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'begin',
'SELECT',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'',
'',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- VC_AUTH_SIGN_COMP,',
'-- VC_AUTH_SIGN_PSPCL,',
'-- VC_AUTH_SIGN_PSPCL_1,',
'',
'NU_MAIN_POWER_FACT,',
'NU_CHK_POWER_FACT,',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_COMP, ''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL,''[^,]+'', 1, 2),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 1),',
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 2)',
'',
'',
'INTO',
'',
'NU_MAIN_EXP_PRV_READING,',
'NU_MAIN_EXP_CUR_READING,',
'NU_MAIN_EXP_DIFFERNCE,',
'NU_MAIN_EXP_TOTAL_UNIT,',
'NU_MAIN_EXP_NET_UNIT,',
'NU_MAIN_IMP_PRV_READING,',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_IMP_DIFFERNCE,',
'NU_MAIN_IMP_TOTAL_UNIT,',
'NU_MAIN_IMP_NET_UNIT,',
'NU_MAIN_NET_EXP_UNIT,',
'NU_CHK_EXP_PRV_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_EXP_DIFFERNCE,',
'NU_CHK_EXP_TOTAL_UNIT,',
'NU_CHK_EXP_NET_UNIT,',
'NU_CHK_IMP_PRV_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHK_IMP_DIFFERNCE,',
'NU_CHK_IMP_TOTAL_UNIT,',
'NU_CHK_NET_EXP_UNIT,',
'NU_MAIN_EXP_PRV_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,',
'NU_CHECK_EXP_PRV_KVAH_READ,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_NET_UNIT_1,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_NET_UNIT_1,',
'NU_MAIN_IMP_PRV_KVAH_READ,',
'NU_CHK_EXP_DIFFERNCE_1,',
'NU_MAIN_IMP_DIFFERNCE_1,',
'NU_CHK_IMP_DIFFERNCE_1,',
'-- AUTH_SIGN_COMP,',
'-- AUTH_SIGN_PSPCL,',
'-- AUTH_SIGN_PSPCL_1,',
'POWER_FACTOR,',
'CHK_POWER_FACTOR,',
'AUTH_NAME,',
'AUTH_DES,',
'AUTH_NAME_PSPCL,',
'AUTH_DES_PSPCL,',
'AUTH_NAME_PSPCL1,',
'AUTH_DES_PSPCL1',
'',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P27_JMR_NO',
'AND   DT_JMR_DATE = :P27_JMR_DATE;',
'exception when no_data_found then null;',
'end;',
'',
'',
'v_header :=''<!DOCTYPE html>',
'<html>',
'    <head>',
'       ',
'<style>',
' body{',
'     ',
'        border-collapse: collapse; ',
'       ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: small;',
'            line-height: 1.3;',
'            margin: auto;',
'          ',
'          ',
'        ',
'    }',
'   ',
'    .head{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'      ',
'    }',
'',
'    .info{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 11px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px;',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        ',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 10px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:100px;',
'        vertical-align: bottom;',
'        bottom: 0;',
'        border-collapse: collapse;',
'        ',
'    }',
'    .diff{',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'    .BR {',
'        border-right: 1px solid black;',
'        border-collapse: collapse;',
'    }',
'',
'',
'</style>',
'</head>',
''';',
'v_body :=''',
'<body>',
'    <table class="contenct ">',
'',
'        <table class ="head">',
'            <tr>',
'            <td > <h2 align="center"> JOINT METER READINGS OF MHP ''||UPPER(:GLOBAL_PROJ_NAME)||''</h2></td>',
'            </tr>',
'        </table>',
'        ',
'        <table class ="info">',
'            <tr>',
'                <th class="th1" align="left">Name of Firm:</th>',
'                <td>''||:GLOBAL_COMP_NAME||''</td>',
'                <th class="th1" align="left">Date:</th>',
'                <td>''||:P27_JMR_DATE||''</td>',
'            </tr>',
'',
'            <tr>',
'                <th class="th1" align="left">Name of Plant:</th>',
'                <td>''||:GLOBAL_PROJ_NAME||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Capacity:</th>',
'                <td>''||PLANT_CAPACITY||''</td>',
'                <th class="th1" align="left">Date Of Commissioning: </th>',
'                <td>''||COMMISSION_DATE||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Plant:</th>',
'                <td>''||PLANT_LOCATION||''</td>',
'            </tr>',
'            <tr>',
'                <th class="th1" align="left">Location Of Grid: </th>',
'                <td>''||LOC_NAME||''</td>',
'            </tr>',
'        ',
'        </table>',
'',
'        <table class ="head">',
'            <tr>',
'            <td> <h3 align="center" style="height:10px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
'            </tr>',
'        </table>',
'',
'',
'    <table class = "main">',
'        <thead>',
'        <tr>',
'            <th class = "th2" align="center" > Particulars</th>',
'            <th class = "th2" align="center"> Main Meter</th>',
'            <th colspan="2"align="center"> Calculation</th>',
'            ',
'            <th class = "th2" align="center"> Check Meter</th>',
'            <th colspan="2" align="center"> Calculation</th>',
'           ',
'            ',
'        </tr>',
'        </thead>'';',
'',
'       for I in ( select VC_PARTICULARS,VC_MAIN_METER,VC_MAIN_CAL_TYPE,VC_MAIN_CAL,VC_CHK_METER,VC_CHK_CAL_TYPE,VC_CHK_CAL',
'       FROM MST_METER_DETAILS',
'       where org_id=:GLOBAL_COMP_CODE',
'       and prj_id = :GLOBAL_PROJ_ID) loop ',
'        ',
'         v_body := v_body ||''',
'',
'        <tr>',
'            <td class="td2">''||I.VC_PARTICULARS||''</td>',
'            <td class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td class="td2">''||I.VC_MAIN_CAL_TYPE||''</td>',
'            <td class="td2">''||I.VC_MAIN_CAL||''</td>',
'            <td class="td2">''||I.VC_CHK_METER||''</td>',
'            <td class="td2">''||I.VC_CHK_CAL_TYPE||''</td>',
'            <td class="td2">''||I.VC_CHK_CAL||''</td>',
'        ',
'        ',
'        </tr>'';',
'        END LOOP;v_body := v_body || ''',
'',
'      ',
'',
'        ',
'',
'',
'    </table>'';',
'        v_body := v_body ||''',
'',
'',
'    <table class ="head">',
'        <tr>',
'        <td > <h3 align="center" style="height:10px;"> Plant Side Main Meter</h3></td>',
'        </tr>',
'    </table>',
'',
'<table class="meter">',
'    ',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th colspan="2" align="center" class="BR" > Previous Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Current Month Reading</th>',
'        <th colspan="2" rowspan ="2"class ="BR" align="center">Diff. Of Reading </th>',
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh units (kWh diff X MF)</th>',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2">Time: ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P27_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time: ''||SUBSTR(:P27_JMR_READING_DATE,-5)||''</td>',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'    ',
'       ',
'    </tr>',
'<tr>',
'        <td align = "Left"  class="td2">Export To PSPCL</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_PRV_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_CUR_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_IMP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_DIFFERNCE,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_DIFFERNCE_1,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_TOTAL_UNIT,0),''999G999G999G999G990D00'')||''</td>',
'       ',
'    </tr>',
'',
'',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_PRV_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_CUR_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_DIFFERNCE,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_DIFFERNCE_1,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center"class="td2">''||to_char(NVL(NU_MAIN_IMP_TOTAL_UNIT,0),''999G999G999G999G990D00'')||''</td>',
'       ',
'    </tr>',
' ',
' <tr>',
'        <td align="Left"  class="td2">Net Export</td>',
'        <td align="center" class="td2">''||to_char (nvl(NU_MAIN_EXP_PRV_READING,0)    -  NVL(NU_MAIN_IMP_PRV_READING,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_PRV_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_PRV_KVAH_READ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_CUR_READING,0)    -  NVL(NU_MAIN_IMP_CUR_READING,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_IMP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_DIFFERNCE,0)   -     NVL(NU_MAIN_IMP_DIFFERNCE  ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_DIFFERNCE_1,0) -     NVL(NU_MAIN_IMP_DIFFERNCE_1,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_TOTAL_UNIT,0)   -    NVL(NU_MAIN_IMP_TOTAL_UNIT ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'       ',
'    </tr>',
'',
'',
'        <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "center"style = "width:18.2%">''|| to_char(nvl(POWER_FACTOR,0.00),''999G999G999G999G990D00'') ||''</td>',
'    </tr>',
'',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:10px;"> Grid Side Check Meter</h3></td>',
'    </tr>',
'</table>',
'',
'',
'<table class="meter">',
'    <tr>',
'        <th  align="right" class ="BR"> &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</th>',
'        <th colspan="2" align="center" class="BR" > Previous Month Reading</th>',
'        <th colspan="2" class ="BR" align="center">Current Month Reading</th>',
'        <th colspan="2" rowspan ="2"class ="BR" align="center">Diff. Of Reading </th>',
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh units (kWh diff X MF)</th>',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2">Time: ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P27_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time: ''||SUBSTR(:P27_JMR_READING_DATE,-5)||''</td>',
'     ',
'    </tr>',
'',
'    <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'        <td align="center" class="td2"><b>kWh </b></td>',
'        <td align="center" class="td2"><b>kVAh</b> </td>',
'       ',
'    </tr>',
'',
'<tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_PRV_READING    ,0)  ,''999G999G999G999G990D00'')              ||        ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0),''999G999G999G999G990D00'')              ||      ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_CUR_READING    ,0)  ,''999G999G999G999G990D00'')              ||        ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0),''999G999G999G999G990D00'')              ||      ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_DIFFERNCE   ,0)     ,''999G999G999G999G990D00'')              ||       ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_DIFFERNCE_1 ,0)     ,''999G999G999G999G990D00'')              ||     ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_TOTAL_UNIT   ,0)    ,''999G999G999G999G990D00'')              ||       ''</td>',
'       ',
'    </tr>',
' ',
'    ',
' ',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHK_IMP_PRV_READING,  0)     ,''999G999G999G999G990D00'')      ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHECK_IMP_PRV_KVAH_READ, 0)  ,''999G999G999G999G990D00'')      ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHK_IMP_CUR_READING,   0)    ,''999G999G999G999G990D00'')  ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHECK_IMP_CUR_KVAH_READ, 0)  ,''999G999G999G999G990D00'')      ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHK_IMP_DIFFERNCE,  0)       ,''999G999G999G999G990D00'')  ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHK_IMP_DIFFERNCE_1,0)       ,''999G999G999G999G990D00'')  ||''</td>',
'        <td align="center" class="td2">''||to_char(NVL(NU_CHK_IMP_TOTAL_UNIT,  0)      ,''999G999G999G999G990D00'')  ||''</td>',
'       ',
'    </tr>',
'',
'  <tr>',
'        <td align="Left"  class="td2">Net Export</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_CUR_READING,0)    -  NVL(NU_CHK_IMP_PRV_READING ,0))     ,''999G999G999G999G990D00'')   ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHECK_EXP_PRV_KVAH_READ,0) - NVL(NU_CHECK_IMP_PRV_KVAH_READ,0))  ,''999G999G999G999G990D00'')      ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_CUR_READING ,0)    - NVL(NU_CHK_IMP_CUR_READING,0))      ,''999G999G999G999G990D00'')   ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHECK_EXP_CUR_KVAH_READ,0) - NVL(NU_CHECK_IMP_CUR_KVAH_READ,0))  ,''999G999G999G999G990D00'')      ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_DIFFERNCE,0 )   -    NVL(NU_CHK_IMP_DIFFERNCE,0))        ,''999G999G999G999G990D00'')  ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_DIFFERNCE_1,0)  -    NVL(NU_CHK_IMP_DIFFERNCE_1,0))      ,''999G999G999G999G990D00'')  ||''</td>',
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_TOTAL_UNIT ,0)  -    NVL(NU_CHK_IMP_TOTAL_UNIT,0))       ,''999G999G999G999G990D00'')  ||''</td>',
'',
'       ',
'       ',
'    </tr>',
'',
'   ',
'    <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff" > <b>= Diff. Of Reading (Export kWh/Diff. of Reading (Export kVAh))</b></td>',
'        <td align = "center" style = "width:18.2%">''||to_char(nvl(CHK_POWER_FACTOR,0),''999G999G999G999G990D00'')||''</td>',
'    </tr>',
'',
'</table>',
'<table class="sign">',
'    <tr>',
'        <td align = "center" class = "sign1"> ''||AUTH_NAME||''<br>''||AUTH_DES||''<br> Authorised Signatory (''||:GLOBAL_COMP_PREFIX ||'')</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL||'' <br>''||AUTH_DES_PSPCL||''<br> Authorised Signatory (PSPCL)</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL1||'' <br>''||AUTH_DES_PSPCL1||''<br> Authorised Signatory (PSPCL)</td>',
'    </tr>',
'</table>',
'</table>',
'</body>',
'</html>',
''';',
'HTP.P (v_header || v_body);',
'END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'VALUE_OF_ITEM_IN_CONDITION_IN_COLON_DELIMITED_LIST'
,p_plug_display_when_condition=>'GLOBAL_PROJ_ID'
,p_plug_display_when_cond2=>'0000.01.0B.0001.00XR.00.1UYw3QbyZr:0000.01.0B.0001.00XR.00.1UYw3Qc59a'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264776066441637861)
,p_plug_name=>'Joint Meter Reading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264868660876255212)
,p_plug_name=>'Display Selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264868815434255213)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P600_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(264868883015255214)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P600_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705258668441513)
,p_plug_name=>'Main Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(264868883015255214)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705429372441514)
,p_plug_name=>'Main Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(264868883015255214)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705553089441515)
,p_plug_name=>'Main Net '
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(264868883015255214)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(296048535233961313)
,p_plug_name=>'main net reading'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(264868883015255214)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265157208344998921)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P600_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705653471441516)
,p_plug_name=>'Check Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(265157208344998921)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705682471441517)
,p_plug_name=>'Check Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(265157208344998921)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265705778058441518)
,p_plug_name=>'check Net'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(265157208344998921)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(296049897146961327)
,p_plug_name=>'check net reading'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(265157208344998921)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265233764789755141)
,p_plug_name=>'Attachment'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>70
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(265234003822755143)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(265233764789755141)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'       dbms_lob.getlength(BLOB001) BLOB1,',
'       C001,',
'       C002,',
'       C003,',
'       '''' DELETE1,',
'        dbms_lob.getlength(BLOB001)  as DOWNLOAD',
'      ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''FILE_UPLOAD''',
';',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Attachment report'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(265234060384755144)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>283586927772017469
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42382797136004043)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42383165486004044)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42383581781004045)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42383982631004045)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42384340506004046)
,p_db_column_name=>'DELETE1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#C003#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P600_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42384746347004046)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download'
,p_column_link=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GETFILE:&DEBUG.::FILE_ID:#C003#'
,p_column_linktext=>'<span aria-label="download"><span class="fa fa-download" aria-hidden="true" title="download"></span></span>'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(265310884496451853)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'41218'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42330410465003958)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(264868815434255213)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:600::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42330825088003958)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(264868815434255213)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P27_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P600_REQ_NO.,&P600_JMR_NO.,&P600_JMR_DATE.,JMR,&P600_LAST_PAGE.,&P600_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42331141497003959)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(264868815434255213)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P600_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42331620314003959)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(264868815434255213)
,p_button_name=>'Print'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_image_alt=>'Print'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42382084178004041)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(265233764789755141)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P600_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42332009854003960)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(264868815434255213)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P600_MODE'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42461999635004150)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:27::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42332348990003961)
,p_name=>'P600_PERIOD_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Period From'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42332762910003962)
,p_name=>'P600_FROM_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_item_default=>'00:00'
,p_prompt=>'From Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42333164080003963)
,p_name=>'P600_PERIOD_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Period To'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42333546537003963)
,p_name=>'P600_TO_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_item_default=>'00:00'
,p_prompt=>'To Time'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42333950543003964)
,p_name=>'P600_JMR_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42334415973003964)
,p_name=>'P600_JMR_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42334806318003965)
,p_name=>'P600_PPA_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'System Generated Number'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PPA_JMR'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer,VC_EXTERNAL_DOC_NO,DT_EXTERNAL_DOC_DATE',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''J''',
'and  ch_auth_flag = ''Y''',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'DIALOG'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'PPA'
,p_attribute_08=>'800'
,p_attribute_09=>'500'
,p_attribute_10=>'DT_PPA_DATE:P600_PPA_DATE,VC_EXTERNAL_DOC_NO:P600_PPA_NO_NEW,DT_EXTERNAL_DOC_DATE:P600_PPA_DATE_NEW'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42335159316003966)
,p_name=>'P600_PPA_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Document Uploaded Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42335544969003966)
,p_name=>'P600_PPA_NO_NEW'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'PPA Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42336022866003967)
,p_name=>'P600_PPA_DATE_NEW'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'PPA Date'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42336333788003968)
,p_name=>'P600_CUSTOMER_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42336735517003969)
,p_name=>'P600_CUSTOMER_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Customer Name'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_colspan=>6
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42337188773003969)
,p_name=>'P600_JMR_READING_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'JMR Reading Date'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'VISIBLE'
,p_attribute_14=>'1'
,p_attribute_15=>'FOCUS'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42337601382003970)
,p_name=>'P600_BILLING_POINT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Delivery Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_location d,NU_DOC_NO  r',
'from dt_energy_flow',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'order by 2 ',
';'))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42337945454003970)
,p_name=>'P600_BILLING_POINT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42338353453003971)
,p_name=>'P600_METERING_POINT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42338796438003972)
,p_name=>'P600_METERING_POINT_DESC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'--AND   NU_DOC_NO <= :P600_METERING_POINT',
'AND CH_METER_INSTALLED = ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'--AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P600_PPA_NO,:P600_PPA_DATE) = ''Y''',
'/*',
'UNION ALL',
'',
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO <= :P600_METERING_POINT+1',
'AND CH_METER_INSTALLED = ''Y''',
'AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P600_PPA_NO,:P600_PPA_DATE) = ''N''',
'*/',
'',
';'))
,p_lov_cascade_parent_items=>'P600_METERING_POINT'
,p_ajax_items_to_submit=>'P600_METERING_POINT,P600_PPA_NO_NEW,P600_PPA_DATE_NEW'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42339227888003972)
,p_name=>'P600_GRP_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42339534043003973)
,p_name=>'P600_ITEM_CODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42339944865003974)
,p_name=>'P600_ITEM_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Item'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42340353160003974)
,p_name=>'P600_UOM'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42340817322003975)
,p_name=>'P600_QTY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42341211732003975)
,p_name=>'P600_RATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>unistr('Rate(\20B9)')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42341632038003976)
,p_name=>'P600_MODE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42341996470003977)
,p_name=>'P600_WKF_STAGE'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42342390571003977)
,p_name=>'P600_REQ_NO'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42342828255003978)
,p_name=>'P600_LAST_PAGE'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42343192047003978)
,p_name=>'P600_AUTH_FLAG'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42343616469003979)
,p_name=>'P600_LABEL_NAME'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P600_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42344012584003980)
,p_name=>'P600_REMARKS'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>500
,p_cHeight=>2
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42344381932003980)
,p_name=>'P600_INVOICE_EXP_UNIT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42344759193003981)
,p_name=>'P600_PROJECT'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42345147745003981)
,p_name=>'P600_GLOBAL_PROJ_NAME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_item_default=>':GLOBAL_PROJ_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42345585682003982)
,p_name=>'P600_AUTH_SIGN_NAME'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Authorized Signatory &GLOBAL_COMP_PREFIX.'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42346017184003983)
,p_name=>'P600_AUTH_SIGN_1'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Authorized Signatory (PSPCL)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42346411523003983)
,p_name=>'P600_AUTH_SIGN_2'
,p_item_sequence=>370
,p_item_plug_id=>wwv_flow_api.id(264868815434255213)
,p_prompt=>'Authorized Signatory (PSPCL)'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42347091536003985)
,p_name=>'P600_MAIN_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(264868883015255214)
,p_prompt=>'Main Meter Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42347460881003985)
,p_name=>'P600_MAIN_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(264868883015255214)
,p_prompt=>'Meter Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_location d,NU_DOC_NO  r',
'from dt_energy_flow',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'order by 2 ',
';'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42347915619003986)
,p_name=>'P600_MAIN_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(264868883015255214)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42348620728003988)
,p_name=>'P600_MAIN_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42349002637003988)
,p_name=>'P600_MAIN_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42349375788003989)
,p_name=>'P600_MAIN_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42349751326003990)
,p_name=>'P600_MAIN_EXP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Multiplying Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42350227219003990)
,p_name=>'P600_MAIN_EXP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42350616498003991)
,p_name=>'P600_MAIN_EXP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Wh;Wh,kWh;kWh,MWh;MWh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42351009140003991)
,p_name=>'P600_MAIN_EXP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42351352594003992)
,p_name=>'P600_MAIN_EXP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42351814669003993)
,p_name=>'P600_MAIN_EXPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Export Previous kVAh Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42352160117003993)
,p_name=>'P600_MAIN_EXPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Export Current kVAh Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42352578502003994)
,p_name=>'P600_MAIN_EXP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42353011810003994)
,p_name=>'P600_MAIN_EXP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42353431260003995)
,p_name=>'P600_MAIN_EXP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'kVAh'
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Vah;Vah,kVAh;kVAh,MVAh;MVAh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42353816688003996)
,p_name=>'P600_MAIN_EXP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42354149798003996)
,p_name=>'P600_MAIN_EXP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(265705258668441513)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42354909707003998)
,p_name=>'P600_MAIN_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42355234492003998)
,p_name=>'P600_MAIN_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42355709047003999)
,p_name=>'P600_MAIN_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42356082679004000)
,p_name=>'P600_MAIN_IMP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Multiplying Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42356495562004000)
,p_name=>'P600_MAIN_IMP_TOTAL_UNIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42356833528004001)
,p_name=>'P600_MAIN_IMP_UOM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Wh;Wh,kWh;kWh,MWh;MWh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42357308381004001)
,p_name=>'P600_MAIN_IMP_ADJUSMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42357662188004002)
,p_name=>'P600_MAIN_IMP_NET_UNIT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42358078853004003)
,p_name=>'P600_MAIN_IMPORT_PRV_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Import Previous kVAh Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42358516830004003)
,p_name=>'P600_MAIN_IMPORT_CUR_KVAH'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Import Current kVAh Reading '
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42358927775004004)
,p_name=>'P600_MAIN_IMP_DIFFERENCE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42359314391004005)
,p_name=>'P600_MAIN_IMP_TOTAL_UNIT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42359726962004005)
,p_name=>'P600_MAIN_IMP_UOM_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'kVAh'
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Vah;Vah,kVAh;kVAh,MVAh;MVAh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42360033265004006)
,p_name=>'P600_MAIN_IMP_ADJUSMENT_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42360508919004006)
,p_name=>'P600_MAIN_IMP_NET_UNIT_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(265705429372441514)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42361136298004008)
,p_name=>'P600_POWER_FACTOR_EXPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(265705553089441515)
,p_item_default=>'0'
,p_prompt=>'Power Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_attributes=>'readonly=true'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42361621717004009)
,p_name=>'P600_MAIN_NET_EXP_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705553089441515)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42362005107004009)
,p_name=>'P600_MAIN_METER_WORK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705553089441515)
,p_prompt=>'Meter Working'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42362420144004010)
,p_name=>'P600_MAIN_METER_REMARK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705553089441515)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42362753080004011)
,p_name=>'P600_REMARKS_MAIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(265705553089441515)
,p_prompt=>'General Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>498
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42363530375004012)
,p_name=>'P600_NET_READING_KWH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(296048535233961313)
,p_item_default=>'0'
,p_prompt=>'Net Readings -  kWh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224629376492032)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42363921566004013)
,p_name=>'P600_NET_READING_KVAH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(296048535233961313)
,p_prompt=>'Net Reading -  kVAh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224629376492032)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42364579354004014)
,p_name=>'P600_CHECK_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(265157208344998921)
,p_prompt=>'Check Meter Number'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42364950453004015)
,p_name=>'P600_CHECK_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265157208344998921)
,p_prompt=>'Meter Location'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select vc_location d,NU_DOC_NO  r',
'from dt_energy_flow',
'where ORG_ID =:GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'AND  ch_delivery_point= ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'order by 2 ',
';'))
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42365425287004015)
,p_name=>'P600_CHECK_METER_LOC_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265157208344998921)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42366097426004017)
,p_name=>'P600_CHECK_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Export Previous Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42366490209004018)
,p_name=>'P600_CHECK_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Export Current Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42366877461004018)
,p_name=>'P600_CHECK_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42367327564004019)
,p_name=>'P600_CHECK_EXP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_prompt=>'Multiplying Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42367651933004019)
,p_name=>'P600_CHECK_EXP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42368113208004020)
,p_name=>'P600_CHECK_EXP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Wh;Wh,kWh;kWh,MWh;MWh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42368452679004021)
,p_name=>'P600_CHECK_EXP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42368866484004021)
,p_name=>'P600_CHECK_EXP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42369324263004022)
,p_name=>'P600_CHECK_EXPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Export Previous kVAh Reading'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42369722035004022)
,p_name=>'P600_CHECK_EXPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Export Current kVAh Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42370131961004023)
,p_name=>'P600_CHECK_EXP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42370447994004023)
,p_name=>'P600_CHECK_EXP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42370889531004024)
,p_name=>'P600_CHECK_EXP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'kVAh'
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Vah;Vah,kVAh;kVAh,MVAh;MVAh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42371260607004025)
,p_name=>'P600_CHECK_EXP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42371696692004025)
,p_name=>'P600_CHECK_EXP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(265705653471441516)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42372335702004027)
,p_name=>'P600_CHECK_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Import Previous Reading'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42372758417004027)
,p_name=>'P600_CHECK_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42373176857004028)
,p_name=>'P600_CHECK_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42373624045004029)
,p_name=>'P600_CHECK_IMP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_prompt=>'Multiplying Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42373991096004029)
,p_name=>'P600_CHECK_IMP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42374352928004030)
,p_name=>'P600_CHECK_IMP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Wh;Wh,kWh;kWh,MWh;MWh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42374773824004030)
,p_name=>'P600_CHECK_IMP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42375186351004031)
,p_name=>'P600_CHECK_IMP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42375539294004032)
,p_name=>'P600_CHECK_IMPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Import Previous kVAh Reading'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42376005302004032)
,p_name=>'P600_CHECK_IMPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Import Current kVAh Reading '
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42376405495004033)
,p_name=>'P600_CHECK_IMP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Difference'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_colspan=>3
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42376767766004033)
,p_name=>'P600_CHECK_IMP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Total Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42377203731004034)
,p_name=>'P600_CHECK_IMP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'kVAh'
,p_prompt=>'UoM'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Vah;Vah,kVAh;kVAh,MVAh;MVAh,VARh;VARh,kVARh;kVARh'
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42377600898004035)
,p_name=>'P600_CHECK_IMP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Adjustment'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_css_classes=>'allownumericwithdecimal addzero'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42377960525004035)
,p_name=>'P600_CHECK_IMP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(265705682471441517)
,p_item_default=>'0'
,p_prompt=>'Net Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42378696559004037)
,p_name=>'P600_CHK_POWER_FACTOR_EXPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(265705778058441518)
,p_prompt=>'Power Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_tag_attributes=>'readonly=true'
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42379062005004037)
,p_name=>'P600_CHECK_NET_EXP_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(265705778058441518)
,p_item_default=>'0'
,p_prompt=>'Net Exported Unit'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_grid_column=>10
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42379478540004038)
,p_name=>'P600_CHECK_METER_WORK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(265705778058441518)
,p_prompt=>'Meter Working'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_named_lov=>'LOV_YES_NO'
,p_lov=>'.'||wwv_flow_api.id(15884451983058595)||'.'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42379901995004038)
,p_name=>'P600_CHECK_METER_REMARK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(265705778058441518)
,p_prompt=>'Check Meter Remark'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>200
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42380251496004039)
,p_name=>'P600_REMARKS_CHECK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(265705778058441518)
,p_prompt=>'General Remarks'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>498
,p_cHeight=>5
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'Y'
,p_attribute_02=>'N'
,p_attribute_03=>'N'
,p_attribute_04=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42381022904004040)
,p_name=>'P600_NET_READING_KWH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(296049897146961327)
,p_item_default=>'0'
,p_prompt=>'Net Readings -  kWh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_field_template=>wwv_flow_api.id(16224629376492032)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42381417081004040)
,p_name=>'P600_NET_READING_KVAH_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(296049897146961327)
,p_prompt=>'Net Reading -  kVAh'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'readonly=true'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224629376492032)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42392291572004056)
,p_validation_name=>'PPA Not Null'
,p_validation_sequence=>10
,p_validation=>'P600_PPA_NO_NEW'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42389090031004052)
,p_validation_name=>'Main Exp Prv Read not null'
,p_validation_sequence=>30
,p_validation=>'P600_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42394657947004059)
,p_validation_name=>'Main Exp Prv Read numeric'
,p_validation_sequence=>40
,p_validation=>'P600_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42389440478004053)
,p_validation_name=>'Main Exp Curr Read not null'
,p_validation_sequence=>50
,p_validation=>'P600_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42395032910004060)
,p_validation_name=>'Main Exp Curr Read numeric'
,p_validation_sequence=>60
,p_validation=>'P600_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42398278817004064)
,p_validation_name=>'Main Exp diff value not negative'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_EXP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42349375788003989)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42398726805004064)
,p_validation_name=>'Main Exp Total unit value not negative'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_EXP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42350227219003990)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42399093385004065)
,p_validation_name=>'Main Exp Net  unit value not negative'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_EXP_NET_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42351352594003992)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42389912332004053)
,p_validation_name=>'Main Imp Prv Read not null'
,p_validation_sequence=>110
,p_validation=>'P600_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Import Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42395454792004060)
,p_validation_name=>'Main Imp Prv Read numeric'
,p_validation_sequence=>120
,p_validation=>'P600_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42390288808004054)
,p_validation_name=>'Main Imp Curr Read not null'
,p_validation_sequence=>130
,p_validation=>'P600_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter import Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42395893650004061)
,p_validation_name=>'Main Imp Curr Read numeric'
,p_validation_sequence=>140
,p_validation=>'P600_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42399498094004065)
,p_validation_name=>'Main Imp diff unit value not negative'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_IMP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42355709047003999)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42399888607004066)
,p_validation_name=>'Main Imp toral unit value not negative'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_IMP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42356495562004000)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42400323249004066)
,p_validation_name=>'Main Imp net unit value not negative'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_IMP_NET_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42357662188004002)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42400638940004067)
,p_validation_name=>'Main Net export unit value not negative'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_NET_EXP_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42361621717004009)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42403890146004071)
,p_validation_name=>'Main Net Export Unit Cannot be Null or Zero'
,p_validation_sequence=>190
,p_validation=>'P600_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42390726322004054)
,p_validation_name=>'Check Exp Prv Read not null'
,p_validation_sequence=>200
,p_validation=>'P600_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42396266757004061)
,p_validation_name=>'Check Exp Prv Read numeric'
,p_validation_sequence=>210
,p_validation=>'P600_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42391052258004055)
,p_validation_name=>'Check Exp Curr Read not null'
,p_validation_sequence=>220
,p_validation=>'P600_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42396709431004062)
,p_validation_name=>'Check Exp Curr Read numeric'
,p_validation_sequence=>230
,p_validation=>'P600_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42401091093004067)
,p_validation_name=>'Check Exp diff unit value not negative'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_EXP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42366877461004018)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42401524124004068)
,p_validation_name=>'Check Exp total unit value not negative'
,p_validation_sequence=>250
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_EXP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42367651933004019)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42401892268004068)
,p_validation_name=>'Check Exp ne tunit value not negative'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_EXP_NET_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42368866484004021)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42391456452004055)
,p_validation_name=>'Check Imp Prv Read not null'
,p_validation_sequence=>270
,p_validation=>'P600_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Import Previous Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42397074453004062)
,p_validation_name=>'Check Imp Prv Read  numeric'
,p_validation_sequence=>280
,p_validation=>'P600_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42391916730004056)
,p_validation_name=>'Check Imp Curr Read not null'
,p_validation_sequence=>290
,p_validation=>'P600_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter import Current Reading'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42397499508004063)
,p_validation_name=>'Check Imp Curr Read numeric'
,p_validation_sequence=>300
,p_validation=>'P600_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42402252886004069)
,p_validation_name=>'Check Imp diff unit value not negative'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_IMP_DIFFERENCE,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42373176857004028)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42402713280004069)
,p_validation_name=>'Check Imp Total  unit value not negative'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_IMP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42373991096004029)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42403069437004070)
,p_validation_name=>'Check Imp Net unit value not negative'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_IMP_NET_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42375186351004031)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42403459961004070)
,p_validation_name=>'Check  Net Export unit value not negative'
,p_validation_sequence=>340
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_CHECK_NET_EXP_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42379062005004037)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42404320807004071)
,p_validation_name=>'Check Net Export Unit Cannot be null or Zero'
,p_validation_sequence=>350
,p_validation=>'P600_CHECK_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42392687952004057)
,p_validation_name=>'Main meter work not null'
,p_validation_sequence=>360
,p_validation=>'P600_MAIN_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Main Meter Working'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42393512029004058)
,p_validation_name=>'Main Meter remark not null'
,p_validation_sequence=>370
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P600_MAIN_METER_WORK,'','','''') = ''N''  and replace(:P600_MAIN_METER_REMARK,'','','''') is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42362420144004010)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42393063378004057)
,p_validation_name=>'check Meter Work or not'
,p_validation_sequence=>380
,p_validation=>'P600_CHECK_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Check Meter Working.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42393836149004058)
,p_validation_name=>'Check  Meter remark not null'
,p_validation_sequence=>390
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P600_CHECK_METER_WORK = ''N''  and :P600_CHECK_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42379901995004038)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42394259661004059)
,p_validation_name=>'check JMR EXISTS OR NOT'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'if :P600_MODE = ''A'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P600_PPA_NO',
'AND   DT_PPA_DATE   = :P600_PPA_DATE',
'AND   DT_JMR_DATE   = :P600_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P600_METERING_POINT_DESC;',
'end if;',
'',
'if :P600_MODE = ''E'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P600_PPA_NO',
'AND   DT_PPA_DATE   = :P600_PPA_DATE',
'AND   DT_JMR_DATE   = :P600_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P600_METERING_POINT_DESC',
'AND   VC_JMR_NO     <> :P600_JMR_NO;',
'end if;',
'',
'',
'IF V_CHK <> 0 THEN ',
'RETURN FALSE;',
'ELSE',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'JMR for this PPA and Metering Point is Already Created.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42397921555004063)
,p_validation_name=>'proj_prefix'
,p_validation_sequence=>410
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'      begin',
'     select VC_PROJ_PREFIX',
'      into v_chk  ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     exception  when no_data_found then  null;',
'    end;',
'      ',
'      if nvl(v_chk,''XX'') = ''XX'' THEN',
'       RETURN ''Project Prefix not defined.Contact Administration'';',
'      END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42404648640004072)
,p_validation_name=>'Main Exp diff null or zero'
,p_validation_sequence=>420
,p_validation=>'P600_MAIN_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42349375788003989)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42405067451004072)
,p_validation_name=>'Main Exp Total unit null or zero'
,p_validation_sequence=>430
,p_validation=>'P600_MAIN_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42350227219003990)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42405498843004073)
,p_validation_name=>'Main Exp Net unit value cannot null or zero'
,p_validation_sequence=>440
,p_validation=>'P600_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42405868368004073)
,p_validation_name=>'Main Exp Net Unit not null or zero'
,p_validation_sequence=>450
,p_validation=>'P600_MAIN_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42351352594003992)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42406239687004074)
,p_validation_name=>'Main Imp Diff not null or zero'
,p_validation_sequence=>460
,p_validation=>'P600_MAIN_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42355709047003999)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42406704764004074)
,p_validation_name=>'Main Imp Total Unit Value null or zero'
,p_validation_sequence=>470
,p_validation=>'P600_MAIN_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42356495562004000)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42407043337004075)
,p_validation_name=>'Main Inp Net unit null or zero'
,p_validation_sequence=>480
,p_validation=>'P600_MAIN_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42357662188004002)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42407459822004075)
,p_validation_name=>'Check Exp diff not null or zero'
,p_validation_sequence=>490
,p_validation=>'P600_CHECK_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42366877461004018)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42407884327004076)
,p_validation_name=>'Check Exp total unit not null or zero'
,p_validation_sequence=>500
,p_validation=>'P600_CHECK_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42367651933004019)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42408278121004076)
,p_validation_name=>'Check Exp net unit calue not null or zero'
,p_validation_sequence=>510
,p_validation=>'P600_CHECK_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42368866484004021)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42408643814004077)
,p_validation_name=>'Check Imp diff unit value not null or zero'
,p_validation_sequence=>520
,p_validation=>'P600_CHECK_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42373176857004028)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42409067199004077)
,p_validation_name=>'Check Imp Total unit not null or zero'
,p_validation_sequence=>530
,p_validation=>'P600_CHECK_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42373991096004029)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42409471276004078)
,p_validation_name=>'Check Imp net unit Value not null or zero'
,p_validation_sequence=>540
,p_validation=>'P600_CHECK_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42375186351004031)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42409894190004078)
,p_validation_name=>'Check financial year open or not'
,p_validation_sequence=>550
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'',
'begin',
'',
'      SELECT    count(*)',
'       INTO     v_chk',
'       FROM     APPUA.VW_FY',
'       WHERE    ORG_ID = :GLOBAL_COMP_CODE',
'       AND      YEAR_CLOSING_FLG  = ''N'' ',
'       and     FY_STRT < sysdate ',
'       and      FY_END  >= trunc(sysdate) ;',
'       ',
'',
'if v_chk = 0 then',
'return false;',
'else',
'return true;',
'end if;',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Financial year not found not open in ERP. Contact System Administration'
,p_validation_condition=>'P600_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42387547969004050)
,p_validation_name=>'P600_NET_READING_KWH'
,p_validation_sequence=>560
,p_validation=>'P600_NET_READING_KWH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please check net reading kWh.'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42387973962004051)
,p_validation_name=>'Rate not null or zero'
,p_validation_sequence=>570
,p_validation=>'P600_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Not found. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42341211732003975)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42388357632004051)
,p_validation_name=>'PERIOD_FROM Not null'
,p_validation_sequence=>580
,p_validation=>'P600_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select From date'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42388635120004052)
,p_validation_name=>'Period To'
,p_validation_sequence=>590
,p_validation=>'P600_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select To date'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42410286367004079)
,p_validation_name=>'P600_PERIOD_TO'
,p_validation_sequence=>600
,p_validation=>':P600_PERIOD_TO<=sysdate'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Period To Date is not greater then today''s date.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42387225449004050)
,p_validation_name=>'JMR Reading date'
,p_validation_sequence=>610
,p_validation=>'P600_JMR_READING_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter JMR Reading Date'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42386777365004049)
,p_validation_name=>'auth sign'
,p_validation_sequence=>620
,p_validation=>'P600_AUTH_SIGN_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory '
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42345585682003982)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42386362095004049)
,p_validation_name=>'auth sign 1'
,p_validation_sequence=>630
,p_validation=>'P600_AUTH_SIGN_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory  PSPCL'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42346017184003983)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42385953494004049)
,p_validation_name=>'Auth Sign 2'
,p_validation_sequence=>640
,p_validation=>'P600_AUTH_SIGN_2'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory PSPCL '
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_associated_item=>wwv_flow_api.id(42346411523003983)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42385595788004048)
,p_validation_name=>'jmr reading date'
,p_validation_sequence=>650
,p_validation=>'to_date(SUBSTR(to_date(:P600_JMR_READING_DATE, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'') <= TO_DATE(:P600_PERIOD_TO,''DD-MM-YYYY'') AND to_date(SUBSTR(to_date(:P600_JMR_READING_DATE, ''DD-MM-yyyy HH24:MI''), 1, 10),''dd-mm-yyyy'') >= TO_DATE(:P600_PERIOD'
||'_FROM,''DD-MM-YYYY'')'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'JMR reading date should be between the from date and to date.'
,p_when_button_pressed=>wwv_flow_api.id(42331141497003959)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42415368857004089)
,p_name=>'Set Values'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_PPA_DATE_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P600_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42415897433004090)
,p_event_id=>wwv_flow_api.id(42415368857004089)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select EO_ID , get_cust_name(org_id,EO_ID)cust_name, ',
'       NU_DELIVERY_POINT_ID , get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       NU_METERING_POINT_ID ,NU_METERING_POINT_ID, --get_energy_flow_loc(ORG_ID,PRJ_ID,NU_METERING_POINT_ID) Metering_loc, ',
'       ITM_ID ,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,GRP_ID,',
'       NU_QTY,',
'       GET_RATE (ORG_ID,PRJ_ID,VC_PPA_NO,DT_PPA_DATE,to_date(sysdate,''DD-MM-YYYY''),null)',
'     --  NU_RATE',
'',
'into   :P600_CUSTOMER_CODE,:P600_CUSTOMER_NAME,',
'       :P600_BILLING_POINT,:P600_BILLING_POINT_DESC,',
'       :P600_METERING_POINT,:P600_METERING_POINT_DESC,',
'       :P600_ITEM_CODE ,:P600_ITEM_DESC,',
'       :P600_UOM,:P600_GRP_ID,',
'       :P600_QTY,:P600_RATE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P600_PPA_NO',
'AND   DT_PPA_DATE = :P600_PPA_DATE;',
'',
'begin',
'select ',
'to_number(NU_MAIN_EXP_CUR_READING),',
'NU_MAIN_IMP_CUR_READING,',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING,',
'',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ',
'',
'into',
':P600_MAIN_EXP_PREV_READ,',
':P600_MAIN_IMP_PREV_READ,',
':P600_CHECK_EXP_PREV_READ,',
':P600_CHECK_IMP_PREV_READ,',
'',
'',
':P600_MAIN_EXPORT_PRV_KVAH,',
':P600_MAIN_IMPORT_PRV_KVAH,',
'',
':P600_CHECK_IMPORT_PRV_KVAH,',
':P600_CHECK_EXPORT_PRV_KVAH',
'',
'',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P600_PPA_NO',
'AND   DT_PPA_DATE = :P600_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P600_PPA_NO,P600_PPA_DATE'
,p_attribute_03=>'P600_CUSTOMER_CODE,P600_CUSTOMER_NAME,P600_BILLING_POINT,P600_BILLING_POINT_DESC,P600_METERING_POINT,P600_METERING_POINT_DESC,P600_ITEM_CODE ,P600_ITEM_DESC,P600_UOM,P600_GRP_ID,P600_QTY,P600_RATE,P600_MAIN_EXP_PREV_READ,P600_MAIN_IMP_PREV_READ,P600_'
||'CHECK_EXP_PREV_READ,P600_CHECK_IMP_PREV_READ,P600_MAIN_EXPORT_PRV_KVAH,P600_MAIN_IMPORT_PRV_KVAH,P600_CHECK_IMPORT_PRV_KVAH,P600_CHECK_EXPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42416290592004090)
,p_name=>'Set meter loc/No'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_BILLING_POINT'
,p_condition_element=>'P600_BILLING_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42416754604004091)
,p_event_id=>wwv_flow_api.id(42416290592004090)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NU_DOC_NO,VC_LOCATION,NU_MAIN_FACTOR,NU_MAIN_FACTOR,',
'        VC_CHK_METER_NO,NU_DOC_NO,VC_LOCATION,NU_chk_FACTOR,NU_chk_FACTOR',
'into   :P600_MAIN_METER_NO,:P600_MAIN_METER_LOC,:P600_MAIN_METER_LOC_DESC,:P600_MAIN_EXP_MULTI_FAC,:P600_MAIN_IMP_MULTI_FAC',
'       ,:P600_CHECK_METER_NO,:P600_CHECK_METER_LOC,:P600_CHECK_METER_LOC_DESC,:P600_CHECK_EXP_MULTI_FAC,:P600_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P600_BILLING_POINT',
';',
'',
''))
,p_attribute_02=>'P600_BILLING_POINT'
,p_attribute_03=>'P600_MAIN_METER_NO,P600_MAIN_METER_LOC,P600_MAIN_METER_LOC_DESC,P600_MAIN_EXP_MULTI_FAC,P600_MAIN_IMP_MULTI_FAC,P600_CHECK_METER_NO,P600_CHECK_METER_LOC,P600_CHECK_METER_LOC_DESC,P600_CHECK_EXP_MULTI_FAC,P600_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42417166192004092)
,p_name=>'Calculate Main EXP  Diff Curr/Prev'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_CURR_READ,P600_MAIN_EXP_PREV_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42417684416004092)
,p_event_id=>wwv_flow_api.id(42417166192004092)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_DIFFERENCE:=REPLACE(:P600_MAIN_EXP_CURR_READ,'','','''')-REPLACE(:P600_MAIN_EXP_PREV_READ,'','','''');'
,p_attribute_02=>'P600_MAIN_EXP_PREV_READ,P600_MAIN_EXP_CURR_READ'
,p_attribute_03=>'P600_MAIN_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42418087814004093)
,p_name=>'Calculate Main EXP  Total Unit'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42418623421004094)
,p_event_id=>wwv_flow_api.id(42418087814004093)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_TOTAL_UNIT := REPLACE(:P600_MAIN_EXP_DIFFERENCE ,'','','''')* REPLACE(:P600_MAIN_EXP_MULTI_FAC,'','','''') ;'
,p_attribute_02=>'P600_MAIN_EXP_DIFFERENCE,P600_MAIN_EXP_MULTI_FAC'
,p_attribute_03=>'P600_MAIN_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42418941323004094)
,p_name=>'Calculate Main EXP  Net Unit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_ADJUSMENT,P600_MAIN_EXP_TOTAL_UNIT,P600_MAIN_EXP_UOM'
,p_condition_element=>'P600_MAIN_EXP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42419494027004095)
,p_event_id=>wwv_flow_api.id(42418941323004094)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_EXP_NET_UNIT := (REPLACE(:P600_MAIN_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P600_MAIN_EXP_ADJUSMENT,'','',''''))*0.001;',
''))
,p_attribute_02=>'P600_MAIN_EXP_TOTAL_UNIT,P600_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P600_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42419951371004095)
,p_event_id=>wwv_flow_api.id(42418941323004094)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_EXP_NET_UNIT := REPLACE(:P600_MAIN_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P600_MAIN_EXP_ADJUSMENT,'','','''');',
''))
,p_attribute_02=>'P600_MAIN_EXP_TOTAL_UNIT,P600_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P600_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42420376811004096)
,p_name=>'Calculate Main IMP  Diff Curr/Prev'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_PREV_READ,P600_MAIN_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42420888722004097)
,p_event_id=>wwv_flow_api.id(42420376811004096)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_IMP_DIFFERENCE := REPLACE(:P600_MAIN_IMP_CURR_READ,'','','''')-REPLACE(:P600_MAIN_IMP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P600_MAIN_IMP_PREV_READ,P600_MAIN_IMP_CURR_READ'
,p_attribute_03=>'P600_MAIN_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42421303029004097)
,p_name=>'Calculate Main IMP  Total Unit'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42421767482004098)
,p_event_id=>wwv_flow_api.id(42421303029004097)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_IMP_TOTAL_UNIT := NVL(REPLACE(:P600_MAIN_IMP_DIFFERENCE,'','','''')*REPLACE(:P600_MAIN_IMP_MULTI_FAC,'','','''') ,0) ;',
'',
''))
,p_attribute_02=>'P600_MAIN_IMP_DIFFERENCE,P600_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P600_MAIN_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42422223391004098)
,p_name=>'Calculate Main IMP  Net Unit'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_ADJUSMENT,P600_MAIN_IMP_TOTAL_UNIT,P600_MAIN_IMP_UOM'
,p_condition_element=>'P600_MAIN_IMP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42422680716004099)
,p_event_id=>wwv_flow_api.id(42422223391004098)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_IMP_NET_UNIT := REPLACE(:P600_MAIN_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P600_MAIN_IMP_ADJUSMENT,'','','''')  ;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P600_MAIN_IMP_TOTAL_UNIT,P600_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P600_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42423203714004100)
,p_event_id=>wwv_flow_api.id(42422223391004098)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_IMP_NET_UNIT := (REPLACE(:P600_MAIN_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P600_MAIN_IMP_ADJUSMENT,'','',''''))*0.001  ;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P600_MAIN_IMP_TOTAL_UNIT,P600_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P600_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42423588809004100)
,p_name=>'Calculate Check EXP Diff Curr/Prev'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_PREV_READ,P600_CHECK_EXP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42424078584004101)
,p_event_id=>wwv_flow_api.id(42423588809004100)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_DIFFERENCE := REPLACE(:P600_CHECK_EXP_CURR_READ,'','','''')-REPLACE(:P600_CHECK_EXP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P600_CHECK_EXP_CURR_READ,P600_CHECK_EXP_PREV_READ'
,p_attribute_03=>'P600_CHECK_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42424451664004101)
,p_name=>'Calculate Check EXP  Total Unit'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42424973295004102)
,p_event_id=>wwv_flow_api.id(42424451664004101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_TOTAL_UNIT := NVL(REPLACE(:P600_CHECK_EXP_DIFFERENCE,'','','''')* REPLACE(:P600_CHECK_EXP_MULTI_FAC,'','',''''),0) ;'
,p_attribute_02=>'P600_CHECK_EXP_DIFFERENCE,P600_CHECK_EXP_MULTI_FAC'
,p_attribute_03=>'P600_CHECK_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42425339462004103)
,p_name=>'Calculate Check EXP  Total Unit_1'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_DIFFERENCE,P600_CHECK_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42425876243004103)
,p_event_id=>wwv_flow_api.id(42425339462004103)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_NET_READING_KWH_1 := NVL(REPLACE(:P600_CHECK_EXP_DIFFERENCE,'','','''')- REPLACE(:P600_CHECK_IMP_DIFFERENCE,'','',''''),0) ;'
,p_attribute_02=>'P600_CHECK_EXP_DIFFERENCE,P600_CHECK_IMP_DIFFERENCE'
,p_attribute_03=>'P600_NET_READING_KWH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42426303390004104)
,p_name=>'Calculate Check EXP  Net Unit'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_ADJUSMENT,P600_CHECK_EXP_TOTAL_UNIT,P600_CHECK_EXP_UOM'
,p_condition_element=>'P600_CHECK_EXP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42426761127004104)
,p_event_id=>wwv_flow_api.id(42426303390004104)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_NET_UNIT := (REPLACE(:P600_CHECK_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P600_CHECK_EXP_ADJUSMENT,'','','''')) ;'
,p_attribute_02=>'P600_CHECK_EXP_TOTAL_UNIT,P600_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P600_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42427274343004105)
,p_event_id=>wwv_flow_api.id(42426303390004104)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_NET_UNIT := (REPLACE(:P600_CHECK_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P600_CHECK_EXP_ADJUSMENT,'','',''''))*0.001 ;'
,p_attribute_02=>'P600_CHECK_EXP_TOTAL_UNIT,P600_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P600_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42427695779004106)
,p_name=>'Calculate Check IMP Diff Curr/Prev'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_IMP_PREV_READ,P600_CHECK_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42428231330004106)
,p_event_id=>wwv_flow_api.id(42427695779004106)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_DIFFERENCE := REPLACE(:P600_CHECK_IMP_CURR_READ,'','','''')-REPLACE(:P600_CHECK_IMP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P600_CHECK_IMP_CURR_READ,P600_CHECK_IMP_PREV_READ'
,p_attribute_03=>'P600_CHECK_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42428597672004107)
,p_name=>'Calculate CHECK IMP Total Unit'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_DIFFERENCE,P600_CHECK_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42429086672004107)
,p_event_id=>wwv_flow_api.id(42428597672004107)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_TOTAL_UNIT := REPLACE(:P600_CHECK_IMP_DIFFERENCE ,'','','''')* REPLACE(:P600_CHECK_IMP_MULTI_FAC,'','','''') ;'
,p_attribute_02=>'P600_CHECK_IMP_DIFFERENCE,P600_CHECK_IMP_MULTI_FAC'
,p_attribute_03=>'P600_CHECK_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42429528751004108)
,p_name=>'Calculate Check IMP  Net Unit'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_IMP_TOTAL_UNIT,P600_CHECK_IMP_ADJUSMENT,P600_CHECK_IMP_UOM'
,p_condition_element=>'P600_CHECK_IMP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42429943108004109)
,p_event_id=>wwv_flow_api.id(42429528751004108)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_NET_UNIT := (REPLACE(:P600_CHECK_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P600_CHECK_IMP_ADJUSMENT,'','','''')) ;'
,p_attribute_02=>'P600_CHECK_IMP_TOTAL_UNIT,P600_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P600_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42430472377004109)
,p_event_id=>wwv_flow_api.id(42429528751004108)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_NET_UNIT := (REPLACE(:P600_CHECK_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P600_CHECK_IMP_ADJUSMENT,'','',''''))*0.001 ;'
,p_attribute_02=>'P600_CHECK_IMP_TOTAL_UNIT,P600_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P600_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42430838380004110)
,p_name=>'Calculate Main Exported Unit'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_NET_UNIT,P600_MAIN_EXP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42431334074004110)
,p_event_id=>wwv_flow_api.id(42430838380004110)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_NET_EXP_UNIT := REPLACE(:P600_MAIN_EXP_NET_UNIT,'','','''')- REPLACE(:P600_MAIN_IMP_NET_UNIT,'','','''');'
,p_attribute_02=>'P600_MAIN_EXP_NET_UNIT,P600_MAIN_IMP_NET_UNIT'
,p_attribute_03=>'P600_MAIN_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42431738514004111)
,p_name=>'Calculate Check Exported Unit'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_NET_UNIT,P600_CHECK_IMP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42432321218004112)
,p_event_id=>wwv_flow_api.id(42431738514004111)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_CHECK_NET_EXP_UNIT := NVL(REPLACE(:P600_CHECK_EXP_NET_UNIT,'','','''')- REPLACE(:P600_CHECK_IMP_NET_UNIT,'','',''''),0);',
'',
'',
''))
,p_attribute_02=>'EP600_CHECK_XP_NET_UNIT,P600_CHECK_IMP_NET_UNIT'
,p_attribute_03=>'P600_CHECK_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42432637179004112)
,p_name=>'Show/hide main meter Remark'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_METER_WORK'
,p_condition_element=>'P600_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42433177995004113)
,p_event_id=>wwv_flow_api.id(42432637179004112)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42433687633004113)
,p_event_id=>wwv_flow_api.id(42432637179004112)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42434040027004114)
,p_name=>'Show/Hide Check Meter Remark'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_METER_WORK'
,p_condition_element=>'P600_CHECK_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42434542722004115)
,p_event_id=>wwv_flow_api.id(42434040027004114)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42435055437004115)
,p_event_id=>wwv_flow_api.id(42434040027004114)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P600_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42435453419004116)
,p_name=>'Refresh'
,p_event_sequence=>200
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42436019864004116)
,p_event_id=>wwv_flow_api.id(42435453419004116)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(265234003822755143)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42436370504004117)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>210
,p_condition_element=>'P600_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42436883968004118)
,p_event_id=>wwv_flow_api.id(42436370504004117)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42330825088003958)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P600_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42437311913004118)
,p_name=>'hide forward on add mode'
,p_event_sequence=>220
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P600_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42437808602004119)
,p_event_id=>wwv_flow_api.id(42437311913004118)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42330825088003958)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42438188365004119)
,p_name=>'SET Main factor'
,p_event_sequence=>230
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42438669717004120)
,p_event_id=>wwv_flow_api.id(42438188365004119)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NU_MAIN_FACTOR,NU_MAIN_FACTOR',
'       ',
'into   :P600_MAIN_METER_NO,:P600_MAIN_EXP_MULTI_FAC,:P600_MAIN_IMP_MULTI_FAC',
'      ',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P600_MAIN_METER_LOC',
';'))
,p_attribute_02=>'P600_MAIN_METER_LOC'
,p_attribute_03=>'P600_MAIN_METER_NO,P600_MAIN_EXP_MULTI_FAC,P600_MAIN_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42439084091004120)
,p_name=>'SET CHECK  factor1'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42439556977004121)
,p_event_id=>wwv_flow_api.id(42439084091004120)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_CHK_METER_NO,nvl(nU_chk_FACTOR,0),nvl(NU_chk_FACTOR,0)',
'into   :P600_CHECK_METER_NO,:P600_CHECK_EXP_MULTI_FAC,:P600_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P600_CHECK_METER_LOC',
';'))
,p_attribute_02=>'P600_CHECK_METER_LOC'
,p_attribute_03=>'P600_CHECK_METER_NO,P600_CHECK_EXP_MULTI_FAC,P600_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42439969266004122)
,p_name=>'Set UOm'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_UOM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42440517438004122)
,p_event_id=>wwv_flow_api.id(42439969266004122)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_MAIN_EXP_UOM :=  :P600_UOM ;',
'',
':P600_MAIN_IMP_UOM := :P600_UOM ;',
'',
':P600_CHECK_EXP_UOM  := :P600_UOM ;',
'',
':P600_CHECK_IMP_UOM  := :P600_UOM ;'))
,p_attribute_02=>'P600_UOM'
,p_attribute_03=>'P600_MAIN_EXP_UOM,P600_MAIN_IMP_UOM ,P600_CHECK_EXP_UOM  ,P600_CHECK_IMP_UOM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42440874566004123)
,p_name=>'calculate net reading'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_DIFFERENCE,P600_MAIN_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42441428745004123)
,p_event_id=>wwv_flow_api.id(42440874566004123)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_NET_READING_KWH:=replace(:P600_MAIN_EXP_DIFFERENCE,'','','''')-replace(:P600_MAIN_IMP_DIFFERENCE,'','','''');'
,p_attribute_02=>'P600_MAIN_EXP_DIFFERENCE,P600_MAIN_IMP_DIFFERENCE'
,p_attribute_03=>'P600_NET_READING_KWH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42441761709004124)
,p_name=>'CAL P600_MAIN_EXP_TOTAL_UNIT_1'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42442313817004125)
,p_event_id=>wwv_flow_api.id(42441761709004124)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_TOTAL_UNIT_1:=REPLACE(:P600_MAIN_EXP_DIFFERENCE_1,'','','''')*REPLACE(:P600_MAIN_EXP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P600_MAIN_EXP_MULTI_FAC,P600_MAIN_EXP_DIFFERENCE_1'
,p_attribute_03=>'P600_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42442655822004125)
,p_name=>'CAL POWER FACTOR'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_NET_READING_KWH,P600_NET_READING_KVAH'
,p_condition_element=>'P600_PROJECT'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'0000.01.03.0001.00XR.00.1UYw3QcryP,0000.01.03.0001.00XR.00.1UYw3QcvTX,0000.01.03.0001.00XR.00.1UYw3QtwC6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42443228965004126)
,p_event_id=>wwv_flow_api.id(42442655822004125)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_POWER_FACTOR_EXPORT:= to_char(round(cos(ATAN(REPLACE(:P600_NET_READING_KVAH,'','','''')/nvl(REPLACE(:P600_NET_READING_KWH,'','',''''),1))),3),''999G999G999G999G990D000'');',
'',
''))
,p_attribute_02=>'P600_NET_READING_KWH,P600_NET_READING_KVAH'
,p_attribute_03=>'P600_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42443713220004126)
,p_event_id=>wwv_flow_api.id(42442655822004125)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_POWER_FACTOR_EXPORT:=to_char(round(REPLACE(:P600_NET_READING_KWH,'','','''') / NVL(REPLACE(:P600_NET_READING_KVAH,'','',''''),1),3),''999G999G999G999G990D000'');'
,p_attribute_02=>'P600_NET_READING_KWH,P600_NET_READING_KVAH'
,p_attribute_03=>'P600_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42444086297004127)
,p_name=>'CAL KAVH DIFF'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMPORT_PRV_KVAH,P600_MAIN_IMPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42444557279004127)
,p_event_id=>wwv_flow_api.id(42444086297004127)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_IMP_DIFFERENCE_1:=REPLACE(:P600_MAIN_IMPORT_CUR_KVAH,'','','''')-REPLACE(:P600_MAIN_IMPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P600_MAIN_IMPORT_PRV_KVAH,P600_MAIN_IMPORT_CUR_KVAH'
,p_attribute_03=>'P600_MAIN_IMP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42445013148004128)
,p_name=>'CAL KAVH DIFF EXP'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXPORT_PRV_KVAH,P600_MAIN_EXPORT_CUR_KVAH,P600_MAIN_EXP_UOM_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42445489241004129)
,p_event_id=>wwv_flow_api.id(42445013148004128)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_DIFFERENCE_1:=(REPLACE(:P600_MAIN_EXPORT_CUR_KVAH,'','','''')-REPLACE(:P600_MAIN_EXPORT_PRV_KVAH,'','',''''));'
,p_attribute_02=>'P600_MAIN_EXPORT_PRV_KVAH,P600_MAIN_EXPORT_CUR_KVAH'
,p_attribute_03=>'P600_MAIN_EXP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42445905804004129)
,p_name=>'CAL_CHECK_EXP_DIFFERENCE_1'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXPORT_PRV_KVAH,P600_CHECK_EXPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42446425221004130)
,p_event_id=>wwv_flow_api.id(42445905804004129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_DIFFERENCE_1:=REPLACE(:P600_CHECK_EXPORT_CUR_KVAH,'','','''')-REPLACE(:P600_CHECK_EXPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P600_CHECK_EXPORT_PRV_KVAH,P600_CHECK_EXPORT_CUR_KVAH'
,p_attribute_03=>'P600_CHECK_EXP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42446751558004130)
,p_name=>'CAL_CHECK_EXP_TOTAL_UNIT_1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_DIFFERENCE_1,P600_CHECK_EXP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42447256745004131)
,p_event_id=>wwv_flow_api.id(42446751558004130)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_TOTAL_UNIT_1:=REPLACE(:P600_CHECK_EXP_DIFFERENCE_1,'','','''')*REPLACE(:P600_CHECK_EXP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P600_CHECK_EXP_DIFFERENCE_1,P600_CHECK_EXP_MULTI_FAC'
,p_attribute_03=>'P600_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42447706689004131)
,p_name=>'CAL_P600_NET_READING_KVAH_1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_DIFFERENCE_1,P600_CHECK_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42448142199004132)
,p_event_id=>wwv_flow_api.id(42447706689004131)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_NET_READING_KVAH_1:=REPLACE(:P600_CHECK_EXP_DIFFERENCE_1,'','','''')-REPLACE(:P600_CHECK_IMP_DIFFERENCE_1,'','','''');'
,p_attribute_02=>'P600_CHECK_EXP_DIFFERENCE_1,P600_CHECK_IMP_DIFFERENCE_1'
,p_attribute_03=>'P600_NET_READING_KVAH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42448628955004133)
,p_name=>'CAL_CHECK_EXP_NET_UNIT_1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_EXP_TOTAL_UNIT_1,P600_CHECK_EXP_ADJUSMENT_1,P600_CHECK_EXP_UOM_1'
,p_condition_element=>'P600_CHECK_EXP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42449106031004133)
,p_event_id=>wwv_flow_api.id(42448628955004133)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_NET_UNIT_1:=REPLACE(:P600_CHECK_EXP_TOTAL_UNIT_1,'','','''')-REPLACE(:P600_CHECK_EXP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P600_CHECK_EXP_ADJUSMENT_1,P600_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_CHECK_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42449630492004134)
,p_event_id=>wwv_flow_api.id(42448628955004133)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_EXP_NET_UNIT_1:=(REPLACE(:P600_CHECK_EXP_TOTAL_UNIT_1,'','','''')-REPLACE(:P600_CHECK_EXP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P600_CHECK_EXP_ADJUSMENT_1,P600_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_CHECK_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42450014053004134)
,p_name=>'CAL_CHECK_IMP_DIFFERENCE_1'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_IMPORT_PRV_KVAH,P600_CHECK_IMPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42450447385004135)
,p_event_id=>wwv_flow_api.id(42450014053004134)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_DIFFERENCE_1:=REPLACE(:P600_CHECK_IMPORT_CUR_KVAH,'','','''')-REPLACE(:P600_CHECK_IMPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P600_CHECK_IMPORT_PRV_KVAH,P600_CHECK_IMPORT_CUR_KVAH'
,p_attribute_03=>'P600_CHECK_IMP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42450858667004135)
,p_name=>'CAL_CHECK_IMP_TOTAL_UNIT_1'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_IMP_DIFFERENCE_1,P600_CHECK_IMP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42451426868004136)
,p_event_id=>wwv_flow_api.id(42450858667004135)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_TOTAL_UNIT_1:=REPLACE(:P600_CHECK_IMP_DIFFERENCE_1,'','','''')*REPLACE(:P600_CHECK_IMP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P600_CHECK_IMP_MULTI_FAC,P600_CHECK_IMP_DIFFERENCE_1'
,p_attribute_03=>'P600_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42451811039004137)
,p_name=>'CAL_CHECK_IMP_NET_UNIT_1'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_CHECK_IMP_TOTAL_UNIT_1,P600_CHECK_IMP_ADJUSMENT_1,P600_CHECK_IMP_UOM_1'
,p_condition_element=>'P600_CHECK_IMP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42452257920004137)
,p_event_id=>wwv_flow_api.id(42451811039004137)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_NET_UNIT_1:=REPLACE(:P600_CHECK_IMP_TOTAL_UNIT_1,'','','''')-REPLACE(:P600_CHECK_IMP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P600_CHECK_IMP_ADJUSMENT_1,P600_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_CHECK_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42452805229004138)
,p_event_id=>wwv_flow_api.id(42451811039004137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHECK_IMP_NET_UNIT_1:=(REPLACE(:P600_CHECK_IMP_TOTAL_UNIT_1,'','','''')-REPLACE(:P600_CHECK_IMP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P600_CHECK_IMP_ADJUSMENT_1,P600_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_CHECK_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42453207797004138)
,p_name=>'CAL_CHK_POWER_FACTOR_EXPORT'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_NET_READING_KWH_1,P600_NET_READING_KVAH_1'
,p_condition_element=>'P600_PROJECT'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'0000.01.03.0001.00XR.00.1UYw3QcryP,0000.01.03.0001.00XR.00.1UYw3QcvTX,0000.01.03.0001.00XR.00.1UYw3QtwC6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42453705173004139)
,p_event_id=>wwv_flow_api.id(42453207797004138)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_CHK_POWER_FACTOR_EXPORT:= to_char(round(cos(ATAN(REPLACE(:P600_NET_READING_KVAH_1,'','','''')/nvl(REPLACE(:P600_NET_READING_KWH_1,'','',''''),1))),3),''999G999G999G999G990D000'');',
''))
,p_attribute_02=>'P600_NET_READING_KWH_1,P600_NET_READING_KVAH_1'
,p_attribute_03=>'P600_CHK_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42454218960004140)
,p_event_id=>wwv_flow_api.id(42453207797004138)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_CHK_POWER_FACTOR_EXPORT:=to_char(round(REPLACE(:P600_NET_READING_KWH_1,'','','''') / NVL(REPLACE(:P600_NET_READING_KVAH_1,'','',''''),''1''),3),''999G999G999G999G990D000'');'
,p_attribute_02=>'P600_NET_READING_KWH_1,P600_NET_READING_KVAH_1'
,p_attribute_03=>'P600_CHK_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42454548546004140)
,p_name=>'NET READING KAVH'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_DIFFERENCE_1,P600_MAIN_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42455077246004141)
,p_event_id=>wwv_flow_api.id(42454548546004140)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P600_NET_READING_KVAH:=REPLACE(:P600_MAIN_EXP_DIFFERENCE_1,'','','''')- REPLACE(:P600_MAIN_IMP_DIFFERENCE_1,'','','''') ;',
'',
'',
'',
''))
,p_attribute_02=>'P600_MAIN_EXP_DIFFERENCE_1,P600_MAIN_IMP_DIFFERENCE_1'
,p_attribute_03=>'P600_NET_READING_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42455477175004141)
,p_name=>'CAL_MAIN_EXP_NET_UNIT_1'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_EXP_TOTAL_UNIT_1,P600_MAIN_EXP_ADJUSMENT_1,P600_MAIN_EXP_UOM_1'
,p_condition_element=>'P600_MAIN_EXP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42455983444004142)
,p_event_id=>wwv_flow_api.id(42455477175004141)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_NET_UNIT_1:=REPLACE(:P600_MAIN_EXP_TOTAL_UNIT_1,'','','''')+REPLACE(:P600_MAIN_EXP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P600_MAIN_EXP_ADJUSMENT_1,P600_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_MAIN_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42456448939004143)
,p_event_id=>wwv_flow_api.id(42455477175004141)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_EXP_NET_UNIT_1:=(REPLACE(:P600_MAIN_EXP_TOTAL_UNIT_1,'','','''')+REPLACE(:P600_MAIN_EXP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P600_MAIN_EXP_ADJUSMENT_1,P600_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P600_MAIN_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42456889702004143)
,p_name=>'CAL_MAIN_IMP_NET_UNIT_1'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_TOTAL_UNIT_1,P600_MAIN_IMP_ADJUSMENT_1,P600_MAIN_IMP_UOM_1'
,p_condition_element=>'P600_MAIN_IMP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42457358799004144)
,p_event_id=>wwv_flow_api.id(42456889702004143)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_IMP_NET_UNIT_1:=(REPLACE(:P600_MAIN_IMP_TOTAL_UNIT_1,'','','''')+REPLACE(:P600_MAIN_IMP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P600_MAIN_IMP_TOTAL_UNIT_1,P600_MAIN_IMP_ADJUSMENT_1'
,p_attribute_03=>'P600_MAIN_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42457904289004144)
,p_event_id=>wwv_flow_api.id(42456889702004143)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_IMP_NET_UNIT_1:=REPLACE(:P600_MAIN_IMP_TOTAL_UNIT_1,'','','''')+REPLACE(:P600_MAIN_IMP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P600_MAIN_IMP_TOTAL_UNIT_1,P600_MAIN_IMP_ADJUSMENT_1'
,p_attribute_03=>'P600_MAIN_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42458277742004145)
,p_name=>'New'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P600_MAIN_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42458786164004146)
,p_event_id=>wwv_flow_api.id(42458277742004145)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P600_MAIN_IMP_TOTAL_UNIT_1:=REPLACE(:P600_MAIN_IMP_DIFFERENCE_1,'','','''')*REPLACE(:P600_MAIN_IMP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P600_MAIN_IMP_DIFFERENCE_1,P600_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P600_MAIN_IMP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42459181662004146)
,p_name=>'Hide Print Region'
,p_event_sequence=>430
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42459635689004147)
,p_event_id=>wwv_flow_api.id(42459181662004146)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#PDF'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42460059952004147)
,p_name=>'JMR Print'
,p_event_sequence=>440
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42332009854003960)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42460602020004148)
,p_event_id=>wwv_flow_api.id(42460059952004147)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#PDF'').show();',
' setTimeout(function () {',
'    var element = document.getElementById(''PDF'');',
'    var name1 = $v(''P600_GLOBAL_PROJ_NAME'');',
'    var opt = {',
'      filename: name1 +'' JMR.pdf'',',
'      image: { type: ''jpeg'',quality: 1},',
'      //html2canvas: {scale: 1,letterRendering: true},',
'',
'       html2canvas: {',
'        dpi: 330,',
'        scale:4,',
'        letterRendering: true,',
'        useCORS: true',
'      },',
'',
'      jsPDF: {unit: ''mm'',format: ''A4'',orientation: ''portrait''},',
'      //pagebreak: {mode:''avoid-all'', before: ''.pagebreak''},',
'    //   pagebreak: {avoid:''tr'', mode:''always'', before: ''.mytable1''},',
'      margin:5',
'    //   margin: [2, 2, 2, 2]',
'    }',
'    ',
'// document.getElementById("btnPrint").style.visibility = "hidden";',
'// document.getElementById("btnPrint2").style.visibility = "hidden";',
'// document.getElementById("generatePDF").style.visibility = "hidden";',
'',
'    html2pdf().set(opt).from(element).save();',
'        setTimeout(',
'        function() ',
'  {  $(''#PDF'').hide(); }, 50);',
' ',
'  }, 1);',
'',
''))
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42461007304004148)
,p_name=>'New_1'
,p_event_sequence=>450
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42461523127004149)
,p_event_id=>wwv_flow_api.id(42461007304004148)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42411335889004080)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code VARCHAR2(30);',
'v_prj_prefix varchar2(5);',
'V_STRT_YEAR DATE;',
'V_END_YEAR  DATE;',
'',
'begin',
'      select VC_PROJ_PREFIX  ',
'      into  v_prj_prefix ',
'      from MST_PROJ_PREFIX ',
'      where VC_COMPANY_CODE = :GLOBAL_COMP_CODE',
'      AND VC_PROJ_CODE = :GLOBAL_PROJ_ID;',
'     ',
'       SELECT FY_STRT,FY_END',
'       INTO   V_STRT_YEAR,V_END_YEAR',
'       FROM   APPUA.VW_FY',
'       WHERE   ORG_ID = :GLOBAL_COMP_CODE',
'       AND    YEAR_CLOSING_FLG  = ''N'' ;',
'',
'    begin',
'            select  lpad(nvl(max(to_number(substr(VC_JMR_NO,instr(VC_JMR_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'            into  v_code ',
'            from DT_JMR ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_JMR_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'          :P600_JMR_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
'    ',
'    end;',
'',
'insert into DT_JMR',
'(',
'ORG_ID, PRJ_ID, VC_JMR_NO, DT_JMR_DATE, VC_PPA_NO, DT_PPA_DATE, EO_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID, ITM_ID,  ',
'NU_QTY, NU_RATE, VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, NU_MAIN_EXP_PRV_READING, NU_MAIN_EXP_CUR_READING, NU_MAIN_EXP_DIFFERNCE, ',
'NU_MAIN_EXP_FACTOR, NU_MAIN_EXP_TOTAL_UNIT, NU_MAIN_EXP_ADJUSTMENT, NU_MAIN_EXP_NET_UNIT, NU_MAIN_IMP_PRV_READING, NU_MAIN_IMP_CUR_READING, ',
'NU_MAIN_IMP_DIFFERNCE, NU_MAIN_IMP_FACTOR, NU_MAIN_IMP_TOTAL_UNIT, NU_MAIN_IMP_ADJUSTMENT, NU_MAIN_IMP_NET_UNIT, NU_MAIN_NET_EXP_UNIT, ',
'CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID, NU_CHK_EXP_PRV_READING, NU_CHK_EXP_CUR_READING,NU_CHK_EXP_DIFFERNCE, NU_CHK_EXP_FACTOR, ',
'NU_CHK_EXP_TOTAL_UNIT, NU_CHK_EXP_ADJUSTMENT, NU_CHK_EXP_NET_UNIT, NU_CHK_IMP_PRV_READING,NU_CHK_IMP_CUR_READING, NU_CHK_IMP_DIFFERNCE, ',
'NU_CHK_IMP_FACTOR, NU_CHK_IMP_TOTAL_UNIT, NU_CHK_IMP_ADJUSTMENT, NU_CHK_IMP_NET_UNIT, NU_CHK_NET_EXP_UNIT, CH_CHK_METER_WORKING, ',
'VC_CHK_METER_REMARKS, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID,DT_PERIOD_FROM,DT_PERIOD_TO,VC_REMARKS,',
'NU_INV_NET_UNIT,',
'',
'NU_MAIN_EXP_PRV_KVAH_READ,NU_MAIN_EXP_CUR_KVAH_READ,NU_MAIN_IMP_PRV_KVAH_READ,NU_MAIN_IMP_CUR_KVAH_READ,',
'',
'NU_CHECK_IMP_PRV_KVAH_READ,NU_CHECK_EXP_PRV_KVAH_READ,NU_CHECK_IMP_CUR_KVAH_READ,NU_CHECK_EXP_CUR_KVAH_READ,',
'',
'NU_MAIN_EXP_DIFFERNCE_1  ,',
'NU_MAIN_EXP_TOTAL_UNIT_1,',
'NU_MAIN_EXP_UOM_1  ,',
'NU_MAIN_EXP_ADJUSTMENT_1,',
'NU_MAIN_EXP_NET_UNIT_1	,',
'',
'NU_MAIN_IMP_DIFFERNCE_1	,',
'NU_MAIN_IMP_TOTAL_UNIT_1,',
'NU_MAIN_IMP_UOM_1 ,',
'NU_MAIN_IMP_ADJUSTMENT_1,',
'NU_MAIN_IMP_NET_UNIT_1 ,',
'',
'NU_MAIN_NET_READING_KWH ,',
'NU_MAIN_NET_READING_KVAH ,',
'',
'NU_CHK_IMP_DIFFERNCE_1	,',
'NU_CHK_IMP_TOTAL_UNIT_1	,',
'NU_CHK_IMP_UOM_1 ,',
'NU_CHK_IMP_ADJUSTMENT_1	,',
'NU_CHK_IMP_NET_UNIT_1	,',
'',
'NU_CHK_EXP_DIFFERNCE_1	,',
'NU_CHK_EXP_TOTAL_UNIT_1	,',
'NU_CHK_EXP_UOM_1 ,',
'NU_CHK_EXP_ADJUSTMENT_1	,',
'NU_CHK_EXP_NET_UNIT_1  ,',
'',
'NU_CHK_NET_READING_KWH_1 ,',
'NU_CHK_NET_READING_KVAH_1,',
'VC_FROM_TIME,',
'VC_TO_TIME,',
'vc_main_remarks,VC_CHK_REMARKS,DT_JMR_READING,',
' VC_AUTH_SIGN_COMP,VC_AUTH_SIGN_PSPCL,VC_AUTH_SIGN_PSPCL_1,',
' NU_MAIN_POWER_FACT,',
' NU_CHK_POWER_FACT',
' )',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P600_JMR_NO,:P600_JMR_DATE,:P600_PPA_NO,:P600_PPA_DATE,:P600_CUSTOMER_CODE,:P600_BILLING_POINT,:P600_METERING_POINT_DESC,:P600_GRP_ID,:P600_ITEM_CODE,',
':P600_QTY,:P600_RATE,:P600_MAIN_METER_NO,:P600_MAIN_METER_LOC,',
'REPLACE(:P600_MAIN_EXP_PREV_READ,'','',''''),REPLACE(:P600_MAIN_EXP_CURR_READ,'','',''''),REPLACE(:P600_MAIN_EXP_DIFFERENCE,'','',''''),',
'REPLACE(:P600_MAIN_EXP_MULTI_FAC,'','',''''),REPLACE(:P600_MAIN_EXP_TOTAL_UNIT,'','',''''),REPLACE(:P600_MAIN_EXP_ADJUSMENT,'','',''''),',
'REPLACE(:P600_MAIN_EXP_NET_UNIT,'','',''''),REPLACE(:P600_MAIN_IMP_PREV_READ,'','',''''),REPLACE(:P600_MAIN_IMP_CURR_READ,'','',''''),',
'REPLACE(:P600_MAIN_IMP_DIFFERENCE,'','',''''),REPLACE(:P600_MAIN_IMP_MULTI_FAC,'','',''''),REPLACE(:P600_MAIN_IMP_TOTAL_UNIT,'','',''''),',
'REPLACE(:P600_MAIN_IMP_ADJUSMENT,'','',''''),REPLACE(:P600_MAIN_IMP_NET_UNIT,'','',''''),REPLACE(:P600_MAIN_NET_EXP_UNIT,'','',''''),',
':P600_MAIN_METER_WORK,:P600_MAIN_METER_REMARK,:P600_CHECK_METER_NO,:P600_CHECK_METER_LOC,',
'REPLACE(:P600_CHECK_EXP_PREV_READ,'','',''''),REPLACE(:P600_CHECK_EXP_CURR_READ,'','',''''),REPLACE(:P600_CHECK_EXP_DIFFERENCE,'','',''''),',
'REPLACE(:P600_CHECK_EXP_MULTI_FAC,'','',''''),REPLACE(:P600_CHECK_EXP_TOTAL_UNIT,'','',''''),REPLACE(:P600_CHECK_EXP_ADJUSMENT,'','',''''),',
'REPLACE(:P600_CHECK_EXP_NET_UNIT,'','',''''),REPLACE(:P600_CHECK_IMP_PREV_READ,'','',''''),REPLACE(:P600_CHECK_IMP_CURR_READ,'','',''''),',
'REPLACE(:P600_CHECK_IMP_DIFFERENCE,'','',''''),REPLACE(:P600_CHECK_IMP_MULTI_FAC,'','',''''),REPLACE(:P600_CHECK_IMP_TOTAL_UNIT,'','',''''),',
'REPLACE(:P600_CHECK_IMP_ADJUSMENT,'','',''''),REPLACE(:P600_CHECK_IMP_NET_UNIT,'','',''''),REPLACE(:P600_CHECK_NET_EXP_UNIT,'','',''''),',
':P600_CHECK_METER_WORK,:P600_CHECK_METER_REMARK,:GLOBAL_USER_CODE,sysdate,:GLOBAL_PARENT_COMP,:P600_PERIOD_FROM,:P600_PERIOD_TO,:P600_REMARKS,',
'decode(:P600_MAIN_METER_WORK,''Y'',REPLACE(:P600_MAIN_NET_EXP_UNIT,'','',''''),REPLACE(:P600_CHECK_NET_EXP_UNIT,'','','''')),',
'',
'REPLACE(:P600_MAIN_EXPORT_PRV_KVAH,'','',''''),REPLACE(:P600_MAIN_EXPORT_CUR_KVAH,'','',''''),REPLACE(:P600_MAIN_IMPORT_PRV_KVAH,'','',''''),REPLACE(:P600_MAIN_IMPORT_CUR_KVAH,'','',''''),',
'',
'REPLACE(:P600_CHECK_IMPORT_PRV_KVAH,'','',''''),REPLACE(:P600_CHECK_EXPORT_PRV_KVAH,'','',''''),REPLACE(:P600_CHECK_IMPORT_CUR_KVAH,'','',''''),REPLACE(:P600_CHECK_EXPORT_CUR_KVAH,'','',''''),',
'REPLACE(:P600_MAIN_EXP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P600_MAIN_EXP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P600_MAIN_EXP_UOM_1,'','','''')  ,',
'REPLACE(:P600_MAIN_EXP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P600_MAIN_EXP_NET_UNIT_1,'','',''''),',
'REPLACE(:P600_MAIN_IMP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P600_MAIN_IMP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P600_MAIN_IMP_UOM_1,'','','''') ,',
'REPLACE(:P600_MAIN_IMP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P600_MAIN_IMP_NET_UNIT_1,'','','''') ,',
'REPLACE(:P600_NET_READING_KWH,'','','''') ,',
'REPLACE(:P600_NET_READING_KVAH,'','','''') ,',
'REPLACE(:P600_CHECK_IMP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P600_CHECK_IMP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P600_CHECK_IMP_UOM_1,'','','''') ,',
'REPLACE(:P600_CHECK_IMP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P600_CHECK_IMP_NET_UNIT_1,'','','''')	,',
'REPLACE(:P600_CHECK_EXP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P600_CHECK_EXP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P600_CHECK_EXP_UOM_1,'','','''') ,',
'REPLACE(:P600_CHECK_EXP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P600_CHECK_EXP_NET_UNIT_1,'','',''''),',
'',
'REPLACE(:P600_NET_READING_KWH_1,'','','''') ,',
'REPLACE(:P600_NET_READING_KVAH_1,'','','''') ,',
':P600_FROM_TIME,',
':P600_TO_TIME,',
':P600_REMARKS_MAIN,',
':P600_REMARKS_CHECK,',
':P600_JMR_READING_DATE,',
':P600_AUTH_SIGN_NAME,',
':P600_AUTH_SIGN_1,',
':P600_AUTH_SIGN_2,',
'REPLACE(:P600_POWER_FACTOR_EXPORT,'','','''') ,',
'REPLACE(:P600_CHK_POWER_FACTOR_EXPORT,'','','''') ',
');',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42331141497003959)
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.component_end;
end;
/
begin
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42412177780004083)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update DT_JMR',
'set',
'VC_PPA_NO   			    =:P600_PPA_NO, ',
'DT_PPA_DATE			        =:P600_PPA_DATE, ',
'EO_ID				        =:P600_CUSTOMER_CODE, ',
'NU_DELIVERY_POINT_ID	    =:P600_BILLING_POINT, ',
'NU_METERING_POINT_ID	    =:P600_METERING_POINT_DESC, ',
'GRP_ID				        =:P600_GRP_ID, ',
'ITM_ID				        =:P600_ITEM_CODE,  ',
'--NU_QTY				        =REPLACE(:P600_QTY,'','',''''),',
'NU_RATE				        =:P600_RATE,',
'VC_MAIN_METER_NO		    =:P600_MAIN_METER_NO,',
'NU_MAIN_METER_LOC_ID		=:P600_MAIN_METER_LOC,',
'NU_MAIN_EXP_PRV_READING		=REPLACE(:P600_MAIN_EXP_PREV_READ,'','',''''),',
'NU_MAIN_EXP_CUR_READING		=REPLACE(:P600_MAIN_EXP_CURR_READ,'','',''''),',
'NU_MAIN_EXP_DIFFERNCE		=REPLACE(:P600_MAIN_EXP_DIFFERENCE,'','',''''),',
'NU_MAIN_EXP_FACTOR	    	=REPLACE(:P600_MAIN_EXP_MULTI_FAC,'','',''''),',
'NU_MAIN_EXP_TOTAL_UNIT		=REPLACE(:P600_MAIN_EXP_TOTAL_UNIT,'','',''''), ',
'NU_MAIN_EXP_ADJUSTMENT		=REPLACE(:P600_MAIN_EXP_ADJUSMENT,'','',''''),',
'NU_MAIN_EXP_NET_UNIT		=REPLACE(:P600_MAIN_EXP_NET_UNIT,'','',''''),',
'NU_MAIN_IMP_PRV_READING		=REPLACE(:P600_MAIN_IMP_PREV_READ,'','',''''),',
'NU_MAIN_IMP_CUR_READING		=REPLACE(:P600_MAIN_IMP_CURR_READ,'','',''''),',
'NU_MAIN_IMP_DIFFERNCE		=REPLACE(:P600_MAIN_IMP_DIFFERENCE,'','',''''),',
'NU_MAIN_IMP_FACTOR		    =REPLACE(:P600_MAIN_IMP_MULTI_FAC,'','',''''),',
'NU_MAIN_IMP_TOTAL_UNIT		=REPLACE(:P600_MAIN_IMP_TOTAL_UNIT,'','',''''),',
'NU_MAIN_IMP_ADJUSTMENT		=REPLACE(:P600_MAIN_IMP_ADJUSMENT,'','',''''),',
'NU_MAIN_IMP_NET_UNIT        =REPLACE(:P600_MAIN_IMP_NET_UNIT,'','',''''),',
'NU_MAIN_NET_EXP_UNIT        =REPLACE(:P600_MAIN_NET_EXP_UNIT,'','',''''),',
'CH_MAIN_METER_WORKING		=:P600_MAIN_METER_WORK,',
'VC_MAIN_METER_REMARKS		=:P600_MAIN_METER_REMARK,',
'VC_CHK_METER_NO			    =:P600_CHECK_METER_NO,',
'NU_CHK_METER_LOC_ID		    =:P600_CHECK_METER_LOC,',
'NU_CHK_EXP_PRV_READING		=REPLACE(:P600_CHECK_EXP_PREV_READ,'','',''''),',
'NU_CHK_EXP_CUR_READING		=REPLACE(:P600_CHECK_EXP_CURR_READ,'','',''''),',
'NU_CHK_EXP_DIFFERNCE		=REPLACE(:P600_CHECK_EXP_DIFFERENCE,'','',''''),',
'NU_CHK_EXP_FACTOR	    	=REPLACE(:P600_CHECK_EXP_MULTI_FAC,'','',''''),',
'NU_CHK_EXP_TOTAL_UNIT		=REPLACE(:P600_CHECK_EXP_TOTAL_UNIT,'','',''''),',
'NU_CHK_EXP_ADJUSTMENT		=REPLACE(:P600_CHECK_EXP_ADJUSMENT,'','',''''),',
'NU_CHK_EXP_NET_UNIT		    =REPLACE(:P600_CHECK_EXP_NET_UNIT,'','',''''),',
'NU_CHK_IMP_PRV_READING		=REPLACE(:P600_CHECK_IMP_PREV_READ,'','',''''),',
'NU_CHK_IMP_CUR_READING		=REPLACE(:P600_CHECK_IMP_CURR_READ,'','',''''),',
'NU_CHK_IMP_DIFFERNCE		=REPLACE(:P600_CHECK_IMP_DIFFERENCE,'','',''''),',
'NU_CHK_IMP_FACTOR		    =REPLACE(:P600_CHECK_IMP_MULTI_FAC,'','',''''),',
'NU_CHK_IMP_TOTAL_UNIT		=REPLACE(:P600_CHECK_IMP_TOTAL_UNIT,'','',''''),',
'NU_CHK_IMP_ADJUSTMENT		=REPLACE(:P600_CHECK_IMP_ADJUSMENT,'','',''''),',
'NU_CHK_IMP_NET_UNIT	    	=REPLACE(:P600_CHECK_IMP_NET_UNIT,'','',''''),',
'NU_CHK_NET_EXP_UNIT		    =REPLACE(:P600_CHECK_NET_EXP_UNIT,'','',''''),',
'CH_CHK_METER_WORKING		=:P600_CHECK_METER_WORK,',
'VC_CHK_METER_REMARKS		=:P600_CHECK_METER_REMARK,',
'DT_PERIOD_FROM              =:P600_PERIOD_FROM,',
'DT_PERIOD_TO                =:P600_PERIOD_TO,',
'VC_REMARKS                  = :P600_REMARKS,',
'NU_INV_NET_UNIT             =decode(:P600_MAIN_METER_WORK,''Y'',REPLACE(:P600_MAIN_NET_EXP_UNIT,'','',''''),REPLACE(:P600_CHECK_NET_EXP_UNIT,'','','''')),',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'NU_MAIN_EXP_PRV_KVAH_READ = REPLACE(:P600_MAIN_EXPORT_PRV_KVAH,'','',''''),',
'NU_MAIN_EXP_CUR_KVAH_READ = REPLACE(:P600_MAIN_EXPORT_CUR_KVAH,'','',''''),',
'NU_MAIN_IMP_PRV_KVAH_READ = REPLACE(:P600_MAIN_IMPORT_PRV_KVAH,'','',''''),',
'NU_MAIN_IMP_CUR_KVAH_READ = REPLACE(:P600_MAIN_IMPORT_CUR_KVAH,'','',''''),',
'',
'',
'NU_CHECK_IMP_PRV_KVAH_READ = REPLACE(:P600_CHECK_IMPORT_PRV_KVAH,'','',''''),',
'NU_CHECK_EXP_PRV_KVAH_READ = REPLACE(:P600_CHECK_EXPORT_PRV_KVAH,'','',''''),',
'NU_CHECK_IMP_CUR_KVAH_READ = REPLACE(:P600_CHECK_IMPORT_CUR_KVAH,'','',''''),',
'NU_CHECK_EXP_CUR_KVAH_READ = REPLACE(:P600_CHECK_EXPORT_CUR_KVAH,'','',''''),',
'',
'',
'NU_MAIN_EXP_DIFFERNCE_1  =REPLACE(:P600_MAIN_EXP_DIFFERENCE_1,'','',''''),',
'NU_MAIN_EXP_TOTAL_UNIT_1 =REPLACE(:P600_MAIN_EXP_TOTAL_UNIT_1,'','',''''),',
'NU_MAIN_EXP_UOM_1        =REPLACE(:P600_MAIN_EXP_UOM_1,'','',''''),',
'NU_MAIN_EXP_ADJUSTMENT_1 =REPLACE(:P600_MAIN_EXP_ADJUSMENT_1,'','',''''),',
'NU_MAIN_EXP_NET_UNIT_1	 =REPLACE(:P600_MAIN_EXP_NET_UNIT_1,'','',''''),',
'NU_MAIN_IMP_DIFFERNCE_1	 =REPLACE(:P600_MAIN_IMP_DIFFERENCE_1,'','',''''),',
'NU_MAIN_IMP_TOTAL_UNIT_1 =REPLACE(:P600_MAIN_IMP_TOTAL_UNIT_1,'','',''''),',
'NU_MAIN_IMP_UOM_1        =REPLACE(:P600_MAIN_IMP_UOM_1,'','',''''),',
'NU_MAIN_IMP_ADJUSTMENT_1 =REPLACE(:P600_MAIN_IMP_ADJUSMENT_1,'','',''''),',
'NU_MAIN_IMP_NET_UNIT_1   =REPLACE(:P600_MAIN_IMP_NET_UNIT_1,'','',''''),',
'NU_MAIN_NET_READING_KWH  =REPLACE(:P600_NET_READING_KWH,'','',''''),',
'NU_MAIN_NET_READING_KVAH =REPLACE(:P600_NET_READING_KVAH,'','',''''),',
'NU_CHK_IMP_DIFFERNCE_1 	 =REPLACE(:P600_CHECK_IMP_DIFFERENCE_1,'','',''''),',
'NU_CHK_IMP_TOTAL_UNIT_1	 =REPLACE(:P600_CHECK_IMP_TOTAL_UNIT_1,'','',''''),',
'NU_CHK_IMP_UOM_1         =REPLACE(:P600_CHECK_IMP_UOM_1,'','',''''),',
'NU_CHK_IMP_ADJUSTMENT_1	 =REPLACE(:P600_CHECK_IMP_ADJUSMENT_1,'','',''''),',
'NU_CHK_IMP_NET_UNIT_1    =REPLACE(:P600_CHECK_IMP_NET_UNIT_1,'','',''''),',
'NU_CHK_EXP_DIFFERNCE_1   =REPLACE(:P600_CHECK_EXP_DIFFERENCE_1,'','',''''),',
'NU_CHK_EXP_TOTAL_UNIT_1	 =REPLACE(:P600_CHECK_EXP_TOTAL_UNIT_1,'','',''''),',
'NU_CHK_EXP_UOM_1         =REPLACE(:P600_CHECK_EXP_UOM_1,'','',''''),',
'NU_CHK_EXP_ADJUSTMENT_1	 =REPLACE(:P600_CHECK_EXP_ADJUSMENT_1,'','',''''),',
'NU_CHK_EXP_NET_UNIT_1    =REPLACE(:P600_CHECK_EXP_NET_UNIT_1,'','',''''),',
'NU_CHK_NET_READING_KWH_1 =REPLACE(:P600_NET_READING_KWH_1,'','',''''),',
'NU_CHK_NET_READING_KVAH_1 =REPLACE(:P600_NET_READING_KVAH_1,'','',''''),',
'VC_FROM_TIME= :P600_FROM_TIME,',
'VC_TO_TIME=:P600_TO_TIME,',
'vc_main_remarks=:P600_REMARKS_MAIN,',
'VC_CHK_REMARKS=:P600_REMARKS_CHECK,',
'DT_JMR_READING = :P600_JMR_READING_DATE,',
'VC_AUTH_SIGN_COMP = :P600_AUTH_SIGN_NAME,',
'VC_AUTH_SIGN_PSPCL = :P600_AUTH_SIGN_1,',
'VC_AUTH_SIGN_PSPCL_1 = :P600_AUTH_SIGN_2,',
'NU_MAIN_POWER_FACT = REPLACE(:P600_POWER_FACTOR_EXPORT,'','',''''),',
'NU_CHK_POWER_FACT =REPLACE(:P600_CHK_POWER_FACTOR_EXPORT,'','','''') ',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P600_JMR_NO',
'AND   DT_JMR_DATE = :P600_JMR_DATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42331141497003959)
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42413398939004086)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'insert Upload File'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,blob001',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''FILE_UPLOAD'';',
'      ',
' v_id  number;',
' ',
' begin',
' ',
'IF :P600_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P600_JMR_NO ',
'                            AND DT_DOC_DATE = :P600_JMR_DATE ',
'                            AND VC_TRANS_TYPE=''JMR'';',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   Select nvl(max(NU_ATTACH_ID),0)+1 into v_id from DT_ATTACHMENT where ORG_ID = :GLOBAL_COMP_CODE and PRJ_ID = :GLOBAL_PROJ_ID;',
'   ',
'   insert into  DT_ATTACHMENT',
'   (',
'  ORG_ID, PRJ_ID, NU_ATTACH_ID, DT_ATTACH_DATE, VC_DOC_ID, DT_DOC_DATE, VC_TRANS_TYPE, BL_FILE, VC_FILENAME, VC_MIMETYPE,',
'   USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'       )',
'   values',
'   (',
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P600_JMR_NO,:P600_JMR_DATE,''JMR'', I.BLOB001,I.C001,I.C002,',
'      :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_USER_CODE,SYSDATE,    :GLOBAL_PARENT_COMP',
'   ',
'   )',
';',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42331141497003959)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42410973928004080)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42413023025004085)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''POWER_FACTOR'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''POWER_FACTOR'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHK_POWER_FACTOR'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHK_POWER_FACTOR'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42410609144004079)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection_1'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''POWER_FACTOR'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''POWER_FACTOR'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''CHK_POWER_FACTOR'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''CHK_POWER_FACTOR'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42330410465003958)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42411774829004082)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select ',
' VC_PPA_NO, DT_PPA_DATE, EO_ID, NU_DELIVERY_POINT_ID, NU_METERING_POINT_ID, GRP_ID, ITM_ID,  ',
'REPLACE(TO_CHAR(NU_QTY,''999G999G999G999G990D00''),'','',''''), REPLACE(TO_CHAR(NU_RATE,''999G999G999G999G990D00''),'','',''''), VC_MAIN_METER_NO, NU_MAIN_METER_LOC_ID, REPLACE(TO_CHAR(NU_MAIN_EXP_PRV_READING,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(N'
||'U_MAIN_EXP_CUR_READING,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_DIFFERNCE,''999G999G999G999G990D000''),'','',''''), ',
'REPLACE(TO_CHAR(NU_MAIN_EXP_FACTOR,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_TOTAL_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_ADJUSTMENT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_N'
||'ET_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_PRV_READING,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_CUR_READING,''999G999G999G999G990D000''),'','',''''), ',
'REPLACE(TO_CHAR(NU_MAIN_IMP_DIFFERNCE,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_FACTOR,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_TOTAL_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_AD'
||'JUSTMENT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_NET_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_NET_EXP_UNIT,''999G999G999G999G990D000''),'','',''''), ',
'CH_MAIN_METER_WORKING, VC_MAIN_METER_REMARKS,',
'VC_CHK_METER_NO, NU_CHK_METER_LOC_ID,NU_CHK_EXP_PRV_READING, REPLACE(TO_CHAR(NU_CHK_EXP_CUR_READING,''999G999G999G999G990D000''),'','',''''),REPLACE(TO_CHAR(NU_CHK_EXP_DIFFERNCE,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_FACTOR,''999G999'
||'G999G999G990D000''),'','',''''), ',
'REPLACE(TO_CHAR(NU_CHK_EXP_TOTAL_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_ADJUSTMENT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_EXP_NET_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_PRV'
||'_READING,''999G999G999G999G990D000''),'','',''''),REPLACE(TO_CHAR(NU_CHK_IMP_CUR_READING,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_DIFFERNCE,''999G999G999G999G990D000''),'','',''''), ',
'REPLACE(TO_CHAR(NU_CHK_IMP_FACTOR,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_TOTAL_UNIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_ADJUSTMENT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_IMP_NET_U'
||'NIT,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_CHK_NET_EXP_UNIT,''999G999G999G999G990D000''),'','',''''), CH_CHK_METER_WORKING, ',
'VC_CHK_METER_REMARKS,DT_PERIOD_FROM,DT_PERIOD_TO,VC_REMARKS,REPLACE(TO_CHAR(NU_MAIN_EXP_PRV_KVAH_READ,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_EXP_CUR_KVAH_READ,''999G999G999G999G990D000''),'','',''''), REPLACE(TO_CHAR(NU_MAIN_IMP_PRV_KV'
||'AH_READ,''999G999G999G999G990D000''),'','',''''),REPLACE(TO_CHAR(NU_MAIN_IMP_CUR_KVAH_READ,''999G999G999G999G990D000''),'','','''')',
',REPLACE(to_char(NU_CHECK_IMP_PRV_KVAH_READ,''999G999G999G999G990D000''),'','',''''),',
'REPLACE(to_char(NU_CHECK_EXP_PRV_KVAH_READ,''999G999G999G999G990D000''),'','','''')',
',NU_CHECK_IMP_CUR_KVAH_READ,NU_CHECK_EXP_CUR_KVAH_READ,',
'to_char(NU_MAIN_EXP_DIFFERNCE_1,''999G999G999G999G990D000'')  ,',
'to_char(NU_MAIN_EXP_TOTAL_UNIT_1,''999G999G999G999G990D000''),',
'NU_MAIN_EXP_UOM_1  ,',
'to_char(NU_MAIN_EXP_ADJUSTMENT_1,''999G999G999G999G990D000''),',
'to_char(NU_MAIN_EXP_NET_UNIT_1,''999G999G999G999G990D000'')	,',
'',
'to_char(NU_MAIN_IMP_DIFFERNCE_1,''999G999G999G999G990D000'')	,',
'to_char(NU_MAIN_IMP_TOTAL_UNIT_1,''999G999G999G999G990D000''),',
'NU_MAIN_IMP_UOM_1 ,',
'to_char(NU_MAIN_IMP_ADJUSTMENT_1,''999G999G999G999G990D000''),',
'to_char(NU_MAIN_IMP_NET_UNIT_1,''999G999G999G999G990D000'') ,',
'',
'to_char(NU_MAIN_NET_READING_KWH,''999G999G999G999G990D000'') ,',
'to_char(NU_MAIN_NET_READING_KVAH,''999G999G999G999G990D000'') ,',
'',
'to_char(NU_CHK_IMP_DIFFERNCE_1,''999G999G999G999G990D000'')	,',
'to_char(NU_CHK_IMP_TOTAL_UNIT_1,''999G999G999G999G990D000'')	,',
'NU_CHK_IMP_UOM_1 ,',
'to_char(NU_CHK_IMP_ADJUSTMENT_1,''999G999G999G999G990D000'')	,',
'to_char(NU_CHK_IMP_NET_UNIT_1,''999G999G999G999G990D000'')	,',
'',
'to_char(NU_CHK_EXP_DIFFERNCE_1,''999G999G999G999G990D000'')	,',
'to_char(NU_CHK_EXP_TOTAL_UNIT_1,''999G999G999G999G990D000'')	,',
'NU_CHK_EXP_UOM_1,',
'to_char(NU_CHK_EXP_ADJUSTMENT_1,''999G999G999G999G990D000'')	,',
'to_char(NU_CHK_EXP_NET_UNIT_1,''999G999G999G999G990D000'')  ,',
'',
'to_char(NU_CHK_NET_READING_KWH_1,''999G999G999G999G990D000'') ,',
'to_char(NU_CHK_NET_READING_KVAH_1,''999G999G999G999G990D000'') ,',
'VC_FROM_TIME,',
'VC_TO_TIME,',
'DT_JMR_READING,',
'VC_AUTH_SIGN_COMP,',
'VC_AUTH_SIGN_PSPCL,',
'VC_AUTH_SIGN_PSPCL_1',
'',
'INTO',
'',
':P600_PPA_NO, :P600_PPA_DATE, :P600_CUSTOMER_CODE,:P600_BILLING_POINT,:P600_METERING_POINT_DESC,:P600_GRP_ID,:P600_ITEM_CODE,',
':P600_QTY,:P600_RATE,:P600_MAIN_METER_NO,:P600_MAIN_METER_LOC,:P600_MAIN_EXP_PREV_READ,:P600_MAIN_EXP_CURR_READ,:P600_MAIN_EXP_DIFFERENCE,',
':P600_MAIN_EXP_MULTI_FAC,:P600_MAIN_EXP_TOTAL_UNIT,:P600_MAIN_EXP_ADJUSMENT,:P600_MAIN_EXP_NET_UNIT,:P600_MAIN_IMP_PREV_READ,:P600_MAIN_IMP_CURR_READ,',
':P600_MAIN_IMP_DIFFERENCE,:P600_MAIN_IMP_MULTI_FAC,:P600_MAIN_IMP_TOTAL_UNIT,:P600_MAIN_IMP_ADJUSMENT,:P600_MAIN_IMP_NET_UNIT,:P600_MAIN_NET_EXP_UNIT,',
':P600_MAIN_METER_WORK,:P600_MAIN_METER_REMARK,',
':P600_CHECK_METER_NO,:P600_CHECK_METER_LOC,:P600_CHECK_EXP_PREV_READ,:P600_CHECK_EXP_CURR_READ,:P600_CHECK_EXP_DIFFERENCE,:P600_CHECK_EXP_MULTI_FAC,',
':P600_CHECK_EXP_TOTAL_UNIT,:P600_CHECK_EXP_ADJUSMENT,:P600_CHECK_EXP_NET_UNIT,:P600_CHECK_IMP_PREV_READ,:P600_CHECK_IMP_CURR_READ,:P600_CHECK_IMP_DIFFERENCE,',
':P600_CHECK_IMP_MULTI_FAC,:P600_CHECK_IMP_TOTAL_UNIT,:P600_CHECK_IMP_ADJUSMENT,:P600_CHECK_IMP_NET_UNIT,:P600_CHECK_NET_EXP_UNIT,:P600_CHECK_METER_WORK,',
':P600_CHECK_METER_REMARK,:P600_PERIOD_FROM,:P600_PERIOD_TO,:P600_REMARKS,',
':P600_MAIN_EXPORT_PRV_KVAH,:P600_MAIN_EXPORT_CUR_KVAH,:P600_MAIN_IMPORT_PRV_KVAH,:P600_MAIN_IMPORT_CUR_KVAH,',
'',
':P600_CHECK_IMPORT_PRV_KVAH,:P600_CHECK_EXPORT_PRV_KVAH,:P600_CHECK_IMPORT_CUR_KVAH,:P600_CHECK_EXPORT_CUR_KVAH,',
':P600_MAIN_EXP_DIFFERENCE_1,',
':P600_MAIN_EXP_TOTAL_UNIT_1,',
':P600_MAIN_EXP_UOM_1,',
':P600_MAIN_EXP_ADJUSMENT_1,',
':P600_MAIN_EXP_NET_UNIT_1,',
':P600_MAIN_IMP_DIFFERENCE_1,',
':P600_MAIN_IMP_TOTAL_UNIT_1,',
':P600_MAIN_IMP_UOM_1,',
':P600_MAIN_IMP_ADJUSMENT_1,',
':P600_MAIN_IMP_NET_UNIT_1,',
':P600_NET_READING_KWH,',
':P600_NET_READING_KVAH,',
':P600_CHECK_IMP_DIFFERENCE_1,',
':P600_CHECK_IMP_TOTAL_UNIT_1,',
':P600_CHECK_IMP_UOM_1,',
':P600_CHECK_IMP_ADJUSMENT_1,',
':P600_CHECK_IMP_NET_UNIT_1,',
':P600_CHECK_EXP_DIFFERENCE_1,',
':P600_CHECK_EXP_TOTAL_UNIT_1,',
':P600_CHECK_EXP_UOM_1,',
':P600_CHECK_EXP_ADJUSMENT_1,',
':P600_CHECK_EXP_NET_UNIT_1,',
'',
':P600_NET_READING_KWH_1,',
':P600_NET_READING_KVAH_1,:P600_FROM_TIME,:P600_TO_TIME,',
':P600_JMR_READING_DATE,',
':P600_AUTH_SIGN_NAME,',
':P600_AUTH_SIGN_1,',
':P600_AUTH_SIGN_2',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P600_JMR_NO',
'AND   DT_JMR_DATE = :P600_JMR_DATE;',
'exception when no_data_found then null;',
'end;',
'begin',
'',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       NU_METERING_POINT_ID,',
'    --   NU_METERING_POINT_ID,',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'       VC_EXTERNAL_DOC_no,DT_EXTERNAL_DOC_DATE',
'     ',
'',
'into   :P600_CUSTOMER_NAME,',
'       :P600_BILLING_POINT_DESC,',
'       :P600_METERING_POINT,',
'   --    :P600_METERING_POINT_DESC,',
'       :P600_ITEM_DESC,',
'       :P600_UOM',
'       ,:P600_PPA_NO_NEW',
'       ,:P600_PPA_DATE_NEW',
'',
'       ',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P600_PPA_NO',
'AND   DT_PPA_DATE = :P600_PPA_DATE;',
'exception when no_data_found then null;',
'end;',
'begin',
'',
'select  VC_LOCATION,',
'        VC_LOCATION',
'into   :P600_MAIN_METER_LOC_DESC,',
'       :P600_CHECK_METER_LOC_DESC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P600_METERING_POINT',
';',
'exception when no_data_found then null;',
'end;',
'',
'',
':P600_MAIN_EXP_UOM :=  :P600_UOM ;',
'',
':P600_MAIN_IMP_UOM := :P600_UOM ;',
'',
':P600_CHECK_EXP_UOM  := :P600_UOM ;',
'',
':P600_CHECK_IMP_UOM  := :P600_UOM ;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42413758488004086)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET INFO OF ATTACHMENT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P600_JMR_NO ',
'               AND   DT_DOC_DATE   = :P600_JMR_DATE',
'               and   vc_trans_type = ''JMR'');',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''FILE_UPLOAD'');',
'         END IF;',
'FOR I IN C1 LOOP',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''FILE_UPLOAD'',',
'                                P_BLOB001        =>  I.BL_FILE,',
'                                P_C001           =>  I.VC_FILENAME,',
'                                P_C002           =>  I.VC_MIMETYPE,',
'                                P_C003           =>  I.NU_ATTACH_ID      ',
'                                ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42412567870004084)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection On JMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'',
'',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42414164277004087)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P600_WKF_STAGE',
'from  DT_JMR',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PROJ_ID',
'and  vc_JMR_no   = :P600_JMR_NO',
'and  dt_JMR_date = :P600_JMR_DATE;',
'exception when no_data_found then :P600_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42414586003004087)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P600_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P600_JMR_NO',
'AND      DT_DOC_DATE = :P600_JMR_DATE',
'AND      VC_DOC_TYPE  = ''JMR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42414955490004088)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Last Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select DT_PERIOD_TO,VC_TO_TIME into :P600_PERIOD_FROM,:P600_FROM_TIME from DT_JMR a',
'where to_number(substr(VC_JMR_NO,instr(VC_JMR_NO,''/'',''1'',''2'')+1)) = (select max(to_number(substr(VC_JMR_NO,instr(VC_JMR_NO,''/'',''1'',''2'')+1))) from DT_JMR d',
'where d.ORG_ID = :global_comp_code ',
'and d.PRJ_ID = :GLOBAL_PROJ_ID )',
'',
'and ORG_ID = :global_comp_code ',
'and PRJ_ID = :GLOBAL_PROJ_ID;',
'exception when others then null;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P600_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
