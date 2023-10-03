prompt --application/pages/page_00031
begin
--   Manifest
--     PAGE: 00031
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
 p_id=>31
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'PPA-JMR List'
,p_alias=>'PPA-JMR-LIST'
,p_page_mode=>'MODAL'
,p_step_title=>'PPA-JMR List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code_onload=>wwv_flow_string.join(wwv_flow_t_varchar2(
'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();',
''))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'700'
,p_dialog_width=>'900'
,p_dialog_max_width=>'1000'
,p_last_updated_by=>'AKSHAY1'
,p_last_upd_yyyymmddhh24miss=>'20210913180522'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18313601289282632)
,p_plug_name=>'Region Display Selector'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_source_type=>'NATIVE_DISPLAY_SELECTOR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STANDARD'
,p_attribute_02=>'N'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18313519596282631)
,p_plug_name=>'JMR List'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18313454349282630)
,p_plug_name=>'Without JMR List'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>50
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'''''Edit,',
'A.VC_PPA_NO,',
'DT_PPA_DATE, ',
'VC_LOCATION,',
'B.CH_METERING_POINT, ',
'B.CH_METER_INSTALLED, ',
'B.CH_TRANSMISSION_LOSS, ',
'B.CH_OPTION,',
'get_cust_name(a.org_id,EO_ID)Customer,',
'NU_LOSS',
'',
'From MST_PPA A, DT_Energy_Flow B ',
'where A.ORG_ID = B.ORG_ID',
'AND  A.PRJ_ID = B.PRJ_ID',
'AND A.ORG_ID = :GLOBAL_COMP_CODE',
'AND A.PRJ_ID = :GLOBAL_PROJ_ID',
'and A.NU_METERING_POINT_ID = B.NU_DOC_NO',
'AND B.CH_METER_INSTALLED=''N'' ',
'and B.CH_TRANSMISSION_LOSS=''Y''',
'and  a.CH_BILLING_TYPE = ''J''',
'and  a.CH_AUTH_FLAG = ''Y''',
'and  b.CH_AUTH_FLAG = ''Y''',
'AND   not exists',
'                ( ',
'                    select 1',
'                    from DT_INVOICE_JMR c',
'                    where c.org_id = A.org_id ',
'                    AND   c.PRJ_ID = A.PRJ_ID ',
'                    AND   c.VC_PPA_NO = A.VC_PPA_NO',
'                    AND   c.DT_PPA_DATE = A.DT_PPA_DATE',
'                    and   c.NU_METERING_POINT_ID = a.NU_METERING_POINT_ID',
'                    )',
'order by 2 desc',
';'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Without Jmr List'
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
 p_id=>wwv_flow_api.id(18313714930282633)
,p_max_row_count=>'1000000'
,p_no_data_found_message=>'No Data Found.'
,p_max_rows_per_page=>'8'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>8947760207052513
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18313836964282634)
,p_db_column_name=>'VC_PPA_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'PPA No'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18313919694282635)
,p_db_column_name=>'DT_PPA_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'PPA Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314030179282636)
,p_db_column_name=>'VC_LOCATION'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Metering point'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314134292282637)
,p_db_column_name=>'CH_METERING_POINT'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Metering Point'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314196898282638)
,p_db_column_name=>'CH_METER_INSTALLED'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Ch Meter Installed'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314310634282639)
,p_db_column_name=>'CH_TRANSMISSION_LOSS'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Ch Transmission Loss'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314363935282640)
,p_db_column_name=>'CH_OPTION'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Ch Option'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314543672282641)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Customer'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18314622398282642)
,p_db_column_name=>'EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:45:&SESSION.::&DEBUG.:45:P45_MODE,P45_PPA_DATE,P45_PPA_NO,P45_TRANS_LOSS,P45_METERING_INSTALL,P45_METERING_POINT,P45_OPTION,P45_LOSS_PER:A,#DT_PPA_DATE#,#VC_PPA_NO#,#CH_TRANSMISSION_LOSS#,#CH_METER_INSTALLED#,#CH_METERING_POINT#,#CH_OPTI'
||'ON#,#NU_LOSS#'
,p_column_linktext=>' <span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18171869762965319)
,p_db_column_name=>'NU_LOSS'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Nu Loss'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18324281441330268)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'90155'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>7
,p_report_columns=>'EDIT:VC_PPA_NO:DT_PPA_DATE:CUSTOMER:VC_LOCATION::NU_LOSS'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(14202889813003084)
,p_plug_name=>'From JMR List'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'''''Edit,',
'VC_JMR_NO,',
'DT_JMR_DATE,',
'VC_PPA_NO,',
'DT_PPA_DATE,',
'get_cust_name(org_id,EO_ID)Customer,',
' get_energy_flow_loc(ORG_ID,PRJ_ID,NU_MAIN_METER_LOC_ID) Metering_POINT',
'',
'from dt_jmr A',
'where org_id = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'and   ch_auth_flag = ''Y''',
'AND   not exists',
'                ( ',
'                    select 1',
'                    from DT_INVOICE_JMR B',
'                    where B.org_id = A.org_id ',
'                    AND   B.PRJ_ID = A.PRJ_ID ',
'                    AND   B.VC_JMR_NO = A.VC_JMR_NO',
'                    AND   B.DT_JMR_DATE = A.DT_JMR_DATE',
'                    )',
'order by 2 desc;'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'JMR List'
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
 p_id=>wwv_flow_api.id(14202819455003083)
,p_max_row_count=>'1000000'
,p_max_rows_per_page=>'8'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_show_actions_menu=>'N'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_enable_mail_download=>'N'
,p_owner=>'AKSHAY1'
,p_internal_uid=>4150047932259242
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14202743033003082)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:30:&SESSION.::&DEBUG.:30:P30_JMR_NO,P30_JMR_DATE,P30_MODE:#VC_JMR_NO#,#DT_JMR_DATE#,A'
,p_column_linktext=>' <span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14202604551003081)
,p_db_column_name=>'VC_JMR_NO'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'JMR No'
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
 p_id=>wwv_flow_api.id(14202508404003080)
,p_db_column_name=>'DT_JMR_DATE'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'JMR Date'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14202459785003079)
,p_db_column_name=>'VC_PPA_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'PPA No'
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
 p_id=>wwv_flow_api.id(14202275864003078)
,p_db_column_name=>'DT_PPA_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'PPA Date'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_allow_hide=>'N'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(14202197718003077)
,p_db_column_name=>'CUSTOMER'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Customer'
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
 p_id=>wwv_flow_api.id(9405565382209816)
,p_db_column_name=>'METERING_POINT'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Metering Point'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(13846038217105763)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'45069'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT:VC_JMR_NO:DT_JMR_DATE:VC_PPA_NO:DT_PPA_DATE:CUSTOMER:METERING_POINT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(13833719889383193)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18313519596282631)
,p_button_name=>'Close'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Close'
,p_button_position=>'COPY'
,p_icon_css_classes=>'fa-remove '
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(14202096840003076)
,p_name=>'hide'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(14201981051003075)
,p_event_id=>wwv_flow_api.id(14202096840003076)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(13833646471383192)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
