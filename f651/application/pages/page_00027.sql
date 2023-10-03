prompt --application/pages/page_00027
begin
--   Manifest
--     PAGE: 00027
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
 p_id=>27
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'JMR'
,p_alias=>'JMR'
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
'function RUN_PROCESS2 (request){',
'apex.submit({request:request,showWait:true});',
'}',
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
,p_last_upd_yyyymmddhh24miss=>'20231003114736'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(43743477250546393)
,p_plug_name=>'Print APGPL'
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
'NU_CHK_IMP_NET_UNIT             NUMBER;',
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
'AND  NU_DOC_NO = :P27_CHECK_METER_LOC',
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
'and VC_PLANT_NAME = :GLOBAL_PROJ_ID',
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
'--   AND VC_PPA_NO = :P27_PPA_NO',
'--   AND DT_PPA_DATE >= TRUNC(ADD_MONTHS(TO_DATE(:P27_PPA_DATE,''DD-MM-YYYY''), -1), ''MM'')',
'--   AND DT_JMR_READING < TO_DATE(SUBSTR(:P27_JMR_READING_DATE,1,10),''DD-MM-YYYY'')',
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
'regexp_substr(VC_AUTH_SIGN_PSPCL_1,''[^,]+'', 1, 2),',
'NU_CHK_IMP_NET_UNIT',
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
',NU_CHK_IMP_NET_UNIT',
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
'        <meta name="viewport" content="width=device-width, initial-scale=1">',
'<style>',
'    .print{',
'         ',
'        border-collapse: collapse; ',
'        ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: 12px;',
'            line-height: 2;',
'            margin: auto;    ',
'            height: 297mm;',
'            width:210mm;',
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
'        font-size: 12px;',
'        height:20px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 12px;',
'        height:23px;',
'      ',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        height: 23px !important;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        height: 23px !important;',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'       ',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:150px;',
'        vertical-align: bottom;',
'        ',
'        border-collapse: collapse;',
'        font-size:small;',
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
'<body class = "print">',
'    <table class="contenct">',
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
'            <td> <h3 align="center" style="height:20px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
'            </tr>',
'        </table>',
'',
'    <table class = "main">',
'        ',
'        <tr>',
'            <th rowspan = "2" class="td2">&nbsp;&nbsp;&nbsp;</th>',
'            <th align = "center" class="td2">Plant Side</th>',
'            <th align = "center" class="td2"> Grid Side</th>',
'        </tr>',
'        <tr>',
'            <th align = "center" class="td2">Main Meter</th>',
'            <th align = "center" class="td2">  Check Meter</th>',
'            <th colspan="2" align = "center" class="td2">Calculation</th>',
'        </tr>',
'        '';',
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
'            <td align="center" class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td align ="center"class="td2">''||I.VC_CHK_METER||''</td>',
'            <td class="td2">''||nvl(I.VC_MAIN_CAL_TYPE,I.VC_CHK_CAL_TYPE)||''</td>',
'            <td align ="center"class="td2">''||nvl(I.VC_MAIN_CAL,I.VC_CHK_CAL)||''</td>',
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
'        <td > <h3 align="center" style="height:20px;"> Plant Side Main Meter</h3></td>',
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
'        <th colspan="2" rowspan ="2"class ="BR" align="center">Diff. Of Reading </th>',
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh Units <br> (kWh diff. X MF)</th>',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2"> Time ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P27_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time ''||SUBSTR(:P27_JMR_READING_DATE,-5)||''</td>',
'     ',
'     ',
'    </tr>',
'',
'     <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_IMP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_IMP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM_1||''</b> </td>',
'    </tr>',
'',
'    <tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_PRV_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_CUR_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_DIFFERNCE,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_DIFFERNCE_1,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_NET_UNIT,0),''999G999G999G999G990D00'')||''</td>',
'       ',
'    </tr>',
'',
'',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_PRV_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_CUR_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_DIFFERNCE,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_DIFFERNCE_1,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_IMP_NET_UNIT,0),''999G999G999G999G990D00'')||''</td>',
'       ',
'    </tr>',
' ',
' <!-- <tr>',
'        <td align="Left"  class="td2">Net Export</td>',
'        <td align="center" class="td2">''||TO_CHAR(nvl(NU_MAIN_EXP_PRV_READING,0)    -  NVL(NU_MAIN_IMP_PRV_READING,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_PRV_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_PRV_KVAH_READ,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_CUR_READING,0)    -  NVL(NU_MAIN_IMP_CUR_READING,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_DIFFERNCE,0)   -     NVL(NU_MAIN_IMP_DIFFERNCE  ,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_DIFFERNCE_1,0) -     NVL(NU_MAIN_IMP_DIFFERNCE_1,0),''999G999G999G999G990D00'') ||   ''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_MAIN_EXP_NET_UNIT,0)   -    NVL(NU_MAIN_IMP_NET_UNIT ,0),''999G999G999G999G990D00'') ||   ''</td>',
'       ',
'    </tr> -->',
'',
'',
'    <tr>',
'        <td align="Left"  class="td2">Power Factor</td>',
'        <td align="center" class="td2">''||to_char(POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'        <td colspan="5" rowspan= "1"align="right" class="td2"></td>',
'        <td colspan="5" rowspan= "1"align="center" class="td2">''|| TO_CHAR(NVL(NU_MAIN_EXP_NET_UNIT,0) - NVL(NU_MAIN_IMP_NET_UNIT ,0),''999G999G999G999G990D00'') ||   ''</td>',
'       ',
'       ',
'    </tr>',
'',
'',
'    <tr>',
'        <!-- <td class="diff" ></td> -->',
'        <td colspan="8" align = "center" class="diff" style="height:22px"> <b>Net units received by PSPCL as per terms & conditions of the PPA  = ''|| TO_CHAR(NVL(NU_MAIN_EXP_NET_UNIT,0)   -    NVL(NU_MAIN_IMP_NET_UNIT ,0),''999G999G999G999G990D00'')|| '
||''' kWh </b></td>',
'        <!-- <td align = "right"style = "width:18.2%">2500</td> -->',
'    </tr>',
'    ',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:20px;"> Grid Side Check Meter</h3></td>',
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
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh Units <br> (kWh diff. X MF)</th>',
'        ',
'    </tr>',
'',
'',
'    <tr>',
'        <td align="Left" class="td2">Date</td>',
'        <td align="center" class="td2">''||PREV_DATE||''</td>',
'        <td align="center" class="td2">Time ''||PREV_TIME||''</td>',
'        <td align="center" class="td2">''||SUBSTR(:P27_JMR_READING_DATE,1,10)||''</td>',
'        <td align="center" class="td2">Time ''||SUBSTR(:P27_JMR_READING_DATE,-5)||''</td>',
'     ',
'    </tr>',
'',
'   <tr>',
'        <td align="center" class="td2">&nbsp;&nbsp;&nbsp;&nbsp;</td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_IMP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_IMP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM_1||''</b> </td>',
'       ',
'    </tr>',
'',
'<tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_PRV_READING    ,0),''999G999G999G999G990D00'')   ||        ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0),''999G999G999G999G990D00'')  ||      ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_CUR_READING    ,0),''999G999G999G999G990D00'')  ||        ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0),''999G999G999G999G990D00'')   ||      ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_DIFFERNCE   ,0),''999G999G999G999G990D00'')    ||       ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_DIFFERNCE_1 ,0),''999G999G999G999G990D00'')    ||     ''</td>',
'        <td align = "center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_NET_UNIT   ,0),''999G999G999G999G990D00'')    ||       ''</td>',
'       ',
'    </tr>',
' ',
'    ',
' ',
' <tr>',
'        <td align="Left" class="td2">Import From PSPCL</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_IMP_PRV_READING,  0)     ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHECK_IMP_PRV_KVAH_READ, 0)  ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_IMP_CUR_READING,   0)    ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHECK_IMP_CUR_KVAH_READ, 0)  ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_IMP_DIFFERNCE,  0)       ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_IMP_DIFFERNCE_1,0)       ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_IMP_TOTAL_UNIT,  0)      ,''999G999G999G999G990D00'')||''</td>',
'       ',
'    </tr>',
'',
'  <!-- <tr>',
'        <td align="Left"  class="td2">NeT Export</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_CUR_READING,0)    -    NVL(NU_CHK_IMP_PRV_READING ,0) ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHECK_EXP_PRV_KVAH_READ,0) -   NVL(NU_CHECK_IMP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_CUR_READING ,0)    -   NVL(NU_CHK_IMP_CUR_READING,0)  ,''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHECK_EXP_CUR_KVAH_READ,0) -   NVL(NU_CHECK_IMP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_DIFFERNCE,0 )   -      NVL(NU_CHK_IMP_DIFFERNCE,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_DIFFERNCE_1,0)  -      NVL(NU_CHK_IMP_DIFFERNCE_1,0),''999G999G999G999G990D00'')||''</td>',
'        <td align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_NET_UNIT ,0)  -      NVL(NU_CHK_IMP_NET_UNIT,0) ,''999G999G999G999G990D00'')||''</td>',
'',
'       ',
'       ',
'    </tr> -->',
'',
'',
'    <tr>',
'        <td align="Left"  class="td2">Power Factor</td>',
'        <td align="center" class="td2">''||to_char(CHK_POWER_FACTOR,''999G999G999G999G990D000'')||''</td>',
'        <td colspan="5" rowspan= "1"align="center" class="td2"><b>Diff. Of Reading (''||:P27_CHECK_EXP_UOM||'')  / Diff. of Reading (''||:P27_CHECK_EXP_UOM_1||'')  <b></td>',
'        <td colspan="5" rowspan= "1"align="center" class="td2">''||TO_CHAR(NVL(NU_CHK_EXP_NET_UNIT ,0)  -  NVL(NU_CHK_IMP_NET_UNIT,0),''999G999G999G999G990D00'') ||''</td>',
'       ',
'    </tr>',
'   ',
'  ',
'</table>',
'<table class="sign">',
'    <tr>',
'         <td align = "center" class = "sign1"> ''||AUTH_NAME||''<br>''||AUTH_DES||''<br> Authorised Signatory (''||:GLOBAL_COMP_PREFIX ||'') <br> &nbsp;</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL||'' <br>''||AUTH_DES_PSPCL||''<br> Authorised Signatory (PSPCL) <br> &nbsp;</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL1||'' <br>''||AUTH_DES_PSPCL1||''<br> Authorised Signatory (PSPCL)  <br> &nbsp;</td>',
'       ',
'    </tr>',
'    ',
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
,p_plug_display_when_condition=>'GLOBAL_COMP_CODE'
,p_plug_display_when_cond2=>'03'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143809596077354642)
,p_plug_name=>'Joint Meter Reading'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143902190511971993)
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
 p_id=>wwv_flow_api.id(143902345069971994)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P27_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(143902412650971995)
,p_plug_name=>'Main Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P27_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144738788304158294)
,p_plug_name=>'Main Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(143902412650971995)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144738959008158295)
,p_plug_name=>'Main Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(143902412650971995)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144739082725158296)
,p_plug_name=>'Main Net '
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(143902412650971995)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175082064869678094)
,p_plug_name=>'main net reading'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(143902412650971995)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
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
 p_id=>wwv_flow_api.id(144190737980715702)
,p_plug_name=>'Check Meter'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P27_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144739183107158297)
,p_plug_name=>'Check Export'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(144190737980715702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144739212107158298)
,p_plug_name=>'Check Import'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(144190737980715702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144739307694158299)
,p_plug_name=>'check Net'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(144190737980715702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(175083426782678108)
,p_plug_name=>'check net reading'
,p_region_name=>'rgn_brdr'
,p_parent_plug_id=>wwv_flow_api.id(144190737980715702)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(144267294425471922)
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
 p_id=>wwv_flow_api.id(144267533458471924)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(144267294425471922)
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
 p_id=>wwv_flow_api.id(144267590020471925)
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
,p_internal_uid=>180973324794996575
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42697989143768202)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42698371249768202)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42698776757768203)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42699243357768203)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42699622880768204)
,p_db_column_name=>'DELETE1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#C003#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P27_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(42700014932768204)
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
 p_id=>wwv_flow_api.id(144344414132168634)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'41218'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(184047439461452381)
,p_plug_name=>'Print KRPL KHPPL PHPPL'
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
'AND VC_PLANT_NAME=:GLOBAL_PROJ_ID',
'',
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
'    .print{',
'         ',
'        border-collapse: collapse; ',
'        ',
'            vertical-align: middle;',
'          ',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: 12px;',
'            line-height: 2;',
'            margin: auto;    ',
'            height: 297mm;',
'            width:210mm;',
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
'        font-size: 12px;',
'        height:20px;',
'    }',
'    .main{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 12px;',
'        height:23px;',
'      ',
'    }',
'    .th2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        height: 23px !important;',
'    }',
'    .td2 {',
'        border:1px solid black;',
'        border-collapse: collapse;',
'        height: 23px !important;',
'       ',
'    }',
'    .meter{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'        font-size: 12px!important;',
'    }',
'',
'    .sign{',
'        border:1px solid black;',
'        width:100%;',
'        border-collapse: collapse;',
'       ',
'    }',
'    .sign1{',
'        border:1px solid black;',
'        height:150px;',
'        vertical-align: bottom;',
'        ',
'        border-collapse: collapse;',
'        font-size:small;',
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
'<body class="print">',
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
'            <td> <h3 align="center" style="height:20px;" > Plant Side Main Meter Reading/Grid Side Check Meter Readings</h3></td>',
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
'            <td align="center" class="td2">''||I.VC_MAIN_METER||''</td>',
'            <td class="td2">''||I.VC_MAIN_CAL_TYPE||''</td>',
'            <td align="center" class="td2">''||I.VC_MAIN_CAL||''</td>',
'            <td align="center" class="td2">''||I.VC_CHK_METER||''</td>',
'            <td class="td2">''||I.VC_CHK_CAL_TYPE||''</td>',
'            <td align="center" class="td2">''||I.VC_CHK_CAL||''</td>',
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
'        <td > <h3 align="center" style="height:20px;"> Plant Side Main Meter</h3></td>',
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
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh Units <br> (kWh diff X MF)</th>',
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
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_IMP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_IMP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_MAIN_EXP_UOM_1||''</b> </td>',
'    </tr>',
'',
'<tr>',
'        <td align = "Left"  class="td2">Export To PSPCL</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_PRV_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_PRV_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_CUR_READING,0),''999G999G999G999G990D00'')||''</td>',
'        <td align = "center" class="td2">''||to_char(nvl(NU_MAIN_EXP_CUR_KVAH_READ,0),''999G999G999G999G990D00'')||''</td>',
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
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_CUR_KVAH_READ,0)  -  NVL(NU_MAIN_IMP_CUR_KVAH_READ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_DIFFERNCE,0)      -  NVL(NU_MAIN_IMP_DIFFERNCE  ,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char (NVL(NU_MAIN_EXP_DIFFERNCE_1,0)    -  NVL(NU_MAIN_IMP_DIFFERNCE_1,0) ,''999G999G999G999G990D00'')||   ''</td>',
'        <td align="center" class="td2">''||to_char ((NVL(NU_MAIN_EXP_TOTAL_UNIT,0)     -    NVL(NU_MAIN_IMP_TOTAL_UNIT ,0)) ,''999G999G999G999G990D00'')||   ''</td>',
'       ',
'    </tr>',
'',
'',
'        <tr>',
'        <td class="diff" style = "width:12.7%">Power Factor(Export)  </td>',
'        <td colspan="6" align = "center" class="diff"> <b> Diff. Of Reading (Export ''||:P27_MAIN_EXP_UOM ||'') / Diff. of Reading (Export ''||:P27_MAIN_EXP_UOM_1||'')</b></td>',
'        <td align = "center"style = "width:18.2%">''|| to_char(nvl(POWER_FACTOR,0.00),''999G999G999G999G990D000'') ||''</td>',
'    </tr>',
'',
'</table>'' ;   v_body := v_body ||''',
'',
'<table class ="head">',
'    <tr>',
'       <td > <h3 align="center" style="height:20px;"> Grid Side Check Meter</h3></td>',
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
'        <th rowspan="3" align="center" class ="BR" style = "vertical-align:center"> Net kWh Units <br> (kWh diff X MF)</th>',
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
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_IMP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_IMP_UOM_1||''</b> </td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM||'' </b></td>',
'        <td align="center" class="td2"><b>''||:P27_CHECK_EXP_UOM_1||''</b> </td>',
'       ',
'    </tr>',
'',
'<tr>',
'        <td align = "Left" class="td2">Export To PSPCL</td>             ',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_PRV_READING    ,0)  ,''999G999G999G999G990D00'')||        ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHECK_EXP_PRV_KVAH_READ  ,0),''999G999G999G999G990D00'')||      ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_CUR_READING    ,0)  ,''999G999G999G999G990D00'')||        ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHECK_EXP_CUR_KVAH_READ  ,0),''999G999G999G999G990D00'')||      ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_DIFFERNCE   ,0)     ,''999G999G999G999G990D00'')||       ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_DIFFERNCE_1 ,0)     ,''999G999G999G999G990D00'')||     ''</td>',
'        <td align = "center" class="td2">''||to_char(NVL(NU_CHK_EXP_TOTAL_UNIT   ,0)    ,''999G999G999G999G990D00'')||       ''</td>',
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
'        <td align="center" class="td2">''||to_char((NVL(NU_CHK_EXP_PRV_READING,0)    -  NVL(NU_CHK_IMP_PRV_READING ,0))     ,''999G999G999G999G990D00'')   ||''</td>',
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
'        <td colspan="6" align = "center" class="diff" > <b> Diff. Of Reading (Export ''||:P27_CHECK_EXP_UOM||'') / Diff. of Reading (Export ''||:P27_CHECK_EXP_UOM_1||'')</b></td>',
'        <td align = "center" style = "width:18.2%">''||to_char(nvl(CHK_POWER_FACTOR,0),''999G999G999G999G990D000'')||''</td>',
'    </tr>',
'',
'</table>',
'<table class="sign">',
'    <tr>',
'        <td align = "center" class = "sign1"> ''||AUTH_NAME||''<br>''||AUTH_DES||''<br> Authorised Signatory (''||:GLOBAL_COMP_PREFIX ||'') <br> &nbsp;</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL||'' <br>''||AUTH_DES_PSPCL||''<br> Authorised Signatory (PSPCL) <br> &nbsp;</td>',
'        <td align = "center"  class = "sign1"> ''||AUTH_NAME_PSPCL1||'' <br>''||AUTH_DES_PSPCL1||''<br> Authorised Signatory (PSPCL) <br> &nbsp;</td>',
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
,p_plug_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_plug_display_when_condition=>'GLOBAL_COMP_CODE'
,p_plug_display_when_cond2=>'03'
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
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42649659327768153)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(143902345069971994)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:27::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42650041563768154)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(143902345069971994)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P27_LABEL_NAME.'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_LAST_PAGE,P25_AUTH_FLAG:&P27_REQ_NO.,&P27_JMR_NO.,&P27_JMR_DATE.,JMR,&P27_LAST_PAGE.,&P27_AUTH_FLAG.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42650383019768154)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(143902345069971994)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn_save'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_redirect_url=>'javascript:RUN_PROCESS2(''SAVE'');'
,p_button_condition=>'P27_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14426635412913594)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(143902345069971994)
,p_button_name=>'Print'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_image_alt=>'Print'
,p_button_position=>'PREVIOUS'
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42697279438768200)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(144267294425471922)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P27_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(42581728888201346)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(143902345069971994)
,p_button_name=>'PDF'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P27_MODE'
,p_button_condition2=>'A'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(42766789543768268)
,p_branch_action=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:27::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>10
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3458989302788388)
,p_name=>'P27_MAIN_METER_CALIBRATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(143902412650971995)
,p_prompt=>'Main Meter Calibration'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3459063471788389)
,p_name=>'P27_MAIN_METER_REPLACEMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(143902412650971995)
,p_prompt=>'Main Meter Replacement'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'t-Form-fieldContainer--stretchInputs:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3460828803788406)
,p_name=>'P27_CHECK_METER_CALIBRATION'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144190737980715702)
,p_prompt=>'Meter Calibration'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>9
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(3460860498788407)
,p_name=>'P27_CHECK_METER_REPLACEMENT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144190737980715702)
,p_prompt=>'Meter Replacement'
,p_display_as=>'NATIVE_SINGLE_CHECKBOX'
,p_begin_on_new_line=>'N'
,p_grid_column=>11
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#:t-Form-fieldContainer--radioButtonGroup'
,p_attribute_01=>'N'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6117306141947788)
,p_name=>'P27_JMR_READING_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_prompt=>'JMR Reading Date'
,p_format_mask=>'DD-MM-YYYY HH24:MI'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
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
 p_id=>wwv_flow_api.id(6117899764947794)
,p_name=>'P27_AUTH_SIGN_NAME'
,p_item_sequence=>340
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_prompt=>'Authorized Signatory (&GLOBAL_COMP_PREFIX.)'
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
 p_id=>wwv_flow_api.id(6118007677947795)
,p_name=>'P27_AUTH_SIGN_1'
,p_item_sequence=>350
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_prompt=>'Authorized Signatory (PSPCL)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_AUTH_CODE_DESC d,VC_AUTH_CODE_DESC r from MST_AUTHORIZED_SIGN',
'where org_id= :global_comp_code',
'and proj_id = :GLOBAL_PROJ_ID',
'and CH_ACTIVE = ''Y'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(6118056132947796)
,p_name=>'P27_AUTH_SIGN_2'
,p_item_sequence=>360
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_prompt=>'Authorized Signatory (PSPCL)'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_AUTH_CODE_DESC d,VC_AUTH_CODE_DESC r from MST_AUTHORIZED_SIGN',
'where org_id= :global_comp_code',
'and proj_id = :GLOBAL_PROJ_ID',
'and CH_ACTIVE = ''Y'';'))
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42583004782219149)
,p_name=>'P27_GLOBAL_PROJ_NAME'
,p_item_sequence=>330
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_item_default=>':GLOBAL_PROJ_NAME'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42650864521768155)
,p_name=>'P27_PERIOD_FROM'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42651166021768155)
,p_name=>'P27_FROM_TIME'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42651582213768156)
,p_name=>'P27_PERIOD_TO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42651995717768156)
,p_name=>'P27_TO_TIME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42652390577768156)
,p_name=>'P27_JMR_NO'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42652775879768157)
,p_name=>'P27_JMR_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_item_default=>'sysdate'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42653205440768157)
,p_name=>'P27_PPA_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
,p_attribute_10=>'DT_PPA_DATE:P27_PPA_DATE,VC_EXTERNAL_DOC_NO:P27_PPA_NO_NEW,DT_EXTERNAL_DOC_DATE:P27_PPA_DATE_NEW'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42653648993768158)
,p_name=>'P27_PPA_DATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42654003513768158)
,p_name=>'P27_PPA_NO_NEW'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42654367891768158)
,p_name=>'P27_PPA_DATE_NEW'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42654783977768159)
,p_name=>'P27_CUSTOMER_CODE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42655244443768159)
,p_name=>'P27_CUSTOMER_NAME'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42655629593768160)
,p_name=>'P27_BILLING_POINT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42655980640768160)
,p_name=>'P27_BILLING_POINT_DESC'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42656379949768160)
,p_name=>'P27_METERING_POINT'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42656810647768161)
,p_name=>'P27_METERING_POINT_DESC'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_prompt=>'Metering Point'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'--AND   NU_DOC_NO <= :P27_METERING_POINT',
'AND CH_METER_INSTALLED = ''Y''',
'and CH_AUTH_FLAG = ''Y''',
'--AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P27_PPA_NO,:P27_PPA_DATE) = ''Y''',
'/*',
'UNION ALL',
'',
'select VC_LOCATION D ,NU_DOC_NO R',
'FROM dt_energy_flow',
'where org_id = :GLOBAL_COMP_CODE',
'AND   prj_id = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO <= :P27_METERING_POINT+1',
'AND CH_METER_INSTALLED = ''Y''',
'AND  get_meter_install(:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P27_PPA_NO,:P27_PPA_DATE) = ''N''',
'*/',
'',
';'))
,p_lov_cascade_parent_items=>'P27_METERING_POINT'
,p_ajax_items_to_submit=>'P27_METERING_POINT,P27_PPA_NO_NEW,P27_PPA_DATE_NEW'
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
 p_id=>wwv_flow_api.id(42657186632768161)
,p_name=>'P27_GRP_ID'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42657653417768162)
,p_name=>'P27_ITEM_CODE'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42657980789768162)
,p_name=>'P27_ITEM_DESC'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42658440150768162)
,p_name=>'P27_UOM'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42658852221768163)
,p_name=>'P27_QTY'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42659217842768163)
,p_name=>'P27_RATE'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42659658052768164)
,p_name=>'P27_MODE'
,p_item_sequence=>240
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_use_cache_before_default=>'NO'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42659965258768164)
,p_name=>'P27_WKF_STAGE'
,p_item_sequence=>250
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42660456890768164)
,p_name=>'P27_REQ_NO'
,p_item_sequence=>260
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42660832878768165)
,p_name=>'P27_LAST_PAGE'
,p_item_sequence=>270
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42661191846768165)
,p_name=>'P27_AUTH_FLAG'
,p_item_sequence=>280
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42661568460768166)
,p_name=>'P27_LABEL_NAME'
,p_item_sequence=>290
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P27_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42662008954768166)
,p_name=>'P27_REMARKS'
,p_item_sequence=>300
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
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
 p_id=>wwv_flow_api.id(42662429531768166)
,p_name=>'P27_INVOICE_EXP_UNIT'
,p_item_sequence=>310
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42663087619768167)
,p_name=>'P27_MAIN_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(143902412650971995)
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42663510431768168)
,p_name=>'P27_MAIN_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(143902412650971995)
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
 p_id=>wwv_flow_api.id(42663901346768168)
,p_name=>'P27_MAIN_METER_LOC_DESC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(143902412650971995)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42664570971768169)
,p_name=>'P27_MAIN_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42665061091768170)
,p_name=>'P27_MAIN_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42665373005768170)
,p_name=>'P27_MAIN_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42665832723768171)
,p_name=>'P27_MAIN_EXP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42666173944768171)
,p_name=>'P27_MAIN_EXP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42666646904768171)
,p_name=>'P27_MAIN_EXP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42666980473768172)
,p_name=>'P27_MAIN_EXP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42667448583768172)
,p_name=>'P27_MAIN_EXP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42667776980768172)
,p_name=>'P27_MAIN_EXPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42668255892768173)
,p_name=>'P27_MAIN_EXPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42668610867768173)
,p_name=>'P27_MAIN_EXP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42669060535768174)
,p_name=>'P27_MAIN_EXP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42669458552768174)
,p_name=>'P27_MAIN_EXP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42669844929768174)
,p_name=>'P27_MAIN_EXP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42670198385768175)
,p_name=>'P27_MAIN_EXP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(144738788304158294)
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
 p_id=>wwv_flow_api.id(42670940733768176)
,p_name=>'P27_MAIN_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42671266077768176)
,p_name=>'P27_MAIN_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42671687015768177)
,p_name=>'P27_MAIN_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42672144451768177)
,p_name=>'P27_MAIN_IMP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42672546047768178)
,p_name=>'P27_MAIN_IMP_TOTAL_UNIT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42672903197768178)
,p_name=>'P27_MAIN_IMP_UOM'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42673314705768178)
,p_name=>'P27_MAIN_IMP_ADJUSMENT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42673725453768179)
,p_name=>'P27_MAIN_IMP_NET_UNIT'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42674084738768179)
,p_name=>'P27_MAIN_IMPORT_PRV_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42674529807768180)
,p_name=>'P27_MAIN_IMPORT_CUR_KVAH'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42674896741768180)
,p_name=>'P27_MAIN_IMP_DIFFERENCE_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42675271448768180)
,p_name=>'P27_MAIN_IMP_TOTAL_UNIT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42675754442768181)
,p_name=>'P27_MAIN_IMP_UOM_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42676130624768181)
,p_name=>'P27_MAIN_IMP_ADJUSMENT_1'
,p_item_sequence=>220
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42676505489768181)
,p_name=>'P27_MAIN_IMP_NET_UNIT_1'
,p_item_sequence=>230
,p_item_plug_id=>wwv_flow_api.id(144738959008158295)
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
 p_id=>wwv_flow_api.id(42677202396768182)
,p_name=>'P27_POWER_FACTOR_EXPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144739082725158296)
,p_item_default=>'0'
,p_prompt=>'Power Factor'
,p_format_mask=>'999G999G999G999G990D000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>10
,p_colspan=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'right'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42677576897768182)
,p_name=>'P27_MAIN_NET_EXP_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144739082725158296)
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
 p_id=>wwv_flow_api.id(42678020029768183)
,p_name=>'P27_MAIN_METER_WORK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144739082725158296)
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
 p_id=>wwv_flow_api.id(42678439955768183)
,p_name=>'P27_MAIN_METER_REMARK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144739082725158296)
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
 p_id=>wwv_flow_api.id(42679082685768183)
,p_name=>'P27_NET_READING_KWH'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(175082064869678094)
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
 p_id=>wwv_flow_api.id(42679563666768184)
,p_name=>'P27_NET_READING_KVAH'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(175082064869678094)
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
 p_id=>wwv_flow_api.id(42680182754768184)
,p_name=>'P27_CHECK_METER_NO'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144190737980715702)
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
 p_id=>wwv_flow_api.id(42680659169768185)
,p_name=>'P27_CHECK_METER_LOC'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144190737980715702)
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
 p_id=>wwv_flow_api.id(42680971284768185)
,p_name=>'P27_CHECK_METER_LOC_DESC'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144190737980715702)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(42681758826768186)
,p_name=>'P27_CHECK_EXP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42682126821768186)
,p_name=>'P27_CHECK_EXP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42682550430768186)
,p_name=>'P27_CHECK_EXP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42682876885768187)
,p_name=>'P27_CHECK_EXP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42683302359768187)
,p_name=>'P27_CHECK_EXP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42683685376768187)
,p_name=>'P27_CHECK_EXP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42684145307768187)
,p_name=>'P27_CHECK_EXP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42684484566768188)
,p_name=>'P27_CHECK_EXP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42684899344768188)
,p_name=>'P27_CHECK_EXPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
,p_item_default=>'0'
,p_prompt=>'Export Previous kVAh Reading'
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
 p_id=>wwv_flow_api.id(42685303309768188)
,p_name=>'P27_CHECK_EXPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42685763182768188)
,p_name=>'P27_CHECK_EXP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42686075207768189)
,p_name=>'P27_CHECK_EXP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42686539558768189)
,p_name=>'P27_CHECK_EXP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42686944488768189)
,p_name=>'P27_CHECK_EXP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42687277377768190)
,p_name=>'P27_CHECK_EXP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(144739183107158297)
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
 p_id=>wwv_flow_api.id(42688040154768190)
,p_name=>'P27_CHECK_IMP_PREV_READ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42688396175768191)
,p_name=>'P27_CHECK_IMP_CURR_READ'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
,p_item_default=>'0'
,p_prompt=>'Import Current Reading'
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
 p_id=>wwv_flow_api.id(42688827341768191)
,p_name=>'P27_CHECK_IMP_DIFFERENCE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42689243223768191)
,p_name=>'P27_CHECK_IMP_MULTI_FAC'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42689582781768192)
,p_name=>'P27_CHECK_IMP_TOTAL_UNIT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42690048872768192)
,p_name=>'P27_CHECK_IMP_UOM'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42690446628768193)
,p_name=>'P27_CHECK_IMP_ADJUSMENT'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42690808757768193)
,p_name=>'P27_CHECK_IMP_NET_UNIT'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42691264467768193)
,p_name=>'P27_CHECK_IMPORT_PRV_KVAH'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42691617232768194)
,p_name=>'P27_CHECK_IMPORT_CUR_KVAH'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42691972429768194)
,p_name=>'P27_CHECK_IMP_DIFFERENCE_1'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42692433501768195)
,p_name=>'P27_CHECK_IMP_TOTAL_UNIT_1'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42692852739768195)
,p_name=>'P27_CHECK_IMP_UOM_1'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42693182026768195)
,p_name=>'P27_CHECK_IMP_ADJUSMENT_1'
,p_item_sequence=>200
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42693621243768196)
,p_name=>'P27_CHECK_IMP_NET_UNIT_1'
,p_item_sequence=>210
,p_item_plug_id=>wwv_flow_api.id(144739212107158298)
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
 p_id=>wwv_flow_api.id(42694314772768197)
,p_name=>'P27_CHK_POWER_FACTOR_EXPORT'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(144739307694158299)
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
 p_id=>wwv_flow_api.id(42694710520768197)
,p_name=>'P27_CHECK_NET_EXP_UNIT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(144739307694158299)
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
 p_id=>wwv_flow_api.id(42695071199768198)
,p_name=>'P27_CHECK_METER_WORK'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(144739307694158299)
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
 p_id=>wwv_flow_api.id(42695554819768198)
,p_name=>'P27_CHECK_METER_REMARK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(144739307694158299)
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
 p_id=>wwv_flow_api.id(42696178652768199)
,p_name=>'P27_NET_READING_KWH_1'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(175083426782678108)
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
 p_id=>wwv_flow_api.id(42696615335768200)
,p_name=>'P27_NET_READING_KVAH_1'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(175083426782678108)
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
 p_id=>wwv_flow_api.id(79410541167859051)
,p_name=>'P27_REMARKS_MAIN'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144739082725158296)
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
 p_id=>wwv_flow_api.id(79410581544859052)
,p_name=>'P27_REMARKS_CHECK'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(144739307694158299)
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
 p_id=>wwv_flow_api.id(108644828517267700)
,p_name=>'P27_PROJECT'
,p_item_sequence=>320
,p_item_plug_id=>wwv_flow_api.id(143902345069971994)
,p_item_default=>'GLOBAL_PROJ_ID'
,p_item_default_type=>'ITEM'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42705165503768210)
,p_validation_name=>'PPA Not Null'
,p_validation_sequence=>10
,p_validation=>'P27_PPA_NO_NEW'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42702040751768207)
,p_validation_name=>'Main Exp Prv Read not null'
,p_validation_sequence=>30
,p_validation=>'P27_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Previous Reading'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42707568139768212)
,p_validation_name=>'Main Exp Prv Read numeric'
,p_validation_sequence=>40
,p_validation=>'P27_MAIN_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42702428707768207)
,p_validation_name=>'Main Exp Curr Read not null'
,p_validation_sequence=>50
,p_validation=>'P27_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Export Current Reading'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42708037403768212)
,p_validation_name=>'Main Exp Curr Read numeric'
,p_validation_sequence=>60
,p_validation=>'P27_MAIN_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42711209810768215)
,p_validation_name=>'Main Exp diff value not negative'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_EXP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42665373005768170)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42711604934768215)
,p_validation_name=>'Main Exp Total unit value not negative'
,p_validation_sequence=>80
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_EXP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42666173944768171)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42712037291768216)
,p_validation_name=>'Main Exp Net  unit value not negative'
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_EXP_NET_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42667448583768172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42702789829768208)
,p_validation_name=>'Main Imp Prv Read not null'
,p_validation_sequence=>110
,p_validation=>'P27_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter Import Previous Reading'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42708440723768213)
,p_validation_name=>'Main Imp Prv Read numeric'
,p_validation_sequence=>120
,p_validation=>'P27_MAIN_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42703184268768208)
,p_validation_name=>'Main Imp Curr Read not null'
,p_validation_sequence=>130
,p_validation=>'P27_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Main Meter import Current Reading'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42708828724768213)
,p_validation_name=>'Main Imp Curr Read numeric'
,p_validation_sequence=>140
,p_validation=>'P27_MAIN_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42712404447768216)
,p_validation_name=>'Main Imp diff unit value not negative'
,p_validation_sequence=>150
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_IMP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42671687015768177)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42712850479768216)
,p_validation_name=>'Main Imp toral unit value not negative'
,p_validation_sequence=>160
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_IMP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42672546047768178)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42713239994768217)
,p_validation_name=>'Main Imp net unit value not negative'
,p_validation_sequence=>170
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_IMP_NET_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42673725453768179)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42713620232768217)
,p_validation_name=>'Main Net export unit value not negative'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_NET_EXP_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42677576897768182)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42716860426768220)
,p_validation_name=>'Main Net Export Unit Cannot be Null or Zero'
,p_validation_sequence=>190
,p_validation=>'P27_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42703584957768208)
,p_validation_name=>'Check Exp Prv Read not null'
,p_validation_sequence=>200
,p_validation=>'P27_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Previous Reading'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709230601768213)
,p_validation_name=>'Check Exp Prv Read numeric'
,p_validation_sequence=>210
,p_validation=>'P27_CHECK_EXP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42704034948768209)
,p_validation_name=>'Check Exp Curr Read not null'
,p_validation_sequence=>220
,p_validation=>'P27_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Export Current Reading'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709623728768214)
,p_validation_name=>'Check Exp Curr Read numeric'
,p_validation_sequence=>230
,p_validation=>'P27_CHECK_EXP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42714023954768217)
,p_validation_name=>'Check Exp diff unit value not negative'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_EXP_DIFFERENCE,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42682550430768186)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42714409008768218)
,p_validation_name=>'Check Exp total unit value not negative'
,p_validation_sequence=>250
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_EXP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42683302359768187)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42714833801768218)
,p_validation_name=>'Check Exp ne tunit value not negative'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_EXP_NET_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42684484566768188)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42704431212768209)
,p_validation_name=>'Check Imp Prv Read not null'
,p_validation_sequence=>270
,p_validation=>'P27_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter Import Previous Reading'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42709984902768214)
,p_validation_name=>'Check Imp Prv Read  numeric'
,p_validation_sequence=>280
,p_validation=>'P27_CHECK_IMP_PREV_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric value'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42704811416768209)
,p_validation_name=>'Check Imp Curr Read not null'
,p_validation_sequence=>290
,p_validation=>'P27_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Enter Check Meter import Current Reading'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42710418756768214)
,p_validation_name=>'Check Imp Curr Read numeric'
,p_validation_sequence=>300
,p_validation=>'P27_CHECK_IMP_CURR_READ'
,p_validation_type=>'ITEM_IS_NUMERIC'
,p_error_message=>'Enter Numeric Value'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42715260535768218)
,p_validation_name=>'Check Imp diff unit value not negative'
,p_validation_sequence=>310
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_IMP_DIFFERENCE,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42688827341768191)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42715579381768219)
,p_validation_name=>'Check Imp Total  unit value not negative'
,p_validation_sequence=>320
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_IMP_TOTAL_UNIT,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42689582781768192)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42716033177768219)
,p_validation_name=>'Check Imp Net unit value not negative'
,p_validation_sequence=>330
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_IMP_NET_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42690808757768193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42716439891768219)
,p_validation_name=>'Check  Net Export unit value not negative'
,p_validation_sequence=>340
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_CHECK_NET_EXP_UNIT,'','','''') < 0 then',
'return false;',
'else',
'return true;',
'',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'value cannot be negative.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42694710520768197)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42717226502768220)
,p_validation_name=>'Check Net Export Unit Cannot be null or Zero'
,p_validation_sequence=>350
,p_validation=>'P27_CHECK_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42705644437768210)
,p_validation_name=>'Main meter work not null'
,p_validation_sequence=>360
,p_validation=>'P27_MAIN_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Main Meter Working'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42706390247768211)
,p_validation_name=>'Main Meter remark not null'
,p_validation_sequence=>370
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P27_MAIN_METER_WORK,'','','''') = ''N''  and replace(:P27_MAIN_METER_REMARK,'','','''') is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42678439955768183)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42706019825768210)
,p_validation_name=>'check Meter Work or not'
,p_validation_sequence=>380
,p_validation=>'P27_CHECK_METER_WORK'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Check Meter Working.'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42706773313768211)
,p_validation_name=>'Check  Meter remark not null'
,p_validation_sequence=>390
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P27_CHECK_METER_WORK = ''N''  and :P27_CHECK_METER_REMARK is null then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Enter Remark'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42695554819768198)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42707167350768212)
,p_validation_name=>'check JMR EXISTS OR NOT'
,p_validation_sequence=>400
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_chk number;',
'begin',
'if :P27_MODE = ''A'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P27_PPA_NO',
'AND   DT_PPA_DATE   = :P27_PPA_DATE',
'AND   DT_JMR_DATE   = :P27_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P27_METERING_POINT_DESC;',
'end if;',
'',
'if :P27_MODE = ''E'' then',
'select count(*)',
'INTO V_CHK',
'from dt_jmr',
'where org_id        = :GLOBAL_COMP_CODE',
'and   prj_id        = :GLOBAL_PROJ_ID',
'and   VC_PPA_NO     = :P27_PPA_NO',
'AND   DT_PPA_DATE   = :P27_PPA_DATE',
'AND   DT_JMR_DATE   = :P27_JMR_DATE',
'AND   NU_METERING_POINT_ID =:P27_METERING_POINT_DESC',
'AND   VC_JMR_NO     <> :P27_JMR_NO;',
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
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42710836680768215)
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
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42717594746768220)
,p_validation_name=>'Main Exp diff null or zero'
,p_validation_sequence=>420
,p_validation=>'P27_MAIN_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42665373005768170)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42718035535768221)
,p_validation_name=>'Main Exp Total unit null or zero'
,p_validation_sequence=>430
,p_validation=>'P27_MAIN_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42666173944768171)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42718411494768221)
,p_validation_name=>'Main Exp Net unit value cannot null or zero'
,p_validation_sequence=>440
,p_validation=>'P27_MAIN_NET_EXP_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42718813596768222)
,p_validation_name=>'Main Exp Net Unit not null or zero'
,p_validation_sequence=>450
,p_validation=>'P27_MAIN_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42667448583768172)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42719182796768222)
,p_validation_name=>'Main Imp Diff not null or zero'
,p_validation_sequence=>460
,p_validation=>'P27_MAIN_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42671687015768177)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42719660457768222)
,p_validation_name=>'Main Imp Total Unit Value null or zero'
,p_validation_sequence=>470
,p_validation=>'P27_MAIN_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42672546047768178)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42720049163768223)
,p_validation_name=>'Main Inp Net unit null or zero'
,p_validation_sequence=>480
,p_validation=>'P27_MAIN_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42673725453768179)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42720417680768223)
,p_validation_name=>'Check Exp diff not null or zero'
,p_validation_sequence=>490
,p_validation=>'P27_CHECK_EXP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42682550430768186)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42720784771768223)
,p_validation_name=>'Check Exp total unit not null or zero'
,p_validation_sequence=>500
,p_validation=>'P27_CHECK_EXP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42683302359768187)
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
 p_id=>wwv_flow_api.id(42721216799768224)
,p_validation_name=>'Check Exp net unit calue not null or zero'
,p_validation_sequence=>510
,p_validation=>'P27_CHECK_EXP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition=>'P27_CHECK_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42684484566768188)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42721648360768224)
,p_validation_name=>'Check Imp diff unit value not null or zero'
,p_validation_sequence=>520
,p_validation=>'P27_CHECK_IMP_DIFFERENCE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42688827341768191)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42722011742768224)
,p_validation_name=>'Check Imp Total unit not null or zero'
,p_validation_sequence=>530
,p_validation=>'P27_CHECK_IMP_TOTAL_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42689582781768192)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42722419736768225)
,p_validation_name=>'Check Imp net unit Value not null or zero'
,p_validation_sequence=>540
,p_validation=>'P27_CHECK_IMP_NET_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Value Cannot be Zero or null.'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42690808757768193)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42722765889768225)
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
'       and      FY_END  > sysdate ;',
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
,p_validation_condition=>'P27_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(14426324182913591)
,p_validation_name=>'P27_NET_READING_KWH'
,p_validation_sequence=>560
,p_validation=>'P27_NET_READING_KWH'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Please check net reading kWh.'
,p_validation_condition=>'P27_MAIN_METER_WORK'
,p_validation_condition2=>'Y'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42700818000768206)
,p_validation_name=>'Rate not null or zero'
,p_validation_sequence=>570
,p_validation=>'P27_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Not found. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(42659217842768163)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42701247352768206)
,p_validation_name=>'PERIOD_FROM Not null'
,p_validation_sequence=>580
,p_validation=>'P27_PERIOD_FROM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select From date'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42701576523768207)
,p_validation_name=>'Period To'
,p_validation_sequence=>590
,p_validation=>'P27_PERIOD_TO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select To date'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(42723219079768225)
,p_validation_name=>'P27_PERIOD_TO'
,p_validation_sequence=>600
,p_validation=>':P27_PERIOD_TO<=sysdate'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>'Period To Date is not greater then today''s date.'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6117358416947789)
,p_validation_name=>'JMR READING DATE'
,p_validation_sequence=>610
,p_validation=>'P27_JMR_READING_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter JMR Reading Date'
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6118177889947797)
,p_validation_name=>'auth sign'
,p_validation_sequence=>620
,p_validation=>'P27_AUTH_SIGN_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory '
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(6117899764947794)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6118330743947798)
,p_validation_name=>'auth sign_1'
,p_validation_sequence=>630
,p_validation=>'P27_AUTH_SIGN_1'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory '
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(6118007677947795)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(6118339269947799)
,p_validation_name=>'auth sign_1_1'
,p_validation_sequence=>640
,p_validation=>'P27_AUTH_SIGN_2'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Enter Authorized Signatory '
,p_when_button_pressed=>wwv_flow_api.id(42650383019768154)
,p_associated_item=>wwv_flow_api.id(6118056132947796)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42727509560768232)
,p_name=>'Set Values'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_PPA_DATE_NEW'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P27_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42728048328768233)
,p_event_id=>wwv_flow_api.id(42727509560768232)
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
'into   :P27_CUSTOMER_CODE,:P27_CUSTOMER_NAME,',
'       :P27_BILLING_POINT,:P27_BILLING_POINT_DESC,',
'       :P27_METERING_POINT,:P27_METERING_POINT_DESC,',
'       :P27_ITEM_CODE ,:P27_ITEM_DESC,',
'       :P27_UOM,:P27_GRP_ID,',
'       :P27_QTY,:P27_RATE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE;',
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
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_IMP_PREV_READ,',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_IMP_PREV_READ,',
'',
'',
':P27_MAIN_EXPORT_PRV_KVAH,',
':P27_MAIN_IMPORT_PRV_KVAH,',
'',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXPORT_PRV_KVAH',
'',
'',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P27_PPA_NO,P27_PPA_DATE'
,p_attribute_03=>'P27_CUSTOMER_CODE,P27_CUSTOMER_NAME,P27_BILLING_POINT,P27_BILLING_POINT_DESC,P27_METERING_POINT,P27_METERING_POINT_DESC,P27_ITEM_CODE ,P27_ITEM_DESC,P27_UOM,P27_GRP_ID,P27_QTY,P27_RATE,P27_MAIN_EXP_PREV_READ,P27_MAIN_IMP_PREV_READ,P27_CHECK_EXP_PREV_'
||'READ,P27_CHECK_IMP_PREV_READ,P27_MAIN_EXPORT_PRV_KVAH,P27_MAIN_IMPORT_PRV_KVAH,P27_CHECK_IMPORT_PRV_KVAH,P27_CHECK_EXPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42728385471768233)
,p_name=>'Set meter loc/No'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_BILLING_POINT'
,p_condition_element=>'P27_BILLING_POINT'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42728868887768234)
,p_event_id=>wwv_flow_api.id(42728385471768233)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NU_DOC_NO,VC_LOCATION,NU_MAIN_FACTOR,NU_MAIN_FACTOR,',
'        VC_CHK_METER_NO,NU_DOC_NO,VC_LOCATION,NU_chk_FACTOR,NU_chk_FACTOR',
'into   :P27_MAIN_METER_NO,:P27_MAIN_METER_LOC,:P27_MAIN_METER_LOC_DESC,:P27_MAIN_EXP_MULTI_FAC,:P27_MAIN_IMP_MULTI_FAC',
'       ,:P27_CHECK_METER_NO,:P27_CHECK_METER_LOC,:P27_CHECK_METER_LOC_DESC,:P27_CHECK_EXP_MULTI_FAC,:P27_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P27_BILLING_POINT',
';',
'',
''))
,p_attribute_02=>'P27_BILLING_POINT'
,p_attribute_03=>'P27_MAIN_METER_NO,P27_MAIN_METER_LOC,P27_MAIN_METER_LOC_DESC,P27_MAIN_EXP_MULTI_FAC,P27_MAIN_IMP_MULTI_FAC,P27_CHECK_METER_NO,P27_CHECK_METER_LOC,P27_CHECK_METER_LOC_DESC,P27_CHECK_EXP_MULTI_FAC,P27_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42729302550768234)
,p_name=>'Calculate Main EXP  Diff Curr/Prev'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_CURR_READ,P27_MAIN_EXP_PREV_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42729837775768235)
,p_event_id=>wwv_flow_api.id(42729302550768234)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_DIFFERENCE:=REPLACE(:P27_MAIN_EXP_CURR_READ,'','','''')-REPLACE(:P27_MAIN_EXP_PREV_READ,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_PREV_READ,P27_MAIN_EXP_CURR_READ'
,p_attribute_03=>'P27_MAIN_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42730249035768235)
,p_name=>'Calculate Main EXP  Total Unit'
,p_event_sequence=>50
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_DIFFERENCE,P27_MAIN_EXP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42730676264768235)
,p_event_id=>wwv_flow_api.id(42730249035768235)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_TOTAL_UNIT := REPLACE(:P27_MAIN_EXP_DIFFERENCE ,'','','''')* REPLACE(:P27_MAIN_EXP_MULTI_FAC,'','','''') ;'
,p_attribute_02=>'P27_MAIN_EXP_DIFFERENCE,P27_MAIN_EXP_MULTI_FAC'
,p_attribute_03=>'P27_MAIN_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42731136099768236)
,p_name=>'Calculate Main EXP  Net Unit'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_ADJUSMENT,P27_MAIN_EXP_TOTAL_UNIT,P27_MAIN_EXP_UOM'
,p_condition_element=>'P27_MAIN_EXP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938349123924502)
,p_event_id=>wwv_flow_api.id(42731136099768236)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_NET_UNIT := REPLACE(:P27_MAIN_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P27_MAIN_EXP_ADJUSMENT,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_TOTAL_UNIT,P27_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P27_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42731644602768236)
,p_event_id=>wwv_flow_api.id(42731136099768236)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_NET_UNIT := (REPLACE(:P27_MAIN_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P27_MAIN_EXP_ADJUSMENT,'','',''''))*0.001;'
,p_attribute_02=>'P27_MAIN_EXP_TOTAL_UNIT,P27_MAIN_EXP_ADJUSMENT'
,p_attribute_03=>'P27_MAIN_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42732064155768237)
,p_name=>'Calculate Main IMP  Diff Curr/Prev'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_PREV_READ,P27_MAIN_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42732488973768237)
,p_event_id=>wwv_flow_api.id(42732064155768237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_IMP_DIFFERENCE := REPLACE(:P27_MAIN_IMP_CURR_READ,'','','''')-REPLACE(:P27_MAIN_IMP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P27_MAIN_IMP_PREV_READ,P27_MAIN_IMP_CURR_READ'
,p_attribute_03=>'P27_MAIN_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42732888632768237)
,p_name=>'Calculate Main IMP  Total Unit'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42733457044768238)
,p_event_id=>wwv_flow_api.id(42732888632768237)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_MAIN_IMP_TOTAL_UNIT := NVL(REPLACE(:P27_MAIN_IMP_DIFFERENCE,'','','''')*REPLACE(:P27_MAIN_IMP_MULTI_FAC,'','','''') ,0) ;',
'',
''))
,p_attribute_02=>'P27_MAIN_IMP_DIFFERENCE,P27_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P27_MAIN_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42733800122768238)
,p_name=>'Calculate Main IMP  Net Unit'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_ADJUSMENT,P27_MAIN_IMP_TOTAL_UNIT,P27_MAIN_IMP_UOM'
,p_condition_element=>'P27_MAIN_IMP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938502866924504)
,p_event_id=>wwv_flow_api.id(42733800122768238)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_MAIN_IMP_NET_UNIT := REPLACE(:P27_MAIN_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P27_MAIN_IMP_ADJUSMENT,'','','''')  ;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P27_MAIN_IMP_TOTAL_UNIT,P27_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P27_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42734349636768239)
,p_event_id=>wwv_flow_api.id(42733800122768238)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_MAIN_IMP_NET_UNIT := (REPLACE(:P27_MAIN_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P27_MAIN_IMP_ADJUSMENT,'','',''''))*0.001  ;',
'',
'',
'',
'',
''))
,p_attribute_02=>'P27_MAIN_IMP_TOTAL_UNIT,P27_MAIN_IMP_ADJUSMENT'
,p_attribute_03=>'P27_MAIN_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42734671117768239)
,p_name=>'Calculate Check EXP Diff Curr/Prev'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_PREV_READ,P27_CHECK_EXP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42735243675768239)
,p_event_id=>wwv_flow_api.id(42734671117768239)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_DIFFERENCE := REPLACE(:P27_CHECK_EXP_CURR_READ,'','','''')-REPLACE(:P27_CHECK_EXP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P27_CHECK_EXP_CURR_READ,P27_CHECK_EXP_PREV_READ'
,p_attribute_03=>'P27_CHECK_EXP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42735649872768240)
,p_name=>'Calculate Check EXP  Total Unit'
,p_event_sequence=>110
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_DIFFERENCE,P27_CHECK_EXP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42736158632768240)
,p_event_id=>wwv_flow_api.id(42735649872768240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_TOTAL_UNIT := NVL(REPLACE(:P27_CHECK_EXP_DIFFERENCE,'','','''')* REPLACE(:P27_CHECK_EXP_MULTI_FAC,'','',''''),0) ;'
,p_attribute_02=>'P27_CHECK_EXP_DIFFERENCE,P27_CHECK_EXP_MULTI_FAC'
,p_attribute_03=>'P27_CHECK_EXP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42736379674768240)
,p_name=>'Calculate Check EXP  Total Unit_1'
,p_event_sequence=>120
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_DIFFERENCE,P27_CHECK_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42736875588768241)
,p_event_id=>wwv_flow_api.id(42736379674768240)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_NET_READING_KWH_1 := NVL(REPLACE(:P27_CHECK_EXP_DIFFERENCE,'','','''')- REPLACE(:P27_CHECK_IMP_DIFFERENCE,'','',''''),0) ;'
,p_attribute_02=>'P27_CHECK_EXP_DIFFERENCE,P27_CHECK_IMP_DIFFERENCE'
,p_attribute_03=>'P27_NET_READING_KWH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42737308734768241)
,p_name=>'Calculate Check EXP  Net Unit'
,p_event_sequence=>130
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_ADJUSMENT,P27_CHECK_EXP_TOTAL_UNIT,P27_CHECK_EXP_UOM'
,p_condition_element=>'P27_CHECK_EXP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938701116924506)
,p_event_id=>wwv_flow_api.id(42737308734768241)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_NET_UNIT := (REPLACE(:P27_CHECK_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P27_CHECK_EXP_ADJUSMENT,'','',''''))*0.001 ;'
,p_attribute_02=>'P27_CHECK_EXP_TOTAL_UNIT,P27_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P27_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42737788867768242)
,p_event_id=>wwv_flow_api.id(42737308734768241)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_NET_UNIT := (REPLACE(:P27_CHECK_EXP_TOTAL_UNIT,'','','''')+REPLACE(:P27_CHECK_EXP_ADJUSMENT,'','','''')) ;'
,p_attribute_02=>'P27_CHECK_EXP_TOTAL_UNIT,P27_CHECK_EXP_ADJUSMENT'
,p_attribute_03=>'P27_CHECK_EXP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42738263361768242)
,p_name=>'Calculate Check IMP Diff Curr/Prev'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_IMP_PREV_READ,P27_CHECK_IMP_CURR_READ'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42738667417768242)
,p_event_id=>wwv_flow_api.id(42738263361768242)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_DIFFERENCE := REPLACE(:P27_CHECK_IMP_CURR_READ,'','','''')-REPLACE(:P27_CHECK_IMP_PREV_READ,'','','''') ;'
,p_attribute_02=>'P27_CHECK_IMP_CURR_READ,P27_CHECK_IMP_PREV_READ'
,p_attribute_03=>'P27_CHECK_IMP_DIFFERENCE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42739160244768243)
,p_name=>'Calculate CHECK IMP Total Unit'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_DIFFERENCE,P27_CHECK_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42739633132768243)
,p_event_id=>wwv_flow_api.id(42739160244768243)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_TOTAL_UNIT := REPLACE(:P27_CHECK_IMP_DIFFERENCE ,'','','''')* REPLACE(:P27_CHECK_IMP_MULTI_FAC,'','','''') ;'
,p_attribute_02=>'P27_CHECK_IMP_DIFFERENCE,P27_CHECK_IMP_MULTI_FAC'
,p_attribute_03=>'P27_CHECK_IMP_TOTAL_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42740022919768244)
,p_name=>'Calculate Check IMP  Net Unit'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_IMP_TOTAL_UNIT,P27_CHECK_IMP_ADJUSMENT,P27_CHECK_IMP_UOM'
,p_condition_element=>'P27_CHECK_IMP_UOM'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Wh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938978279924508)
,p_event_id=>wwv_flow_api.id(42740022919768244)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_NET_UNIT := (REPLACE(:P27_CHECK_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P27_CHECK_IMP_ADJUSMENT,'','','''')) ;'
,p_attribute_02=>'P27_CHECK_IMP_TOTAL_UNIT,P27_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P27_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42740557872768244)
,p_event_id=>wwv_flow_api.id(42740022919768244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_NET_UNIT := (REPLACE(:P27_CHECK_IMP_TOTAL_UNIT,'','','''')+REPLACE(:P27_CHECK_IMP_ADJUSMENT,'','',''''))*0.001 ;'
,p_attribute_02=>'P27_CHECK_IMP_TOTAL_UNIT,P27_CHECK_IMP_ADJUSMENT'
,p_attribute_03=>'P27_CHECK_IMP_NET_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42740948890768244)
,p_name=>'Calculate Main Exported Unit'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_NET_UNIT,P27_MAIN_EXP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42741372735768245)
,p_event_id=>wwv_flow_api.id(42740948890768244)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_NET_EXP_UNIT := REPLACE(:P27_MAIN_EXP_NET_UNIT,'','','''')- REPLACE(:P27_MAIN_IMP_NET_UNIT,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_NET_UNIT,P27_MAIN_IMP_NET_UNIT'
,p_attribute_03=>'P27_MAIN_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42741790095768245)
,p_name=>'Calculate Check Exported Unit'
,p_event_sequence=>180
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_NET_UNIT,P27_CHECK_IMP_NET_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42742346183768246)
,p_event_id=>wwv_flow_api.id(42741790095768245)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_NET_EXP_UNIT := NVL(REPLACE(:P27_CHECK_EXP_NET_UNIT,'','','''')- REPLACE(:P27_CHECK_IMP_NET_UNIT,'','',''''),0);'
,p_attribute_02=>'EP27_CHECK_XP_NET_UNIT,P27_CHECK_IMP_NET_UNIT'
,p_attribute_03=>'P27_CHECK_NET_EXP_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42742716375768246)
,p_name=>'Show/hide main meter Remark'
,p_event_sequence=>190
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_WORK'
,p_condition_element=>'P27_MAIN_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42743172637768246)
,p_event_id=>wwv_flow_api.id(42742716375768246)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42743673573768247)
,p_event_id=>wwv_flow_api.id(42742716375768246)
,p_event_result=>'FALSE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42744079434768247)
,p_name=>'Show/Hide Check Meter Remark'
,p_event_sequence=>200
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_WORK'
,p_condition_element=>'P27_CHECK_METER_WORK'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'N'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42744573179768248)
,p_event_id=>wwv_flow_api.id(42744079434768247)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42745098583768248)
,p_event_id=>wwv_flow_api.id(42744079434768247)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_REMARK'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42745534370768248)
,p_name=>'Refresh'
,p_event_sequence=>210
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42746026010768249)
,p_event_id=>wwv_flow_api.id(42745534370768248)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(144267533458471924)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42746430208768249)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>220
,p_condition_element=>'P27_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42746882318768250)
,p_event_id=>wwv_flow_api.id(42746430208768249)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42650041563768154)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P27_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42747286339768250)
,p_name=>'hide forward on add mode'
,p_event_sequence=>230
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P27_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42747788661768251)
,p_event_id=>wwv_flow_api.id(42747286339768250)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(42650041563768154)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42748168003768251)
,p_name=>'SET Main factor'
,p_event_sequence=>240
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
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
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42748751048768251)
,p_event_id=>wwv_flow_api.id(42748168003768251)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_MAIN_METER_NO,NU_MAIN_FACTOR,NU_MAIN_FACTOR',
'       ',
'into   :P27_MAIN_METER_NO,:P27_MAIN_EXP_MULTI_FAC,:P27_MAIN_IMP_MULTI_FAC',
'      ',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P27_MAIN_METER_LOC',
';'))
,p_attribute_02=>'P27_MAIN_METER_LOC'
,p_attribute_03=>'P27_MAIN_METER_NO,P27_MAIN_EXP_MULTI_FAC,P27_MAIN_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42749106416768252)
,p_name=>'SET CHECK  factor1'
,p_event_sequence=>250
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_LOC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42749664132768252)
,p_event_id=>wwv_flow_api.id(42749106416768252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  VC_CHK_METER_NO,nvl(nU_chk_FACTOR,0),nvl(NU_chk_FACTOR,0)',
'into   :P27_CHECK_METER_NO,:P27_CHECK_EXP_MULTI_FAC,:P27_CHECK_IMP_MULTI_FAC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P27_CHECK_METER_LOC',
';'))
,p_attribute_02=>'P27_CHECK_METER_LOC'
,p_attribute_03=>'P27_CHECK_METER_NO,P27_CHECK_EXP_MULTI_FAC,P27_CHECK_IMP_MULTI_FAC'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42749976962768252)
,p_name=>'Set UOm'
,p_event_sequence=>260
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_UOM'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42750474584768253)
,p_event_id=>wwv_flow_api.id(42749976962768252)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_MAIN_EXP_UOM :=  :P27_UOM ;',
'',
':P27_MAIN_IMP_UOM := :P27_UOM ;',
'',
':P27_CHECK_EXP_UOM  := :P27_UOM ;',
'',
':P27_CHECK_IMP_UOM  := :P27_UOM ;'))
,p_attribute_02=>'P27_UOM'
,p_attribute_03=>'P27_MAIN_EXP_UOM,P27_MAIN_IMP_UOM ,P27_CHECK_EXP_UOM  ,P27_CHECK_IMP_UOM'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42750874628768253)
,p_name=>'calculate net reading'
,p_event_sequence=>270
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_DIFFERENCE,P27_MAIN_IMP_DIFFERENCE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42751438093768254)
,p_event_id=>wwv_flow_api.id(42750874628768253)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_NET_READING_KWH:=replace(:P27_MAIN_EXP_DIFFERENCE,'','','''')-replace(:P27_MAIN_IMP_DIFFERENCE,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_DIFFERENCE,P27_MAIN_IMP_DIFFERENCE'
,p_attribute_03=>'P27_NET_READING_KWH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42751797478768254)
,p_name=>'CAL P27_MAIN_EXP_TOTAL_UNIT_1'
,p_event_sequence=>280
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42752302964768255)
,p_event_id=>wwv_flow_api.id(42751797478768254)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_TOTAL_UNIT_1:=REPLACE(:P27_MAIN_EXP_DIFFERENCE_1,'','','''')*REPLACE(:P27_MAIN_EXP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_MULTI_FAC,P27_MAIN_EXP_DIFFERENCE_1'
,p_attribute_03=>'P27_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42752757536768255)
,p_name=>'CAL POWER FACTOR'
,p_event_sequence=>290
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_NET_READING_KWH,P27_NET_READING_KVAH'
,p_condition_element=>'P27_PROJECT'
,p_triggering_condition_type=>'NOT_IN_LIST'
,p_triggering_expression=>'0000.01.03.0001.00XR.00.1UYw3QcryP,0000.01.03.0001.00XR.00.1UYw3QcvTX,0000.01.03.0001.00XR.00.1UYw3QtwC6'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42753178908768255)
,p_event_id=>wwv_flow_api.id(42752757536768255)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_POWER_FACTOR_EXPORT:=to_char(round(REPLACE(:P27_NET_READING_KWH,'','','''') / NVL(REPLACE(:P27_NET_READING_KVAH,'','',''''),''1''),3),''999G999G999G999G990D000'');'
,p_attribute_02=>'P27_NET_READING_KWH,P27_NET_READING_KVAH'
,p_attribute_03=>'P27_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(108644734412267699)
,p_event_id=>wwv_flow_api.id(42752757536768255)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
':P27_POWER_FACTOR_EXPORT:= to_char(round(cos(ATAN(REPLACE(:P27_NET_READING_KVAH,'','','''')/nvl(REPLACE(:P27_NET_READING_KWH,'','',''''),1))),3),''999G999G999G999G990D000'');',
'',
''))
,p_attribute_02=>'P27_NET_READING_KWH,P27_NET_READING_KVAH'
,p_attribute_03=>'P27_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42753646313768256)
,p_name=>'CAL KAVH DIFF'
,p_event_sequence=>300
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMPORT_PRV_KVAH,P27_MAIN_IMPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42754147172768256)
,p_event_id=>wwv_flow_api.id(42753646313768256)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_IMP_DIFFERENCE_1:=REPLACE(:P27_MAIN_IMPORT_CUR_KVAH,'','','''')-REPLACE(:P27_MAIN_IMPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P27_MAIN_IMPORT_PRV_KVAH,P27_MAIN_IMPORT_CUR_KVAH'
,p_attribute_03=>'P27_MAIN_IMP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42754550136768257)
,p_name=>'CAL KAVH DIFF EXP'
,p_event_sequence=>310
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXPORT_PRV_KVAH,P27_MAIN_EXPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42755013287768257)
,p_event_id=>wwv_flow_api.id(42754550136768257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_DIFFERENCE_1:=REPLACE(:P27_MAIN_EXPORT_CUR_KVAH,'','','''')-REPLACE(:P27_MAIN_EXPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P27_MAIN_EXPORT_PRV_KVAH,P27_MAIN_EXPORT_CUR_KVAH'
,p_attribute_03=>'P27_MAIN_EXP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42755376163768257)
,p_name=>'CAL_CHECK_EXP_DIFFERENCE_1'
,p_event_sequence=>320
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXPORT_PRV_KVAH,P27_CHECK_EXPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42755899559768258)
,p_event_id=>wwv_flow_api.id(42755376163768257)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_DIFFERENCE_1:=REPLACE(:P27_CHECK_EXPORT_CUR_KVAH,'','','''')-REPLACE(:P27_CHECK_EXPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P27_CHECK_EXPORT_PRV_KVAH,P27_CHECK_EXPORT_CUR_KVAH'
,p_attribute_03=>'P27_CHECK_EXP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42756334345768258)
,p_name=>'CAL_CHECK_EXP_TOTAL_UNIT_1'
,p_event_sequence=>330
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_DIFFERENCE_1,P27_CHECK_EXP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42756801389768259)
,p_event_id=>wwv_flow_api.id(42756334345768258)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_TOTAL_UNIT_1:=REPLACE(:P27_CHECK_EXP_DIFFERENCE_1,'','','''')*REPLACE(:P27_CHECK_EXP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P27_CHECK_EXP_DIFFERENCE_1,P27_CHECK_EXP_MULTI_FAC'
,p_attribute_03=>'P27_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42757237151768259)
,p_name=>'CAL_P27_NET_READING_KVAH_1'
,p_event_sequence=>340
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_DIFFERENCE_1,P27_CHECK_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42757722271768259)
,p_event_id=>wwv_flow_api.id(42757237151768259)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_NET_READING_KVAH_1:=REPLACE(:P27_CHECK_EXP_DIFFERENCE_1,'','','''')-REPLACE(:P27_CHECK_IMP_DIFFERENCE_1,'','','''');'
,p_attribute_02=>'P27_CHECK_EXP_DIFFERENCE_1,P27_CHECK_IMP_DIFFERENCE_1'
,p_attribute_03=>'P27_NET_READING_KVAH_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42758100520768260)
,p_name=>'CAL_CHECK_EXP_NET_UNIT_1'
,p_event_sequence=>350
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_EXP_TOTAL_UNIT_1,P27_CHECK_EXP_ADJUSMENT_1,P27_CHECK_EXP_UOM_1'
,p_condition_element=>'P27_CHECK_EXP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938848624924507)
,p_event_id=>wwv_flow_api.id(42758100520768260)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_NET_UNIT_1:=REPLACE(:P27_CHECK_EXP_TOTAL_UNIT_1,'','','''')-REPLACE(:P27_CHECK_EXP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P27_CHECK_EXP_ADJUSMENT_1,P27_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_CHECK_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42758659790768260)
,p_event_id=>wwv_flow_api.id(42758100520768260)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_EXP_NET_UNIT_1:=(REPLACE(:P27_CHECK_EXP_TOTAL_UNIT_1,'','','''')-REPLACE(:P27_CHECK_EXP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P27_CHECK_EXP_ADJUSMENT_1,P27_CHECK_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_CHECK_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42759040910768261)
,p_name=>'CAL_CHECK_IMP_DIFFERENCE_1'
,p_event_sequence=>360
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_IMPORT_PRV_KVAH,P27_CHECK_IMPORT_CUR_KVAH'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42759527581768261)
,p_event_id=>wwv_flow_api.id(42759040910768261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_DIFFERENCE_1:=REPLACE(:P27_CHECK_IMPORT_CUR_KVAH,'','','''')-REPLACE(:P27_CHECK_IMPORT_PRV_KVAH,'','','''');'
,p_attribute_02=>'P27_CHECK_IMPORT_PRV_KVAH,P27_CHECK_IMPORT_CUR_KVAH'
,p_attribute_03=>'P27_CHECK_IMP_DIFFERENCE_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42759926061768261)
,p_name=>'CAL_CHECK_IMP_TOTAL_UNIT_1'
,p_event_sequence=>370
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_IMP_DIFFERENCE_1,P27_CHECK_IMP_MULTI_FAC'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42760395566768262)
,p_event_id=>wwv_flow_api.id(42759926061768261)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_TOTAL_UNIT_1:=REPLACE(:P27_CHECK_IMP_DIFFERENCE_1,'','','''')*REPLACE(:P27_CHECK_IMP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P27_CHECK_IMP_MULTI_FAC,P27_CHECK_IMP_DIFFERENCE_1'
,p_attribute_03=>'P27_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42760830018768262)
,p_name=>'CAL_CHECK_IMP_NET_UNIT_1'
,p_event_sequence=>380
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_IMP_TOTAL_UNIT_1,P27_CHECK_IMP_ADJUSMENT_1,P27_CHECK_IMP_UOM_1'
,p_condition_element=>'P27_CHECK_IMP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8939061344924509)
,p_event_id=>wwv_flow_api.id(42760830018768262)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_NET_UNIT_1:=REPLACE(:P27_CHECK_IMP_TOTAL_UNIT_1,'','','''')-REPLACE(:P27_CHECK_IMP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P27_CHECK_IMP_ADJUSMENT_1,P27_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_CHECK_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42761296931768263)
,p_event_id=>wwv_flow_api.id(42760830018768262)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHECK_IMP_NET_UNIT_1:=(REPLACE(:P27_CHECK_IMP_TOTAL_UNIT_1,'','','''')-REPLACE(:P27_CHECK_IMP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P27_CHECK_IMP_ADJUSMENT_1,P27_CHECK_IMP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_CHECK_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42761732446768263)
,p_name=>'CAL_CHK_POWER_FACTOR_EXPORT'
,p_event_sequence=>390
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_NET_READING_KWH_1,P27_NET_READING_KVAH_1'
,p_condition_element=>'P27_NET_READING_KVAH_1'
,p_triggering_condition_type=>'NOT_EQUALS'
,p_triggering_expression=>'0'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42762238463768263)
,p_event_id=>wwv_flow_api.id(42761732446768263)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_CHK_POWER_FACTOR_EXPORT:=to_char(round(REPLACE(:P27_NET_READING_KWH_1,'','','''') / NVL(REPLACE(:P27_NET_READING_KVAH_1,'','',''''),''1''),3),''999G999G999G999G990D000'');'
,p_attribute_02=>'P27_NET_READING_KWH_1,P27_NET_READING_KVAH_1'
,p_attribute_03=>'P27_CHK_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'NOT_IN_LIST'
,p_client_condition_element=>'P27_PROJECT'
,p_client_condition_expression=>'0000.01.03.0001.00XR.00.1UYw3Qcl0H,0000.01.03.0001.00XR.00.1UYw3QcryP,0000.01.03.0001.00XR.00.1UYw3QtwC6,0000.01.03.0001.00XR.00.1UYw3Qu05F'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42762735862768264)
,p_event_id=>wwv_flow_api.id(42761732446768263)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'NULL;'
,p_attribute_02=>'P27_NET_READING_KWH_1,P27_NET_READING_KVAH_1'
,p_attribute_03=>'P27_CHK_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938222892924501)
,p_event_id=>wwv_flow_api.id(42761732446768263)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_CHK_POWER_FACTOR_EXPORT:= to_char(round(cos(ATAN(REPLACE(:P27_NET_READING_KVAH_1,'','','''')/nvl(REPLACE(:P27_NET_READING_KWH_1,'','',''''),1))),3),''999G999G999G999G990D000'');',
'',
''))
,p_attribute_02=>'P27_NET_READING_KWH_1,P27_NET_READING_KVAH_1'
,p_attribute_03=>'P27_CHK_POWER_FACTOR_EXPORT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
,p_client_condition_type=>'IN_LIST'
,p_client_condition_element=>'P27_PROJECT'
,p_client_condition_expression=>'0000.01.03.0001.00XR.00.1UYw3Qcl0H,0000.01.03.0001.00XR.00.1UYw3QcryP,0000.01.03.0001.00XR.00.1UYw3QtwC6,0000.01.03.0001.00XR.00.1UYw3Qu05F'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42763089473768264)
,p_name=>'NET READING KAVH'
,p_event_sequence=>400
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_DIFFERENCE_1,P27_MAIN_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42763584501768265)
,p_event_id=>wwv_flow_api.id(42763089473768264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P27_NET_READING_KVAH:=REPLACE(:P27_MAIN_EXP_DIFFERENCE_1,'','','''')- REPLACE(:P27_MAIN_IMP_DIFFERENCE_1,'','','''') ;',
'',
'',
'',
''))
,p_attribute_02=>'P27_MAIN_EXP_DIFFERENCE_1,P27_MAIN_IMP_DIFFERENCE_1'
,p_attribute_03=>'P27_NET_READING_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42763973555768265)
,p_name=>'CAL_MAIN_EXP_NET_UNIT_1'
,p_event_sequence=>410
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_EXP_TOTAL_UNIT_1,P27_MAIN_EXP_ADJUSMENT_1,P27_MAIN_EXP_UOM_1'
,p_condition_element=>'P27_MAIN_EXP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938422483924503)
,p_event_id=>wwv_flow_api.id(42763973555768265)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_NET_UNIT_1:=REPLACE(:P27_MAIN_EXP_TOTAL_UNIT_1,'','','''')+REPLACE(:P27_MAIN_EXP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P27_MAIN_EXP_ADJUSMENT_1,P27_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_MAIN_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42764564858768265)
,p_event_id=>wwv_flow_api.id(42763973555768265)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_EXP_NET_UNIT_1:=(REPLACE(:P27_MAIN_EXP_TOTAL_UNIT_1,'','','''')+REPLACE(:P27_MAIN_EXP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P27_MAIN_EXP_ADJUSMENT_1,P27_MAIN_EXP_TOTAL_UNIT_1'
,p_attribute_03=>'P27_MAIN_EXP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42764956306768266)
,p_name=>'CAL_MAIN_IMP_NET_UNIT_1'
,p_event_sequence=>420
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_TOTAL_UNIT_1,P27_MAIN_IMP_ADJUSMENT_1,P27_MAIN_IMP_UOM_1'
,p_condition_element=>'P27_MAIN_IMP_UOM_1'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'VARh'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(8938680597924505)
,p_event_id=>wwv_flow_api.id(42764956306768266)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_IMP_NET_UNIT_1:=REPLACE(:P27_MAIN_IMP_TOTAL_UNIT_1,'','','''')+REPLACE(:P27_MAIN_IMP_ADJUSMENT_1,'','','''');'
,p_attribute_02=>'P27_MAIN_IMP_TOTAL_UNIT_1,P27_MAIN_IMP_ADJUSMENT_1'
,p_attribute_03=>'P27_MAIN_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42765398078768266)
,p_event_id=>wwv_flow_api.id(42764956306768266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_IMP_NET_UNIT_1:=(REPLACE(:P27_MAIN_IMP_TOTAL_UNIT_1,'','','''')+REPLACE(:P27_MAIN_IMP_ADJUSMENT_1,'','',''''))*0.001;'
,p_attribute_02=>'P27_MAIN_IMP_TOTAL_UNIT_1,P27_MAIN_IMP_ADJUSMENT_1'
,p_attribute_03=>'P27_MAIN_IMP_NET_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42765806452768267)
,p_name=>'New'
,p_event_sequence=>430
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_IMP_DIFFERENCE_1'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42766325784768267)
,p_event_id=>wwv_flow_api.id(42765806452768267)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P27_MAIN_IMP_TOTAL_UNIT_1:=REPLACE(:P27_MAIN_IMP_DIFFERENCE_1,'','','''')*REPLACE(:P27_MAIN_IMP_MULTI_FAC,'','','''');'
,p_attribute_02=>'P27_MAIN_IMP_DIFFERENCE_1,P27_MAIN_IMP_MULTI_FAC'
,p_attribute_03=>'P27_MAIN_IMP_TOTAL_UNIT_1'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42501167959031909)
,p_name=>'Hide Print Region'
,p_event_sequence=>440
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42501595415031912)
,p_event_id=>wwv_flow_api.id(42501167959031909)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#PDF'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(42581929740205496)
,p_name=>'JMR Print'
,p_event_sequence=>450
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(42581728888201346)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(42582313479205497)
,p_event_id=>wwv_flow_api.id(42581929740205496)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#PDF'').show();',
' setTimeout(function () {',
'    var element = document.getElementById(''PDF'');',
'    var name1 = $v(''P27_GLOBAL_PROJ_NAME'');',
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
 p_id=>wwv_flow_api.id(3459169019788390)
,p_name=>'disable meter replacement'
,p_event_sequence=>460
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_CALIBRATION'
,p_condition_element=>'P27_MAIN_METER_CALIBRATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459321873788391)
,p_event_id=>wwv_flow_api.id(3459169019788390)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_REPLACEMENT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459585969788394)
,p_event_id=>wwv_flow_api.id(3459169019788390)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_REPLACEMENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3462281099788421)
,p_name=>'Disable  CHECK meter replacement'
,p_event_sequence=>470
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_CALIBRATION'
,p_condition_element=>'P27_CHECK_METER_CALIBRATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3462350945788422)
,p_event_id=>wwv_flow_api.id(3462281099788421)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_REPLACEMENT'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4054102645437694)
,p_event_id=>wwv_flow_api.id(3462281099788421)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_REPLACEMENT'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3459715361788395)
,p_name=>'Disable Meter Calibration'
,p_event_sequence=>480
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_REPLACEMENT'
,p_condition_element=>'P27_MAIN_METER_REPLACEMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459769136788396)
,p_event_id=>wwv_flow_api.id(3459715361788395)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_CALIBRATION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3459833211788397)
,p_event_id=>wwv_flow_api.id(3459715361788395)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_CALIBRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3462552241788424)
,p_name=>'Disable check Meter Calibration'
,p_event_sequence=>490
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_REPLACEMENT'
,p_condition_element=>'P27_CHECK_METER_REPLACEMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3462708076788425)
,p_event_id=>wwv_flow_api.id(3462552241788424)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_CALIBRATION'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3576436002521976)
,p_event_id=>wwv_flow_api.id(3462552241788424)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_CHECK_METER_CALIBRATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3460025863788398)
,p_name=>'MAIN METER CALIBRATION DATA'
,p_event_sequence=>500
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_CALIBRATION'
,p_condition_element=>'P27_MAIN_METER_CALIBRATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460059664788399)
,p_event_id=>wwv_flow_api.id(3460025863788398)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NU_RED_BEFORE_IMP,',
'NU_RED_AFTER_IMP,',
'NU_RED_BEFORE_EXP,',
'NU_RED_AFTER_EXP',
'INTO',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_IMPORT_PRV_KVAH,',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH',
'FROM DT_METER_CALIBRATION',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND NU_DOC_NO = (SELECT MAX(NU_DOC_NO) FROM DT_METER_CALIBRATION',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = 	:GLOBAL_PROJ_ID',
'AND VC_METER_CHK_MAIN =''M''',
'AND CH_AUTH_FLAG =''Y''',
')',
'AND NU_LOC_DOC_NO = :P27_MAIN_METER_LOC',
'AND VC_METER_SR_NO= :P27_MAIN_METER_NO',
'AND VC_METER_CHK_MAIN = ''M''',
'AND CH_AUTH_FLAG =''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'END;'))
,p_attribute_02=>'P27_MAIN_METER_CALIBRATION'
,p_attribute_03=>'P27_MAIN_EXP_PREV_READ,P27_MAIN_EXPORT_PRV_KVAH,P27_MAIN_IMP_PREV_READ,P27_MAIN_IMPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460250492788401)
,p_event_id=>wwv_flow_api.id(3460025863788398)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P27_MODE = ''A'' THEN',
'select ',
'to_number(NU_MAIN_EXP_CUR_READING),',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ',
'into',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH,',
':P27_MAIN_IMPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'ELSE ',
'select ',
'to_number(NU_MAIN_EXP_CUR_READING),',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ',
'into',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH,',
':P27_MAIN_IMPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'AND VC_JMR_NO <> :P27_JMR_NO',
'AND   DT_JMR_DATE <> :P27_JMR_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'END IF;',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P27_PPA_NO,P27_PPA_DATE'
,p_attribute_03=>'P27_MAIN_EXP_PREV_READ, P27_MAIN_IMP_PREV_READ, P27_MAIN_EXPORT_PRV_KVAH, P27_MAIN_IMPORT_PRV_KVAH'
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
 p_id=>wwv_flow_api.id(3576592010521977)
,p_name=>'Check METER CALIBRATION DATA'
,p_event_sequence=>510
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_CALIBRATION'
,p_condition_element=>'P27_CHECK_METER_CALIBRATION'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3576706521521978)
,p_event_id=>wwv_flow_api.id(3576592010521977)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT NU_RED_BEFORE_IMP,',
'NU_RED_AFTER_IMP,',
'NU_RED_BEFORE_EXP,',
'NU_RED_AFTER_EXP',
'INTO',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_EXPORT_PRV_KVAH',
'FROM DT_METER_CALIBRATION',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND NU_DOC_NO = (SELECT MAX(NU_DOC_NO) FROM DT_METER_CALIBRATION',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = 	:GLOBAL_PROJ_ID',
'AND VC_METER_CHK_MAIN =''C''',
'AND CH_AUTH_FLAG =''Y'')',
'AND NU_LOC_DOC_NO = :P27_CHECK_METER_LOC',
'AND VC_METER_SR_NO= :P27_CHECK_METER_NO',
'AND VC_METER_CHK_MAIN =''C''',
'AND CH_AUTH_FLAG =''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'END;'))
,p_attribute_02=>'P27_CHECK_METER_CALIBRATION'
,p_attribute_03=>'P27_CHECK_IMP_PREV_READ, P27_CHECK_IMPORT_PRV_KVAH, P27_CHECK_EXP_PREV_READ, P27_CHECK_EXPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3576824119521979)
,p_event_id=>wwv_flow_api.id(3576592010521977)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'IF :P27_MODE = ''A'' THEN',
'select',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ',
'into',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'',
'',
'ELSE',
'',
'select',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ',
'into',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'AND   VC_JMR_NO   <> :P27_JMR_NO',
'AND   DT_JMR_DATE <> :P27_JMR_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'END IF;',
'',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P27_PPA_NO,P27_PPA_DATE'
,p_attribute_03=>'P27_CHECK_EXP_PREV_READ,P27_CHECK_IMP_PREV_READ,P27_CHECK_IMPORT_PRV_KVAH,P27_CHECK_EXPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3460376188788402)
,p_name=>' MAIN METER REPLACEMENT  DATA'
,p_event_sequence=>520
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_MAIN_METER_REPLACEMENT'
,p_condition_element=>'P27_MAIN_METER_REPLACEMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460482380788403)
,p_event_id=>wwv_flow_api.id(3460376188788402)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT',
'NU_MAIN_NEW_IMP,',
'NU_MAIN_NEW_KVAH_READ_IMP,',
'NU_MAIN_NEW_EXP,',
' NU_MAIN_NEW_KVAH_READ_EXP',
'',
'INTO',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_IMPORT_PRV_KVAH,',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH',
'FROM DT_METER_REPLACEMENT',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND NU_DOC_NO = (SELECT MAX(NU_DOC_NO) FROM DT_METER_REPLACEMENT',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = 	:GLOBAL_PROJ_ID',
'AND CH_TYPE IN (''B'',''M'')',
'AND CH_AUTH_FLAG =''Y'')',
'AND NU_LOC_DOC_NO = :P27_MAIN_METER_LOC',
'AND VC_MAIN_NEW_METER_NO = :P27_MAIN_METER_NO',
'-- AND CH_TYPE IN (''B'',''M'')',
'AND CH_AUTH_FLAG =''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'END;'))
,p_attribute_02=>'P27_MAIN_METER_REPLACEMENT'
,p_attribute_03=>'P27_MAIN_EXP_PREV_READ, P27_MAIN_IMP_PREV_READ, P27_MAIN_EXPORT_PRV_KVAH, P27_MAIN_IMPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3460617405788404)
,p_event_id=>wwv_flow_api.id(3460376188788402)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'if :P27_MODE = ''A'' THEN',
'select ',
'to_number(NU_MAIN_EXP_CUR_READING),',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ',
'into',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH,',
':P27_MAIN_IMPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'ELSE ',
'select ',
'to_number(NU_MAIN_EXP_CUR_READING),',
'NU_MAIN_IMP_CUR_READING,',
'NU_MAIN_EXP_CUR_KVAH_READ,',
'NU_MAIN_IMP_CUR_KVAH_READ',
'into',
':P27_MAIN_EXP_PREV_READ,',
':P27_MAIN_IMP_PREV_READ,',
':P27_MAIN_EXPORT_PRV_KVAH,',
':P27_MAIN_IMPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'AND VC_JMR_NO <> :P27_JMR_NO',
'AND   DT_JMR_DATE <> :P27_JMR_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'END IF;',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P27_PPA_NO,P27_PPA_DATE'
,p_attribute_03=>'P27_MAIN_EXP_PREV_READ, P27_MAIN_IMP_PREV_READ, P27_MAIN_EXPORT_PRV_KVAH, P27_MAIN_IMPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(3576919722521980)
,p_name=>'CHECK  METER REPLACEMENT  DATA'
,p_event_sequence=>530
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P27_CHECK_METER_REPLACEMENT'
,p_condition_element=>'P27_CHECK_METER_REPLACEMENT'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3576970311521981)
,p_event_id=>wwv_flow_api.id(3576919722521980)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'SELECT',
'NU_CHECK_NEW_IMP,',
'NU_CHK_NEW_KVAH_READ_IMP,',
'NU_CHECK_NEW_EXP,',
' NU_CHK_NEW_KVAH_READ_EXP',
'',
'INTO',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_EXPORT_PRV_KVAH',
'FROM DT_METER_REPLACEMENT',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND NU_DOC_NO = (SELECT MAX(NU_DOC_NO) FROM DT_METER_REPLACEMENT',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = 	:GLOBAL_PROJ_ID',
'AND CH_TYPE IN (''B'',''C'')',
'AND CH_AUTH_FLAG =''Y'')',
'AND NU_LOC_DOC_NO = :P27_MAIN_METER_LOC',
'AND VC_CHECK_NEW_METER_NO = :P27_CHECK_METER_REPLACEMENT',
'',
'AND CH_AUTH_FLAG =''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'END;'))
,p_attribute_02=>'P27_CHECK_METER_REPLACEMENT'
,p_attribute_03=>'P27_CHECK_EXP_PREV_READ,P27_CHECK_EXPORT_PRV_KVAH,P27_CHECK_IMP_PREV_READ,P27_CHECK_IMPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(3577073204521982)
,p_event_id=>wwv_flow_api.id(3576919722521980)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'',
'IF :P27_MODE = ''A'' THEN',
'select',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ',
'into',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'',
'',
'ELSE',
'',
'select',
'NU_CHK_EXP_CUR_READING,',
'NU_CHK_IMP_CUR_READING,',
'NU_CHECK_IMP_CUR_KVAH_READ,',
'NU_CHECK_EXP_CUR_KVAH_READ',
'into',
':P27_CHECK_EXP_PREV_READ,',
':P27_CHECK_IMP_PREV_READ,',
':P27_CHECK_IMPORT_PRV_KVAH,',
':P27_CHECK_EXPORT_PRV_KVAH',
'from dt_jmr',
'where  ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE',
'AND   VC_JMR_NO   <> :P27_JMR_NO',
'AND   DT_JMR_DATE <> :P27_JMR_DATE',
'order by USR_ID_CREATE_DT desc',
'fetch first 1 rows only;',
'END IF;',
'',
'exception when no_data_found then null;',
'end;'))
,p_attribute_02=>'P27_PPA_NO,P27_PPA_DATE'
,p_attribute_03=>'P27_CHECK_EXP_PREV_READ,P27_CHECK_IMP_PREV_READ,P27_CHECK_IMPORT_PRV_KVAH,P27_CHECK_EXPORT_PRV_KVAH'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(4054223955437695)
,p_name=>'Enable Before Submit'
,p_event_sequence=>540
,p_bind_type=>'bind'
,p_bind_event_type=>'apexbeforepagesubmit'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(4054260987437696)
,p_event_id=>wwv_flow_api.id(4054223955437695)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_ENABLE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P27_MAIN_METER_CALIBRATION,P27_MAIN_METER_REPLACEMENT,P27_CHECK_METER_CALIBRATION,P27_CHECK_METER_REPLACEMENT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42723964773768226)
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
'          :P27_JMR_NO := v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' || v_code;',
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
'vc_main_remarks,VC_CHK_REMARKS,',
'NU_MAIN_EXP_UOM,',
'NU_MAIN_IMP_UOM,',
'NU_CHK_EXP_UOM,',
'NU_CHK_IMP_UOM,',
'DT_JMR_READING ,        --ADD BY SHRUTI ON 12-05-2023 REQUIRMENT BY CLIENT ,',
'NU_MAIN_POWER_FACT	,',
'NU_CHK_POWER_FACT,',
'VC_AUTH_SIGN_COMP,',
'VC_AUTH_SIGN_PSPCL,',
'VC_AUTH_SIGN_PSPCL_1,',
'ch_main_calib_chk,',
'ch_main_repl_chk,',
'ch_check_calib_chk,',
'ch_check_repl_chk   ',
'',
' )',
'',
'values',
'(',
':GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P27_JMR_NO,:P27_JMR_DATE,:P27_PPA_NO,:P27_PPA_DATE,:P27_CUSTOMER_CODE,:P27_BILLING_POINT,:P27_METERING_POINT_DESC,:P27_GRP_ID,:P27_ITEM_CODE,',
':P27_QTY,:P27_RATE,:P27_MAIN_METER_NO,:P27_MAIN_METER_LOC,',
'REPLACE(:P27_MAIN_EXP_PREV_READ,'','',''''),REPLACE(:P27_MAIN_EXP_CURR_READ,'','',''''),REPLACE(:P27_MAIN_EXP_DIFFERENCE,'','',''''),',
'REPLACE(:P27_MAIN_EXP_MULTI_FAC,'','',''''),REPLACE(:P27_MAIN_EXP_TOTAL_UNIT,'','',''''),REPLACE(:P27_MAIN_EXP_ADJUSMENT,'','',''''),',
'REPLACE(:P27_MAIN_EXP_NET_UNIT,'','',''''),REPLACE(:P27_MAIN_IMP_PREV_READ,'','',''''),REPLACE(:P27_MAIN_IMP_CURR_READ,'','',''''),',
'REPLACE(:P27_MAIN_IMP_DIFFERENCE,'','',''''),REPLACE(:P27_MAIN_IMP_MULTI_FAC,'','',''''),REPLACE(:P27_MAIN_IMP_TOTAL_UNIT,'','',''''),',
'REPLACE(:P27_MAIN_IMP_ADJUSMENT,'','',''''),REPLACE(:P27_MAIN_IMP_NET_UNIT,'','',''''),REPLACE(:P27_MAIN_NET_EXP_UNIT,'','',''''),',
':P27_MAIN_METER_WORK,:P27_MAIN_METER_REMARK,:P27_CHECK_METER_NO,:P27_CHECK_METER_LOC,',
'REPLACE(:P27_CHECK_EXP_PREV_READ,'','',''''),REPLACE(:P27_CHECK_EXP_CURR_READ,'','',''''),REPLACE(:P27_CHECK_EXP_DIFFERENCE,'','',''''),',
'REPLACE(:P27_CHECK_EXP_MULTI_FAC,'','',''''),REPLACE(:P27_CHECK_EXP_TOTAL_UNIT,'','',''''),REPLACE(:P27_CHECK_EXP_ADJUSMENT,'','',''''),',
'REPLACE(:P27_CHECK_EXP_NET_UNIT,'','',''''),REPLACE(:P27_CHECK_IMP_PREV_READ,'','',''''),REPLACE(:P27_CHECK_IMP_CURR_READ,'','',''''),',
'REPLACE(:P27_CHECK_IMP_DIFFERENCE,'','',''''),REPLACE(:P27_CHECK_IMP_MULTI_FAC,'','',''''),REPLACE(:P27_CHECK_IMP_TOTAL_UNIT,'','',''''),',
'REPLACE(:P27_CHECK_IMP_ADJUSMENT,'','',''''),REPLACE(:P27_CHECK_IMP_NET_UNIT,'','',''''),REPLACE(:P27_CHECK_NET_EXP_UNIT,'','',''''),',
':P27_CHECK_METER_WORK,:P27_CHECK_METER_REMARK,:GLOBAL_USER_CODE,sysdate,:GLOBAL_PARENT_COMP,:P27_PERIOD_FROM,:P27_PERIOD_TO,:P27_REMARKS,',
'decode(:P27_MAIN_METER_WORK,''Y'',REPLACE(:P27_MAIN_NET_EXP_UNIT,'','',''''),REPLACE(:P27_CHECK_NET_EXP_UNIT,'','','''')),',
'',
'REPLACE(:P27_MAIN_EXPORT_PRV_KVAH,'','',''''),REPLACE(:P27_MAIN_EXPORT_CUR_KVAH,'','',''''),REPLACE(:P27_MAIN_IMPORT_PRV_KVAH,'','',''''),REPLACE(:P27_MAIN_IMPORT_CUR_KVAH,'','',''''),',
'',
'REPLACE(:P27_CHECK_IMPORT_PRV_KVAH,'','',''''),REPLACE(:P27_CHECK_EXPORT_PRV_KVAH,'','',''''),REPLACE(:P27_CHECK_IMPORT_CUR_KVAH,'','',''''),REPLACE(:P27_CHECK_EXPORT_CUR_KVAH,'','',''''),',
'REPLACE(:P27_MAIN_EXP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P27_MAIN_EXP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P27_MAIN_EXP_UOM_1,'','','''')  ,',
'REPLACE(:P27_MAIN_EXP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P27_MAIN_EXP_NET_UNIT_1,'','',''''),',
'REPLACE(:P27_MAIN_IMP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P27_MAIN_IMP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P27_MAIN_IMP_UOM_1,'','','''') ,',
'REPLACE(:P27_MAIN_IMP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P27_MAIN_IMP_NET_UNIT_1,'','','''') ,',
'REPLACE(:P27_NET_READING_KWH,'','','''') ,',
'REPLACE(:P27_NET_READING_KVAH,'','','''') ,',
'REPLACE(:P27_CHECK_IMP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P27_CHECK_IMP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P27_CHECK_IMP_UOM_1,'','','''') ,',
'REPLACE(:P27_CHECK_IMP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P27_CHECK_IMP_NET_UNIT_1,'','','''')	,',
'REPLACE(:P27_CHECK_EXP_DIFFERENCE_1,'','',''''),',
'REPLACE(:P27_CHECK_EXP_TOTAL_UNIT_1,'','',''''),',
'REPLACE(:P27_CHECK_EXP_UOM_1,'','','''') ,',
'REPLACE(:P27_CHECK_EXP_ADJUSMENT_1,'','',''''),',
'REPLACE(:P27_CHECK_EXP_NET_UNIT_1,'','',''''),',
'',
'REPLACE(:P27_NET_READING_KWH_1,'','','''') ,',
'REPLACE(:P27_NET_READING_KVAH_1,'','','''') ,',
':P27_FROM_TIME,',
':P27_TO_TIME,',
':P27_REMARKS_MAIN,',
':P27_REMARKS_CHECK,',
':P27_MAIN_EXP_UOM,',
':P27_MAIN_IMP_UOM,',
':P27_CHECK_EXP_UOM,',
':P27_CHECK_IMP_UOM,',
':P27_JMR_READING_DATE,',
'REPLACE(:P27_POWER_FACTOR_EXPORT,'','',''''),',
'REPLACE(:P27_CHK_POWER_FACTOR_EXPORT,'','',''''),',
':P27_AUTH_SIGN_NAME,',
':P27_AUTH_SIGN_1,',
':P27_AUTH_SIGN_2,',
':P27_MAIN_METER_CALIBRATION,',
':P27_MAIN_METER_REPLACEMENT,',
':P27_CHECK_METER_CALIBRATION,',
':P27_CHECK_METER_REPLACEMENT',
'',
');',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42650383019768154)
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42724741697768228)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'update DT_JMR',
'set',
'VC_PPA_NO   			    =:P27_PPA_NO, ',
'DT_PPA_DATE			        =:P27_PPA_DATE, ',
'EO_ID				        =:P27_CUSTOMER_CODE, ',
'NU_DELIVERY_POINT_ID	    =:P27_BILLING_POINT, ',
'NU_METERING_POINT_ID	    =:P27_METERING_POINT_DESC, ',
'GRP_ID				        =:P27_GRP_ID, ',
'ITM_ID				        =:P27_ITEM_CODE,  ',
'--NU_QTY				        =REPLACE(:P27_QTY,'','',''''),',
'NU_RATE				        =:P27_RATE,',
'VC_MAIN_METER_NO		    =:P27_MAIN_METER_NO,',
'NU_MAIN_METER_LOC_ID		=:P27_MAIN_METER_LOC,',
'NU_MAIN_EXP_PRV_READING		=REPLACE(:P27_MAIN_EXP_PREV_READ,'','',''''),',
'NU_MAIN_EXP_CUR_READING		=REPLACE(:P27_MAIN_EXP_CURR_READ,'','',''''),',
'NU_MAIN_EXP_DIFFERNCE		=REPLACE(:P27_MAIN_EXP_DIFFERENCE,'','',''''),',
'NU_MAIN_EXP_FACTOR	    	=REPLACE(:P27_MAIN_EXP_MULTI_FAC,'','',''''),',
'NU_MAIN_EXP_TOTAL_UNIT		=REPLACE(:P27_MAIN_EXP_TOTAL_UNIT,'','',''''), ',
'NU_MAIN_EXP_ADJUSTMENT		=REPLACE(:P27_MAIN_EXP_ADJUSMENT,'','',''''),',
'NU_MAIN_EXP_NET_UNIT		=REPLACE(:P27_MAIN_EXP_NET_UNIT,'','',''''),',
'NU_MAIN_IMP_PRV_READING		=REPLACE(:P27_MAIN_IMP_PREV_READ,'','',''''),',
'NU_MAIN_IMP_CUR_READING		=REPLACE(:P27_MAIN_IMP_CURR_READ,'','',''''),',
'NU_MAIN_IMP_DIFFERNCE		=REPLACE(:P27_MAIN_IMP_DIFFERENCE,'','',''''),',
'NU_MAIN_IMP_FACTOR		    =REPLACE(:P27_MAIN_IMP_MULTI_FAC,'','',''''),',
'NU_MAIN_IMP_TOTAL_UNIT		=REPLACE(:P27_MAIN_IMP_TOTAL_UNIT,'','',''''),',
'NU_MAIN_IMP_ADJUSTMENT		=REPLACE(:P27_MAIN_IMP_ADJUSMENT,'','',''''),',
'NU_MAIN_IMP_NET_UNIT        =REPLACE(:P27_MAIN_IMP_NET_UNIT,'','',''''),',
'NU_MAIN_NET_EXP_UNIT        =REPLACE(:P27_MAIN_NET_EXP_UNIT,'','',''''),',
'CH_MAIN_METER_WORKING		=:P27_MAIN_METER_WORK,',
'VC_MAIN_METER_REMARKS		=:P27_MAIN_METER_REMARK,',
'VC_CHK_METER_NO			    =:P27_CHECK_METER_NO,',
'NU_CHK_METER_LOC_ID		    =:P27_CHECK_METER_LOC,',
'NU_CHK_EXP_PRV_READING		=REPLACE(:P27_CHECK_EXP_PREV_READ,'','',''''),',
'NU_CHK_EXP_CUR_READING		=REPLACE(:P27_CHECK_EXP_CURR_READ,'','',''''),',
'NU_CHK_EXP_DIFFERNCE		=REPLACE(:P27_CHECK_EXP_DIFFERENCE,'','',''''),',
'NU_CHK_EXP_FACTOR	    	=REPLACE(:P27_CHECK_EXP_MULTI_FAC,'','',''''),',
'NU_CHK_EXP_TOTAL_UNIT		=REPLACE(:P27_CHECK_EXP_TOTAL_UNIT,'','',''''),',
'NU_CHK_EXP_ADJUSTMENT		=REPLACE(:P27_CHECK_EXP_ADJUSMENT,'','',''''),',
'NU_CHK_EXP_NET_UNIT		    =REPLACE(:P27_CHECK_EXP_NET_UNIT,'','',''''),',
'NU_CHK_IMP_PRV_READING		=REPLACE(:P27_CHECK_IMP_PREV_READ,'','',''''),',
'NU_CHK_IMP_CUR_READING		=REPLACE(:P27_CHECK_IMP_CURR_READ,'','',''''),',
'NU_CHK_IMP_DIFFERNCE		=REPLACE(:P27_CHECK_IMP_DIFFERENCE,'','',''''),',
'NU_CHK_IMP_FACTOR		    =REPLACE(:P27_CHECK_IMP_MULTI_FAC,'','',''''),',
'NU_CHK_IMP_TOTAL_UNIT		=REPLACE(:P27_CHECK_IMP_TOTAL_UNIT,'','',''''),',
'NU_CHK_IMP_ADJUSTMENT		=REPLACE(:P27_CHECK_IMP_ADJUSMENT,'','',''''),',
'NU_CHK_IMP_NET_UNIT	    	=REPLACE(:P27_CHECK_IMP_NET_UNIT,'','',''''),',
'NU_CHK_NET_EXP_UNIT		    =REPLACE(:P27_CHECK_NET_EXP_UNIT,'','',''''),',
'CH_CHK_METER_WORKING		=:P27_CHECK_METER_WORK,',
'VC_CHK_METER_REMARKS		=:P27_CHECK_METER_REMARK,',
'DT_PERIOD_FROM              =:P27_PERIOD_FROM,',
'DT_PERIOD_TO                =:P27_PERIOD_TO,',
'VC_REMARKS                  = :P27_REMARKS,',
'NU_INV_NET_UNIT             =decode(:P27_MAIN_METER_WORK,''Y'',REPLACE(:P27_MAIN_NET_EXP_UNIT,'','',''''),REPLACE(:P27_CHECK_NET_EXP_UNIT,'','','''')),',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'NU_MAIN_EXP_PRV_KVAH_READ = REPLACE(:P27_MAIN_EXPORT_PRV_KVAH,'','',''''),',
'NU_MAIN_EXP_CUR_KVAH_READ = REPLACE(:P27_MAIN_EXPORT_CUR_KVAH,'','',''''),',
'NU_MAIN_IMP_PRV_KVAH_READ = REPLACE(:P27_MAIN_IMPORT_PRV_KVAH,'','',''''),',
'NU_MAIN_IMP_CUR_KVAH_READ = REPLACE(:P27_MAIN_IMPORT_CUR_KVAH,'','',''''),',
'',
'',
'NU_CHECK_IMP_PRV_KVAH_READ = REPLACE(:P27_CHECK_IMPORT_PRV_KVAH,'','',''''),',
'NU_CHECK_EXP_PRV_KVAH_READ = REPLACE(:P27_CHECK_EXPORT_PRV_KVAH,'','',''''),',
'NU_CHECK_IMP_CUR_KVAH_READ = REPLACE(:P27_CHECK_IMPORT_CUR_KVAH,'','',''''),',
'NU_CHECK_EXP_CUR_KVAH_READ = REPLACE(:P27_CHECK_EXPORT_CUR_KVAH,'','',''''),',
'',
'',
'NU_MAIN_EXP_DIFFERNCE_1  =REPLACE(:P27_MAIN_EXP_DIFFERENCE_1,'','',''''),',
'NU_MAIN_EXP_TOTAL_UNIT_1 =REPLACE(:P27_MAIN_EXP_TOTAL_UNIT_1,'','',''''),',
'NU_MAIN_EXP_UOM_1        =REPLACE(:P27_MAIN_EXP_UOM_1,'','',''''),',
'NU_MAIN_EXP_ADJUSTMENT_1 =REPLACE(:P27_MAIN_EXP_ADJUSMENT_1,'','',''''),',
'NU_MAIN_EXP_NET_UNIT_1	 =REPLACE(:P27_MAIN_EXP_NET_UNIT_1,'','',''''),',
'NU_MAIN_IMP_DIFFERNCE_1	 =REPLACE(:P27_MAIN_IMP_DIFFERENCE_1,'','',''''),',
'NU_MAIN_IMP_TOTAL_UNIT_1 =REPLACE(:P27_MAIN_IMP_TOTAL_UNIT_1,'','',''''),',
'NU_MAIN_IMP_UOM_1        =REPLACE(:P27_MAIN_IMP_UOM_1,'','',''''),',
'NU_MAIN_IMP_ADJUSTMENT_1 =REPLACE(:P27_MAIN_IMP_ADJUSMENT_1,'','',''''),',
'NU_MAIN_IMP_NET_UNIT_1   =REPLACE(:P27_MAIN_IMP_NET_UNIT_1,'','',''''),',
'NU_MAIN_NET_READING_KWH  =REPLACE(:P27_NET_READING_KWH,'','',''''),',
'NU_MAIN_NET_READING_KVAH =REPLACE(:P27_NET_READING_KVAH,'','',''''),',
'NU_CHK_IMP_DIFFERNCE_1 	 =REPLACE(:P27_CHECK_IMP_DIFFERENCE_1,'','',''''),',
'NU_CHK_IMP_TOTAL_UNIT_1	 =REPLACE(:P27_CHECK_IMP_TOTAL_UNIT_1,'','',''''),',
'NU_CHK_IMP_UOM_1         =REPLACE(:P27_CHECK_IMP_UOM_1,'','',''''),',
'NU_CHK_IMP_ADJUSTMENT_1	 =REPLACE(:P27_CHECK_IMP_ADJUSMENT_1,'','',''''),',
'NU_CHK_IMP_NET_UNIT_1    =REPLACE(:P27_CHECK_IMP_NET_UNIT_1,'','',''''),',
'NU_CHK_EXP_DIFFERNCE_1   =REPLACE(:P27_CHECK_EXP_DIFFERENCE_1,'','',''''),',
'NU_CHK_EXP_TOTAL_UNIT_1	 =REPLACE(:P27_CHECK_EXP_TOTAL_UNIT_1,'','',''''),',
'NU_CHK_EXP_UOM_1         =REPLACE(:P27_CHECK_EXP_UOM_1,'','',''''),',
'NU_CHK_EXP_ADJUSTMENT_1	 =REPLACE(:P27_CHECK_EXP_ADJUSMENT_1,'','',''''),',
'NU_CHK_EXP_NET_UNIT_1    =REPLACE(:P27_CHECK_EXP_NET_UNIT_1,'','',''''),',
'NU_CHK_NET_READING_KWH_1 =REPLACE(:P27_NET_READING_KWH_1,'','',''''),',
'NU_CHK_NET_READING_KVAH_1 =REPLACE(:P27_NET_READING_KVAH_1,'','',''''),',
'VC_FROM_TIME= :P27_FROM_TIME,',
'VC_TO_TIME=:P27_TO_TIME,',
'vc_main_remarks=:P27_REMARKS_MAIN,',
'VC_CHK_REMARKS=:P27_REMARKS_CHECK,',
'NU_CHK_EXP_UOM =:P27_CHECK_EXP_UOM,',
'NU_CHK_IMP_UOM =:P27_CHECK_IMP_UOM,',
'NU_MAIN_EXP_UOM=:P27_MAIN_EXP_UOM,',
'NU_MAIN_IMP_UOM=:P27_MAIN_IMP_UOM,',
'DT_JMR_READING = :P27_JMR_READING_DATE,  ---ADD BY SHRUTI ON 12-05-2023 NEW REQUIRMENT BY CLIENT',
'NU_MAIN_POWER_FACT =	REPLACE(:P27_POWER_FACTOR_EXPORT,'','',''''),  ---ADD BY SHRUTI ON 25-05-2023 for print',
'NU_CHK_POWER_FACT = REPLACE(:P27_CHK_POWER_FACTOR_EXPORT,'','',''''),   ---ADD BY SHRUTI ON 25-05-2023 for print',
'VC_AUTH_SIGN_COMP = :P27_AUTH_SIGN_NAME,',
'VC_AUTH_SIGN_PSPCL = :P27_AUTH_SIGN_1,',
'VC_AUTH_SIGN_PSPCL_1 = :P27_AUTH_SIGN_2,',
'ch_main_calib_chk  = :P27_MAIN_METER_CALIBRATION,',
'ch_main_repl_chk = :P27_MAIN_METER_REPLACEMENT,',
'ch_check_calib_chk = :P27_CHECK_METER_CALIBRATION,',
'ch_check_repl_chk  = :P27_CHECK_METER_REPLACEMENT',
'',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P27_JMR_NO',
'AND   DT_JMR_DATE = :P27_JMR_DATE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(42650383019768154)
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42725946044768230)
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
'IF :P27_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P27_JMR_NO ',
'                            AND DT_DOC_DATE = :P27_JMR_DATE ',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P27_JMR_NO,:P27_JMR_DATE,''JMR'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(42650383019768154)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42723530256768226)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42725532809768230)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42724327295768227)
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
',to_char(NU_CHECK_IMP_PRV_KVAH_READ,''999G999G999G999G990D000''),to_char(NU_CHECK_EXP_PRV_KVAH_READ,''999G999G999G999G990D000''),NU_CHECK_IMP_CUR_KVAH_READ,NU_CHECK_EXP_CUR_KVAH_READ,',
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
'NU_CHK_EXP_UOM,',
'NU_CHK_IMP_UOM,',
'NU_MAIN_EXP_UOM,',
'NU_MAIN_IMP_UOM,',
'DT_JMR_READING,',
'VC_AUTH_SIGN_COMP,',
'VC_AUTH_SIGN_PSPCL,',
'VC_AUTH_SIGN_PSPCL_1,',
'',
'CH_MAIN_CALIB_CHK,',
'CH_MAIN_REPL_CHK,',
'CH_CHECK_CALIB_CHK,',
'CH_CHECK_REPL_CHK',
'INTO',
'',
':P27_PPA_NO, :P27_PPA_DATE, :P27_CUSTOMER_CODE,:P27_BILLING_POINT,:P27_METERING_POINT_DESC,:P27_GRP_ID,:P27_ITEM_CODE,',
':P27_QTY,:P27_RATE,:P27_MAIN_METER_NO,:P27_MAIN_METER_LOC,:P27_MAIN_EXP_PREV_READ,:P27_MAIN_EXP_CURR_READ,:P27_MAIN_EXP_DIFFERENCE,',
':P27_MAIN_EXP_MULTI_FAC,:P27_MAIN_EXP_TOTAL_UNIT,:P27_MAIN_EXP_ADJUSMENT,:P27_MAIN_EXP_NET_UNIT,:P27_MAIN_IMP_PREV_READ,:P27_MAIN_IMP_CURR_READ,',
':P27_MAIN_IMP_DIFFERENCE,:P27_MAIN_IMP_MULTI_FAC,:P27_MAIN_IMP_TOTAL_UNIT,:P27_MAIN_IMP_ADJUSMENT,:P27_MAIN_IMP_NET_UNIT,:P27_MAIN_NET_EXP_UNIT,',
':P27_MAIN_METER_WORK,:P27_MAIN_METER_REMARK,',
':P27_CHECK_METER_NO,:P27_CHECK_METER_LOC,:P27_CHECK_EXP_PREV_READ,:P27_CHECK_EXP_CURR_READ,:P27_CHECK_EXP_DIFFERENCE,:P27_CHECK_EXP_MULTI_FAC,',
':P27_CHECK_EXP_TOTAL_UNIT,:P27_CHECK_EXP_ADJUSMENT,:P27_CHECK_EXP_NET_UNIT,:P27_CHECK_IMP_PREV_READ,:P27_CHECK_IMP_CURR_READ,:P27_CHECK_IMP_DIFFERENCE,',
':P27_CHECK_IMP_MULTI_FAC,:P27_CHECK_IMP_TOTAL_UNIT,:P27_CHECK_IMP_ADJUSMENT,:P27_CHECK_IMP_NET_UNIT,:P27_CHECK_NET_EXP_UNIT,:P27_CHECK_METER_WORK,',
':P27_CHECK_METER_REMARK,:P27_PERIOD_FROM,:P27_PERIOD_TO,:P27_REMARKS,',
':P27_MAIN_EXPORT_PRV_KVAH,:P27_MAIN_EXPORT_CUR_KVAH,:P27_MAIN_IMPORT_PRV_KVAH,:P27_MAIN_IMPORT_CUR_KVAH,',
'',
':P27_CHECK_IMPORT_PRV_KVAH,:P27_CHECK_EXPORT_PRV_KVAH,:P27_CHECK_IMPORT_CUR_KVAH,:P27_CHECK_EXPORT_CUR_KVAH,',
':P27_MAIN_EXP_DIFFERENCE_1,',
':P27_MAIN_EXP_TOTAL_UNIT_1,',
':P27_MAIN_EXP_UOM_1,',
':P27_MAIN_EXP_ADJUSMENT_1,',
':P27_MAIN_EXP_NET_UNIT_1,',
':P27_MAIN_IMP_DIFFERENCE_1,',
':P27_MAIN_IMP_TOTAL_UNIT_1,',
':P27_MAIN_IMP_UOM_1,',
':P27_MAIN_IMP_ADJUSMENT_1,',
':P27_MAIN_IMP_NET_UNIT_1,',
':P27_NET_READING_KWH,',
':P27_NET_READING_KVAH,',
':P27_CHECK_IMP_DIFFERENCE_1,',
':P27_CHECK_IMP_TOTAL_UNIT_1,',
':P27_CHECK_IMP_UOM_1,',
':P27_CHECK_IMP_ADJUSMENT_1,',
':P27_CHECK_IMP_NET_UNIT_1,',
':P27_CHECK_EXP_DIFFERENCE_1,',
':P27_CHECK_EXP_TOTAL_UNIT_1,',
':P27_CHECK_EXP_UOM_1,',
':P27_CHECK_EXP_ADJUSMENT_1,',
':P27_CHECK_EXP_NET_UNIT_1,',
'',
':P27_NET_READING_KWH_1,',
':P27_NET_READING_KVAH_1,:P27_FROM_TIME,:P27_TO_TIME,',
':P27_CHECK_EXP_UOM,',
':P27_CHECK_IMP_UOM,',
':P27_MAIN_EXP_UOM,',
':P27_MAIN_IMP_UOM,',
':P27_JMR_READING_DATE,',
':P27_AUTH_SIGN_NAME,',
':P27_AUTH_SIGN_1,',
':P27_AUTH_SIGN_2,',
':P27_MAIN_METER_CALIBRATION,',
':P27_MAIN_METER_REPLACEMENT,',
':P27_CHECK_METER_CALIBRATION,',
':P27_CHECK_METER_REPLACEMENT',
'',
'FROM DT_JMR',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID =  :GLOBAL_PROJ_ID',
'AND   VC_JMR_NO = :P27_JMR_NO',
'AND   DT_JMR_DATE = :P27_JMR_DATE;',
'',
'exception when no_data_found then null;',
'end;',
'',
'begin',
'Select get_cust_name(org_id,EO_ID)cust_name, ',
'       get_energy_flow_loc(ORG_ID,PRJ_ID,NU_DELIVERY_POINT_ID) Billing_loc, ',
'       NU_METERING_POINT_ID,',
'    --   NU_METERING_POINT_ID,',
'       GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'       VC_EXTERNAL_DOC_no,DT_EXTERNAL_DOC_DATE',
'     ',
'',
'into   :P27_CUSTOMER_NAME,',
'       :P27_BILLING_POINT_DESC,',
'       :P27_METERING_POINT,',
'   --    :P27_METERING_POINT_DESC,',
'       :P27_ITEM_DESC,',
'       :P27_UOM',
'       ,:P27_PPA_NO_NEW',
'       ,:P27_PPA_DATE_NEW',
'',
'       ',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P27_PPA_NO',
'AND   DT_PPA_DATE = :P27_PPA_DATE;',
'exception when no_data_found then null;',
'end;',
'',
'begin',
'',
'select  VC_LOCATION,',
'        VC_LOCATION',
'into   :P27_MAIN_METER_LOC_DESC,',
'       :P27_CHECK_METER_LOC_DESC',
'from dt_energy_flow',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   NU_DOC_NO   = :P27_METERING_POINT',
';',
'exception when no_data_found then null;',
'end;',
'-- :P27_MAIN_EXP_UOM :=  :P27_UOM ;',
'',
'-- :P27_MAIN_IMP_UOM := :P27_UOM ;',
'',
'-- :P27_CHECK_EXP_UOM  := :P27_UOM ;',
'',
'-- :P27_CHECK_IMP_UOM  := :P27_UOM ;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
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
 p_id=>wwv_flow_api.id(42726350065768231)
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
'               AND   VC_DOC_ID    = :P27_JMR_NO ',
'               AND   DT_DOC_DATE   = :P27_JMR_DATE',
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
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42725150883768229)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Clear Collection On JMR'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42726758008768231)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P27_WKF_STAGE',
'from  DT_JMR',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  vc_JMR_no   = :P27_JMR_NO',
'and  dt_JMR_date = :P27_JMR_DATE;',
'exception when no_data_found then :P27_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(42727092026768232)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P27_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P27_JMR_NO',
'AND      DT_DOC_DATE = :P27_JMR_DATE',
'AND      VC_DOC_TYPE  = ''JMR'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(69042942806312258)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Last Date'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select DT_PERIOD_TO,VC_TO_TIME into :P27_PERIOD_FROM,:P27_FROM_TIME from DT_JMR a',
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
,p_process_when=>'P27_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
