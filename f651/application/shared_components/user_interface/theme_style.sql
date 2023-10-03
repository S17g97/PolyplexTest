prompt --application/shared_components/user_interface/theme_style
begin
--   Manifest
--     THEME STYLE: 651
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.10.15'
,p_release=>'21.2.0'
,p_default_workspace_id=>4067168939102942
,p_default_application_id=>651
,p_default_id_offset=>18352867387262325
,p_default_owner=>'EBIZAPEXAPP'
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16220114446492014)
,p_theme_id=>42
,p_name=>'Redwood Light'
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#IMAGE_PREFIX#libraries/oracle-fonts/oraclesans-apex#MIN#.css?v=#APEX_VERSION#',
'#THEME_IMAGES#css/Redwood#MIN#.css?v=#APEX_VERSION#'))
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Redwood-Theme.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Redwood-Theme#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2596426436825065489
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16219895968492011)
,p_theme_id=>42
,p_name=>'Vita'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>2719875314571594493
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16219667720492011)
,p_theme_id=>42
,p_name=>'Vita - Dark'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Dark.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Dark#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3543348412015319650
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16219468062492011)
,p_theme_id=>42
,p_name=>'Vita - Red'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Red.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Red#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>1938457712423918173
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16219344512492011)
,p_theme_id=>42
,p_name=>'Vita - Slate'
,p_is_current=>false
,p_is_public=>true
,p_is_accessible=>false
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita-Slate.less'
,p_theme_roller_output_file_url=>'#THEME_IMAGES#css/Vita-Slate#MIN#.css?v=#APEX_VERSION#'
,p_theme_roller_read_only=>true
,p_reference_id=>3291983347983194966
);
wwv_flow_api.create_theme_style(
 p_id=>wwv_flow_api.id(16147365717376766)
,p_theme_id=>42
,p_name=>'Vita (copy_1)'
,p_is_current=>true
,p_is_public=>true
,p_is_accessible=>true
,p_theme_roller_input_file_urls=>'#THEME_IMAGES#less/theme/Vita.less'
,p_theme_roller_config=>'{"classes":[],"vars":{"@g_Region-BG":"#ffffff","@g_Region-FG":"#262626","@g_Container-BorderRadius":"4px","@g_Button-BorderRadius":"4px","@g_Form-BorderRadius":"4px"},"customCSS":"\nspan#subdiv {\n    margin-right: 10px;\n    font-size: 14px;\n    li'
||'ne-height: 20px;\n}\nselect#P0_SELECTION {\n    margin-top: -2px;\n\n}\n\n\nli.t-NavigationBar-item.COMP_HDR {\n    margin-top: 3px;\n}\n\n\n.t-Form-fieldContainer--floatingLabel .apex-item-display-only {\nBACKGROUND-COLOR: WHITE !important;\n}\n\n.t'
||'-Region-body {\n    BACKGROUND-COLOR: LIGHTBLUE !important;\n}\n\n .a-IRR-table tr:nth-child(odd) td {\n    background-color:lavender ;\n    \n}\n\n .a-IRR-table tr:nth-child(even) td {\n    background-color: lightblue;  \n}\n\n.t-Button .fa-lg,\n\n.'
||'t-Button .fa-2x {\n\n --a-button-icon-size: 32px;\nmargin-bottom: 6px;\n}\n\n\n#btn{\n    background: transparent;\n    color: black;\n    box-shadow: none;\n    border-color: transparent;\n\n}\n#btn1{\n    background: transparent;\n    color: black;'
||'\n    box-shadow: none;\n    border-color: transparent;\n\n}\n\n#btn_cancel{\n    background: transparent;\n    color: black;\n    box-shadow: none;\n    border-color: transparent;\n\n}\n\n#btn_save{\n    background: transparent;\n    color: black;\n'
||'    box-shadow: none;\n    border-color: transparent;\n\n}\n\n#btn_fwrd{\n    background: transparent;\n    color: black;\n    box-shadow: none;\n    border-color: transparent;\n\n}\n\n.t-Region-body {\n       padding-top: 0px !IMPORTANT    ;\n    pa'
||'dding-bottom: 0px !IMPORTANT  ;\n}\n\n.t-Body-contentInner {\n    border-bottom-right-radius: 20px;\n    border-bottom-left-radius: 20px;\n    padding: 1.5px;\n}\n\n.ui-dialog .a-GV-table td {\n\twhite-space: normal !important;\n}\n\ninput[readonly=\'
||'"true\"] {\n  background-color: #ccc;\n}","useCustomLess":"N"}'
,p_theme_roller_output_file_url=>'#THEME_DB_FILES#2205501669885559.css'
,p_theme_roller_read_only=>false
);
wwv_flow_api.component_end;
end;
/
