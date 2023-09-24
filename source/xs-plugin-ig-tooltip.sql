-- =============================================
procedure tooltip_render (
    p_item     in apex_plugin.t_item
    , p_plugin in apex_plugin.t_plugin
    , p_param  in apex_plugin.t_item_render_param
    , p_result in out nocopy apex_plugin.t_item_render_result
) as
begin
	-- TODO: add attributes to change tooltip colour and app as params to js call

    -- debug
    if apex_application.g_debug then
        apex_plugin_util.debug_item_render (
            p_plugin => p_plugin
            , p_item => p_item
            , p_param => p_param
        );
    end if;

	-- TODO: if the setting is not read-only, raise an error

	-- kick off process to create tooltip elements
    apex_javascript.add_onload_code(
        apex_string.format(
			'xsPluginIgTooltip("%0");'
            , p_item.name
        )
    );

end tooltip_render;

-- =============================================
procedure tooltip_metadata (
  p_item   in            apex_plugin.t_item,
  p_plugin in            apex_plugin.t_plugin,
  p_param  in            apex_plugin.t_item_meta_data_param,
  p_result in out nocopy apex_plugin.t_item_meta_data_result )
is
begin
  p_result.escape_output := false;
end tooltip_metadata;