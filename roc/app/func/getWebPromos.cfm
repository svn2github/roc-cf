<cfquery name="getWebPromos" datasource="#config.DSN#">
	SELECT id, title, description, promo_image, button_text, button_link
	FROM cms_promos
	ORDER BY id DESC
	LIMIT 5
</cfquery>