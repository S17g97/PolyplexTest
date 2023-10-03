prompt --application/pages/page_00004
begin
--   Manifest
--     PAGE: 00004
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
 p_id=>4
,p_user_interface_id=>wwv_flow_api.id(16197376747491952)
,p_name=>'Menu Basket'
,p_alias=>'MENU-BASKET'
,p_step_title=>'Menu Basket'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'var htmldb_delete_message=''"DELETE_CONFIRM_MSG1"'';',
'var htmldb_ch_message=''"OK_TO_GET_NEXT_PREV_PK_VALUE"'';'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'AKSHAY'
,p_last_upd_yyyymmddhh24miss=>'20220315131407'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138852866359179973)
,p_plug_name=>'Role Master'
,p_region_template_options=>'#DEFAULT#:t-Region--accent1:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>20
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(138864285838180060)
,p_plug_name=>'Assign Menu To Role'
,p_region_template_options=>'#DEFAULT#:t-Region--accent2:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>30
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select VC_COMP_CODE,',
'       VC_ROLE_CODE,',
'       VC_MENU_CODE',
'  from MST_MENU_BASKET',
' where VC_COMP_CODE = :P4_VC_COMP_CODE',
' and VC_ROLE_CODE = :P4_VC_ROLE_CODE'))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P4_VC_COMP_CODE, P4_VC_ROLE_CODE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138865490917180066)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attribute_01=>'Y'
,p_attribute_02=>'Y'
,p_attribute_03=>'N'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138865955557180067)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138866581679180067)
,p_name=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ROWID'
,p_data_type=>'ROWID'
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attribute_01=>'Y'
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_control_break=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138867130899180069)
,p_name=>'VC_COMP_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_COMP_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>80
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P4_VC_COMP_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138867795863180069)
,p_name=>'VC_ROLE_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_ROLE_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attribute_01=>'Y'
,p_filter_is_required=>false
,p_static_id=>'VC_ROLE_CODE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_is_primary_key=>false
,p_default_type=>'ITEM'
,p_default_expression=>'P4_VC_ROLE_CODE'
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(138868320038180070)
,p_name=>'VC_MENU_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'VC_MENU_CODE'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_POPUP_LOV'
,p_heading=>'Menu Option'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'POPUP'
,p_attribute_02=>'FIRST_ROWSET'
,p_attribute_03=>'N'
,p_attribute_04=>'N'
,p_attribute_05=>'N'
,p_attribute_07=>'Menu'
,p_attribute_08=>'300'
,p_is_required=>true
,p_lov_type=>'SQL_QUERY'
,p_lov_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select  rpad('' '',length(vc_menu_code),''->'')||vc_menu_name  as d ,vc_menu_code as r ',
'from V_MENU_LIST',
'WHERE APP_CODE = :P4_APP_CODE ',
'order by vc_menu_code'))
,p_lov_display_extra=>false
,p_lov_display_null=>true
,p_lov_cascade_parent_items=>'VC_COMP_CODE'
,p_ajax_items_to_submit=>'P4_APP_CODE'
,p_ajax_optimize_refresh=>true
,p_filter_is_required=>false
,p_static_id=>'VC_MENU_CODE'
,p_use_as_row_header=>false
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_api.create_interactive_grid(
 p_id=>wwv_flow_api.id(138864787063180061)
,p_internal_uid=>157217654450442386
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>false
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_show_nulls_as=>'-'
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>null
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'NONE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_api.create_ig_report(
 p_id=>wwv_flow_api.id(138865162782180064)
,p_interactive_grid_id=>wwv_flow_api.id(138864787063180061)
,p_static_id=>'22178'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_api.create_ig_report_view(
 p_id=>wwv_flow_api.id(138865260392180064)
,p_report_id=>wwv_flow_api.id(138865162782180064)
,p_view_type=>'GRID'
,p_stretch_columns=>true
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(138866353473180067)
,p_view_id=>wwv_flow_api.id(138865260392180064)
,p_display_seq=>0
,p_column_id=>wwv_flow_api.id(138865955557180067)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(138866994496180068)
,p_view_id=>wwv_flow_api.id(138865260392180064)
,p_display_seq=>1
,p_column_id=>wwv_flow_api.id(138866581679180067)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(138867531721180069)
,p_view_id=>wwv_flow_api.id(138865260392180064)
,p_display_seq=>2
,p_column_id=>wwv_flow_api.id(138867130899180069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(138868169252180070)
,p_view_id=>wwv_flow_api.id(138865260392180064)
,p_display_seq=>3
,p_column_id=>wwv_flow_api.id(138867795863180069)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_ig_report_column(
 p_id=>wwv_flow_api.id(138868790401180070)
,p_view_id=>wwv_flow_api.id(138865260392180064)
,p_display_seq=>4
,p_column_id=>wwv_flow_api.id(138868320038180070)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(226816840696019227)
,p_plug_name=>'Menu Basket'
,p_region_template_options=>'#DEFAULT#:t-Region--accent3:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(16286970926492132)
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select case when connect_by_isleaf = 1 then 0',
'            when level = 1             then 1',
'            else                           -1',
'       end as status, ',
'       level, ',
'       menu_name(VC_MENU_CODE,''N'')   as title, ',
'       null as icon, ',
'     vc_menu_code as value, ',
'       null as tooltip, ',
'       null as link ',
'from MST_MENU_BASKET',
'start with "VC_MAIN_MENU" is null ',
'and vc_role_code=:P4_VC_ROLE_CODE and vc_comp_code=:P4_VC_COMP_CODE',
'connect by prior VC_MENU_CODE = VC_MAIN_MENU and vc_role_code=:P4_VC_ROLE_CODE and vc_comp_code=:P4_VC_COMP_CODE',
'order siblings by "VC_MENU_CODE"'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_JSTREE'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_plug_display_condition_type=>'NEVER'
,p_attribute_02=>'S'
,p_attribute_04=>'N'
,p_attribute_10=>'TITLE'
,p_attribute_11=>'LEVEL'
,p_attribute_12=>'ICON'
,p_attribute_15=>'STATUS'
,p_attribute_20=>'VALUE'
,p_attribute_23=>'LEVEL'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16118494592139377)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'SAVE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CHANGE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16118149023139376)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'GET_PREVIOUS_ROWID'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16222587084492027)
,p_button_image_alt=>'Previous'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-left'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16116935065139375)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'GET_NEXT_ROWID'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(16222587084492027)
,p_button_image_alt=>'Next'
,p_button_position=>'CHANGE'
,p_warn_on_unsaved_changes=>null
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-chevron-right'
,p_button_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16116556232139373)
,p_button_sequence=>60
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'CANCEL'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,84::'
,p_icon_css_classes=>'fa-remove fa-2x'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16126756976139401)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(138852866359179973)
,p_button_name=>'back'
,p_button_static_id=>'btn_1'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Back'
,p_button_position=>'COPY'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:RP,::'
,p_icon_css_classes=>'fa-backward'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16117676487139376)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'CREATE'
,p_button_static_id=>'btn'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'<br>Save'
,p_button_position=>'CREATE'
,p_button_condition=>'P4_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_icon_css_classes=>'fa-save fa-2x'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(16117339733139376)
,p_button_sequence=>50
,p_button_plug_id=>wwv_flow_api.id(138864285838180060)
,p_button_name=>'DELETE'
,p_button_static_id=>'btn'
,p_button_action=>'REDIRECT_URL'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_api.id(16221771101492025)
,p_button_image_alt=>'<br>Delete'
,p_button_position=>'DELETE'
,p_button_redirect_url=>'javascript:apex.confirm(htmldb_delete_message,''DELETE1'');'
,p_button_execute_validations=>'N'
,p_button_condition_type=>'NEVER'
,p_icon_css_classes=>'fa-trash fa-2x'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16106828677139350)
,p_branch_name=>'Go To Page 3'
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
,p_branch_condition_type=>'REQUEST_IN_CONDITION'
,p_branch_condition=>'SAVE,DELETE1,CREATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16106455641139349)
,p_branch_name=>'Go To Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ROWID:&P4_ROWID_NEXT.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16116935065139375)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(16106000143139349)
,p_branch_name=>'Go To Page 4'
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.::P4_ROWID:&P4_ROWID_PREV.'
,p_branch_point=>'BEFORE_COMPUTATION'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(16118149023139376)
,p_branch_sequence=>1
,p_branch_comment=>'This button is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16126291189139400)
,p_name=>'P4_ROWID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_source=>'ROWID'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_protection_level=>'S'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16125892695139395)
,p_name=>'P4_VC_COMP_CODE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_item_default=>'&GLOBAL_PARENT_COMP.'
,p_source=>'VC_COMP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16125548694139395)
,p_name=>'P4_VC_ROLE_CODE'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_item_default=>'SEQ_role.nextval'
,p_item_default_type=>'EXPRESSION'
,p_item_default_language=>'PLSQL'
,p_source=>'VC_ROLE_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16125145169139393)
,p_name=>'P4_VC_ROLE_NAME'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Role Name'
,p_source=>'VC_ROLE_NAME'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>30
,p_field_template=>wwv_flow_api.id(16223123221492029)
,p_item_template_options=>'#DEFAULT#'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16124692327139393)
,p_name=>'P4_DT_WEF_DATE'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_source=>'DT_WEF_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16124278630139392)
,p_name=>'P4_DT_WET_DATE'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_source=>'DT_WET_DATE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16123886376139392)
,p_name=>'P4_ROWID_NEXT'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16123479175139389)
,p_name=>'P4_ROWID_PREV'
,p_item_sequence=>80
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16123134213139389)
,p_name=>'P4_ROWID_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_tag_attributes=>'class="fielddata"'
,p_display_when_type=>'NEVER'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLAIN'
,p_item_comment=>'This item is needed for Get Next or Previous Primary Key Value process.'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16122763331139389)
,p_name=>'P4_APP_CODE'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_use_cache_before_default=>'NO'
,p_item_default=>'S'
,p_source=>'VC_APP_CODE'
,p_source_type=>'DB_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(16122271737139389)
,p_name=>'P4_DUPLICATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_api.id(138852866359179973)
,p_display_as=>'NATIVE_HIDDEN'
,p_encrypt_session_state_yn=>'N'
,p_attribute_01=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16114504788139367)
,p_validation_name=>'Role Name'
,p_validation_sequence=>10
,p_validation=>'P4_VC_ROLE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Role Name Can not be null'
,p_when_button_pressed=>wwv_flow_api.id(16117676487139376)
,p_associated_item=>wwv_flow_api.id(16125145169139393)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16114146019139367)
,p_validation_name=>'Role Name_1'
,p_validation_sequence=>20
,p_validation=>'P4_VC_ROLE_NAME'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Role Name Can not be null'
,p_when_button_pressed=>wwv_flow_api.id(16118494592139377)
,p_associated_item=>wwv_flow_api.id(16125145169139393)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16116028977139372)
,p_tabular_form_region_id=>wwv_flow_api.id(138864285838180060)
,p_validation_name=>'Menu Name'
,p_validation_sequence=>30
,p_validation=>'VC_MENU_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Menu'
,p_when_button_pressed=>wwv_flow_api.id(16117676487139376)
,p_associated_column=>'VC_MENU_CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(16115647907139372)
,p_tabular_form_region_id=>wwv_flow_api.id(138864285838180060)
,p_validation_name=>'Menu Name_1'
,p_validation_sequence=>40
,p_validation=>'VC_MENU_CODE'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>'Select Menu'
,p_when_button_pressed=>wwv_flow_api.id(16118494592139377)
,p_associated_column=>'VC_MENU_CODE'
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16111032488139360)
,p_name=>'refresh'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_APP_CODE'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16110472835139357)
,p_event_id=>wwv_flow_api.id(16111032488139360)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_MENU_CODE'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16110146158139357)
,p_name=>'Collection'
,p_event_sequence=>20
,p_triggering_element_type=>'COLUMN'
,p_triggering_region_id=>wwv_flow_api.id(138864285838180060)
,p_triggering_element=>'VC_MENU_CODE'
,p_condition_element_type=>'COLUMN'
,p_condition_element=>'VC_MENU_CODE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16109647508139355)
,p_event_id=>wwv_flow_api.id(16110146158139357)
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
':P4_DUPLICATE:=NULL;',
'    IF NOT APEX_COLLECTION.COLLECTION_EXISTS(''MENU_DUPLICATE'') THEN',
'    APEX_COLLECTION.CREATE_COLLECTION(''MENU_DUPLICATE'');',
'    END IF;',
'    BEGIN',
'        SELECT COUNT(*) INTO A FROM APEX_COLLECTIONS WHERE COLLECTION_NAME=''MENU_DUPLICATE'' AND C001=:VC_MENU_CODE;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            NULL;',
'    END;',
'    IF(A>0) THEN',
'    ',
'            :P4_DUPLICATE:=''Y'';',
'    ',
'    ELSE',
'       ',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''MENU_DUPLICATE'',',
'                                       P_C001            => :VC_MENU_CODE,',
'                                       P_C002            => :VC_ROLE_CODE',
'                                     ',
'                                       );',
'        END IF;',
'',
'END;',
''))
,p_attribute_02=>'VC_MENU_CODE,VC_ROLE_CODE'
,p_attribute_03=>'P4_DUPLICATE'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16109250302139355)
,p_name=>'duplicate_msg'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P4_DUPLICATE'
,p_condition_element=>'P4_DUPLICATE'
,p_triggering_condition_type=>'NOT_NULL'
,p_bind_type=>'bind'
,p_bind_event_type=>'change'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16108676300139354)
,p_event_id=>wwv_flow_api.id(16109250302139355)
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
'        		message:    ''Duplicate Menu'',',
'        		unsafe:     false',
'    		}',
'		]);',
'setTimeout(function(){ apex.message.clearErrors(); }, 6000);'))
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16108242037139354)
,p_event_id=>wwv_flow_api.id(16109250302139355)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'COLUMN'
,p_affected_elements=>'VC_MENU_CODE'
,p_attribute_01=>'PLSQL_EXPRESSION'
,p_attribute_04=>'null'
,p_attribute_08=>'Y'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(16107822712139352)
,p_name=>'ON CANCEL'
,p_event_sequence=>40
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(16116556232139373)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(16107342434139352)
,p_event_id=>wwv_flow_api.id(16107822712139352)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS(''MENU_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''MENU_DUPLICATE'');',
'END IF;',
''))
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16112655080139365)
,p_process_sequence=>10
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_FETCH'
,p_process_name=>'Fetch Row from MST_ROLE'
,p_attribute_02=>'MST_ROLE'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16111422439139362)
,p_process_sequence=>20
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_FORM_PAGINATION'
,p_process_name=>'Get Next or Previous Primary Key Value'
,p_attribute_02=>'MST_ROLE'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_07=>'VC_ROLE_CODE'
,p_attribute_09=>'P4_ROWID_NEXT'
,p_attribute_10=>'P4_ROWID_PREV'
,p_attribute_13=>'P4_ROWID_COUNT'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16112971699139366)
,p_process_sequence=>30
,p_process_point=>'AFTER_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'GET_COLLEC_INFO'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'l_query VARCHAR2(2000);',
'cursor c1 is SELECT VC_MENU_CODE,VC_ROLE_CODE',
'  FROM MST_MENU_BASKET ',
' WHERE VC_COMP_CODE = :P4_VC_COMP_CODE',
'   AND VC_ROLE_CODE = :P4_VC_ROLE_CODE;',
'BEGIN',
'IF (:P4_VC_ROLE_CODE IS NOT NULL) THEN',
'',
'',
'IF APEX_COLLECTION.COLLECTION_EXISTS(''MENU_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''MENU_DUPLICATE'');',
'END IF;',
'IF NOT  APEX_COLLECTION.COLLECTION_EXISTS(''MENU_DUPLICATE'') THEN',
'    APEX_COLLECTION.Create_COLLECTION(''MENU_DUPLICATE'');',
'END IF;',
'  FOR I IN C1 LOOP',
'            APEX_COLLECTION.ADD_MEMBER(P_COLLECTION_NAME => ''MENU_DUPLICATE'',',
'                                       P_C001            => I.VC_MENU_CODE,',
'                                       P_C002            => I.VC_ROLE_CODE',
'                                     ',
'                                       );',
'   END LOOP;',
'',
'END IF;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16112192800139365)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_FORM_PROCESS'
,p_process_name=>'Process Row of MST_ROLE'
,p_attribute_02=>'MST_ROLE'
,p_attribute_03=>'P4_ROWID'
,p_attribute_04=>'ROWID'
,p_attribute_11=>'I:U:D'
,p_attribute_12=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16115303519139370)
,p_process_sequence=>30
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(138864285838180060)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>' - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16111849490139365)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_SESSION_STATE'
,p_process_name=>'reset page'
,p_attribute_01=>'CLEAR_CACHE_CURRENT_PAGE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(16117339733139376)
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16113809254139367)
,p_process_sequence=>50
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'delete'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'delete from ebizapp.mst_role where vc_comp_code = :global_comp_code and vc_role_code = :P4_VC_ROLE_CODE;',
'delete from ebizapp.MST_APP_ROLES_COMP where vc_comp_code = :global_comp_code and ch_role_code = :P4_VC_ROLE_CODE;',
'delete from ebizapp.MST_MENU_BASKET where vc_comp_code = :global_comp_code and vc_role_code = :P4_VC_ROLE_CODE;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'DELETE1'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_process_success_message=>'Action Processed.'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(16113434970139366)
,p_process_sequence=>60
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'clear_collec'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF APEX_COLLECTION.COLLECTION_EXISTS(''MENU_DUPLICATE'') THEN',
'    APEX_COLLECTION.DELETE_COLLECTION(''MENU_DUPLICATE'');',
'END IF;',
''))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.component_end;
end;
/
