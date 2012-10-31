<cfif isdefined('add')>
<cfquery name = "ProductInfo" datasource = "#config.DSN#">
	SELECT *
	FROM cms_products
	WHERE ID = '#form.selectedStickerId#'
	LIMIT 1
</cfquery>

<cfquery name = "StickerID" datasource = "#config.DSN#">
	SELECT ID
	FROM cms_stickers
	WHERE ID = (SELECT MAX(ID) FROM cms_stickers)
	LIMIT 1
</cfquery>
<cfquery name = "StickiesID" datasource = "#config.DSN#">
	SELECT ID
	FROM cms_stickies
	WHERE ID = (SELECT MAX(ID) FROM cms_stickies)
	LIMIT 1
</cfquery>
<cfif StickerID.recordcount or StickiesID.recordcount>
	<cfif StickiesID.ID gt StickerID.ID>
		<cfset NewID = StickiesID.ID+1>
	<cfelseif StickerID.ID gt StickiesID.ID>
		<cfset NewID = StickerID.ID+1>
	<cfelseif StickerID.ID is StickiesID.ID>
		<cfset NewID = StickerID.ID+1>
	<cfelse>
		<cfset NewID = 1>
	</cfif>
<cfelse>
	<cfset NewID = 1>
</cfif>

<cfquery name="MakeSticker" datasource = "#config.DSN#">
	INSERT INTO cms_stickers (ID, sX, sY, sZ, sticker, user)
	VALUES ('#NewID#','20','30','1','#ProductInfo.name#','#session.userid#')
</cfquery>

<cfquery name="DeleteFromInventory" datasource = "#config.DSN#">
	DELETE FROM cms_inventory
	WHERE user = '#session.userid#'
	AND sticker = '#ProductInfo.name#'
	LIMIT 1
</cfquery>

<cfheader name="X-JSON" value='["#NewID#"]'>
<cfoutput>
	<div class="movable sticker s_#ProductInfo.name#" style="left: 20px; top: 30px; z-index: 100" id="sticker-#NewID#">
		<img src="../images/myhabbo/icon_edit.gif" width="19" height="18" class="edit-button" id="sticker-#NewID#-edit" />
		<script language="JavaScript" type="text/javascript">
			Event.observe("sticker-#NewID#-edit", "click", function(e) { openEditMenu(e, #NewID#, "sticker", "sticker-#NewID#-edit"
			); }, false);
		</script>
	</div>
</cfoutput>
<cfelseif isdefined('delete')>
	<cfquery name = "StickersID" datasource = "#config.DSN#">
		SELECT *
		FROM cms_stickers
		WHERE ID = '#stickerId#'
		LIMIT 1
	</cfquery>
	
	<cfquery name = "InventoryID" datasource = "#config.DSN#">
		SELECT ID
		FROM cms_inventory
		WHERE ID = (SELECT MAX(ID) FROM cms_inventory)
		LIMIT 1
	</cfquery>
	<cfoutput query="InventoryID">
		<cfset NewID = ID+1>
	</cfoutput>
	<cfif InventoryID.recordcount>
		<cfquery name="MakeSticker" datasource = "#config.DSN#">
			INSERT INTO cms_inventory (ID, sticker, user, type)
			VALUES ('#NewID#','#StickersID.sticker#', '#session.userid#','sticker')
		</cfquery>
	<cfelse>
		<cfset NewID = 1>
		<cfquery name="MakeSticker" datasource = "#config.DSN#">
			INSERT INTO cms_inventory (ID, sticker, user, type)
			VALUES ('1','#StickersID.sticker#', '#session.userid#','sticker')
		</cfquery>
	</cfif>
	
	<cfquery name="DeleteFromInventory" datasource = "#config.DSN#">
		DELETE FROM cms_stickers 
		WHERE ID = '#stickerId#'
		LIMIT 1
	</cfquery>
</cfif>