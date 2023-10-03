prompt --application/pages/page_00053
begin
--   Manifest
--     PAGE: 00053
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
 p_id=>53
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'DSM'
,p_alias=>'DSM'
,p_step_title=>'DSM'
,p_autocomplete_on_off=>'OFF'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'.apex-item-group--file-inline .apex-item-filedrop {',
'    -ms-flex-direction: row;',
'    flex-direction: row;',
'    BACKGROUND: WHITE;',
'}',
'',
'',
'#ETMSREG .t-fht-thead{',
'overflow: auto !important;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220119184834'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17827968021315346)
,p_plug_name=>'DSM'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(17827684100315343)
,p_plug_name=>'REPORT'
,p_region_name=>'ETMSREG'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'c001,',
'c002 ,',
'C003 ,',
'C004 ,',
'c005 ,',
'c006 ,',
'c007 ,',
'c008,',
'c009 ,',
'c010 ,',
'c011 ,',
'c012 , ',
'c013  ,',
'c014 ,',
'c015  ,',
'c016 ,   ',
'c017 ,',
'c018,  ',
'c019  , ',
'c020 , ',
'c021  ,   ',
'c022  ,   ',
'c023    ,',
'c024   ,   ',
'c025  ,   ',
'c026  ,      ',
'c027  ,',
'c028  ',
' from apex_collections ',
' where COLLECTION_NAME=''DSM''; ',
''))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'REPORT'
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
 p_id=>wwv_flow_api.id(17827623939315342)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y_OF_Z'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'AKSHAY'
,p_internal_uid=>18878110835209308
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827449225315341)
,p_db_column_name=>'C001'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'C001'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827360928315340)
,p_db_column_name=>'C002'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'C002'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827283106315339)
,p_db_column_name=>'C003'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'C003'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827156638315338)
,p_db_column_name=>'C004'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'C004'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827039065315337)
,p_db_column_name=>'C005'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'C005'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17827008259315336)
,p_db_column_name=>'C006'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'C006'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826900219315335)
,p_db_column_name=>'C007'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'C007'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826800982315334)
,p_db_column_name=>'C008'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'C008'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826704198315333)
,p_db_column_name=>'C009'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'C009'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826552355315332)
,p_db_column_name=>'C010'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'C010'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826488943315331)
,p_db_column_name=>'C011'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'C011'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826343631315330)
,p_db_column_name=>'C012'
,p_display_order=>120
,p_column_identifier=>'L'
,p_column_label=>'C012'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826322548315329)
,p_db_column_name=>'C013'
,p_display_order=>130
,p_column_identifier=>'M'
,p_column_label=>'C013'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826157926315328)
,p_db_column_name=>'C014'
,p_display_order=>140
,p_column_identifier=>'N'
,p_column_label=>'C014'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17826123177315327)
,p_db_column_name=>'C015'
,p_display_order=>150
,p_column_identifier=>'O'
,p_column_label=>'C015'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825979846315326)
,p_db_column_name=>'C016'
,p_display_order=>160
,p_column_identifier=>'P'
,p_column_label=>'C016'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825904603315325)
,p_db_column_name=>'C017'
,p_display_order=>170
,p_column_identifier=>'Q'
,p_column_label=>'C017'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825796513315324)
,p_db_column_name=>'C018'
,p_display_order=>180
,p_column_identifier=>'R'
,p_column_label=>'C018'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825639846315323)
,p_db_column_name=>'C019'
,p_display_order=>190
,p_column_identifier=>'S'
,p_column_label=>'C019'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825618490315322)
,p_db_column_name=>'C020'
,p_display_order=>200
,p_column_identifier=>'T'
,p_column_label=>'C020'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825510050315321)
,p_db_column_name=>'C021'
,p_display_order=>210
,p_column_identifier=>'U'
,p_column_label=>'C021'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825397335315320)
,p_db_column_name=>'C022'
,p_display_order=>220
,p_column_identifier=>'V'
,p_column_label=>'C022'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825300391315319)
,p_db_column_name=>'C023'
,p_display_order=>230
,p_column_identifier=>'W'
,p_column_label=>'C023'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825174768315318)
,p_db_column_name=>'C024'
,p_display_order=>240
,p_column_identifier=>'X'
,p_column_label=>'C024'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17825044315315317)
,p_db_column_name=>'C025'
,p_display_order=>250
,p_column_identifier=>'Y'
,p_column_label=>'C025'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17824970111315316)
,p_db_column_name=>'C026'
,p_display_order=>260
,p_column_identifier=>'Z'
,p_column_label=>'C026'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17824844956315315)
,p_db_column_name=>'C027'
,p_display_order=>270
,p_column_identifier=>'AA'
,p_column_label=>'C027'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(17824669141315313)
,p_db_column_name=>'C028'
,p_display_order=>280
,p_column_identifier=>'AB'
,p_column_label=>'C028'
,p_column_type=>'STRING'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(17766641152998758)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'189391'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'C001:C002:C003:C004:C005:C006:C007:C008:C009:C010:C011:C012:C013:C014:C015:C016:C017:C018:C019:C020:C021:C022:C023:C024:C025:C026:C027:C028'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(17824781427315314)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(17827968021315346)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconRight'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Submit'
,p_button_position=>'CREATE'
,p_icon_css_classes=>'fa-save'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(17827867060315345)
,p_name=>'P53_FILE_BROWSER'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(17827968021315346)
,p_prompt=>'File Browser'
,p_display_as=>'NATIVE_FILE'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(16224415845492031)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'APEX_APPLICATION_TEMP_FILES'
,p_attribute_09=>'SESSION'
,p_attribute_10=>'N'
,p_attribute_12=>'DROPZONE_INLINE'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(17827766891315344)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'UPDATE'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'    l_error_log_exists  boolean := false;',
'    l_data              raw(32767);',
'    ermsg               varchar2(2000);',
'    v_cnt               number :=0;',
'    v_badge             number;',
'    v_logdate           date;',
'    v_checkdate         date;',
'    l_query             varchar2(3000);',
'    v_sum               number;',
'    v_min               number;',
'    v_max               number;',
'    v_avg               number;',
'   ',
'begin',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DSM'');',
'END IF;  ',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''DSM'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''DSM'');',
'END IF;',
' ',
'',
'',
'select nvl(max(nu_id),0) +1 into  v_cnt  from TEMP_SCHEDULE_PROV ;',
'    begin',
'        for r1 in (select *  from',
'                    apex_application_temp_files f, table( apex_data_parser.parse(',
'                                    p_content                     => f.blob_content,',
'                                    p_add_headers_row             => ''Y'',',
'                                --   p_xlsx_sheet_name             => :P31_XLSX_WORKSHEET,',
'                                --   p_max_rows                    => 9999,',
'                                    p_store_profile_to_collection => ''FILE_PARSER_COLLECTION'',',
'                                    p_file_name                   => f.filename ) ) p',
'                where      f.name = :P53_FILE_BROWSER ',
'                )',
'',
'        loop',
'',
'            if r1.LINE_NUMBER between 5 and 100 then',
'            ',
'',
'                   APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''DSM'',',
'                                            p_c001            => r1.col001,',
'                                            p_c002            => r1.col002,',
'                                            P_C003            => r1.col003,',
'                                            P_C004            => r1.col004,',
'                                            P_c005            => r1.col005,',
'                                            P_c006            => r1.col006,',
'                                            P_c007            => r1.col007,',
'                                            P_c008            => r1.col008,',
'                                            P_c009            => r1.col009,',
'                                            P_c010            => r1.col010,',
'                                            P_c011            => r1.col011,',
'                                            P_c012            => r1.col012,',
'                                            P_c013            => r1.col013,',
'                                            P_c014            => r1.col014,',
'                                            P_c015            => r1.col015,',
'                                            P_c016            => r1.col016,',
'                                            P_c017            => r1.col017,',
'                                            P_c018            => r1.col018,',
'                                            P_c019            => r1.col019,',
'                                            P_c020            => r1.col020,',
'                                            P_c021            => r1.col021,',
'                                            P_c022            => r1.col022,',
'                                            P_c023            => r1.col023,',
'                                            P_c024            => r1.col024,',
'                                            P_c025            => r1.col025,',
'                                            P_c026            => r1.col026,',
'                                            P_c027            => r1.col027,',
'                                            P_c028            => r1.col028',
'',
'                                            );',
'            end if;',
'',
' end loop;',
'end;',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
