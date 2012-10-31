<cfif isdefined('edit')>
<cfquery name = "SkinName" datasource = "#config.DSN#">
	SELECT *
	FROM cms_skins
	WHERE ID = '#form.skinId#'
	LIMIT 1
</cfquery>

<cfquery name = "ChangeSkin" datasource = "#config.DSN#">
	UPDATE cms_widgets
	SET skin = '#form.skinId#'
	WHERE ID = '#form.widgetId#'
	LIMIT 1
</cfquery>

<cfheader name="X-JSON" value='{"cssClass":"w_skin_#SkinName.name#","type":"widget","id":"#form.widgetId#"}'>
SUCCESS
<cfelseif isdefined('delete')>
<cfquery name = "WhatWidget" datasource = "#config.DSN#">
	SELECT *
	FROM cms_widgets
	WHERE ID = '#widgetId#'
	LIMIT 1
</cfquery>

<cfquery name = "WhatHome" datasource = "#config.DSN#">
	SELECT *
	FROM cms_homes
	WHERE user = '#session.userid#'
	LIMIT 1
</cfquery>

<cfquery name="DeleteStickie" datasource = "#config.DSN#">
	DELETE FROM cms_widgets
	WHERE ID = '#widgetId#'
	LIMIT 1
</cfquery>
SUCCESS
</cfif>