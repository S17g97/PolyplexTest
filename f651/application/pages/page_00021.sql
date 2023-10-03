prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Define Workflow -List'
,p_alias=>'DEFINE-WORKFLOW'
,p_step_title=>'Define Workflow'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'/*.t-Form-fieldContainer--floatingLabel .apex-item-select, .t-Form-fieldContainer--floatingLabel .apex-item-text {',
'    font-size: 1.4rem;',
'    border-radius: 10px;',
'}',
'',
'.t-Region .t-Region-body {',
'    padding: 16px;',
'    background-color: lightblue;',
'}',
'',
'.t-Form-fieldContainer--floatingLabel .apex-item-textarea {',
'    font-size: 1.2rem;',
'    width: 100%;',
'    border-radius: 10px;',
'}',
'.t-Button:not(.t-Button--simple){',
'color: #253942;',
'background: bottom;',
'box-shadow: none;',
'',
'text-align: -webkit-center;',
'}',
'',
'.t-Footer {',
'    flex-shrink: 0;',
'    border-top: 1px solid rgba(0,0,0,.05);',
'    background-color: rgba(0,0,0,.025);',
'    padding: -32px;',
'    display: flex;',
'    flex-direction: row;',
'    align-items: center;',
'   ',
'    visibility: hidden;',
'    height: 0px;',
'}',
'',
'*/'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20211008170850'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11351987066333449)
,p_plug_name=>'Workflow'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_WORKFLOW_NO,',
'       VC_DOC_TYPE,',
'       VC_DOC_SUBTYPE,',
'       NU_LEVEL,',
'       VC_COMP_CODE,',
'       VC_WORKFLOW_NAME,',
'       DT_CRT_DATE,',
'       DT_MOD_DATE,',
'       DECODE(CH_ACTIVE,''Y'',''YES'',''NO'') ACTIVE_STATUS,',
'       NU_EAP_TIME,',
'       ''''view1,',
'       '''' EDIT',
'  from HD_WORKFLOW',
' where vc_comp_code=:global_comp_code',
'AND   VC_PRJ_ID  = :GLOBAL_PROJ_ID',
' order by vc_workflow_no'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(11351943557333449)
,p_name=>'Define Workflow'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_allow_save_rpt_public=>'Y'
,p_show_nulls_as=>'-'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_owner=>'ADMIN'
,p_internal_uid=>7000923829928876
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15136854575785280)
,p_db_column_name=>'VC_WORKFLOW_NO'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Workflow No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G999G999G999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15136387467785279)
,p_db_column_name=>'VC_DOC_TYPE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Document Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15136065907785279)
,p_db_column_name=>'VC_DOC_SUBTYPE'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Document Subtype'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15135619789785278)
,p_db_column_name=>'NU_LEVEL'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_format_mask=>'99G999G999G999G999G999G999G999G999G999G990'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15135241085785278)
,p_db_column_name=>'VC_COMP_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Vc Comp Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15134814623785278)
,p_db_column_name=>'VC_WORKFLOW_NAME'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Workflow Name'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15134393417785277)
,p_db_column_name=>'DT_CRT_DATE'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Dt Crt Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15134054919785277)
,p_db_column_name=>'DT_MOD_DATE'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Dt Mod Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15133608912785277)
,p_db_column_name=>'ACTIVE_STATUS'
,p_display_order=>18
,p_column_identifier=>'L'
,p_column_label=>'Active'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15133256427785277)
,p_db_column_name=>'NU_EAP_TIME'
,p_display_order=>28
,p_column_identifier=>'M'
,p_column_label=>'Nu Eap Time'
,p_column_type=>'NUMBER'
,p_column_alignment=>'RIGHT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15281635272151597)
,p_db_column_name=>'VIEW1'
,p_display_order=>38
,p_column_identifier=>'N'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.::P22_NEW,P22_VC_WORKFLOW_NO:V,#VC_WORKFLOW_NO#'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(15281563331151596)
,p_db_column_name=>'EDIT'
,p_display_order=>48
,p_column_identifier=>'O'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_NEW,P22_VC_WORKFLOW_NO:E,#VC_WORKFLOW_NO#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(11334288519333032)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'32200'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:VIEW1:VC_WORKFLOW_NO:VC_WORKFLOW_NAME:VC_DOC_TYPE:NU_LEVEL:ACTIVE_STATUS:'
,p_sort_column_1=>'VC_WORKFLOW_NO'
,p_sort_direction_1=>'ASC'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15132451430785273)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(11351987066333449)
,p_button_name=>'RESET_REPORT'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'Reset'
,p_button_position=>'BELOW_BOX'
,p_button_redirect_url=>'f?p=&APP_ID.:21:&SESSION.::&DEBUG.:RIR::'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-undo-alt'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(15132001380785273)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11351987066333449)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:22:&SESSION.::&DEBUG.:22:P22_NEW:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(14672109538569512)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(11351987066333449)
,p_button_name=>'BACK'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft:t-Button--padLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<BR>Back'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15130975528785266)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_api.id(11351987066333449)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15130483907785264)
,p_event_id=>wwv_flow_api.id(15130975528785266)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11351987066333449)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(15130132197785264)
,p_name=>'Create Button - Dialog Closed'
,p_event_sequence=>20
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(15132001380785273)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(15129587043785262)
,p_event_id=>wwv_flow_api.id(15130132197785264)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(11351987066333449)
);
wwv_flow_api.component_end;
end;
/
