prompt --application/pages/page_00077
begin
--   Manifest
--     PAGE: 00077
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
 p_id=>77
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Energy Flow Amendment History'
,p_alias=>'ENERGY-FLOW-AMENDMENT-HISTORY'
,p_step_title=>'Energy Flow Amendment History'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'GAURAV'
,p_last_upd_yyyymmddhh24miss=>'20221226185354'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(91627283139383295)
,p_plug_name=>'Energy Flow Amendment History'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16288868591492135)
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'DT_ENERGY_FLOW_HIST'
,p_query_where=>wwv_flow_string.join(wwv_flow_t_varchar2(
'ORG_ID = :Global_comp_code and',
'PRJ_ID = :	GLOBAL_PROJ_ID'))
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>'Energy Flow Amendment History'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(91627436224383295)
,p_name=>'Energy Flow Amendment History'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'GAURAV'
,p_internal_uid=>128333170998907945
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91627777104383298)
,p_db_column_name=>'ORG_ID'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91628260339383299)
,p_db_column_name=>'PRJ_ID'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Prj Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91628572381383299)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nu Doc No'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91628974960383300)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Dt Doc Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91629436553383300)
,p_db_column_name=>'NU_LEVEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Nu Level'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91629795708383300)
,p_db_column_name=>'VC_LOCATION'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Vc Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91630200305383301)
,p_db_column_name=>'VC_MAIN_METER_NO'
,p_display_order=>7
,p_column_identifier=>'G'
,p_column_label=>'Vc Main Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91630640112383301)
,p_db_column_name=>'NU_MAIN_FACTOR'
,p_display_order=>8
,p_column_identifier=>'H'
,p_column_label=>'Nu Main Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91631028722383302)
,p_db_column_name=>'DT_MAIN_INSTALL_DATE'
,p_display_order=>9
,p_column_identifier=>'I'
,p_column_label=>'Dt Main Install Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91631457883383302)
,p_db_column_name=>'VC_CHK_METER_NO'
,p_display_order=>10
,p_column_identifier=>'J'
,p_column_label=>'Vc Chk Meter No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91631773357383302)
,p_db_column_name=>'NU_CHK_FACTOR'
,p_display_order=>11
,p_column_identifier=>'K'
,p_column_label=>'Nu Chk Factor'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91632240125383303)
,p_db_column_name=>'DT_CHK_INSTALL_DATE'
,p_display_order=>12
,p_column_identifier=>'L'
,p_column_label=>'Dt Chk Install Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91632598908383303)
,p_db_column_name=>'USR_ID_CREATE'
,p_display_order=>13
,p_column_identifier=>'M'
,p_column_label=>'Usr Id Create'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91632976535383304)
,p_db_column_name=>'USR_ID_CREATE_DT'
,p_display_order=>14
,p_column_identifier=>'N'
,p_column_label=>'Usr Id Create Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91633418013383304)
,p_db_column_name=>'VC_AUTH_CODE'
,p_display_order=>15
,p_column_identifier=>'O'
,p_column_label=>'Vc Auth Code'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91633796959383304)
,p_db_column_name=>'USR_ID_MOD'
,p_display_order=>16
,p_column_identifier=>'P'
,p_column_label=>'Usr Id Mod'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91634182570383305)
,p_db_column_name=>'USR_ID_MOD_DT'
,p_display_order=>17
,p_column_identifier=>'Q'
,p_column_label=>'Usr Id Mod Dt'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(91634619186383305)
,p_db_column_name=>'HO_ORG_ID'
,p_display_order=>18
,p_column_identifier=>'R'
,p_column_label=>'Ho Org Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(91637549640389480)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'1283433'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'ORG_ID:PRJ_ID:NU_DOC_NO:DT_DOC_DATE:NU_LEVEL:VC_LOCATION:VC_MAIN_METER_NO:NU_MAIN_FACTOR:DT_MAIN_INSTALL_DATE:VC_CHK_METER_NO:NU_CHK_FACTOR:DT_CHK_INSTALL_DATE:USR_ID_CREATE:USR_ID_CREATE_DT:VC_AUTH_CODE:USR_ID_MOD:USR_ID_MOD_DT:HO_ORG_ID'
);
wwv_flow_api.component_end;
end;
/
