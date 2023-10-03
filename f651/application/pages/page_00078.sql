prompt --application/pages/page_00078
begin
--   Manifest
--     PAGE: 00078
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
 p_id=>78
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Exclusion Period'
,p_alias=>'EXCLUSION-PERIOD'
,p_page_mode=>'MODAL'
,p_step_title=>'Exclusion Period'
,p_warn_on_unsaved_changes=>'N'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'',
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
'        });'))
,p_javascript_code_onload=>'parent.$(''.ui-dialog.t-Dialog-page--standard .ui-dialog-titlebar'').hide();'
,p_inline_css=>wwv_flow_string.join(wwv_flow_t_varchar2(
'div#EXE{',
'    width: 100% !important;',
'}',
'',
'.a-IRR-button.a-IRR-sortWidget-button{',
'',
'   display:none  !important;',
'    pointer-events: none !important;',
'',
'}',
'.apexir-icon-sort-asc,',
'.apexir-icon-sort-desc {',
'  display: none !important;',
'}',
'.a-Icon.icon-menu {',
'  display: none !important;',
'}',
'',
'',
'.a-GV-columnWidthHandle {',
'/* cursor: none !important; */',
' pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'span.a-Icon.icon-irr-sort-asc {',
'    display: none !important;',
'}',
'th.a-GV-header.is-required {',
'    pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'.a-GV-header{',
'    pointer-events: none !important;',
'            cursor: default !important;',
'}',
'',
'div#EXE_ig_report_settings {',
'    display: none !important;',
'}',
'',
'div#t_Alert_Success {',
'    display: none;',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_dialog_height=>'600'
,p_dialog_width=>'800'
,p_last_updated_by=>'SHRUTI'
,p_last_upd_yyyymmddhh24miss=>'20230605165446'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(107497378434591061)
,p_plug_name=>'Exclusion Period'
,p_region_name=>'EXE'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Select ',
'',
'c001 as FROM_DATE,',
'c002 as TO_DATE,',
'SEQ_ID  AS seq',
'',
' from apex_collections ',
' where COLLECTION_NAME=''EXCLUSION_PERIOD''; ',
''))
,p_plug_source_type=>'NATIVE_IG'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_read_only_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_plug_read_only_when=>'P78_MODE'
,p_plug_read_only_when2=>'V'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Exclusion Period'
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
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(106473993909610797)
,p_name=>'SEQ'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'SEQ'
,p_data_type=>'NUMBER'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>60
,p_attribute_01=>'N'
,p_filter_is_required=>false
,p_static_id=>'SEQ'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>true
,p_default_type=>'EXPRESSION'
,p_default_language=>'PLSQL'
,p_default_expression=>'P_ROW_SEQ.NEXTVAL'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107496706315591055)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107496830635591056)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107497090326591058)
,p_name=>'TO_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TO_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'To Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'TO_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(107497154725591059)
,p_name=>'FROM_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'FROM_DATE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_JET'
,p_heading=>'From Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>30
,p_value_alignment=>'CENTER'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'Y'
,p_is_required=>false
,p_max_length=>4000
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_static_id=>'FROM_DATE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(107497262307591060)
,p_internal_uid=>125850129694853385
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(106486975960693987)
,p_interactive_grid_id=>wwv_flow_api.id(107497262307591060)
,p_static_id=>'101812'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(106486778646693987)
,p_report_id=>wwv_flow_api.id(106486975960693987)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106462425098869316)
,p_view_id=>wwv_flow_api.id(106486778646693987)
,p_display_seq=>5
,p_column_id=>wwv_flow_api.id(106473993909610797)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106482172870688193)
,p_view_id=>wwv_flow_api.id(106486778646693987)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(107496830635591056)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106485313356693977)
,p_view_id=>wwv_flow_api.id(106486778646693987)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(107497090326591058)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(106486280133693985)
,p_view_id=>wwv_flow_api.id(106486778646693987)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(107497154725591059)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43108197052063852)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(107497378434591061)
,p_button_name=>'Cancel'
,p_button_static_id=>'btn_cancel'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_execute_validations=>'N'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43108526336063852)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(107497378434591061)
,p_button_name=>'Save'
,p_button_static_id=>'btn_save'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P78_MODE'
,p_button_condition2=>'V'
,p_button_condition_type=>'VAL_OF_ITEM_IN_COND_NOT_EQ_COND2'
,p_icon_css_classes=>'fa-save fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(43108864706063853)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(107497378434591061)
,p_button_name=>'ADD_ROW'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16221892450492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Add Row'
,p_button_position=>'PREVIOUS'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43109289533063854)
,p_name=>'P78_DUPLICATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43109704010063855)
,p_name=>'P78_TO_DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43110086376063856)
,p_name=>'P78_FROM_DATE_1'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43110445692063856)
,p_name=>'P78_CHK_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43110876385063858)
,p_name=>'P78_ROW_ID'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_item_default=>'P_ROW_SEQ.NEXTVAL'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43111254468063858)
,p_name=>'P78_MODE'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(43111717015063859)
,p_name=>'P78_TESTT'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(107497378434591061)
,p_use_cache_before_default=>'NO'
,p_item_default=>' SELECT COUNT(*)  FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' AND  C001 = :FROM_DATE  AND  C002=:TO_DATE ;'
,p_item_default_type=>'SQL_QUERY'
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(43112559640063863)
,p_validation_name=>'check exclusion collection  '
,p_validation_sequence=>10
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'v_chk2 number;',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''EXCLUSION_PERIOD'' ;',
'  SELECT COUNT(*) INTO v_chk2 FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''DATE_DUPLICATE'' ;',
'',
'',
'if nvl(v_chk2 ,0)=0 then',
'  IF  nvl(v_chk,0) = 0 then',
'   return ''Enter complete detail '';',
'',
'  end if;',
'end if;',
'',
'',
'',
'end;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_ERR_TEXT'
,p_validation_condition_type=>'NEVER'
,p_when_button_pressed=>wwv_flow_api.id(43108526336063852)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43114438422063866)
,p_name=>'hide global page'
,p_event_sequence=>10
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43114995334063868)
,p_event_id=>wwv_flow_api.id(43114438422063866)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_HIDE'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_api.id(16180883833290112)
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43115363089063868)
,p_name=>'check from and to date'
,p_event_sequence=>15
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107497378434591061)
,p_triggering_element=>'FROM_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43115899305063869)
,p_event_id=>wwv_flow_api.id(43115363089063868)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P78_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''FROM_DATE_DUP'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''FROM_DATE_DUP'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''FROM_DATE_DUP'' AND C001=:FROM_DATE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P78_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''FROM_DATE_DUP'',',
'                                       P_C001            => :FROM_DATE,',
'                                       P_C002            => :TO_DATE',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'TO_DATE,FROM_DATE'
,p_attribute_03=>'P78_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43116239080063869)
,p_name=>'check from nd to date'
,p_event_sequence=>25
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107497378434591061)
,p_triggering_element=>'TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43116763494063871)
,p_event_id=>wwv_flow_api.id(43116239080063869)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
' DECLARE',
'A NUMBER:=0;',
'B NUMBER:=0;',
'C NUMBER:=0;',
'COLL_SEQ NUMBER:=0;',
'BEGIN',
':P78_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''TO_DATE_DUP'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''TO_DATE_DUP'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''TO_DATE_DUP'' AND C001=:TO_DATE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P78_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''TO_DATE_DUP'',',
'                                       P_C001            => :FROM_DATE,',
'                                       P_C002            => :TO_DATE',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'TO_DATE,FROM_DATE'
,p_attribute_03=>'P78_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43117152291063871)
,p_name=>'ERR MSG FROM AND TO DATE'
,p_event_sequence=>35
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_CHK_DATE'
,p_condition_element=>'P78_CHK_DATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43117650681063871)
,p_event_id=>wwv_flow_api.id(43117152291063871)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'		apex.message.showErrors([',
'   		 {',
'       		 type:       "error",',
'        		location:   [ "page", "inline" ],',
'        		pageItem:   "",',
'        		message:    ''To Date should be greater than From Date'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43118215174063871)
,p_event_id=>wwv_flow_api.id(43117152291063871)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TO_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43118556192063873)
,p_name=>'ERR MSG Duplicate'
,p_event_sequence=>55
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P78_DUPLICATE'
,p_condition_element=>'P78_DUPLICATE'
,p_triggering_condition_type=>'EQUALS'
,p_triggering_expression=>'Y'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43119126882063874)
,p_event_id=>wwv_flow_api.id(43118556192063873)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'apex.message.clearErrors();',
'		apex.message.showErrors([',
'   		 {',
'       		 type:       "error",',
'        		location:   [ "page", "inline" ],',
'        		pageItem:   "",',
'        		message:    ''Duplicate From Date and To Date'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43119629596063874)
,p_event_id=>wwv_flow_api.id(43118556192063873)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'TO_DATE,FROM_DATE'
,p_attribute_01=>'FUNCTION_BODY'
,p_attribute_06=>'null;'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43119978237063874)
,p_name=>'disable button add row'
,p_event_sequence=>75
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
,p_display_when_type=>'VAL_OF_ITEM_IN_COND_EQ_COND2'
,p_display_when_cond=>'P78_MODE'
,p_display_when_cond2=>'A'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43120457690063876)
,p_event_id=>wwv_flow_api.id(43119978237063874)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DISABLE'
,p_affected_elements_type=>'BUTTON'
,p_affected_button_id=>wwv_flow_api.id(43108864706063853)
,p_server_condition_type=>'FUNCTION_BODY'
,p_server_condition_expr1=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'v_chk2 number;',
'begin',
'',
'',
'  SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''EXCLUSION_PERIOD'' ;',
'',
'  IF  nvl(v_chk,0) = 0 then',
'   return TRUE ;',
'   ELSE',
'   RETURN FALSE;',
'  end if;',
'',
'end;'))
,p_server_condition_expr2=>'PLSQL'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(43120918854063876)
,p_name=>'compare date'
,p_event_sequence=>85
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(107497378434591061)
,p_triggering_element=>'FROM_DATE,TO_DATE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(43121345868063876)
,p_event_id=>wwv_flow_api.id(43120918854063876)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'If to_date(:FROM_DATE,''DD-MM-YYYY'') > to_date(:TO_DATE,''DD-MM-YYYY'') then ',
':P78_CHK_DATE := ''Y'';',
'Else ',
':P78_CHK_DATE := ''X'';',
'End if; ',
''))
,p_attribute_02=>'FROM_DATE,TO_DATE,SEQ'
,p_attribute_03=>'P78_CHK_DATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43112129442063859)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(107497378434591061)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Exclusion Period - Save Interactive Grid Data'
,p_attribute_01=>'PLSQL_CODE'
,p_attribute_04=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'V_ID number;',
'v_seq number;',
'begin',
'',
'IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''EXCLUSION_PERIOD'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''EXCLUSION_PERIOD'');',
'END IF;',
'',
'   case :APEX$ROW_STATUS',
'',
'    when ''C'' then',
'            APEX_COLLECTION.ADD_MEMBER(  P_COLLECTION_NAME => ''EXCLUSION_PERIOD'',',
'                                       p_c001            =>  :FROM_DATE,',
'                                       P_C002            =>  :TO_DATE,',
'                                ',
'                                       P_C003           =>  :ROW_ID',
'                                     );',
'    when ''U'' then',
'   ',
'                                    APEX_COLLECTION.UPDATE_MEMBER (',
'                                        p_collection_name => ''EXCLUSION_PERIOD'',',
'                                        p_seq             =>  :SEQ,',
'                                        p_c001            =>  :FROM_DATE,',
'                                        P_C002            => :TO_DATE,',
'                                       ',
'                                        P_C003            => :ROW_ID',
'                                    ',
'                                    );',
'                    ',
'        when ''D'' then',
' ',
'',
'                    IF  APEX_COLLECTION.COLLECTION_EXISTS(''EXCLUSION_PERIOD'') THEN',
'                        APEX_COLLECTION.DELETE_MEMBER(P_COLLECTION_NAME => ''EXCLUSION_PERIOD'', P_SEQ => :SEQ);',
'',
'                    end if;',
'                    ',
'    end case;',
'end;'))
,p_attribute_05=>'Y'
,p_attribute_06=>'N'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43108526336063852)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43113660699063864)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''EXCLUSION_PERIOD'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''EXCLUSION_PERIOD'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''DATE_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''DATE_DUPLICATE'');',
'END IF;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43108197052063852)
,p_process_when_type=>'NEVER'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43113274880063864)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear collection'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'',
'begin',
'',
'',
'   SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''EXCLUSION_PERIOD'' ;',
'',
'',
'  IF  nvl(v_chk,0) = 0 then',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''FROM_DATE_DUP'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''FROM_DATE_DUP'');',
'END IF;',
'',
'IF  APEX_COLLECTION.COLLECTION_EXISTS(''TO_DATE_DUP'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''TO_DATE_DUP'');',
'END IF;',
'',
'',
'   end if;',
'',
'',
'',
'',
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(43108197052063852)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43114035204063866)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'close'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(43112853086063864)
,p_process_sequence=>20
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET TO DATE on add mode'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare ',
'v_chk number;',
'begin',
'SELECT COUNT(*) INTO v_chk FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''EXCLUSION_PERIOD'' ;',
'',
'IF  nvl(v_chk,0) <> 0 then',
'  SELECT MAX(TO_DATE(c002,''DD-MM-YYYY''))+1',
'INTO :P78_TO_DATE',
'from apex_collections ',
'where COLLECTION_NAME=''EXCLUSION_PERIOD'';',
'',
'  end if;',
'',
'end;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_type=>'NEVER'
);
wwv_flow_api.component_end;
end;
/
