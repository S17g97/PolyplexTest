prompt --application/pages/page_00047
begin
--   Manifest
--     PAGE: 00047
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
 p_id=>47
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Meter Replacement List'
,p_alias=>'METER-REPLACEMENT-LIST'
,p_step_title=>'Meter Replacement List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20211022110338'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(11953262607592601)
,p_plug_name=>'Meter Replacement List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'''''EDIT,',
'''''VIEW1,',
'NU_DOC_NO,',
'DT_DOC_DATE,',
'NU_LOC_DOC_NO,',
'get_energy_flow_loc(ORG_ID,PRJ_ID,NU_LOC_DOC_NO)location,',
'decode(CH_TYPE,''B'',''Both Meter'',''M'',''Main Meter'',''C'',''Check Meter'')Type,',
'CH_AUTH_FLAG,',
'CASE   when nvl(CH_AUTH_FLAG,''N'') = ''N'' then ',
'        case when check_doc_edit(ORG_ID,PRJ_ID,NU_DOC_NO,DT_DOC_DATE,''MTR'',:GLOBAL_USER_CODE) = ''Y'' THEN ''inline''',
'        else ''none''',
'        end',
'else   ''none''  ',
'end  as  chk_edit,',
'decode(CH_AUTH_FLAG,''N'',''No'',''Y'',''Yes'')authorized',
'',
'FROM DT_METER_REPLACEMENT',
'WHERE ORG_ID = :GLOBAL_COMP_CODE',
'AND PRJ_ID   = :GLOBAL_PROJ_ID'))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Meter Replacement List'
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
 p_id=>wwv_flow_api.id(12355720811769915)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>12355720811769915
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12355890743769916)
,p_db_column_name=>'EDIT'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_MODE,P48_AUTH_FLAG,P48_DOC_NO,P48_LAST_PAGE:E,#CH_AUTH_FLAG#,#NU_DOC_NO#,47'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_link_attr=>'style="display:#CHK_EDIT#"  title="edit" class="chk-edit"'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12355993936769917)
,p_db_column_name=>'VIEW1'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_AUTH_FLAG,P48_MODE,P48_DOC_NO,P48_LAST_PAGE:#CH_AUTH_FLAG#,V,#NU_DOC_NO#,47'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
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
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356036489769918)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Doc No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356160115769919)
,p_db_column_name=>'DT_DOC_DATE'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Doc Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356214563769920)
,p_db_column_name=>'NU_LOC_DOC_NO'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Nu Loc Doc No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356353463769921)
,p_db_column_name=>'LOCATION'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Location'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356469245769922)
,p_db_column_name=>'TYPE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Type'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356529680769923)
,p_db_column_name=>'CH_AUTH_FLAG'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Ch Auth Flag'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356653726769924)
,p_db_column_name=>'CHK_EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Chk Edit'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(12356727582769925)
,p_db_column_name=>'AUTHORIZED'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Authorized'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(12413972258424800)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'124140'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EDIT:VIEW1:LOCATION:TYPE:AUTHORIZED:'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(11953330095592602)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(11953262607592601)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'EDIT'
,p_button_redirect_url=>'f?p=&APP_ID.:48:&SESSION.::&DEBUG.:48:P48_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
