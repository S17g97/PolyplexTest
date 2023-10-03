prompt --application/pages/page_00095
begin
--   Manifest
--     PAGE: 00095
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
 p_id=>95
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Authorized Sign'
,p_alias=>'AUTHORIZED-SIGN1'
,p_step_title=>'Authorized Sign'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230925142740'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(2929085541957220)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       ORG_ID,',
'       PROJ_ID,',
'       VC_AUTH_CODE_TYPE,',
'       VC_AUTH_CODE,',
'       VC_AUTH_CODE_DESC,',
'       USR_ID_CREATE_DT,',
'       USR_ID_MOD_DT,',
'       USR_ID_CREATE,',
'       DECODE(CH_ACTIVE,''Y'',''Active'',''Inactive'') CH_ACTIVE',
'  from MST_AUTHORIZED_SIGN',
' where org_id = :global_comp_code',
'and proj_id =:GLOBAL_PROJ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(2929523640957220)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:RP:P96_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'SHRUTI'
,p_internal_uid=>21282391028219545
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2929630396957219)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2929992537957219)
,p_db_column_name=>'ORG_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2930411368957219)
,p_db_column_name=>'PROJ_ID'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Proj Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2930801031957218)
,p_db_column_name=>'VC_AUTH_CODE_TYPE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Parameter'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2931221795957218)
,p_db_column_name=>'VC_AUTH_CODE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Vc Auth Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2931609002957218)
,p_db_column_name=>'VC_AUTH_CODE_DESC'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Authorized Signatory Name '
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2931939431957218)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Created Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2932349820957217)
,p_db_column_name=>'USR_ID_MOD_DT'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Modified Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2932765986957217)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Created By'
,p_column_type=>'STRING'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_rpt_named_lov=>wwv_flow_api.id(15086013109781238)
,p_rpt_show_filter_lov=>'1'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(2933200731957217)
,p_db_column_name=>'CH_ACTIVE'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Status'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(2934034726956216)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'212870'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ROWID:ORG_ID:PROJ_ID:VC_AUTH_CODE_TYPE:VC_AUTH_CODE:VC_AUTH_CODE_DESC:USR_ID_CREATE_DT:USR_ID_MOD_DT:USR_ID_CREATE:CH_ACTIVE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(1738362426090722)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(2929085541957220)
,p_button_name=>'BACK'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Back'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_icon_css_classes=>'fa-backward fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(2933667752957217)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(2929085541957220)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:96'
,p_icon_css_classes=>'fa-plus  fa-2x'
);
wwv_flow_api.component_end;
end;
/
