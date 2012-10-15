<cfset IsVIP = "false">
<cfquery name = "OtakuInfo" datasource = "OTAKUSTUDIOS" timeout = "10">
	SELECT `vb_user`.`userid`, `vb_user`.`usergroupid`, `vb_user`.`membergroupids`,  `vb_userfield`.`field63`
	FROM `vb_user` LEFT JOIN `vb_userfield` ON `vb_user`.`userid`=`vb_userfield`.`userid`
	WHERE LOWER( `vb_user`.`username` ) = '#session.forumname#' LIMIT 0,1
</cfquery>
<cfif OtakuInfo.field63 is form.username>
	<cfloop list="#OtakuInfo.membergroupids#" index="i">
		<!-- Habboon VIP -->
		<cfif i is 178>
			<cfset IsVIP = "true">
			<cfif session.vip eq 0>
				<cfquery name = "GiftVIP" datasource = "#DSN#">
					UPDATE users
					SET vip = '1'
					WHERE username = '#form.username#'
				</cfquery>
				<cfset session.vip = 1>
			</cfif>
		</cfif>
	</cfloop>
</cfif>

<cfif IsVIP is "false" AND session.vip eq 1>
	<cfset session.vip = 0>
	<cfquery name = "GiftVIP" datasource = "#DSN#">
		UPDATE users
		SET vip = '0'
		WHERE username = '#form.username#'
	</cfquery>
</cfif>
