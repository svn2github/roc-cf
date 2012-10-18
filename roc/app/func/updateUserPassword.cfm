<cfquery name="CurrentPass" datasource="#config.DSN#">
	SELECT password 
	FROM users
	WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
</cfquery>

<cfif CurrentPass.password is hash(oldpass, "SHA-512")>
	<cfset password = hash(newpass, "SHA-512") >
	<cfquery name="updateUserPassword" datasource="#config.DSN#">
		UPDATE users
		SET password = <CFQUERYPARAM VALUE="#password#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="128">
		WHERE id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
		LIMIT 1
	</cfquery>
</cfif>
