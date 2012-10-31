<cfif IsDefined('stickienotes')>
	<cfset stickiecount = #Replace(stickienotes, ",", ".", "ALL")# />
	<cfset stickiecount = #Replace(stickiecount, "/", ",", "ALL")# />
	<cfset stickiecount = #ListLen(stickiecount)# />

	<cfloop index="i" from="1" to="#stickiecount#">
		<cfset Thisstickie = listgetat(#stickienotes#, #i#, "/") />
		<cfset StickyID = listgetat(#Thisstickie#, 1, ":") />
		<cfset StickyX = listgetat(#Thisstickie#, 1, ",") />
		<cfset StickyX = listgetat(#StickyX#, 2, ":") />
		<cfset StickyY = listgetat(#Thisstickie#, 2, ",") />
		<cfset StickyZ = listgetat(#Thisstickie#, 3, ",") />
		<cfset StickyZ = listgetat(#StickyZ#, 1, "/") />
	
		<cfoutput>
			StickyID: #StickyID#
			Sticky X: #StickyX#
			Sticky Y: #StickyY#
			Sticky Z: #StickyZ#
		</cfoutput>
		
		<cfquery name="updatewidget" datasource="#config.DSN#">
			UPDATE cms_stickies
			SET sY = '#StickyY#', sZ = '#StickyZ#', sX = '#StickyX#'
			WHERE ID = '#StickyID#'
			LIMIT 1
		</cfquery>
	</cfloop>
</cfif>

<cfif IsDefined('widgets')>
	<cfset widgetscount = #Replace(widgets, ",", ".", "ALL")# />
	<cfset widgetscount = #Replace(widgetscount, "/", ",", "ALL")# />
	<cfset widgetscount = #ListLen(widgetscount)# />

	<cfloop index="i" from="1" to="#widgetscount#">
		<cfset Thiswidget = listgetat(#widgets#, #i#, "/") />
		<cfset ThiswidgetID = listgetat(#Thiswidget#, 1, ":") />
		<cfset ThiswidgetX = listgetat(#Thiswidget#, 1, ",") />
		<cfset ThiswidgetX = listgetat(#ThiswidgetX#, 2, ":") />
		<cfset ThiswidgetY = listgetat(#Thiswidget#, 2, ",") />
		<cfset ThiswidgetZ = listgetat(#Thiswidget#, 3, ",") />
		<cfset ThiswidgetZ = listgetat(#ThiswidgetZ#, 1, "/") />
		
		<cfoutput>
			widgetID: #ThiswidgetID#
			widgetX: #ThiswidgetX#
			widgetY: #ThiswidgetY#
			widgetZ: #ThiswidgetZ#
		</cfoutput>
	
		<cfquery name="updatewidget" datasource="#config.DSN#">
			UPDATE cms_widgets
			SET wY = '#ThiswidgetY#', wZ = '#ThiswidgetZ#', wX = '#ThiswidgetX#'
			WHERE ID = '#ThiswidgetID#'
			LIMIT 1
		</cfquery>
	</cfloop>
</cfif>

<cfif IsDefined('stickers')>

	<cfset stickercount = #Replace(stickers, ",", ".", "ALL")# />
	<cfset stickercount = #Replace(stickercount, "/", ",", "ALL")# />
	<cfset stickercount = #ListLen(stickercount)# />

	<cfloop index="i" from="1" to="#stickercount#">
		<cfset Thissticker = listgetat(#stickers#, #i#, "/") />
		<cfset ThisstickerID = listgetat(#Thissticker#, 1, ":") />
		<cfset ThisstickerX = listgetat(#Thissticker#, 1, ",") />
		<cfset ThisstickerX = listgetat(#ThisstickerX#, 2, ":") />
		<cfset ThisstickerY = listgetat(#Thissticker#, 2, ",") />
		<cfset ThisstickerZ = listgetat(#Thissticker#, 3, ",") />
		<cfset ThisstickerZ = listgetat(#ThisstickerZ#, 1, "/") />
		
		<cfoutput>
			ThisstickerID: #ThisstickerID#
			ThisstickerX: #ThisstickerX#
			ThisstickerY: #ThisstickerY#
			ThisstickerZ: #ThisstickerZ#
		</cfoutput>
	
		<cfquery name="updatewidget" datasource="#config.DSN#">
			UPDATE cms_stickers
			SET sY = '#ThisstickerY#', sZ = '#ThisstickerZ#', sX = '#ThisstickerX#'
			WHERE ID = '#ThisstickerID#'
			LIMIT 1
		</cfquery>
	</cfloop>
</cfif>

<cfif IsDefined('background')>
	<cfquery name = "FindOldBG" datasource = "#config.DSN#">
		SELECT *
		FROM cms_homes
		WHERE user = '#session.username#'
		LIMIT 1
	</cfquery>
	<cfset OldBG = FindOldBG.background /><!-- prelen -->
	<cfset NameLen = Len(OldBG) ><!-- namelen -->
	<cfset NameLen = NameLen-5 ><!-- namelen -->
	<cfset OldBG = Mid(OldBG, 6, NameLen) /><!-- donelen -->

	<cfset NewBGG = listgetat(#background#, 2, ":") />
	<cfset NewBG = Mid(NewBGG, 6, Len(background)) />

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
			VALUES ('#NewID#','#OldBG#', '#session.username#','background')
		</cfquery>
		<cfquery name="DeleteFromInventory" datasource = "#config.DSN#">
			DELETE FROM cms_inventory
			WHERE user = '#session.username#'
			AND sticker = '#NewBG#'
			LIMIT 1
		</cfquery>
	<cfelse>
		<cfset NewID = 1>
		<cfquery name="MakeSticker" datasource = "#config.DSN#">
			INSERT INTO cms_inventory (ID, sticker, user, type)
			VALUES ('1','#OldBG#', '#session.username#','background')
		</cfquery>
		<cfquery name="DeleteFromInventory" datasource = "#config.DSN#">
			DELETE FROM cms_inventory
			WHERE user = '#session.username#'
			AND sticker = '#NewBG#'
			LIMIT 1
		</cfquery>
	</cfif>

	<cfquery name="AddNewBG" datasource="#config.DSN#">
		UPDATE cms_homes
		SET background = '#NewBGG#'
		WHERE user = '#session.username#'
		LIMIT 1
	</cfquery>
</cfif>

<cfoutput>
	<script language="JavaScript" type="text/javascript">
		waitAndGo('?p=profile');
	</script>
</cfoutput>