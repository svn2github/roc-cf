	<div id="container">
		<div class="cb process-template-box clearfix"><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
			<div id="content" class="wide">
						<div id="header" class="clearfix">
							<h1><a href="?p=index"></a></h1>
							<ul class="stats" style="position:relative;">
								<li class="stats-online" style="position:absolute;top:-25px;right:0;"><span class="stats-fig"><cfoutput>#users_online#</cfoutput></span> members online now!</li>
							</ul>
						</div>
				<div id="process-content">
					<div class="action-confirmation flash-message">
						<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(150, 213, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(104, 194, 41); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(81, 184, 9); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(149, 212, 106); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(76, 182, 2); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(120, 200, 65); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(149, 212, 106); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(76, 182, 2); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(150, 213, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(104, 194, 41); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(81, 184, 9); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div><div class="rounded-done">

						<cfset UserBanned = 0>
						<cfif StructKeyExists(session, "username")>
							<cfquery name="GetBans" datasource="#config.DSN#">
								SELECT * FROM bans WHERE value = <CFQUERYPARAM VALUE="#session.username#" CFSQLType="CF_SQL_VARCHAR"> AND expire > UNIX_TIMESTAMP() OR value = '#CGI.REMOTE_ADDR#' AND expire > UNIX_TIMESTAMP() ORDER BY ID DESC LIMIT 1
							</cfquery>
							<cfif GetBans.RecordCount>
								<cfset UserBanned = 1>
							</cfif>
						</cfif>

						<cfif NOT UserBanned>
							<td>
								<h1>Oops a problem occurred, sorry!</h1>
								<cfoutput>
								<cfif StructKeyExists(url, "reason") AND url.reason eq "logout"><h3>Reason: Connection Dropped by Server</h3>
								<cfelseif StructKeyExists(url, "reason")>
									<h3>Error: #reason# </h3>
								<cfelseif StructKeyExists(form, "error_cat") AND error_cat eq 30>
									<h2>The error indicated appears to be a connection issue, this may be due to our servers being offline. Please try again in 5 minutes!</h2>
								</cfif>
								<cfif StructKeyExists(form, "error_desc")><h3>Error Notice: #error_desc# </h3></cfif>
								</cfoutput>
								Please try reloading the hotel, if the problem continues wait a few minutes before trying again. If you are unable to get onto the hotel for a long peroid of time please report the issue on our <a href="http://www.otaku-studios.com/f836/">forums</a>.
							</td>
						<cfelse>
							<td style="padding-left:15px;">
								<h2>You've been banned!</h2>
								<cfoutput>
									It appears #session.username# (#GetBans.value#) has been banned from accessing the hotel.<br />
									<strong>Reason</strong>: #GetBans.reason#<br />
									<strong>Expires</strong>: #DateFormat(dateAdd("s", GetBans.expire, "01/01/1970"))# #TimeFormat(dateAdd("s", GetBans.expire, "01/01/1970"))#
								</cfoutput>
							</td>
							<cfset StructClear(session) />
						</cfif>
						
					</div><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(81, 184, 9); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(104, 194, 41); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(150, 213, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(76, 182, 2); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(149, 212, 106); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(120, 200, 65); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(149, 212, 106); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(76, 182, 2); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div></div><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(150, 213, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(104, 194, 41); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(81, 184, 9); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(75, 182, 1); "></div></div></div></div></div></div></div>
				</div>

				<div style="text-align: center">
					<div style="width:100px; margin: 10px auto"><a href="?p=me" id="logout-ok" class="new-button fill"><b>OK</b><i></i></a></div>
					<div id="column1" class="column">
							<div class="habblet-container ">		
							</div>
						<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
					</div>
					<div id="column2" class="column">
					</div>
				</div>

				<cfinclude template="../statics/footer.tpl">
					</div>
						</div>
					</div></div></div><div class="bb"><div></div></div></div>
				</div>
