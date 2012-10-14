<cfif not StructKeyExists(session, "userid") OR session.rank is 7>
	<cfabort>
</cfif>

<cfquery name="RemoveBadge" datasource="#config.DSN#">
	DELETE FROM user_badges
	WHERE user_id = #uid#, badge_id = "XXX"
	LIMIT 1
</cfquery>
<cfquery name="RemoveAchievement" datasource="#config.DSN#">
	DELETE FROM user_achievements
	WHERE user_id = #uid#, achievement_id = "32"
	LIMIT 1
</cfquery>
