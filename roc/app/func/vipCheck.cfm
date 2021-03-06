<cftry>
	<cfset IsVIP = "false">
	<cfquery name = "OtakuInfo" datasource = "OTAKUSTUDIOS" timeout = "10">
		SELECT `vb_user`.`userid`, `vb_user`.`usergroupid`, `vb_user`.`membergroupids`,  `vb_userfield`.`field63`
		FROM `vb_user` LEFT JOIN `vb_userfield` ON `vb_user`.`userid`=`vb_userfield`.`userid`
		WHERE LOWER( `vb_user`.`username` ) = <CFQUERYPARAM VALUE="#session.forumname#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50"> LIMIT 0,1
	</cfquery>
	<cfif OtakuInfo.field63 is form.username>
		<cfloop list="#OtakuInfo.membergroupids#" index="i">
			<!-- Habboon VIP -->
			<cfif i is 178>
				<cfset IsVIP = "true">
				<cfif session.vip eq 0>
					<cfquery name = "GiftVIP" datasource = "#config.DSN#">
						UPDATE users
						SET vip = '1'
						WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
					</cfquery>
					<cfset session.vip = 1>
				</cfif>
			</cfif>
		</cfloop>
	</cfif>

	<cfif IsVIP is "false" AND session.vip eq 1>
		<cfset session.vip = 0>
		<cfquery name = "GiftVIP" datasource = "#config.DSN#">
			UPDATE users
			SET vip = '0'
			WHERE username = <CFQUERYPARAM VALUE="#form.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		</cfquery>
	</cfif>
	
	<cfif session.rank gte 4>
		<cfquery name = "GiftVIP" datasource = "#config.DSN#">
			UPDATE users
			SET vip = '1'
			WHERE username = <CFQUERYPARAM VALUE="#session.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		</cfquery>
		<cfset session.vip = 1>
	</cfif>
	
	<cfcatch>
		<br /><br />
		<p><b>App Error: Unable to check for VIP. Error communicating with vipCheck.cfm. Please check MySQL is able to connect!</b></p>
		<br /><br />
		<cfset session.vip = 0>
	</cfcatch>
</cftry>
