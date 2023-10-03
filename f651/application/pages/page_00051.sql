prompt --application/pages/page_00051
begin
--   Manifest
--     PAGE: 00051
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
 p_id=>51
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Finalize Schedule List'
,p_alias=>'FINALIZE-SCHEDULE-LIST'
,p_step_title=>'Finalize Schedule List'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230927133423'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(18230190244551626)
,p_plug_name=>'Finalize Schedule List'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ',
'NU_DOC_NO, NU_DOC_DATE,NU_REVISION_NO,',
'NU_AMENDMENT_NO,DT_SCHEDULED_DATE,CHR(NU_AMENDMENT_NO) am,NU_REVISION_NO_OLD,''''VIEW1,''''EDIT,DT_DELIVERY_DATE,VC_DEL_POINT',
'from HD_FINALIZE_SCHEDULE',
'where ORG_ID = :GLOBAL_COMP_CODE',
'AND   PRJ_ID = :GLOBAL_PROJ_ID',
'order by NU_DOC_NO desc',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Finalize Schedule List'
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
 p_id=>wwv_flow_api.id(18230259174551627)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_reset=>'N'
,p_show_help=>'N'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'N'
,p_detail_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::P49_MODE,P49_DOC_NO,P49_REVISION_NO,P49_AMENDED_NO,P49_SCHEDULED_DATE,P49_OLD_REV:E,#NU_DOC_NO#,#NU_REVISION_NO#,#AM#,#DT_SCHEDULED_DATE#,#NU_REVISION_NO_OLD#'
,p_detail_link_text=>'<img src="#IMAGE_PREFIX#app_ui/img/icons/apex-edit-pencil.png" class="apex-edit-pencil" alt="">'
,p_detail_link_condition_type=>'NEVER'
,p_owner=>'AKSHAY'
,p_internal_uid=>18230259174551627
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18230397247551628)
,p_db_column_name=>'NU_DOC_NO'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Doc No'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18230490863551629)
,p_db_column_name=>'NU_DOC_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Doc Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18067869795503324)
,p_db_column_name=>'NU_AMENDMENT_NO'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Nu Amendment No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18067781916503323)
,p_db_column_name=>'NU_REVISION_NO'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Nu Revision No'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18067725432503322)
,p_db_column_name=>'DT_SCHEDULED_DATE'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Scheduled Date'
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18067557417503321)
,p_db_column_name=>'AM'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Am'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(18067380160503319)
,p_db_column_name=>'NU_REVISION_NO_OLD'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Nu Revision No Old'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17159523563471747)
,p_db_column_name=>'VIEW1'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_MODE,P49_DOC_NO,P49_DOC_DATE,P49_REVISION_NO,P49_AMENDED_NO,P49_OLD_REV,P49_SCHEDULED_DATE,P49_DELIVERY_DATE,P49_DELIVERY_POINT:V,#NU_DOC_NO#,#NU_DOC_DATE#,#NU_REVISION_NO#,#AM#,#NU_REVISION_NO_OLD#,#DT_SCHED'
||'ULED_DATE#,#DT_DELIVERY_DATE#,#VC_DEL_POINT#'
,p_column_linktext=>'<span aria-label="View"><span class="fa fa-eye" aria-hidden="true" title="view"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17159371217471746)
,p_db_column_name=>'EDIT'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'&nbsp'
,p_column_link=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_MODE,P49_DOC_NO,P49_DOC_DATE,P49_AMENDED_NO,P49_REVISION_NO,P49_OLD_REV,P49_DELIVERY_DATE,P49_DELIVERY_POINT:E,#NU_DOC_NO#,#NU_DOC_DATE#,#AM#,#NU_REVISION_NO#,#NU_REVISION_NO_OLD#,#DT_DELIVERY_DATE#,#VC_DEL_P'
||'OINT#'
,p_column_linktext=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="edit"></span></span>'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3169328753574323)
,p_db_column_name=>'DT_DELIVERY_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Dt Delivery Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(3169362883574324)
,p_db_column_name=>'VC_DEL_POINT'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Vc Del Point'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(18269837342108528)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'182699'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_display_rows=>10
,p_report_columns=>'EDIT:VIEW1:NU_DOC_NO:NU_DOC_DATE:DT_SCHEDULED_DATE::DT_DELIVERY_DATE:VC_DEL_POINT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(18230589832551630)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(18230190244551626)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Create'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.:49:P49_MODE:A'
,p_icon_css_classes=>'fa-plus'
);
wwv_flow_api.component_end;
end;
/
