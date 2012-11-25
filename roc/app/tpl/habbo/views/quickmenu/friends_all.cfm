<cfquery name = "getFriends" datasource = "#config.DSN#">
	SELECT users.username, users.online
	FROM users, messenger_friendships
	WHERE messenger_friendships.user_two_id = users.id AND messenger_friendships.user_one_id = <CFQUERYPARAM VALUE="#session.userid#" CFSQLType="CF_SQL_INTGER">
	ORDER BY users.last_online DESC
	LIMIT 10
</cfquery>

<cfset OnlineFriends = "">
<cfset OfflineFriends = "">
<cfoutput query="getFriends">
	<cfif getFriends.online eq 1>
		<cfset OnlineFriends = #ListAppend(OnlineFriends,getFriends.username)#>
	<cfelse>
		<cfset OfflineFriends = #ListAppend(OfflineFriends,getFriends.username)#>
	</cfif>
</cfoutput>

			<div id="qtab-container-myfriends" class="qtab-container">
				<div class="qtab-subtitle even">
					<div class="qtab-category">Online friends</div></div>
						<ul id="online-friends">
							<cfoutput>
								<cfif ListLen(OnlineFriends) gt 0>
									<cfloop from="1" to="#ListLen(OnlineFriends)#" index="listCount">
										<li class="#iif(listCount mod 2, de('odd'), de('even'))#">
										<a href="?p=profile&u=#ListGetAt(OnlineFriends,listCount,",")#">#ListGetAt(OnlineFriends,listCount,",")#</a>
										</li>
									</cfloop>
								<cfelse>
									<li class="odd">0 Online Friends</li>
								</cfif>
							</cfoutput>
							<!--- <div id="qtab-follow"><a title="Go to the room where Today is" onclick="HabboClient.roomForward(this, '42672361', 'friend'); return false;" target="3e2850668280186b00b853ffb87687d2545837d7" href="#"></a></div> --->
						</ul>

						<div class="qtab-subtitle even"><div class="qtab-category">Offline friends</div></div>
						<ul id="offline-friends">
							<cfoutput>
								<cfif ListLen(OfflineFriends) gt 0>
									<cfloop from="1" to="#ListLen(OfflineFriends)#" index="listCount">
										<li class="#iif(listCount mod 2, de('odd'), de('even'))#">
										<a href="?p=profile&u=#ListGetAt(OfflineFriends,listCount,",")#">#ListGetAt(OfflineFriends,listCount,",")#</a>
										</li>
									</cfloop>
								<cfelse>
									<li class="odd">0 Offline Friends</li>
								</cfif>
							</cfoutput>
						</ul>

						<div id="qtab-myfriends-list-paging" class="qtab-paging">
							Showing only 10 friends!
						<!---
							First |
							&lt;&lt; |
							<a href="#" class="qtab-myfriends-list-paging-link" id="list-next">&gt;&gt;</a> |
							<a href="#" class="qtab-myfriends-list-paging-link" id="list-last">Last</a>
						  <input type="hidden" id="pageNumber" value="1">
						  <input type="hidden" id="totalPages" value="1">
						  --->
						</div>
						
						<p class="manage-friends"><a href="?p=account&tab=5">Friend Management</a></p>
				</div>
			</div>
