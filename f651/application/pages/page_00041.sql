prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Invoice Scheduled-FInal'
,p_alias=>'INVOICE-SCHEDULED-FINAL'
,p_step_title=>'Invoice Scheduled-FInal'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'https://cdnjs.cloudflare.com/ajax/libs/es6-promise/4.2.8/es6-promise.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/jspdf/2.5.1/jspdf.umd.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/html2canvas/1.4.1/html2canvas.min.js',
'https://cdnjs.cloudflare.com/ajax/libs/html2pdf.js/0.9.3/html2pdf.bundle.min.js'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230914141458'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1736806942090706)
,p_plug_name=>'PRINT'
,p_region_name=>'PDF'
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>80
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_header                        VARCHAR2(5000);',
'v_body                          VARCHAR2(30000);',
'v_footer                        VARCHAR2(5000);',
'COMPANY_NAME                    VARCHAR2(100);',
' ADDRESS1                       VARCHAR2(100);',
' ADDRESS2                       VARCHAR2(100);',
' GSTIN_NO                       VARCHAR2(100);',
' CIN_NO                         VARCHAR2(100);',
' PAN_NO                         VARCHAR2(100);',
' CITY                           VARCHAR2(100);',
' STATE                          VARCHAR2(100);',
' COUNTRY                        VARCHAR2(100);',
' CUSTOMER_NAME                  VARCHAR2(100);         ',
'ADDRESS_1                       VARCHAR2(100);     ',
'ADDRESS_2                       VARCHAR2(100);     ',
'ADDRESS_3                       VARCHAR2(100);     ',
'V_CITY                          VARCHAR2(100); ',
'V_STATE                         VARCHAR2(100); ',
'V_COUNTRY                       VARCHAR2(100);     ',
'GST_REGN_NO                     VARCHAR2(100);     ',
'PAN_GIR_NO                      VARCHAR2(100);',
'doc_no                          varchar2(30);',
'BENEFICIARY_NAME                VARCHAR2(100);',
'BANK_NAME                       VARCHAR2(100);',
'BRANCH_NAME                     VARCHAR2(100);',
'ACCOUNT_NO                      VARCHAR2(100);',
'IFSC_CODE                       VARCHAR2(100);',
'SUBJECT                         varchar2(100);                ',
'sch_prov                        number;',
'amount_words                    varchar2(100);   ',
'HS_CODE                         varchar2(50);    ',
'TRADING_AMT                  varchar2(50);',
'TCS_AMOUNT                   varchar2(50);',
'TAX_AMOUNT                   varchar2(50);   ',
'TCS_PER                   varchar2(50);     ',
'prov_bill_from              date;      ',
'prov_bill_to                date;',
'sno                        number :=1;',
'PAN_Y_N                    char(1);  ',
'PLANT_CAPACITY              varchar2(100);  ',
'plant_LOCATION              varchar2(100);         ',
'BEGIN',
'',
'--  fetch company Details',
'BEGIN',
'SELECT COMPANY_NAME,ADDRESS1,ADDRESS2,GSTIN_NO,CIN_NO,PAN_NO,CITY,STATE,COUNTRY',
' INTO',
' COMPANY_NAME,ADDRESS1,ADDRESS2,GSTIN_NO,CIN_NO,PAN_NO,CITY,STATE,COUNTRY',
'FROM APPUA.VW_COMPANY_MASTER',
'WHERE ORG_ID = :GLOBAL_COMP_CODE;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'END;',
'',
'-- fetch customer details',
'BEGIN',
'SELECT "Customer Name",	"Address 1", "Address 2","Address 3","City","State","Country",GST_REGN_NO,PAN_GIR_NO',
'INTO',
'CUSTOMER_NAME,ADDRESS_1,ADDRESS_2,ADDRESS_3,V_CITY,V_STATE,V_COUNTRY,GST_REGN_NO,PAN_GIR_NO',
'FROM APPUA.VW_CUSTOMER',
'WHERE EO_ID =:P41_CUSTOMER_CODE',
'AND NVL(ACTIVE,''N'') = ''Y''',
'AND "Customer Branch" =:GLOBAL_COMP_CODE ;',
'',
'if PAN_GIR_NO is NOT null then',
'PAN_Y_N := ''Y'';',
'ELSE ',
'PAN_Y_N := ''N'';',
'END IF;',
'',
'EXCEPTION WHEN OTHERS THEN NULL;',
'',
'END;',
'-- Fetch PPA details',
'begin',
'Select ',
'       VC_EXTERNAL_DOC_NO,VC_BENEFICIARY, VC_BANK_NAME, VC_BRANCH, VC_BANK_ACC_NO, VC_IFSC_CODE',
'into  doc_no,BENEFICIARY_NAME,BANK_NAME,BRANCH_NAME,ACCOUNT_NO,IFSC_CODE',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P41_PPA_NO',
'AND   DT_PPA_DATE = :P41_PPA_DATE;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'',
'begin',
'',
'-- fetch subject',
'select ',
'VC_CODE_DESC ',
'into ',
'SUBJECT',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'AND CH_ACTIVE = ''Y''',
'and VC_CODE =:P41_SUBJECT;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'-- fetch prov bill details',
'begin',
'select sum(C008) into sch_prov  FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''PROV_BILL'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'begin',
'-- fetch amount in words',
'select spell_number(round(replace(:P41_NET_AMOUNT,'','','''')))  into amount_words from dual;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'-- fetch HSN code',
'begin',
'select HS_CODE into HS_CODE from appua.VW_ITEM_MASTER',
'where ORG_ID = :GLOBAL_COMP_CODE',
'and ITM_ID = :P41_ITEM_CODE;',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'-- fetch provisional tax details',
'begin',
'',
'                    SELECT sum(NU_TAX_AMOUNT),sum(NU_TCS_AMOUNT),sum(NU_TRADING_AMT),sum(NU_TCS_PER),',
'                            min(DT_BILL_FROM),max(DT_BILL_TO)',
'                    into TAX_AMOUNT,TCS_AMOUNT,TRADING_AMT,TCS_PER,prov_bill_from,prov_bill_to',
'                    FROM DT_SCH_PROV_INV',
'                    WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'                    AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'                    and   VC_PPA_NO = :P41_PPA_NO',
'                    AND   DT_PPA_DATE = :P41_PPA_DATE',
'                    and  ch_auth_flag = ''Y''',
'                    AND   DT_BILL_FROM BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
'                    and DT_BILL_TO BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE;',
'                    EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'-- FETCH POWER ',
'begin',
'select VC_PLANT_CAPACITY ,VC_LOCATION',
'',
'into ',
'PLANT_CAPACITY,',
'plant_LOCATION',
'from MST_PLANT ',
'where VC_COMP_CODE = :global_comp_code',
'and VC_PLANT_NAME = :GLOBAL_PROJ_ID',
'AND NVL(CH_ACTIVE,''Y'') = ''Y'';',
'EXCEPTION WHEN OTHERS THEN NULL;',
'end;',
'',
'',
'v_header :=''<!DOCTYPE html>',
'<html>',
'    <head>',
'        <style>',
'            .bdy {',
'            font-family: "Gill Sans", sans-serif !important;',
'            font-size: x-small !important;',
'            vertical-align: middle !important;',
'            BACKGROUND-COLOR:white !important;',
'            line-height:0.5 !important;',
'        }',
'table,td,th {',
'    border: 1px solid;',
'    border-collapse: collapse;',
'}',
'        .tab{',
'            width:100%;',
'        }',
'        .heading{',
'            font-weight: bold;',
'            height:10px !important;',
'        }',
'        .address{font-size: x-small;',
'',
'        }',
'        .anx{',
'            font-family: "Gill Sans", sans-serif;',
'            font-size: xx-small;',
'            vertical-align: middle;',
'            border:1px solid black;',
'            margin: auto;',
'            text-align: center;',
'            ',
'        }',
'       @media print {',
'    @page { margin: 5PX; ',
'        size: landscape',
'    }',
'    .annexure { page-break-before: always; }',
'}',
'        </style>',
'    </head>',
''';',
'v_body :=''<body class="bdy">',
'    <div>',
'        ',
'    <table class="tab" style="border:0px !important" ><tr><td colspan="5" align="right" style= "font-size: 20px; border:0px !important; vertical-align: bottom;">Annexure-A &nbsp;&nbsp; </td></tr></table>',
'        <table class="tab">',
'            ',
'            <tr>',
'                ',
'                <td  colspan="5" align = "right" >ORIGINAL/DUPLICATE/TRIPLICATE</td>',
'            </tr>',
'        ',
'            <tr>',
'                <td  colspan="5" style="line-height: 0.5 !important;">  <h2 align = "center" >Bill of Supply</h2>',
'                    <h5  align = "center">(issued under Rule 49 read with Clause(c) of sub-section (3) of section 31 of CGST Act,2017)</h5>',
'                </td>',
'            </tr>',
'',
'        <tr>',
'            <td  class="address" align = "center" rowspan="2" style="width:50%; "><p><b style="font-size:12px;!important"><u>''||COMPANY_NAME||''</u></b>',
'                <br> CIN No.''||CIN_NO||''',
'                    <br> PAN No.: ''||PAN_NO||''',
'                    <br> GSTIN: ''||GSTIN_NO||''',
'                </p></td>',
'            <td align = "center" class="heading">Date Of ''||substr(:P41_PPA_NO,1,3)||''</td>',
'            <td align = "center" class="heading">Power House</td>',
'            <td align = "center" class="heading">Bill Number</td>',
'            <td align = "center" class="heading">Bill Date</td>',
'        </tr> ',
'',
'        <tr>',
'            <td style="font-size:12px;" align = "center">''||substr(:P41_PPA_NO,1,3)||'' No.'' ||doc_no||''<br> Dated ''||to_char(TO_DATE(:P41_PPA_DATE,''DD-MM-YYYY''),''DD-MONTH-YYYY'')||''</td>',
'            <td style="font-size:12px;" align = "center">''||:GLOBAL_PROJ_NAME||''<br>''|| PLANT_CAPACITY ||''</td>',
'            <td style="font-size:12px;" align = "center">''||:P41_INV_SCH_NO||''</td>',
'            <td style="font-size:12px;" align = "center">''||:P41_INV_SCH_DATE||''</td>',
'        </tr>',
'        <tr>',
'            <td rowspan="2" style="font-size:12px !important;"> <b>''||CUSTOMER_NAME||''</b><br>''||ADDRESS_1||'' ''||ADDRESS_2||'' ''||ADDRESS_3||'',''||V_CITY||'',''||V_STATE||'' ',
'                <br><b> PAN No.:''||PAN_GIR_NO||''</b>',
'                <br> <b> GSTIN:''||GST_REGN_NO||''</b>',
'            </td>',
'            <td style="font-size:12px;" align = "center" colspan="2" class="heading" >Payment Due Date</td>',
'            <td style="font-size:12px;" align = "center" colspan="2" class="heading" >Bill Period</td>',
'        </tr>',
'',
'        <tr>',
'            <td style="font-size:12px;" align = "center" colspan="2">''||:P41_PAYMENT_DUE_DATE||''</td>',
'            <td style="font-size:12px;" align = "center" colspan="2">''||:P41_BILL_FROM_DATE ||''-''||:P41_BILL_TO_DATE||''</td>',
'        </tr>',
'',
'        <tr> ',
'            <td style="font-size:12px;"><b> Subject:</b> ''||SUBJECT||''',
'                <br> <b>Ref: 1.''||substr(:P41_PPA_NO,1,3)||'' No.'' ||doc_no||''<br> Dated ''||to_char(TO_DATE(:P41_PPA_DATE,''DD-MM-YYYY''),''DD-MONTH-YYYY'')||''</b><br>',
'                2.Email Dated 19 April 2021</td>',
'            <td  style="font-size:12px;" colspan="4" align ="center"> Transfer The Ammount In Favour of <b>''||BENEFICIARY_NAME||''</b>,<br>',
'                 Account No:<b>''||ACCOUNT_NO||'' ,''||BANK_NAME||'',''||BRANCH_NAME||''</b>,<br>IFSC Code:<b>''||IFSC_CODE||''</b>',
'            </td>',
'        </tr>',
'        <tr>',
'            <td align = "center" class="heading"> HSN Code</td>',
'            <td align = "center" class="heading">Description</td>',
'            <td align = "center" class="heading" colspan="3"> Value</td>',
'        </tr>',
'        <tr>',
'            <td style="font-size:12px;" align = "center">''||HS_CODE||''</td>',
'            <td style="font-size:12px;" align = "center">''||:P41_ITEM_DESC||''</td>',
'            <td style="font-size:12px;" align = "center" colspan="3">as detaild below</td>',
'        </tr>',
'        <tr>',
'            <td colspan="5">&nbsp;</td> </tr>',
'            </table>',
'            <table class="tab" style="font-size:12px;">',
'            <thead>',
'            <tr>',
'                <td  align = "center" class="heading" style="width:5%;"> Sn.</td>',
'                <td  align = "center" class="heading" style="width:55%;"> Perticulars</td>',
'                <td  align = "center" class="heading" style="width:10%;">Unit</td>',
'                <td  align = "center" class="heading" style="width:25%;">Value</td>',
'                ',
'            ',
'            </tr>',
'        </thead>'';',
'',
'v_body := v_body || ''<tr>',
'                <td align = "center" >1</td>',
'                <td align = "left">Energy supplied at delivery point</td>',
'                <td align = "center">''||:P41_UOM||''</td>',
'                <td align = "right">''||TO_CHAR(nvl(nvl(sch_prov,0)+nvl(:P41_SCHEDULE_UNIT,0),0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td style="font-size:12px;" align = "center" >2</td>',
'                <td style="font-size:12px;" align = "left">Less: Energy billed from ''||to_char(TO_DATE(:P41_PPA_DATE,''DD-MM-YYYY''),''DD-MONTH-YYYY'')||'' to ''||to_char(TO_DATE(prov_bill_from,''DD-MM-YYYY''),''DD-MONTH-YYYY'')||'' </td>',
'                <td style="font-size:12px;" align = "center">''||:P41_UOM||''</td>',
'                <td style="font-size:12px;" align = "right">''||TO_CHAR(nvl(sch_prov,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td align = "center" >3</td>',
'                <td align = "left">Net Energy supplied from ''||to_char(TO_DATE(:P41_BILL_FROM_DATE,''DD-MM-YYYY''),''DD-MONTH-YYYY'')||'' to ''||to_char(TO_DATE(:P41_BILL_TO_DATE,''DD-MM-YYYY''),''DD-MONTH-YYYY'') ||'' </td>',
'                <td align = "center">''||:P41_UOM||''</td>',
'                <td align = "right">''||TO_CHAR(nvl(:P41_SCHEDULE_UNIT,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td align = "center" >4</td>',
'                <td align = "left">Bill Ammount @ ''||:P41_RATE||''</td>',
'                <td align = "center">in Rs.</td>',
'                <td align = "right">''||TO_CHAR(nvl(:P41_SCHEDULE_AMOUNT,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td align = "center" >5</td>',
'                <td align = "left">TCS as per Serction 206C (1H) of income tax act Refer Annexure-B</td>',
'                <td align = "center">in Rs.</td>',
'                <td align = "right">''||TO_CHAR(nvl(:P41_TCS_AMOUNT,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td align = "center" >6</td>',
'                <td align = "left">Trading Margin</td>',
'                <td align = "center">in Rs.</td>',
'                <td align = "right">''||TO_CHAR(nvl(TRADING_AMT,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            <tr>',
'                <td align = "center" >7</td>',
'                <td align = "left">Total Amount Payable (4+5-6)</td>',
'                <td align = "center">in Rs.</td>',
'                <td align = "right">''||TO_CHAR(nvl(:P41_NET_AMOUNT,0),''999G999G999G999G990D00'')||''</td>',
'            </tr>',
'            '';',
'',
'            v_body := v_body || ''</table>'';',
'',
'        v_body := v_body ||'' <table class="tab"><tr><td align="center" style="width:62.6%;font-size:12px!important;"> <b>''||amount_words||''</b> &nbsp;&nbsp;</td>',
'        <td align="center" class="heading"  style="width:36.5%;font-size:12px; ">Amount In Words</td> </tr>',
'        </table>',
'        <table class="tab"> <tr>',
'            <td align="right" style="width:100%; height:50px;border:0px !important;"> For ''||COMPANY_NAME||''</td>',
'            <tr><td align="right"  style="height:100px;border:0px !important;">Authorised Signatory </td> </tr>',
'        </tr>',
'        <tr>',
'            <td align="center"  style="border:0px !important;font-size:10px;!important">',
'                <b>Site Address: </b> ''||COMPANY_NAME||'' ''||ADDRESS1||'' ''||ADDRESS2||'' ''||CITY||'' ''||STATE||'' ''||COUNTRY||''<br>',
'                <b>Communication Address: B-37,Third Floor,Sector-1,Noida,Uttar Pradesh-201301</b><br>',
'                <b>Regd Off:</b>A-26/5,First FLoor,Street No. 8,West Vinod Nagar,Delhi-110092',
'            </td>',
'        </tr>',
' ',
'    </table></div>'' ;',
'',
'    v_body := v_body ||''',
'    <div class= "annexure">',
'        <table class="tab" style="border:0px !important;margin-top:50px;" ><tr><td colspan="5" align="right" style= "font-size: 20px; border:0px !important; vertical-align: bottom;">Annexure-B &nbsp;&nbsp; </td></tr></table>',
'    <table  class="anx" style="width: 100%; height:50px !important;">',
'        <tr><th style="width: 25%;border:0px !important;font-size:12px!important;">Name Of The Party</th>',
'            <td style="width: 25%;border:0px !important;font-size:12px!important;"><u>''||CUSTOMER_NAME||''</u></td>',
'            <th style="width: 25%;border:0px !important;font-size:12px!important;">PAN Provided (Y/N)</th>',
'            <td style="width: 25%;border:0px !important;font-size:12px!important;">''||PAN_Y_N||''</td>',
'        </tr>',
'        <tr><th style="width: 25%;border:0px !important;font-size:12px!important;">PAN</th>',
'            <td style="width: 25%;border:0px !important;font-size:12px!important;"><u>''||PAN_GIR_NO||''</u></td>',
'            <th style="width: 25%;border:0px !important;font-size:12px!important;">TCS Applicability</th>',
'            <td style="width: 25%;border:0px !important;font-size:12px!important;"></td>',
'        </tr>',
'    </table>',
'    <table  class="anx" style="width: 100%;">',
'        <tr>',
'            <td  class="heading" rowspan="2">Sn.</td>',
'            <td  class="heading" rowspan="2">Bill Period</td>',
'            <td  class="heading" rowspan="2">Bill No.</td>',
'            <td  class="heading" rowspan="2">Bill Date</td>',
'            <td  class="heading" rowspan="2">Power Supplied at<br> Delivery point <br> at HR periphery</td>',
'            <td  class="heading" rowspan="2">Bill Amount at <br> delivery point<br> @Rs.''||:P41_RATE||''/kWh</td>',
'            <td  class="heading" rowspan="2">Trading Margin <br> @0.04/KWh</td>',
'            <td  class="heading" rowspan="2">Bill amount <br> after trading <br> margin (Rs.)</td>',
'            <td  class="heading" colspan="5">TCS</td>',
'            <td  class="heading" colspan="2">TCS Receipt</td>',
'            <td  class="heading" colspan="4">TCS Deposite</td>',
'            ',
'        </tr>',
'        <tr>',
'            <td class="heading">Liable Amount</td>',
'            <td class="heading">Cummulative <br> Liable Amount</td>',
'            <td class="heading">Amount <br> Net of <br> Threshold Exemption</td>',
'            <td class="heading">TCS Rate</td>',
'            <td class="heading">TCS Amount <br> invoiced</td>',
'            <td class="heading">TCS Amount <br> recived </td>',
'            <td class="heading">Date of <br> receipt of TCS</td>',
'            <td class="heading">TCS Amount <br> deposited</td>',
'            <td class="heading">Date of <br> deposite of TCS</td>',
'            <td class="heading">Date of issuance <br> of TCS certificate</td>',
'            <td class="heading">Certificate No</td>',
'        </tr>'';',
'        ',
'        for I in ( ',
'                    SELECT VC_INVOICE_NO,NU_NET_AMOUNT,dt_invoice_date,NU_SCHEDULE_AMOUNT,NU_OTHER_CHARGE_AMOUNT,NU_SCHEDULE_UNIT,',
'                    NU_TAX_AMOUNT,NU_TCS_AMOUNT,NU_TRADING_AMT,NU_TCS_PER,DT_BILL_TO,DT_BILL_FROM',
'                    FROM DT_SCH_PROV_INV',
'                    WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'                    AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'                    and   VC_PPA_NO = :P41_PPA_NO',
'                    AND   DT_PPA_DATE = :P41_PPA_DATE',
'                    and  ch_auth_flag = ''Y''',
'                    AND   DT_BILL_FROM BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
'                    and DT_BILL_TO BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE) loop ',
'        ',
'         v_body := v_body ||''<tr>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||sno||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">from<br>''||TO_DATE(I.DT_BILL_FROM,''DD-MM-YYYY'') ||'' to <br>''||TO_DATE(I.DT_BILL_TO,''DD-MM-YYYY'')||'' </td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||I.VC_INVOICE_NO||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||I.dt_invoice_date||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||TO_CHAR(I.NU_SCHEDULE_UNIT,''999G999G999G999G990D00'')||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||TO_CHAR(I.NU_SCHEDULE_AMOUNT,''999G999G999G999G990D00'')||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||TO_CHAR(I.NU_TRADING_AMT,''999G999G999G999G990D00'')||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||TO_CHAR(I.NU_NET_AMOUNT,''999G999G999G999G990D00'')||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;">''||TO_CHAR(i.NU_TCS_AMOUNT,''999G999G999G999G990D00'')||''</td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'            <td style="word-wrap: break-word; font-size:8px!important;"></td>',
'        ',
'        </tr>'';',
'    sno := sno+1;',
'    END LOOP;',
'    ',
'    v_body := v_body || ''',
'</table>',
'  ',
'</div>'';',
'    HTP.P (v_header || v_body);',
'',
'        END;'))
,p_plug_source_type=>'NATIVE_PLSQL'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25299638194690137)
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
 p_id=>wwv_flow_api.id(22347784812909921)
,p_plug_name=>'Attachment report'
,p_parent_plug_id=>wwv_flow_api.id(25299638194690137)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>70
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
 p_id=>wwv_flow_api.id(22347656613909920)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY'
,p_internal_uid=>40700524001172245
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1384595969055340)
,p_db_column_name=>'BLOB1'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Blob1'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1384205375055340)
,p_db_column_name=>'C001'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'File Name'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1383737886055341)
,p_db_column_name=>'C002'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C002'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1383405528055341)
,p_db_column_name=>'C003'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C003'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1382985615055342)
,p_db_column_name=>'DELETE1'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Delete'
,p_column_link=>'f?p=&APP_ID.:16:&SESSION.::&DEBUG.::P16_ID:#C003#'
,p_column_linktext=>'<span class="t-Icon fa fa-trash delete-irrow" aria-hidden="true"></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P41_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1382614507055342)
,p_db_column_name=>'DOWNLOAD'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Download'
,p_column_link=>'f?p=&APP_ID.:0:&SESSION.:APPLICATION_PROCESS=GETFILE:&DEBUG.:RP,:FILE_ID:#C003#'
,p_column_linktext=>'<span aria-label="download"><span class="fa fa-download" aria-hidden="true" title="download"></span></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(22340902154897188)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71312'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BLOB1:C001:C002:C003:DELETE1:DOWNLOAD'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25629242471834246)
,p_plug_name=>'Other Charges'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25528866877208073)
,p_plug_name=>'OTHER CHARGES REPORTS'
,p_parent_plug_id=>wwv_flow_api.id(25629242471834246)
,p_region_template_options=>'#DEFAULT#'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
''''' edit,',
'c001 as Charge_Name,',
'c002 as Charge_type,',
'to_number(c003) as rate,',
'to_number(c004) as AMOUNT,',
'c005 as REMARKS,',
'c006 as account_code,',
'c001 as charge_id',
'',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE'';           '))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'OTHER CHARGES REPORTS'
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
 p_id=>wwv_flow_api.id(25528736813208072)
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
,p_internal_uid=>43881604200470397
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1381008551055345)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:P39_CHARGE_ID,P39_MODE,P39_SCHEDULE_AMOUNT,P39_SCHEDULE_UNIT:#CHARGE_ID#,E,\&P41_SCHEDULE_AMOUNT.\,&P41_SCHEDULE_UNIT.'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P41_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1380570887055345)
,p_db_column_name=>'CHARGE_NAME'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Charge Name'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15924160876825127)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1380175392055346)
,p_db_column_name=>'CHARGE_TYPE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Charge Type'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(16005262649557334)
,p_rpt_show_filter_lov=>'1'
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
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1379809456055346)
,p_db_column_name=>'RATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Rate'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1379355518055346)
,p_db_column_name=>'AMOUNT'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Amount'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1379021216055347)
,p_db_column_name=>'REMARKS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Remarks'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1378611417055347)
,p_db_column_name=>'ACCOUNT_CODE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Account Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1378142584055348)
,p_db_column_name=>'CHARGE_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Charge Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(25343076254551087)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'71080'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:CHARGE_NAME:CHARGE_TYPE:RATE:AMOUNT:REMARKS:ACCOUNT_CODE:CHARGE_ID'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25629595793834249)
,p_plug_name=>'Main Info'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P41_MODE'
,p_plug_read_only_when2=>'V'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25055594935882274)
,p_plug_name=>'Main info detail'
,p_parent_plug_id=>wwv_flow_api.id(25629595793834249)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25629350298834247)
,p_plug_name=>'Amount Calculator'
,p_parent_plug_id=>wwv_flow_api.id(25629595793834249)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25629437904834248)
,p_plug_name=>'Item detail'
,p_parent_plug_id=>wwv_flow_api.id(25629595793834249)
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_region_attributes=>'style = "border-color: black;"'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_display_point=>'SUB_REGIONS'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25629758388834251)
,p_plug_name=>'Display selector'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16318045916492177)
,p_plug_display_sequence=>30
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(25632281577834276)
,p_plug_name=>'Invoice Schedule - Final'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(31990759326077623)
,p_plug_name=>'Provisional Bill'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>60
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT ',
'''''edit,',
'c001 as id,',
'C002 as "Provisional Bill no.",',
'c003 as "BILL DATE",',
'to_number(C004) AS "Bill Amount",',
'C005 AS "DETAIL",',
'to_number(C006) AS "SUCHEDULE AMOUNT",',
'to_number(C007) AS "OTHER CHARGES",',
'to_number(C008) As Schedule_unit',
'       ',
' FROM APEX_COLLECTIONS',
'WHERE COLLECTION_NAME =''PROV_BILL''',
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
,p_prn_page_header=>'Provisional Bill'
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
 p_id=>wwv_flow_api.id(31990405983077620)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_search_bar=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>50343273370339945
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1351896682055381)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'G'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42:P42_ID,P42_BILL_NO,P42_BILL_DATE,P42_AMOUNT,P42_DETAIL,P42_SCH_AMT,P42_OTHER_CHARGES:#ID#,#Provisional Bill no.#,#BILL DATE#,\#Bill Amount#\,#DETAIL#,\#SUCHEDULE AMOUNT#\,\#OTHER CHARGES#\'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
,p_display_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_display_condition=>'P41_MODE'
,p_display_condition2=>'V'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1353521628055379)
,p_db_column_name=>'Provisional Bill no.'
,p_display_order=>20
,p_column_identifier=>'C'
,p_column_label=>'Provisional Bill No.'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1353064103055379)
,p_db_column_name=>'Bill Amount'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Net Bill Amount'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1352652623055380)
,p_db_column_name=>'DETAIL'
,p_display_order=>40
,p_column_identifier=>'E'
,p_column_label=>'Detail'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1352316617055380)
,p_db_column_name=>'ID'
,p_display_order=>50
,p_column_identifier=>'F'
,p_column_label=>'Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1351447785055381)
,p_db_column_name=>'BILL DATE'
,p_display_order=>60
,p_column_identifier=>'H'
,p_column_label=>'Bill Date'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1351099612055382)
,p_db_column_name=>'SUCHEDULE AMOUNT'
,p_display_order=>70
,p_column_identifier=>'L'
,p_column_label=>'Suchedule Amount'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1350638454055383)
,p_db_column_name=>'OTHER CHARGES'
,p_display_order=>80
,p_column_identifier=>'M'
,p_column_label=>'Other Charges'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'999G999G999G999G990D0000'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(1353929977055378)
,p_db_column_name=>'SCHEDULE_UNIT'
,p_display_order=>90
,p_column_identifier=>'N'
,p_column_label=>'Schedule Unit'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'NUMBER'
,p_display_text_as=>'WITHOUT_MODIFICATION'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(31843273173636277)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'72340'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:Provisional Bill no.:SCHEDULE_UNIT:SUCHEDULE AMOUNT:OTHER CHARGES:Bill Amount:DETAIL:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1355502080055374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25629595793834249)
,p_button_name=>'Print'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_redirect_url=>'http://103.234.186.89:7003/ebiz/reports/salesreportservlet?tab=&golink=Report&ReportType=PDF&organisation=&GLOBAL_COMP_CODE.&ccLbl=&ccVal=&RptDesc=&multiOrg=&whid=&tracktype=&atttype=%5B%5D&attval=%5B%5D&UsrId=1&bsport=&structid=&structloc=&structlbl=&cldid=0000&hoorgid=&GLOBAL_PARENT_COMP.&slocid=1&currtype=2&uomtype=1&todate=&P41_INV_SCH_DATE.&fromdate=&catid=&status= &eoid=&salesman=&itmgrp=&itmName=&currid=&formstatus=&fileName=&P41_FILE_NAME.&bgcolor=D&head=D&margin=Y&docno=&P41_INV_SCH_NO.&todocno=&logo=Org-logo.png&eogrp=&lblid=&lblval=&cntry=&topn=&topnto=&prjDocId=&GLOBAL_PROJ_ID.&slstype=&basis=&invtype=&grpLvlThree=&grpLvlTwo=&grpLvlOne=&fileDisplayName=Invoice%20Schedule%20Final%20Report&multiProj='
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1737041026090709)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25629595793834249)
,p_button_name=>'Print_1'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Print'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_icon_css_classes=>'fa-print'
,p_grid_new_row=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1355911550055373)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25629595793834249)
,p_button_name=>'Forward'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>&P41_LABEL_NAME.'
,p_button_position=>'CHANGE'
,p_button_redirect_url=>'f?p=&APP_ID.:25:&SESSION.::&DEBUG.:25:P25_REQ_NO,P25_DOC_NO,P25_DOC_DATE,P25_DOC_TYPE,P25_AUTH_FLAG,P25_LAST_PAGE:&P41_REQ_NO.,&P41_INV_SCH_NO.,&P41_INV_SCH_DATE.,IFSCH,&P41_AUTH_FLAG.,&P41_LAST_PAGE.'
,p_icon_css_classes=>'fa-mail-forward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1356263354055372)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(25629595793834249)
,p_button_name=>'cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1356715221055372)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(25629595793834249)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P41_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1377438293055349)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25629242471834246)
,p_button_name=>'Add_charges'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add '
,p_button_position=>'PREVIOUS'
,p_button_condition=>'P41_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1382023495055343)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(25299638194690137)
,p_button_name=>'ADD'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Add'
,p_button_position=>'PREVIOUS'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:::'
,p_button_condition=>'P41_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-plus fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1421930494055310)
,p_branch_name=>'Go To Page 37'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1356715221055372)
,p_branch_sequence=>10
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1421483819055310)
,p_branch_name=>'Go To Page 39'
,p_branch_action=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:39:P39_MODE,P39_SCHEDULE_UNIT,P39_SCHEDULE_AMOUNT:A,&P41_SCHEDULE_UNIT.,\&P41_SCHEDULE_AMOUNT.\&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1377438293055349)
,p_branch_sequence=>20
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(1421044872055310)
,p_branch_name=>'Go To Page 37'
,p_branch_action=>'f?p=&APP_ID.:40:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(1356263354055372)
,p_branch_sequence=>30
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(722423035714721)
,p_name=>'P41_SURCHARGE_DATE_ACT'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1357061293055372)
,p_name=>'P41_LABEL_NAME'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_item_default=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT DECODE(nvl(:P41_AUTH_FLAG,''N''),''N'',''Forward'',''Y'',''Workflow History'')label1',
'FROM DUAL; '))
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1357472132055371)
,p_name=>'P41_AUTH_FLAG'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1357912781055371)
,p_name=>'P41_LAST_PAGE'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1358263351055370)
,p_name=>'P41_WKF_STAGE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1358692261055370)
,p_name=>'P41_REQ_NO'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1359116047055369)
,p_name=>'P41_INVOICE_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1359504384055369)
,p_name=>'P41_MODE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1359928160055369)
,p_name=>'P41_INV_SCH_DATE'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_item_default=>'SYSDATE'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Invoice Presentation date'
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
 p_id=>wwv_flow_api.id(1360254524055368)
,p_name=>'P41_INV_SCH_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25629595793834249)
,p_prompt=>'Invoice No'
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
 p_id=>wwv_flow_api.id(1360977392055367)
,p_name=>'P41_ITEM_DETAIL'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Item Detail'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>150
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1361369291055366)
,p_name=>'P41_RATE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Rate'
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
 p_id=>wwv_flow_api.id(1361815160055366)
,p_name=>'P41_QTY'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1362220488055366)
,p_name=>'P41_SCHEDULE_UNIT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Schedule Unit'
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
 p_id=>wwv_flow_api.id(1362542607055365)
,p_name=>'P41_UOM'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Uom'
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
 p_id=>wwv_flow_api.id(1362965517055365)
,p_name=>'P41_ITEM_COA'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1363429360055364)
,p_name=>'P41_ITEM_DESC'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Item'
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
 p_id=>wwv_flow_api.id(1363742075055364)
,p_name=>'P41_ITEM_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1364162084055364)
,p_name=>'P41_GRP_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1364564794055363)
,p_name=>'P41_SUBJECT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25629437904834248)
,p_prompt=>'Subject'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov_language=>'PLSQL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
'select ',
'',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'AND CH_ACTIVE = ''Y''',
'AND :P41_MODE <> ''V''',
'UNION ALL',
'select ',
'VC_CODE_DESC D, VC_CODE R',
'',
'from mst_code',
'where ORG_ID = :GLOBAL_PARENT_COMP',
'AND VC_CODE_TYPE = ''I''',
'--AND CH_ACTIVE = ''Y''',
'AND :P41_MODE = ''V'''))
,p_lov_display_null=>'YES'
,p_lov_null_text=>'---Select--'
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
 p_id=>wwv_flow_api.id(1365241781055362)
,p_name=>'P41_NET_SCHEDULE_AMOUNT'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Net Schedule Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1365636441055362)
,p_name=>'P41_PROV_BILL_OTHER_CHARGE_AMT'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Prov Schedule Other Charge Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366102852055361)
,p_name=>'P41_PROV_SCHEDULE_AMOUNT'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Prov Schedule Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1366527803055361)
,p_name=>'P41_REMARK'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_prompt=>'Remark'
,p_display_as=>'NATIVE_TEXTAREA'
,p_cSize=>30
,p_cMaxlength=>200
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
 p_id=>wwv_flow_api.id(1366899626055360)
,p_name=>'P41_TCS_COA'
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1367282218055360)
,p_name=>'P41_TAX_ID'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1367642706055360)
,p_name=>'P41_TCS_PER'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1368131719055359)
,p_name=>'P41_TAX_RULE_ID'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1368456021055359)
,p_name=>'P41_NET_AMOUNT'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Net Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1368853319055358)
,p_name=>'P41_TCS_AMOUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'TCS Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1369325351055358)
,p_name=>'P41_TAX_AMOUNT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Tax Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1369702708055357)
,p_name=>'P41_SUB_AMOUNT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Sub Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1370053054055357)
,p_name=>'P41_OTHER_CHARGE_AMOUNT'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Final Schedule Other Charge Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_grid_column=>4
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1370455424055357)
,p_name=>'P41_SCHEDULE_AMOUNT'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'0'
,p_prompt=>'Final Schedule Amount'
,p_format_mask=>'999G999G999G999G990D0000'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_tag_attributes=>'READONLY=TRUE'
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1370887959055356)
,p_name=>'P41_TAX_APPLICABLE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(25629350298834247)
,p_item_default=>'N'
,p_prompt=>'Tax Applicable'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC2:Yes;Y,No;N'
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'2'
,p_attribute_02=>'NONE'
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
 p_id=>wwv_flow_api.id(1371541181055355)
,p_name=>'P41_FILE_NAME'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_item_default=>'Final_schedule_invoice'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1371940154055355)
,p_name=>'P41_SURCHARGE_DATE'
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'Surcharge Date'
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
 p_id=>wwv_flow_api.id(1372422151055354)
,p_name=>'P41_PAYMENT_DUE_DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'Payment Due Date'
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
 p_id=>wwv_flow_api.id(1372771825055354)
,p_name=>'P41_SCH_DATE'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1373218217055354)
,p_name=>'P41_SCH_NO'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1373611189055353)
,p_name=>'P41_CUST_COA_ID'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1373943828055353)
,p_name=>'P41_CUSTOMER_NAME'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'Customer Name'
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
 p_id=>wwv_flow_api.id(1374380423055352)
,p_name=>'P41_CUSTOMER_CODE'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1374760212055352)
,p_name=>'P41_BILL_TO_DATE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'Bill To Date'
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
 p_id=>wwv_flow_api.id(1375200677055352)
,p_name=>'P41_BILL_FROM_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'Bill From Date'
,p_format_mask=>'DD-MM-YYYY'
,p_display_as=>'PLUGIN_PRETIUS_APEX_RANGE_DATE'
,p_cSize=>30
,p_begin_on_new_line=>'N'
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'PDPA'
,p_attribute_06=>'autoApply'
,p_attribute_07=>'DR'
,p_attribute_14=>'P41_BILL_TO_DATE'
,p_attribute_15=>'onIconClick'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1375540134055351)
,p_name=>'P41_PPA_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'PPA Date'
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
 p_id=>wwv_flow_api.id(1375983526055351)
,p_name=>'P41_PPA_NO_TEMP'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1376359249055350)
,p_name=>'P41_PPA_NO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_prompt=>'PPA No'
,p_display_as=>'NATIVE_POPUP_LOV'
,p_named_lov=>'LOV_PPA_SCH_FINAL'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_PPA_NO D, VC_PPA_NO R , DT_PPA_DATE ,get_cust_name(org_id,eo_id)customer',
'from mst_ppa',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and  CH_BILLING_TYPE = ''S''',
'and  ch_auth_flag = ''Y''',
'order by 2 desc'))
,p_lov_display_null=>'YES'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'YES'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_08=>'600'
,p_attribute_10=>'D:P41_PPA_NO_TEMP,DT_PPA_DATE:P41_PPA_DATE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(1376824811055350)
,p_name=>'P41_ERROR'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(25055594935882274)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1393801660055331)
,p_validation_name=>'PPA NOT NULL'
,p_validation_sequence=>10
,p_validation=>'P41_PPA_NO'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select PPA No'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1393339620055332)
,p_validation_name=>'PPA DATE'
,p_validation_sequence=>20
,p_validation=>'P41_PPA_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'PPA Date Not found. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1392991411055332)
,p_validation_name=>'BILL FROM DATE NOT NULL'
,p_validation_sequence=>30
,p_validation=>'P41_BILL_FROM_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Bill from Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1392588013055332)
,p_validation_name=>'BILL TO DATE NOT NULL'
,p_validation_sequence=>40
,p_validation=>'P41_BILL_TO_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Bill To Date cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1392186732055333)
,p_validation_name=>'CUSTOMER NOT NULL'
,p_validation_sequence=>50
,p_validation=>'P41_CUSTOMER_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Customer not found. contact system administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1391775865055333)
,p_validation_name=>'PAYMENT DUE DATE NOT NULL'
,p_validation_sequence=>60
,p_validation=>'P41_PAYMENT_DUE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Payment Due Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1391335347055333)
,p_validation_name=>'SURCHARGE DATE NOT NULL'
,p_validation_sequence=>70
,p_validation=>'P41_SURCHARGE_DATE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Surcharge Date cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1390947621055334)
,p_validation_name=>'ITEM NAME NOT NULL'
,p_validation_sequence=>80
,p_validation=>'P41_ITEM_DESC'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Cannot find. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1390590821055334)
,p_validation_name=>'UOM  NOT NULL'
,p_validation_sequence=>90
,p_validation=>'P41_UOM'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'UOM Cannot be null. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1390197228055334)
,p_validation_name=>'SCHDULED UNIT NOT NULL'
,p_validation_sequence=>100
,p_validation=>'P41_SCHEDULE_UNIT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule Unit cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1389784490055335)
,p_validation_name=>'RATE CANNOT BE NULL'
,p_validation_sequence=>110
,p_validation=>'P41_RATE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rate Cannot be null or zero. Please Check Rate Slab of PPA or Contact System administration.'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1389359596055335)
,p_validation_name=>'ITEM DETAIL NOT NULL'
,p_validation_sequence=>120
,p_validation=>'P41_ITEM_DETAIL'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Item Detail Cannot be null'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1388959503055335)
,p_validation_name=>'CHECK FINANCIAL YEAR OPEN OR NOT'
,p_validation_sequence=>130
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
'       and      :P41_INV_SCH_DATE  BETWEEN FY_STRT AND  FY_END ;',
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
,p_error_message=>'Financial year not open. Contact System Administration'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1388625380055336)
,p_validation_name=>'PROJ PREFIX EXIST OR NOT'
,p_validation_sequence=>140
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
' declare',
' v_chk varchar2(5);',
' ',
' begin',
'     begin',
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
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1388150651055336)
,p_validation_name=>'NET AMOUNT NOT NULL'
,p_validation_sequence=>150
,p_validation=>'P41_NET_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1368456021055359)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1387752555055336)
,p_validation_name=>'SUB AMOUNT NOT NULL'
,p_validation_sequence=>160
,p_validation=>'P41_SUB_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Sub Amount Cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1369702708055357)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1387360735055337)
,p_validation_name=>'SCHEDULE AMOUNT NOT NULL OR ZERO'
,p_validation_sequence=>170
,p_validation=>'P41_SCHEDULE_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Schedule amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1370455424055357)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1386962674055337)
,p_validation_name=>'TCS COA NOT NULL'
,p_validation_sequence=>180
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_TCS_AMOUNT > 0 AND :P41_TCS_COA IS NULL THEN',
'RETURN ''Accocunt of TCS Not found. Contact System Administration  '';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1368853319055358)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1386579722055337)
,p_validation_name=>'ITEM COA NOT NULL'
,p_validation_sequence=>190
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if :P41_ITEM_COA is null then',
'return ''Account of item not found. Contact System Administartion'';',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1386217822055338)
,p_validation_name=>'CUSTOMER COA NOT NULL'
,p_validation_sequence=>200
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P41_CUST_COA_ID IS NULL THEN',
'',
'RETURN ''Account of customer not Found. Contact System Administration'';',
'',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1373943828055353)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1395824568055330)
,p_validation_name=>'Final bill amount cannot be null '
,p_validation_sequence=>210
,p_validation=>'P41_FINAL_BILL_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Final Bill Amount cannot be null or zero'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1395347692055330)
,p_validation_name=>'net amount cannot be in negative'
,p_validation_sequence=>240
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P41_NET_AMOUNT ,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Net Amount Cannot be in negative'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1368456021055359)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1394949572055330)
,p_validation_name=>'Check From date and to exists '
,p_validation_sequence=>250
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_check number;',
'',
'begin',
'select count(*)',
'INTO v_check',
'from DT_SCH_FINAL_INV',
'where org_id = :GLOBAL_COMP_CODE',
'and   prj_id = :GLOBAL_PROJ_ID',
'and   vc_ppa_no = :P41_PPA_NO',
'and   dt_ppa_date = :P41_PPA_DATE',
'AND   DT_BILL_FROM BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
'and   DT_BILL_TO  BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
';',
'',
'IF v_check > 0 THEN',
'RETURN FALSE;',
'ELSE ',
'RETURN TRUE;',
'END IF;',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Invoice is already Create For this Period.Choose another Period'
,p_validation_condition=>'P41_MODE'
,p_validation_condition2=>'A'
,p_validation_condition_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1394581748055331)
,p_validation_name=>'payment date greater than bill to date'
,p_validation_sequence=>260
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P41_PAYMENT_DUE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:P41_BILL_TO_DATE,''DD-MM-YYYY'') THEN',
' RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Payment due date cannot be less than Bill to date.'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1372422151055354)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1394136700055331)
,p_validation_name=>'Surcharge date greater than bill to date'
,p_validation_sequence=>270
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if TO_DATE(:P41_SURCHARGE_DATE,''DD-MM-YYYY'' ) < TO_DATE(:P41_BILL_TO_DATE,''DD-MM-YYYY'') THEN',
' RETURN false;',
'ELSE ',
'RETURN true;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Surcharge date cannot be less than Bill to date.'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1371940154055355)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1385798400055338)
,p_validation_name=>'net schedule amount not null'
,p_validation_sequence=>280
,p_validation=>'P41_NET_SCHEDULE_AMOUNT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Net Schedule amount cannot be null or zero'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1365241781055362)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(1385364761055338)
,p_validation_name=>'net schedule amount cannot be in negative'
,p_validation_sequence=>290
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if replace(:P41_NET_SCHEDULE_AMOUNT ,'','','''')< 0 then',
'return false;',
'else',
'return true;',
'end if;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>'Net Schedule Amount Cannot be in negative'
,p_when_button_pressed=>wwv_flow_api.id(1356715221055372)
,p_associated_item=>wwv_flow_api.id(1365241781055362)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1402522657055322)
,p_name=>'GET INFO FROM PPA'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PPA_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1402996144055322)
,p_event_id=>wwv_flow_api.id(1402522657055322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select EO_ID , get_cust_name(org_id,EO_ID)cust_name, ',
'       ITM_ID ,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc,',
'       GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,GRP_ID,',
'       NU_QTY,COA_ID,ITM_ID_COA',
'',
'into   :P41_CUSTOMER_CODE,:P41_CUSTOMER_NAME,',
'       :P41_ITEM_CODE ,:P41_ITEM_DESC,',
'       :P41_UOM,:P41_GRP_ID,',
'       :P41_QTY,:P41_CUST_COA_ID,:P41_ITEM_COA',
'from MST_PPA',
'WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'AND   PRJ_ID      = :GLOBAL_PROJ_ID',
'AND   VC_PPA_NO   = :P41_PPA_NO',
'AND   DT_PPA_DATE = :P41_PPA_DATE;'))
,p_attribute_02=>'P41_PPA_NO,P41_PPA_DATE'
,p_attribute_03=>'P41_CUSTOMER_CODE,P41_CUSTOMER_NAME,P41_ITEM_CODE,P41_ITEM_DESC,P41_UOM,P41_GRP_ID,P41_QTY,P41_RATE,P41_CUST_COA_ID,P41_ITEM_COA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1403413292055322)
,p_name=>'GET SCHEDULE UNIT SUM & PROV BILL'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_BILL_TO_DATE'
,p_condition_element=>'P41_BILL_TO_DATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1403930152055321)
,p_event_id=>wwv_flow_api.id(1403413292055322)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_RATE'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select',
'GET_RATE (:GLOBAL_COMP_CODE,:GLOBAL_PROJ_ID,:P41_PPA_NO,:P41_PPA_DATE,:P41_BILL_FROM_DATE,:P41_BILL_TO_DATE)AA',
'from dual;'))
,p_attribute_07=>'GLOBAL_PROJ_ID,GLOBAL_COMP_CODE,P41_PPA_NO,P41_PPA_DATE,P41_BILL_FROM_DATE,P41_BILL_TO_DATE'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1404406413055321)
,p_event_id=>wwv_flow_api.id(1403413292055322)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_final_unit number;',
'v_prov_unit number;',
'begin',
'',
'    BEGIN',
'        SELECT NVL(SUM(NU_UNIT),0)',
'        INTO v_final_unit',
'        FROM DT_SCHEDULE',
'        WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'        and   VC_PPA_NO = :P41_PPA_NO',
'        AND   DT_PPA_DATE = :P41_PPA_DATE',
'        and   vc_type = ''F''',
'        and  ch_auth_flag = ''Y''',
'        AND   DT_PERIOD_FROM BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
'        and DT_PERIOD_TO BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE;',
'        EXCEPTION WHEN OTHERS THEN  :P41_SCHEDULE_UNIT :=0;',
'    end;',
'    /*',
'      BEGIN',
'        SELECT NVL(SUM(NU_UNIT),0)',
'        INTO v_prov_unit',
'        FROM DT_SCHEDULE',
'        WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'        AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'        and   VC_PPA_NO = :P41_PPA_NO',
'        AND   DT_PPA_DATE = :P41_PPA_DATE',
'        and   vc_type = ''P''',
'        and  ch_auth_flag = ''Y''',
'        AND   DT_SCHEDULE_PROV BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE;',
'  ',
'        EXCEPTION WHEN OTHERS THEN  :P41_SCHEDULE_UNIT :=0;',
'    end;',
'    */',
'    ',
'   -- :P41_SCHEDULE_UNIT := v_prov_unit + v_final_unit;',
'    :P41_SCHEDULE_UNIT :=  v_final_unit;',
'',
'END;'))
,p_attribute_02=>'P41_BILL_FROM_DATE,P41_BILL_TO_DATE,P41_PPA_NO,P41_PPA_DATE'
,p_attribute_03=>'P41_SCHEDULE_UNIT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1404868852055321)
,p_event_id=>wwv_flow_api.id(1403413292055322)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_id number;',
'cursor c1 is (',
'                    SELECT VC_INVOICE_NO,NU_NET_AMOUNT,dt_invoice_date,NU_SCHEDULE_AMOUNT,NU_OTHER_CHARGE_AMOUNT,NU_SCHEDULE_UNIT',
'                    FROM DT_SCH_PROV_INV',
'                    WHERE ORG_ID  = :GLOBAL_COMP_CODE',
'                    AND   PRJ_ID  = :GLOBAL_PROJ_ID',
'                    and   VC_PPA_NO = :P41_PPA_NO',
'                    AND   DT_PPA_DATE = :P41_PPA_DATE',
'                    and  ch_auth_flag = ''Y''',
'                    AND   DT_BILL_FROM BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
'                    and DT_BILL_TO BETWEEN :P41_BILL_FROM_DATE AND :P41_BILL_TO_DATE',
');',
'begin',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'    APEX_COLLECTION.delete_COLLECTION(''PROV_BILL'');',
'END IF;',
' ',
'',
'IF not APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''PROV_BILL'');',
'END IF;',
'',
'for i in c1 loop',
'      select (nvl(max(c001 ),0) +1) into v_id ',
'      from APEX_COLLECTIONs where COLLECTION_NAME = ''PROV_BILL'';',
'',
' ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''PROV_BILL'',',
'',
'                                       p_c001            =>  v_id,',
'                                       p_c002            =>  I.VC_INVOICE_NO,',
'                                       p_c003            => I.dt_invoice_date,',
'                                       P_C004            => I.NU_NET_AMOUNT,',
'                                       P_C006            => I.NU_SCHEDULE_AMOUNT,',
'                                       P_C007            => I.NU_OTHER_CHARGE_AMOUNT,',
'                                       P_C008            => I.NU_SCHEDULE_UNIT',
'                                      );',
'     ',
'end loop;',
'',
'end;'))
,p_attribute_02=>'P41_PPA_NO,P41_PPA_DATE,P41_BILL_FROM_DATE,P41_BILL_TO_DATE'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1405421856055320)
,p_event_id=>wwv_flow_api.id(1403413292055322)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31990759326077623)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1405855290055320)
,p_event_id=>wwv_flow_api.id(1403413292055322)
,p_event_result=>'TRUE'
,p_action_sequence=>50
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_PROV_SCHEDULE_AMOUNT,P41_PROV_BILL_OTHER_CHARGE_AMT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'nvl(sum(to_number(c006)),0),',
'nvl(sum(to_number(c007)),0)',
'',
' from apex_collections ',
' where COLLECTION_NAME=''PROV_BILL''; ',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1406285548055320)
,p_name=>'CALULATE SCHEDULE AMOUNT'
,p_event_sequence=>40
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SCHEDULE_UNIT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1406769209055319)
,p_event_id=>wwv_flow_api.id(1406285548055320)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P41_SCHEDULE_AMOUNT := NVL(ABS(:P41_SCHEDULE_UNIT),0)* NVL(:P41_RATE,0);'
,p_attribute_02=>'P41_SCHEDULE_UNIT,P41_RATE'
,p_attribute_03=>'P41_SCHEDULE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1407218399055319)
,p_name=>'refresh'
,p_event_sequence=>50
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1407664008055319)
,p_event_id=>wwv_flow_api.id(1407218399055319)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(22347784812909921)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1408146855055319)
,p_event_id=>wwv_flow_api.id(1407218399055319)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25528866877208073)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1408649169055318)
,p_event_id=>wwv_flow_api.id(1407218399055319)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_OTHER_CHARGE_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'nvl(sum(to_number(c004)),0)',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; ',
''))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1409169044055318)
,p_event_id=>wwv_flow_api.id(1407218399055319)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(31990759326077623)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1409588666055318)
,p_name=>'CALCULATE SUB AMOUNT'
,p_event_sequence=>60
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_NET_SCHEDULE_AMOUNT,P41_OTHER_CHARGE_AMOUNT,P41_PROV_BILL_OTHER_CHARGE_AMT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1410057182055317)
,p_event_id=>wwv_flow_api.id(1409588666055318)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P41_SUB_AMOUNT := NVL(REPLACE(:P41_NET_SCHEDULE_AMOUNT,'','','''') ,0)+ NVL(REPLACE(:P41_OTHER_CHARGE_AMOUNT,'','','''') ,0) -  NVL(REPLACE(:P41_PROV_BILL_OTHER_CHARGE_AMT,'','','''') ,0)  ;'
,p_attribute_02=>'P41_SCHEDULE_AMOUNT,P41_OTHER_CHARGE_AMOUNT,P41_PROV_BILL_OTHER_CHARGE_AMT'
,p_attribute_03=>'P41_SUB_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1410501720055317)
,p_name=>'GET TAX AMOUNT'
,p_event_sequence=>70
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_TAX_APPLICABLE'
,p_condition_element=>'P41_TAX_APPLICABLE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
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
 p_id=>wwv_flow_api.id(1410943993055317)
,p_event_id=>wwv_flow_api.id(1410501720055317)
,p_event_result=>'FALSE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P41_TAX_AMOUNT  := 0;',
'',
'IF replace(:P41_TCS_AMOUNT ,'','','''')= 0 THEN',
':P41_TAX_RULE_ID := NULL;',
'',
'END IF;'))
,p_attribute_03=>'P41_TAX_AMOUNT,P41_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1411458924055317)
,p_event_id=>wwv_flow_api.id(1410501720055317)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'begin',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P41_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P41_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P41_ITEM_CODE, ',
'                            :P41_CUSTOMER_CODE,:P41_INVOICE_ID,NULL,''1153'' ,replace(:P41_SUB_AMOUNT,'','',''''),0,0',
'                        );',
':P41_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES (',
'                      1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P41_INVOICE_ID, :P41_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P41_SUB_AMOUNT,'','',''''),replace(:P41_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P41_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'  )',
';',
'',
':P41_TAX_AMOUNT := nvl(v_amount,0);',
'end;'))
,p_attribute_02=>'P41_CUSTOMER_CODE,P41_INVOICE_ID,P41_ITEM_CODE,P41_CUST_COA_ID,P41_SUB_AMOUNT'
,p_attribute_03=>'P41_TAX_AMOUNT,P41_TAX_RULE_ID'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1411849883055316)
,p_name=>'GET TAX AND TCS AMOUNT'
,p_event_sequence=>80
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SUB_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1412411377055316)
,p_event_id=>wwv_flow_api.id(1411849883055316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_tcs_flag          varchar2(2);',
'v_tcs_amount        number;',
'v_amount            number;',
'v_cust_add_id       varchar2(50);',
'V_TAX_RULE_ID       NUMBER;',
'v_state_code        VARCHAR2(20);',
'v_tax_exmpt_flg     varchar2(2);',
'V_TCS_PER           NUMBER;',
'V_TAX_ID            NUMBER;',
'v_tcs_coa           number;',
'begin',
'v_tcs_flag := GET_CUST_TCS_APLICBLE(:GLOBAL_COMP_CODE,:P41_CUSTOMER_CODE) ; ',
'IF v_tcs_flag = ''Y'' then',
'    select get_cust_inv_amt (:GLOBAL_COMP_CODE,:P41_CUSTOMER_CODE) ',
'    INTO   v_amount',
'    from dual;',
'        begin    ',
'            SELECT ADDRESS_ID',
'            INTO v_cust_add_id',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P41_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'    V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID( ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P41_ITEM_CODE, ',
'                                             :P41_CUSTOMER_CODE,:P41_INVOICE_ID,NULL,''1153'' ,replace(:P41_SUB_AMOUNT,'','',''''),0,0',
'                                            );',
'    :P41_TAX_RULE_ID := V_TAX_RULE_ID;',
'    v_tcs_coa := fn_get_tcs_details(:GLOBAL_PARENT_COMP,:GLOBAL_COMP_CODE,V_TAX_RULE_ID ,V_TCS_PER , V_TAX_ID);',
'if v_amount > 5000000 then',
'            v_tcs_amount := replace(:P41_SUB_AMOUNT,'','','''');',
'            :P41_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'            :P41_TCS_PER := V_TCS_PER;',
'            :P41_TAX_ID  := V_TAX_ID;',
'            :P41_TCS_COA  := v_tcs_coa;',
'    else',
'        if v_amount+replace(:P41_SUB_AMOUNT,'','','''')-5000000 < 0 then',
'            v_tcs_amount := 0;',
'            :P41_TCS_AMOUNT :=0;',
'            ',
'            :P41_TCS_PER := null;',
'            :P41_TAX_ID  := null;',
'            :P41_TCS_COA  := null;',
'      else',
'            v_tcs_amount := v_amount+replace(:P41_SUB_AMOUNT,'','','''')-5000000; ',
'            :P41_TCS_AMOUNT := (v_tcs_amount * V_TCS_PER )/100;',
'                :P41_TCS_PER := V_TCS_PER;',
'                :P41_TAX_ID  := V_TAX_ID;',
'                :P41_TCS_COA  := v_tcs_coa;',
'     end if;',
'    end if;',
'end if;',
'IF v_tcs_flag =''N'' THEN',
' :P41_TCS_AMOUNT := 0;',
'END IF;',
'if :P41_TAX_APPLICABLE = ''Y'' then',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P41_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P41_ITEM_CODE;',
'        exception when no_data_found then ',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P41_ITEM_CODE, ',
'                            :P41_CUSTOMER_CODE,:P41_INVOICE_ID,NULL,''1153'' ,replace(:P41_SUB_AMOUNT,'','',''''),0,0 );',
':P41_TAX_RULE_ID := V_TAX_RULE_ID;',
'v_amount :=  FN_INS_SO_TR_LINES ( 1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P41_INVOICE_ID, :P41_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                     replace(:P41_SUB_AMOUNT,'','',''''),replace(:P41_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P41_CUST_COA_ID, NULL, ',
'                      NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID );',
':P41_TAX_AMOUNT := v_amount;',
'end if;',
'if NVL(:P41_TAX_APPLICABLE ,''N'')= ''N'' then',
':P41_TAX_AMOUNT := 0;',
'END IF;',
':P41_NET_AMOUNT := replace(:P41_SUB_AMOUNT ,'','','''') + replace(nvl(:P41_TAX_AMOUNT,0),'','','''') +replace(:P41_TCS_AMOUNT,'','','''') ;',
'end;'))
,p_attribute_02=>'P41_CUSTOMER_CODE,P41_ITEM_CODE,P41_SUB_AMOUNT,P41_CUST_COA_ID,P41_INVOICE_ID,P41_TAX_AMOUNT,P41_TAX_APPLICABLE'
,p_attribute_03=>'P41_TCS_AMOUNT ,P41_NET_AMOUNT,P41_TAX_AMOUNT,P41_TAX_RULE_ID,P41_TCS_PER,P41_TAX_ID,P41_TCS_COA'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1412818346055316)
,p_name=>'GET NET AMOUNT ON TAX AMOUNT CHANGE'
,p_event_sequence=>90
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_TAX_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1413318825055315)
,p_event_id=>wwv_flow_api.id(1412818346055316)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P41_NET_AMOUNT := NVL(replace(:P41_SUB_AMOUNT ,'','',''''),0) +  NVL(replace(:P41_TAX_AMOUNT ,'','','''') ,0) + NVL(replace(:P41_TCS_AMOUNT ,'','','''') ,0);'
,p_attribute_02=>'P41_SUB_AMOUNT,P41_TAX_AMOUNT,P41_TCS_AMOUNT'
,p_attribute_03=>'P41_NET_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1413721147055315)
,p_name=>'ADD CREATE OTHER CHARGE'
,p_event_sequence=>100
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_NET_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1414188100055315)
,p_event_id=>wwv_flow_api.id(1413721147055315)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'        IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'FOR I IN (Select',
'                NU_CHARGE_ID,',
'                VC_CHARGE_TYPE,',
'                NU_RATE,',
'                VC_REMARKS,',
'                COA_ID,',
'                case VC_CHARGE_TYPE ',
'                when ''1'' then',
'                   (nvl(replace(:P41_SCHEDULE_AMOUNT,'','',''''),0) *  NU_RATE)/100 ',
'                WHEN ''2'' THEN',
'                     NU_RATE',
'                WHEN ''3'' THEN',
'                    (nvl(abs(:P41_SCHEDULE_UNIT),0) *  NU_RATE)',
'                END AS AMOUNT ',
'                ',
'',
'                from DT_OTHER_CHARGES_PPA',
'                where ORG_ID  = :global_comp_code',
'                and   PRJ_ID  = :GLOBAL_PROJ_ID',
'                AND  VC_PPA_NO  = :P41_PPA_NO',
'                and  dt_ppa_date = :P41_PPA_DATE) ',
'LOOP',
' ',
' ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              ',
'                            ',
'                               ',
'                              );',
'END LOOP;',
'end;'))
,p_attribute_02=>'P41_SCHEDULE_UNIT,P41_SCHEDULE_AMOUNT,P41_PPA_NO,P41_PPA_DATE,P41_NET_SCHEDULE_AMOUNT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1414679838055314)
,p_event_id=>wwv_flow_api.id(1413721147055315)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(25528866877208073)
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1415228893055314)
,p_event_id=>wwv_flow_api.id(1413721147055315)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_OTHER_CHARGE_AMOUNT'
,p_attribute_01=>'SQL_STATEMENT'
,p_attribute_03=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'nvl(sum(to_number(c004)),0)',
'',
' from apex_collections ',
' where COLLECTION_NAME=''OTHER_CHARGE''; '))
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1415557674055314)
,p_name=>'hide forward on view mode  but req no is null'
,p_event_sequence=>110
,p_condition_element=>'P41_MODE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'V'
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1416042692055314)
,p_event_id=>wwv_flow_api.id(1415557674055314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1355911550055373)
,p_server_condition_type=>'ITEM_IS_NULL'
,p_server_condition_expr1=>'P41_REQ_NO'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1416516367055313)
,p_name=>'hide forward on add mode'
,p_event_sequence=>120
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P41_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1416987527055313)
,p_event_id=>wwv_flow_api.id(1416516367055313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(1355911550055373)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1417357087055313)
,p_name=>'hide invoice no and date'
,p_event_sequence=>130
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P41_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1417834849055312)
,p_event_id=>wwv_flow_api.id(1417357087055313)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P41_INV_SCH_NO,P41_INV_SCH_DATE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1418269522055312)
,p_name=>'CALCULATE FINAL BILL'
,p_event_sequence=>140
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_NET_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
,p_display_when_type=>'NEVER'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1418734638055312)
,p_event_id=>wwv_flow_api.id(1418269522055312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P41_FINAL_BILL_AMOUNT := NVL(REPLACE(:P41_NET_AMOUNT,'','',''''),0) - NVL(REPLACE(:P41_PROV_BILL_AMOUNT,'','','''') ,0);'
,p_attribute_02=>'P41_NET_AMOUNT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1419146802055312)
,p_name=>'NET SCHEDULE AMOUNT'
,p_event_sequence=>150
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SCHEDULE_AMOUNT,P41_PROV_SCHEDULE_AMOUNT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1419646107055311)
,p_event_id=>wwv_flow_api.id(1419146802055312)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>':P41_NET_SCHEDULE_AMOUNT := NVL(REPLACE(:P41_SCHEDULE_AMOUNT,'','','''') ,0)- NVL(REPLACE(:P41_PROV_SCHEDULE_AMOUNT,'','','''') ,0) ;'
,p_attribute_02=>'P41_SCHEDULE_AMOUNT,P41_PROV_SCHEDULE_AMOUNT'
,p_attribute_03=>'P41_NET_SCHEDULE_AMOUNT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1420059078055311)
,p_name=>'surgecharge date'
,p_event_sequence=>160
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_PAYMENT_DUE_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1420572778055311)
,p_event_id=>wwv_flow_api.id(1420059078055311)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'SELECT to_date(:P41_INV_SCH_DATE,''dd/mm/yyyy'')+MAX(NU_DAYS) into :P41_SURCHARGE_DATE_ACT FROM DT_PPA_REBATE_SURCHARGE',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID = :GLOBAL_PROJ_ID',
'AND VC_PPA_NO = :P41_PPA_NO',
'AND DT_PPA_DATE = TO_DATE(:P41_PPA_DATE,''DD-MM-YYYY'')',
'AND CH_TYPE = ''S'';',
'exception when others then null;',
'end;'))
,p_attribute_02=>'P41_INV_SCH_DATE'
,p_attribute_03=>'P41_SURCHARGE_DATE_ACT'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(722150610714719)
,p_name=>'skipholiday'
,p_event_sequence=>170
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P41_SURCHARGE_DATE_ACT'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(722251374714720)
,p_event_id=>wwv_flow_api.id(722150610714719)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cnt number;',
'v_num number;',
'cnum number;',
'cdate date;',
'begin',
'/*select ',
'To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'') + public_holidays(To_date(:P41_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into :P41_SURCHARGE_DATE ',
'from dual; ',
'begin',
'select public_holidays(To_date(:P41_PAYMENT_DUE_DATE, ''DD/MM/YYYY''),To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE) into cnt ',
'from dual; ',
'end; */',
'for i in 1..10 loop',
'',
'v_num := public_holidays(To_date(:P41_INV_SCH_DATE, ''DD/MM/YYYY''),To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY''),:GLOBAL_COMP_CODE);',
':P41_PAYMENT_DUE_DATE := To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'')+1;',
':P41_SURCHARGE_DATE_ACT := To_date(:P41_SURCHARGE_DATE_ACT, ''DD/MM/YYYY'') + v_num;',
'',
'if nvl(v_num,0) = 0 then',
'exit;',
'end if;',
'end loop;',
'',
':P41_SURCHARGE_DATE := :P41_SURCHARGE_DATE_ACT;',
' ',
'--exception when others then null;',
'end;',
'',
''))
,p_attribute_02=>'P41_SURCHARGE_DATE_ACT'
,p_attribute_03=>'P41_SURCHARGE_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1736599888090704)
,p_name=>'HIDE PRINT REGION'
,p_event_sequence=>180
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1736685801090705)
,p_event_id=>wwv_flow_api.id(1736599888090704)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>'$(''#PDF'').hide();'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(1736918902090707)
,p_name=>'INVOICE PRINT'
,p_event_sequence=>190
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(1737041026090709)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(1737030395090708)
,p_event_id=>wwv_flow_api.id(1736918902090707)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'$(''#PDF'').show();',
' setTimeout(function () {',
'    var element = document.getElementById(''PDF'');',
'    var name1 = $v(''P41_INV_SCH_NO'');',
'    var opt = {',
'      filename: name1 +'' Final_NVOICE.pdf'',',
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
'    //   jsPDF: {unit: ''mm'',format: ''A4''},',
'      jsPDF: {unit: ''mm'',format: ''A4'',orientation: ''landscape'',height: 210,width: 297},',
'      //pagebreak: {mode:''avoid-all'', before: ''.pagebreak''},',
'    //   pagebreak: { mode:''always'', before: ''.annexure''},',
'      margin:5',
'      ',
'      ',
'    ',
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
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1398860891055326)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'INSERT'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_code VARCHAR2(30);',
'v_prj_prefix varchar2(5);',
'V_STRT_YEAR DATE;',
'V_END_YEAR  DATE;',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'e_error exception;',
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
'            select  --lpad(nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+1))),0) +1,''4'',''0'')',
'             nvl(max(to_number(substr(VC_INVOICE_NO,instr(VC_INVOICE_NO,''/'',''1'',''2'')+2))),0) +1',
'            into  v_code ',
'            from DT_SCH_FINAL_INV ',
'            where ORG_ID = :global_comp_code ',
'            and PRJ_ID = :GLOBAL_PROJ_ID',
'            AND  DT_INVOICE_DATE BETWEEN V_STRT_YEAR AND V_END_YEAR;',
'         ',
'          :P41_INV_SCH_NO :=v_prj_prefix || ''/'' || :GLOBAL_YEAR_PREFIX ||''/'' ||''F''|| v_code;',
'    ',
'    end;',
'',
'         if LENGTH(:P41_INV_SCH_NO) > 15 then',
'         apex_util.set_session_state(''P41_ERROR'', ''Invoice Number length greater than 15 character. Please Contact System administration'');',
'         raise e_error;',
'',
'        end if;',
'',
'',
'insert into DT_SCH_FINAL_INV',
'(',
'ORG_ID, PRJ_ID, NU_INVOICE_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID, USR_ID_CREATE, USR_ID_CREATE_DT, HO_ORG_ID, vc_remarks,NU_PROV_BILL_SCH_AMT,NU_NET_SCH_AMT,NU_PROV_BILL_OTHER_CHARGE',
',VC_INV_SUBJECT',
')',
'values',
'(',
':GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID, :P41_INVOICE_ID,:P41_INV_SCH_NO, :P41_INV_SCH_DATE, :P41_PPA_NO, :P41_PPA_DATE, :P41_BILL_FROM_DATE, :P41_BILL_TO_DATE, :P41_CUSTOMER_CODE, :P41_CUST_COA_ID,',
':P41_PAYMENT_DUE_DATE, :P41_SURCHARGE_DATE, :P41_GRP_ID, :P41_ITEM_CODE, :P41_QTY, :P41_RATE, :P41_ITEM_DETAIL, :P41_ITEM_COA, :P41_SCHEDULE_UNIT, :P41_TAX_APPLICABLE,',
'replace(:P41_SCHEDULE_AMOUNT,'','',''''), replace(:P41_OTHER_CHARGE_AMOUNT,'','','''') , replace(:P41_SUB_AMOUNT,'','',''''), replace(:P41_TAX_AMOUNT,'','',''''), replace(:P41_TCS_AMOUNT,'','',''''), replace(:P41_NET_AMOUNT,'','',''''), :P41_TCS_COA, :P41_TCS_PER, :P41_TAX_'
||'RULE_ID,',
':P41_TAX_ID, :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_PARENT_COMP, :P41_REMARK,replace(:P41_PROV_SCHEDULE_AMOUNT,'','',''''),replace( :P41_NET_SCHEDULE_AMOUNT,'','',''''),replace( :P41_PROV_BILL_OTHER_CHARGE_AMT,'','','''')',
',:P41_SUBJECT',
');',
'',
'',
'',
'',
'',
'    if :P41_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P41_INVOICE_ID;',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P41_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P41_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P41_ITEM_CODE, ',
'                                        :P41_CUSTOMER_CODE,:P41_INVOICE_ID,NULL,''1153'' ,replace(:P41_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P41_INVOICE_ID, :P41_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P41_SUB_AMOUNT,'','',''''),replace(:P41_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P41_CUST_COA_ID, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'',
'         ',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P41_INVOICE_ID',
'',
'            )',
'            LOOP',
'            BEGIN    ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'            exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while insert the data in SLS$SO$TR$LINES table'');',
'            END;',
'            END LOOP;',
'',
'        end if;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_process_error_message=>'&P41_ERROR.'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
,p_process_success_message=>'Saved'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1398122238055328)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'v_amount        number;',
'v_cust_add_id   varchar2(50);',
'V_TAX_RULE_ID   NUMBER;',
'v_state_code    VARCHAR2(20);',
'v_tax_exmpt_flg varchar2(2);',
'',
'BEGIN',
'',
'update DT_SCH_FINAL_INV',
'set',
'VC_PPA_NO                   = :P41_PPA_NO,',
'DT_PPA_DATE                 = :P41_PPA_DATE,',
'DT_BILL_FROM                = :P41_BILL_FROM_DATE,',
'DT_BILL_TO                  = :P41_BILL_TO_DATE,',
'EO_ID                       = :P41_CUSTOMER_CODE,',
'COA_ID                      = :P41_CUST_COA_ID,',
'DT_PAY_DUE_DATE             = :P41_PAYMENT_DUE_DATE,',
'DT_SURCHARGE_DATE           = :P41_SURCHARGE_DATE,',
'GRP_ID                      = :P41_GRP_ID,',
'ITM_ID                      = :P41_ITEM_CODE,',
'NU_QTY                      = :P41_QTY,',
'NU_RATE                     = :P41_RATE,',
'VC_ITEM_DETAIL              = :P41_ITEM_DETAIL,',
'ITM_ID_COA                  = :P41_ITEM_COA,',
'NU_SCHEDULE_UNIT            = :P41_SCHEDULE_UNIT,',
'VC_TAX_APPLICABLE           = :P41_TAX_APPLICABLE,',
'NU_SCHEDULE_AMOUNT          = replace(:P41_SCHEDULE_AMOUNT,'','',''''),',
'NU_OTHER_CHARGE_AMOUNT      = replace(:P41_OTHER_CHARGE_AMOUNT,'','',''''),',
'NU_SUB_AMOUNT               = replace(:P41_SUB_AMOUNT,'','',''''),',
'NU_TAX_AMOUNT               = replace(:P41_TAX_AMOUNT,'','',''''),',
'NU_TCS_AMOUNT               = replace(:P41_TCS_AMOUNT,'','',''''),',
'NU_NET_AMOUNT               = replace(:P41_NET_AMOUNT,'','',''''),',
'NU_TCS_COA                  = :P41_TCS_COA,',
'NU_TCS_PER                  = :P41_TCS_PER,',
'NU_TAX_RULE_ID              = :P41_TAX_RULE_ID,',
'NU_TCS_TAX_ID               = :P41_TAX_ID,',
'USR_ID_MOD_DT               = SYSDATE,',
'VC_REMARKS                  = :P41_REMARK,',
'USR_ID_MOD                  = :GLOBAL_USER_CODE,',
'',
'NU_PROV_BILL_SCH_AMT         = replace(:P41_PROV_SCHEDULE_AMOUNT,'','',''''), ',
'NU_NET_SCH_AMT               = replace(:P41_NET_SCHEDULE_AMOUNT ,'','',''''),',
'NU_PROV_BILL_OTHER_CHARGE    = replace(:P41_PROV_BILL_OTHER_CHARGE_AMT,'','',''''),',
'VC_INV_SUBJECT              = :P41_SUBJECT',
'',
'where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P41_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P41_INV_SCH_DATE;',
'',
'',
'    if :P41_TAX_APPLICABLE = ''Y'' THEN',
'        ',
'       ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P41_INVOICE_ID;',
'        ',
'        delete from SLS$SO$TR$LINES$TEMP',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P41_INVOICE_ID;',
'',
'',
'        begin    ',
'            SELECT ADDRESS_ID,"State Code"',
'            INTO v_cust_add_id,v_state_code',
'            FROM   APPUA.VW_CUSTOMER',
'            WHERE "Customer Branch" = :global_comp_code',
'            and   EO_ID =:P41_CUSTOMER_CODE;',
'        exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while fetch the address and state code of customer'');',
'        end;',
'        begin   ',
'            select TAX_EXMPT_FLG',
'            into   v_tax_exmpt_flg',
'            from   appua.vw_item_master',
'            where org_id = :GLOBAL_COMP_CODE',
'            and   ITM_ID = :P41_ITEM_CODE;',
'        exception when no_data_found then ',
'           rollback;',
'            raise_application_error (-20001,''Error while fetch the tax exemption flag  item '');',
'        end;',
'',
'            V_TAX_RULE_ID := APP.FN_GET_TAX_RULE_ID(  ''0000'',1, v_cust_add_id ,:GLOBAL_COMP_CODE,:GLOBAL_PARENT_COMP, :P41_ITEM_CODE, ',
'                                        :P41_CUSTOMER_CODE,:P41_INVOICE_ID,NULL,''1153'' ,replace(:P41_SUB_AMOUNT,'','',''''),0,0',
'                                    );',
'',
'            v_amount :=  FN_INS_SO_TR_LINES (',
'                                1,''0000'',:GLOBAL_PARENT_COMP, :GLOBAL_COMP_CODE, :P41_INVOICE_ID, :P41_ITEM_CODE, V_TAX_RULE_ID, :GLOBAL_USER_CODE, ',
'                                replace(:P41_SUB_AMOUNT,'','',''''),replace(:P41_SUB_AMOUNT,'','',''''), ''1'', ''1'',v_tax_exmpt_flg, v_cust_add_id, :P41_CUST_COA_ID, NULL, ',
'                                NULL, v_state_code,0, ''N'', NULL, NULL, :GLOBAL_PROJ_ID',
'            )',
'            ;',
'',
'',
'',
'         ',
'            for i in (',
'                        select * ',
'                        from SLS$SO$TR$LINES$TEMP',
'                        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'                        AND DOC_ID        = :P41_INVOICE_ID',
'',
'            )',
'            LOOP',
'            BEGIN    ',
'                INSERT INTO SLS$SO$TR$LINES VALUES',
'                            (',
'                                I.CLD_ID,  I.SLOC_ID,  I.ORG_ID,  I.HO_ORG_ID,  I.DOC_ID,  I.SR_NO,  I.TAX_ID,  I.TAX_COA_ID,  I.TAX_RULE_ID,  I.TAX_AMT_SP,  I.TAX_AMT_BS, ',
'                                I.USR_ID_CREATE,I.USR_ID_CREATE_DT,  I.USR_ID_MOD,  I.USR_ID_MOD_DT,  I.ITM_ID,  I.TAXABLE_AMT_SP,  I.TAXABLE_AMT_BS,  I.TAXABLE_AMT_SP_E, ',
'                                I.TAXABLE_AMT_BS_E, I.TAX_TYPE_MAN,  I.ITM_SR_NO,  I.ADV_TAX_AMT,  I.BAL_TAX_AMT',
'                            );',
'',
'            exception when no_data_found then ',
'            rollback;',
'            raise_application_error (-20001,''Error while insert the data in SLS$SO$TR$LINES table'');',
'            END;',
'            END LOOP;',
'',
'        end if;',
' if :P41_TAX_APPLICABLE = ''N'' THEN',
'      ',
'        delete from SLS$SO$TR$LINES',
'        WHERE ORG_ID      = :GLOBAL_COMP_CODE',
'        AND DOC_ID        = :P41_INVOICE_ID;',
'    end if;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'E'
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
 p_id=>wwv_flow_api.id(1398474562055327)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'other charges insert/update'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT C001,C002,C003,C004,C005,C006',
'      FROM APEX_COLLECTIONS ',
'      WHERE COLLECTION_NAME=''OTHER_CHARGE'';',
'      ',
' v_id  number;',
' ',
' begin',
' ',
'IF :P41_MODE = ''E'' THEN',
'            DELETE FROM DT_OTHER_CHARGES_SCH_INV_FINAL',
'             WHERE ORG_ID          = :GLOBAL_COMP_CODE ',
'             AND   PRJ_ID          = :GLOBAL_PROJ_ID ',
'             AND   VC_INVOICE_NO   = :P41_INV_SCH_NO ',
'             AND   DT_INVOICE_DATE = :P41_INV_SCH_DATE',
'             ;',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
'   insert into  DT_OTHER_CHARGES_SCH_INV_FINAL',
'   (',
'     ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID,',
'     USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID',
'  )',
'   values',
'   (',
'     :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P41_INV_SCH_NO,:P41_INV_SCH_DATE,I.C001,I.C002, I.C003,I.C004,I.C005,I.C006,',
'     :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_USER_CODE,SYSDATE,    :GLOBAL_PARENT_COMP',
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
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1396468224055329)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert/Update Upload File'
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
'IF :P41_MODE = ''E'' THEN',
'DELETE FROM DT_ATTACHMENT WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                            AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                            AND VC_DOC_ID = :P41_INV_SCH_NO ',
'                            AND DT_DOC_DATE = :P41_INV_SCH_DATE',
'                            AND VC_TRANS_TYPE=''IFSCH'';',
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
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,V_ID,sysdate,:P41_INV_SCH_NO,:P41_INV_SCH_DATE,''IFSCH'', I.BLOB001,I.C001,I.C002,',
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
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1402085184055323)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Insert/Update PROV BILL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT COLLECTION_NAME,C001,C002,C003,C004,C005,C006,C007,C008',
'      FROM APEX_COLLECTIONS',
'      WHERE COLLECTION_NAME=''PROV_BILL'';',
'      ',
' v_id  number;',
' ',
' begin',
' ',
'IF :P41_MODE = ''E'' THEN',
'DELETE FROM DT_SCH_FINAL_INV_PROV_BILL  WHERE ORG_ID = :GLOBAL_COMP_CODE ',
'                                        AND PRJ_ID = :GLOBAL_PROJ_ID ',
'                                        AND VC_INVOICE_NO = :P41_INV_SCH_NO ',
'                                        AND DT_INVOICE_DATE = :P41_INV_SCH_DATE',
'                                       ;',
'END IF;',
'',
'',
' FOR I IN C1 LOOP',
'',
'   ',
'   insert into  DT_SCH_FINAL_INV_PROV_BILL',
'   (',
' ORG_ID, PRJ_ID, VC_INVOICE_NO, DT_INVOICE_DATE, VC_PROV_BILL_NO, DT_PROV_BILL_DATE, NU_BILL_AMOUNT, VC_DETAIL,',
'  USR_ID_CREATE, USR_ID_CREATE_DT, VC_AUTH_CODE, USR_ID_MOD_DT, HO_ORG_ID,NU_SCHEDULE_AMOUNT,NU_OTHER_CHARGE,NU_SCHEDULE_UNIT',
'       )',
'   values',
'   (',
'   :GLOBAL_COMP_CODE, :GLOBAL_PROJ_ID ,:P41_INV_SCH_NO,:P41_INV_SCH_DATE,I.C002,I.C003,I.C004,I.C005,',
'      :GLOBAL_USER_CODE, SYSDATE,  :GLOBAL_USER_CODE,SYSDATE,    :GLOBAL_PARENT_COMP,I.C006,I.C007,I.C008',
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
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1401299563055323)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on save'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1396840934055329)
,p_process_sequence=>70
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'clear on cancel'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356263354055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1400458230055324)
,p_process_sequence=>80
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION on cancel'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''PROV_BILL'');',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356263354055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1397318152055328)
,p_process_sequence=>90
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'CLEAR COLLECTION on save'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(1356715221055372)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1400033506055325)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_INVOICE_ID'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
':P41_INVOICE_ID := SEQ_SALES_INV_ID.NEXTVAL;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'END IF;',
'',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FILE_UPLOAD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FILE_UPLOAD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''PROV_BILL'');',
'END IF;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1400854656055324)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get_info'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT  ',
' NU_INVOICE_ID,  VC_PPA_NO, DT_PPA_DATE, DT_BILL_FROM, DT_BILL_TO, EO_ID, COA_ID, ',
'DT_PAY_DUE_DATE, DT_SURCHARGE_DATE,GRP_ID, ITM_ID, NU_QTY, NU_RATE, VC_ITEM_DETAIL, ITM_ID_COA, NU_SCHEDULE_UNIT, VC_TAX_APPLICABLE, ',
'NU_SCHEDULE_AMOUNT, NU_OTHER_CHARGE_AMOUNT, NU_SUB_AMOUNT,NU_TAX_AMOUNT, NU_TCS_AMOUNT, NU_NET_AMOUNT, NU_TCS_COA, NU_TCS_PER, NU_TAX_RULE_ID,',
'NU_TCS_TAX_ID,  vc_remarks, VC_PPA_NO , get_cust_name(org_id,EO_ID)cust_name,GET_ITEM_DESC(ORG_ID,GRP_ID,ITM_ID) item_desc, GET_ITEM_UOM(ORG_ID,GRP_ID,ITM_ID)uom,',
'NU_PROV_BILL_SCH_AMT , NU_NET_SCH_AMT ,NU_PROV_BILL_OTHER_CHARGE,VC_INV_SUBJECT       ',
'',
'INTO ',
' :P41_INVOICE_ID, :P41_PPA_NO, :P41_PPA_DATE, :P41_BILL_FROM_DATE, :P41_BILL_TO_DATE, :P41_CUSTOMER_CODE, :P41_CUST_COA_ID,',
':P41_PAYMENT_DUE_DATE, :P41_SURCHARGE_DATE, :P41_GRP_ID, :P41_ITEM_CODE, :P41_QTY, :P41_RATE, :P41_ITEM_DETAIL, :P41_ITEM_COA, :P41_SCHEDULE_UNIT, :P41_TAX_APPLICABLE,',
':P41_SCHEDULE_AMOUNT, :P41_OTHER_CHARGE_AMOUNT, :P41_SUB_AMOUNT, :P41_TAX_AMOUNT, :P41_TCS_AMOUNT, :P41_NET_AMOUNT, :P41_TCS_COA, :P41_TCS_PER, :P41_TAX_RULE_ID,',
':P41_TAX_ID, :P41_REMARK, :P41_PPA_NO_TEMP, :P41_CUSTOMER_NAME,:P41_ITEM_DESC,:P41_UOM,',
':P41_PROV_SCHEDULE_AMOUNT,:P41_NET_SCHEDULE_AMOUNT,:P41_PROV_BILL_OTHER_CHARGE_AMT,:P41_SUBJECT',
'',
'',
'FROM DT_SCH_FINAL_INV',
' where ORG_ID                = :GLOBAL_COMP_CODE',
'AND   PRJ_ID                = :GLOBAL_PROJ_ID',
'AND   VC_INVOICE_NO         = :P41_INV_SCH_NO',
'AND   DT_INVOICE_DATE       = :P41_INV_SCH_DATE;',
'',
'',
'',
'if :P41_MODE = ''V'' then',
'',
'',
':P41_SCHEDULE_AMOUNT            := ltrim(to_char(:P41_SCHEDULE_AMOUNT,''999G999G999G999G990D0000''));',
':P41_OTHER_CHARGE_AMOUNT        := ltrim(to_char(:P41_OTHER_CHARGE_AMOUNT,''999G999G999G999G990D0000''));',
':P41_SUB_AMOUNT                 := ltrim(to_char(:P41_SUB_AMOUNT,''999G999G999G999G990D0000''));',
':P41_TAX_AMOUNT                 := ltrim(to_char(:P41_TAX_AMOUNT,''999G999G999G999G990D0000''));',
':P41_TCS_AMOUNT                 := ltrim(to_char(:P41_TCS_AMOUNT,''999G999G999G999G990D0000''));',
':P41_NET_AMOUNT                 := ltrim(to_char(:P41_NET_AMOUNT,''999G999G999G999G990D0000''));',
':P41_PROV_SCHEDULE_AMOUNT       := ltrim(to_char(:P41_PROV_SCHEDULE_AMOUNT,''999G999G999G999G990D0000''));',
':P41_NET_SCHEDULE_AMOUNT        := ltrim(to_char(:P41_NET_SCHEDULE_AMOUNT,''999G999G999G999G990D0000''));',
':P41_PROV_BILL_OTHER_CHARGE_AMT  := ltrim(to_char(:P41_PROV_BILL_OTHER_CHARGE_AMT,''999G999G999G999G990D0000''));',
'',
'end if;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1397684009055328)
,p_process_sequence=>30
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get info of other charges'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'      CURSOR C1 IS',
'      SELECT  NU_CHARGE_ID,VC_CHARGE_TYPE,NU_RATE,NU_AMOUNT,VC_REMARKS,COA_ID',
'      FROM DT_OTHER_CHARGES_SCH_INV_FINAL',
'      WHERE org_id = :GLOBAL_COMP_CODE',
'      AND   PRJ_ID = :GLOBAL_PROJ_ID',
'      AND   VC_INVOICE_NO   = :P41_INV_SCH_NO ',
'      AND   DT_INVOICE_DATE = :P41_INV_SCH_DATE   ;',
'      ',
' v_id  number;',
' ',
' begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
' IF  not APEX_COLLECTION.COLLECTION_EXISTS(''OTHER_CHARGE'') THEN',
'              APEX_COLLECTION.create_COLLECTION(''OTHER_CHARGE'');',
'         END IF;',
'',
'',
' FOR I IN C1 LOOP',
'   ',
' ',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''OTHER_CHARGE'',',
'                                P_C001           =>  I.NU_CHARGE_ID,',
'                                P_C002           =>  I.VC_CHARGE_TYPE,',
'                                P_C003           =>  I.NU_RATE ,',
'                                P_C004          =>   I.NU_AMOUNT,',
'                                P_C005           =>  I.VC_REMARKS,',
'                                P_C006           =>  I.COA_ID',
'                              );',
'',
' END LOOP;',
' ',
' ',
' ',
' end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1396065688055330)
,p_process_sequence=>40
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info of attachment'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'cursor c1 is (select NU_ATTACH_ID,BL_FILE,VC_FILENAME,VC_MIMETYPE ',
'              from DT_ATTACHMENT ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_DOC_ID    = :P41_INV_SCH_NO ',
'               AND   DT_DOC_DATE   = :P41_INV_SCH_DATE',
'               and   vc_trans_type = ''IFSCH'');',
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
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1401667281055323)
,p_process_sequence=>50
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Get Info of PROV_BILL'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_ID NUMBER;',
'cursor c1 is (select VC_PROV_BILL_NO,DT_PROV_BILL_DATE,NU_BILL_AMOUNT,VC_DETAIL,NU_SCHEDULE_AMOUNT,NU_OTHER_CHARGE,NU_SCHEDULE_UNIT',
'              from DT_SCH_FINAL_INV_PROV_BILL ',
'               where ORG_ID = :global_comp_code',
'               and   PRJ_ID   = :GLOBAL_PROJ_ID ',
'               AND   VC_INVOICE_NO    = :P41_INV_SCH_NO ',
'               AND   DT_INVOICE_DATE   = :P41_INV_SCH_DATE',
'              );',
'',
'begin',
' IF  APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'              APEX_COLLECTION.DELETE_COLLECTION(''PROV_BILL'');',
'         END IF;',
'',
'        IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''PROV_BILL'') THEN',
'              APEX_COLLECTION.CREATE_COLLECTION(''PROV_BILL'');',
'         END IF;',
'FOR I IN C1 LOOP',
'',
'  select (nvl(max(c001 ),0) +1) into V_ID ',
'      from APEX_COLLECTIONs where COLLECTION_NAME = ''PROV_BILL'';',
'',
' APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME =>''PROV_BILL'',',
'                                 p_c001             =>   V_ID,',
'                                  P_C002            =>  I.VC_PROV_BILL_NO,',
'                                  P_C003            =>  I.DT_PROV_BILL_DATE,',
'                                  P_C004            =>  REPLACE(I.NU_BILL_AMOUNT,'','',''''),',
'                                  P_C005            =>  I.VC_DETAIL,',
'                                  P_C006            =>  REPLACE(I.NU_SCHEDULE_AMOUNT,'','',''''),',
'                                  P_C007            =>  REPLACE(I.NU_OTHER_CHARGE,'','',''''),',
'                                  P_C008            =>  REPLACE(I.NU_SCHEDULE_UNIT,'','','''')',
'                            ',
'                               ',
'                              );',
'',
'                                ',
'END LOOP;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1399680868055325)
,p_process_sequence=>60
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get workflow stage'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Begin',
'select  NVL(VC_WKF_STAGE,''0'') VC_WKF_STAGE',
'INTO :P41_WKF_STAGE',
'from  DT_SCH_FINAL_INV',
'where org_id = :global_COMP_CODE ',
'and   prj_id   = :GLOBAL_PRJ_ID',
'and  VC_INVOICE_NO   = :P41_INV_SCH_NO',
'and  DT_INVOICE_DATE = :P41_INV_SCH_DATE;',
'exception when no_data_found then :P41_WKF_STAGE := ''0'';',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(1399255286055325)
,p_process_sequence=>70
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'get req no'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
'select  MAX( NU_REQ_NO) ',
'into    :P41_REQ_NO',
'from     DT_SUBMIT_WKFREQUEST',
'where    vc_comp_code = :GLOBAL_COMP_CODE',
'and      vc_prj_id   = :GLOBAL_PROJ_ID',
'and      VC_DOC_NO = :P41_INV_SCH_NO',
'AND      DT_DOC_DATE = :P41_INV_SCH_DATE',
'AND      VC_DOC_TYPE  = ''IFSCH'';',
'exception when no_data_found then null;',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'P41_MODE'
,p_process_when_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_process_when2=>'A'
);
wwv_flow_api.component_end;
end;
/
