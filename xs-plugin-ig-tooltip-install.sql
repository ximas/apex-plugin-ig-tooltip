prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2023.04.28'
,p_release=>'23.1.3'
,p_default_workspace_id=>5419239030912929186
,p_default_application_id=>2254
,p_default_id_offset=>0
,p_default_owner=>'WKSP_SAMITEST'
);
end;
/
 
prompt APPLICATION 2254 - Project Tasks
--
-- Application Export:
--   Application:     2254
--   Name:            Project Tasks
--   Date and Time:   12:08 Sunday September 24, 2023
--   Exported By:     AZZI.A.SAMI@GMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 59595807422532299708
--   Manifest End
--   Version:         23.1.3
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/item_type/tooltip
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(59595807422532299708)
,p_plugin_type=>'ITEM TYPE'
,p_name=>'TOOLTIP'
,p_display_name=>'XS ig-tooltip'
,p_supported_component_types=>'APEX_APPL_PAGE_IG_COLUMNS'
,p_javascript_file_urls=>'#PLUGIN_FILES#tooltip.min.js'
,p_css_file_urls=>'#PLUGIN_FILES#tooltip.min.css'
,p_plsql_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'-- =============================================',
'procedure tooltip_render (',
'    p_item     in apex_plugin.t_item',
'    , p_plugin in apex_plugin.t_plugin',
'    , p_param  in apex_plugin.t_item_render_param',
'    , p_result in out nocopy apex_plugin.t_item_render_result',
') as',
'begin',
'	-- TODO: add attributes to change tooltip colour and app as params to js call',
'',
'    -- debug',
'    if apex_application.g_debug then',
'        apex_plugin_util.debug_item_render (',
'            p_plugin => p_plugin',
'            , p_item => p_item',
'            , p_param => p_param',
'        );',
'    end if;',
'',
'	-- TODO: if the setting is not read-only, raise an error',
'',
'	-- kick off process to create tooltip elements',
'    apex_javascript.add_onload_code(',
'        apex_string.format(',
'			''xsPluginIgTooltip("%0");''',
'            , p_item.name',
'        )',
'    );',
'',
'end tooltip_render;',
'',
'-- =============================================',
'procedure tooltip_metadata (',
'  p_item   in            apex_plugin.t_item,',
'  p_plugin in            apex_plugin.t_plugin,',
'  p_param  in            apex_plugin.t_item_meta_data_param,',
'  p_result in out nocopy apex_plugin.t_item_meta_data_result )',
'is',
'begin',
'  p_result.escape_output := false;',
'end tooltip_metadata;'))
,p_default_escape_mode=>'HTML'
,p_api_version=>2
,p_render_function=>'tooltip_render'
,p_meta_data_function=>'tooltip_metadata'
,p_standard_attributes=>'VISIBLE:SESSION_STATE:READONLY:SOURCE'
,p_substitute_attributes=>true
,p_subscribe_plugin_settings=>true
,p_version_identifier=>'1.0'
,p_files_version=>133
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E7374207873506C7567696E4967546F6F6C746970203D20286974656D496429203D3E207B0A09636F6E73742072656E646572203D202876616C756529203D3E207B0A09096C657420696E6E6572203D2076616C75652C206F75746572203D207661';
wwv_flow_imp.g_varchar2_table(2) := '6C75653B0A0A09092F2F20544F444F3A20637573746F6D2073706C69742076616C7565206174747269627574650A09096966202876616C75652E696E636C7564657328273A3A272929207B0A0909096C65742063656C6C44617461203D2076616C75652E';
wwv_flow_imp.g_varchar2_table(3) := '73706C697428273A3A27293B0A0909096F75746572203D2063656C6C446174615B305D3B0A090909696E6E6572203D2063656C6C446174615B315D3B0A09097D0A0A09096C65742068746D6C203D20603C6469763E3C7370616E20636C6173733D227873';
wwv_flow_imp.g_varchar2_table(4) := '2D706C7567696E2D69672D746F6F6C7469702D6F75746572223E247B6F757465727D3C7370616E20636C6173733D2278732D706C7567696E2D69672D746F6F6C7469702D696E6E6572223E247B696E6E65727D3C2F7370616E3E3C2F7370616E3E3C2F64';
wwv_flow_imp.g_varchar2_table(5) := '69763E603B0A090972657475726E2068746D6C3B0A097D0A0A09617065782E6974656D2E637265617465286974656D49642C207B0A0909646973706C617956616C7565466F722876616C756529207B0A09090972657475726E2072656E6465722876616C';
wwv_flow_imp.g_varchar2_table(6) := '7565290A09097D0A097D293B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59617051497531792160)
,p_plugin_id=>wwv_flow_imp.id(59595807422532299708)
,p_file_name=>'tooltip.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '3A726F6F74207B0A20202D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E643A20233432343234323B0A7D0A0A0A2E78732D706C7567696E2D69672D746F6F6C7469702D6F75746572207B0A09746578742D6465636F7261';
wwv_flow_imp.g_varchar2_table(2) := '74696F6E3A20756E6465726C696E653B0A09757365722D73656C6563743A206E6F6E653B0A7D0A0A2E78732D706C7567696E2D69672D746F6F6C7469702D696E6E6572207B0A097669736962696C6974793A2068696464656E3B0A09706F736974696F6E';
wwv_flow_imp.g_varchar2_table(3) := '3A206162736F6C7574653B0A097A2D696E6465783A20313B0A096261636B67726F756E642D636F6C6F723A20766172282D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E64293B0A09636F6C6F723A2077686974653B0A09';
wwv_flow_imp.g_varchar2_table(4) := '70616464696E673A203270783B0A09626F726465722D7261646975733A203270783B0A096D617267696E2D6C6566743A20313070783B0A09746F703A203670783B0A7D0A0A2E78732D706C7567696E2D69672D746F6F6C7469702D6F757465723A686F76';
wwv_flow_imp.g_varchar2_table(5) := '6572202E78732D706C7567696E2D69672D746F6F6C7469702D696E6E6572207B0A097669736962696C6974793A2076697369626C653B0A7D0A0A2E612D47562D7461626C652074643A686173282E78732D706C7567696E2D69672D746F6F6C7469702D6F';
wwv_flow_imp.g_varchar2_table(6) := '75746572297B0A096F766572666C6F773A2076697369626C653B0A7D0A0A2E612D47562D63656C6C2E69732D726561646F6E6C793A686173282E78732D706C7567696E2D69672D746F6F6C7469702D6F7574657229207B0A202020206261636B67726F75';
wwv_flow_imp.g_varchar2_table(7) := '6E642D636F6C6F723A20756E7365742021696D706F7274616E743B0A20202020636F6C6F723A20756E7365742021696D706F7274616E743B0A7D0A0A2E78732D706C7567696E2D69672D746F6F6C7469702D696E6E65723A3A6166746572207B0A202063';
wwv_flow_imp.g_varchar2_table(8) := '6F6E74656E743A202220223B0A2020706F736974696F6E3A206162736F6C7574653B0A2020746F703A203530253B0A202072696768743A20313030253B0A20206D617267696E2D746F703A202D3570783B0A2020626F726465722D77696474683A203570';
wwv_flow_imp.g_varchar2_table(9) := '783B0A2020626F726465722D7374796C653A20736F6C69643B0A2020626F726465722D636F6C6F723A207472616E73706172656E7420766172282D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E6429207472616E737061';
wwv_flow_imp.g_varchar2_table(10) := '72656E74207472616E73706172656E743B0A7D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(59619250264149103145)
,p_plugin_id=>wwv_flow_imp.id(59595807422532299708)
,p_file_name=>'tooltip.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '3A726F6F747B2D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E643A233432343234327D2E78732D706C7567696E2D69672D746F6F6C7469702D6F757465727B746578742D6465636F726174696F6E3A756E6465726C696E';
wwv_flow_imp.g_varchar2_table(2) := '653B757365722D73656C6563743A6E6F6E657D2E78732D706C7567696E2D69672D746F6F6C7469702D696E6E65727B7669736962696C6974793A68696464656E3B706F736974696F6E3A6162736F6C7574653B7A2D696E6465783A313B6261636B67726F';
wwv_flow_imp.g_varchar2_table(3) := '756E642D636F6C6F723A766172282D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E64293B636F6C6F723A236666663B70616464696E673A3270783B626F726465722D7261646975733A3270783B6D617267696E2D6C6566';
wwv_flow_imp.g_varchar2_table(4) := '743A313070783B746F703A3670787D2E78732D706C7567696E2D69672D746F6F6C7469702D6F757465723A686F766572202E78732D706C7567696E2D69672D746F6F6C7469702D696E6E65727B7669736962696C6974793A76697369626C657D2E612D47';
wwv_flow_imp.g_varchar2_table(5) := '562D7461626C652074643A686173282E78732D706C7567696E2D69672D746F6F6C7469702D6F75746572297B6F766572666C6F773A76697369626C657D2E612D47562D63656C6C2E69732D726561646F6E6C793A686173282E78732D706C7567696E2D69';
wwv_flow_imp.g_varchar2_table(6) := '672D746F6F6C7469702D6F75746572297B6261636B67726F756E642D636F6C6F723A756E73657421696D706F7274616E743B636F6C6F723A756E73657421696D706F7274616E747D2E78732D706C7567696E2D69672D746F6F6C7469702D696E6E65723A';
wwv_flow_imp.g_varchar2_table(7) := '3A61667465727B636F6E74656E743A2220223B706F736974696F6E3A6162736F6C7574653B746F703A3530253B72696768743A313030253B6D617267696E2D746F703A2D3570783B626F726465722D77696474683A3570783B626F726465722D7374796C';
wwv_flow_imp.g_varchar2_table(8) := '653A736F6C69643B626F726465722D636F6C6F723A7472616E73706172656E7420766172282D2D78732D706C7567696E2D69672D746F6F6C7469702D6261636B67726F756E6429207472616E73706172656E74207472616E73706172656E747D';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(60573819346012137201)
,p_plugin_id=>wwv_flow_imp.id(59595807422532299708)
,p_file_name=>'tooltip.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '636F6E7374207873506C7567696E4967546F6F6C7469703D693D3E7B617065782E6974656D2E63726561746528692C7B646973706C617956616C7565466F723A693D3E28693D3E7B6C657420733D692C6C3D693B696628692E696E636C7564657328223A';
wwv_flow_imp.g_varchar2_table(2) := '3A2229297B6C657420743D692E73706C697428223A3A22293B6C3D745B305D2C733D745B315D7D72657475726E603C6469763E3C7370616E20636C6173733D2278732D706C7567696E2D69672D746F6F6C7469702D6F75746572223E247B6C7D3C737061';
wwv_flow_imp.g_varchar2_table(3) := '6E20636C6173733D2278732D706C7567696E2D69672D746F6F6C7469702D696E6E6572223E247B737D3C2F7370616E3E3C2F7370616E3E3C2F6469763E607D292869297D297D3B';
null;
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(60574741837400169574)
,p_plugin_id=>wwv_flow_imp.id(59595807422532299708)
,p_file_name=>'tooltip.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false));
commit;
end;
/
set verify on feedback on define on
prompt  ...done
