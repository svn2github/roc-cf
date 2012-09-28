							<cfif not StructKeyExists(session, "username")>
								<cflocation url="?p=index" addtoken="no">
							</cfif>
							<cfif not StructKeyExists(URL, "tab")>
								<cflocation url="?p=account&tab=2" addtoken="no">
							</cfif>
							<div id="container">
								<div id="content" style="position: relative" class="clearfix"><div>

								<div class="content">
								<div class="habblet-container" style="float:left; width:210px;">
								<div class="cb settings">
									<div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
									<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">Account Settings</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
									
									<div class="box-content">
										<div id="settingsNavigation">
											<ul>
												<cfif URL.tab eq "2">
													<li class="selected">
														My Preferences
													</li>
												<cfelse>
													<li>
														<a href="?p=account&tab=2">My Preferences</a>
													</li>
												</cfif>
												
												<cfif URL.tab eq "3">
													<li class="selected">
														My Email
													</li>
												<cfelse>
													<li>
														<a href="?p=account&tab=3">My Email</a>
													</li>
												</cfif>
												
												<cfif URL.tab eq "4">
													<li class="selected">
														My Password
													</li>
												<cfelse>
													<li>
														<a href="?p=account&tab=4">My Password</a>
													</li>
												</cfif>
												
												<cfif URL.tab eq "5">
													<li class="selected">
														Friend Management
													</li>
												<cfelse>
													<li>
														<a href="?p=account&tab=5">Friend Management</a>
													</li>
												</cfif>
												
												<cfif URL.tab eq "6">
													<li class="selected">
														Trading Settings
													</li>
												<cfelse>
													<li>
														<a href="?p=account&tab=6">Trading Settings</a>
													</li>
												</cfif>
											</ul>
										</div>
									</div>
									
									</div></div></div><div class="bb"><div></div></div></div>
								</div>
								
								<div class="habblet-container " style="float:left; width: 560px;">
									<div class="cb clearfix settings"><div class="bt"><div></div></div><div class="i1"><div class="i2"><div class="i3">
									<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><h2 class="title rounded-done">Change your profile</h2><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(99, 99, 99); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(144, 144, 144); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(100, 100, 100); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(89, 89, 89); "></div></div></div></div></div></div>
									
<cfif URL.tab eq "2">
									<div class="box-content">
										<cfif StructKeyExists(URL, "success")>
											<div class="rounded-container"><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(141, 204, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(90, 182, 40); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(65, 171, 8); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(140, 204, 105); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(60, 168, 1); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(108, 190, 64); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(140, 204, 105); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(60, 168, 1); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(141, 204, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(90, 182, 40); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(65, 171, 8); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div><div class="rounded-green rounded-done">
												Profile update successful!<br>
											</div><div style="background-color: rgb(255, 255, 255); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(65, 171, 8); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(90, 182, 40); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(141, 204, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(60, 168, 1); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(140, 204, 105); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(108, 190, 64); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(140, 204, 105); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(60, 168, 1); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div></div><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(141, 204, 107); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(90, 182, 40); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(65, 171, 8); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(59, 168, 0); "></div></div></div></div></div></div></div><br />
										</cfif>
									
										<form action="app/func/updateUserSettings.cfm" method="post" id="profileForm">
											<cfquery name="getUserSettings" datasource="#config.DSN#">
												SELECT motto, subscribed, block_newfriends, hide_online, hide_inroom
												FROM users
												WHERE username = "#session.username#"
											</cfquery>

											<h3>Your motto</h3>
											
											<p>
											Your motto is what other Habbos will see on your Habbo Home page and when clicking your Habbo in the Hotel.
											</p>

											<p>
											<label>Motto:
											<input type="text" name="updateMotto" size="32" maxlength="32" value="<cfoutput>#getUserSettings.motto#</cfoutput>" id="avatarmotto"></label>
											</p>

											<!---<h3>Your page</h3>

											<p>
											Who can view your homepage:<br>
											<label><input type="radio" name="visibility" value="EVERYONE" checked="checked">Visible to everyone</label>
											<label><input type="radio" name="visibility" value="NOBODY">Invisible to everyone</label>
											</p>--->

											<h3>Email alerts</h3>

											<p>
												<label><input type="checkbox" name="emailNewsletterEnabled" value="true" <cfif getUserSettings.subscribed eq "1">checked="checked"</cfif>> Yes! I want the latest <cfoutput>#sitename#</cfoutput> news sent straight to my inbox.</label>
											</p>

											<h3>Friend Requests</h3>
											
											<p>
												<label><input type="checkbox" name="blockNewFriends" id="blockNewFriends" <cfif getUserSettings.block_newfriends eq "0">checked="checked"</cfif> value="true">
												Friend requests enabled</label>
											</p>

											<h3>Online status</h3>
											
											<p>
												Select who can see your online status:<br>
												<label><input type="radio" name="hideOnlineStatus" value="1" <cfif getUserSettings.hide_online eq "1">checked="checked"</cfif>>Nobody</label>
												<label><input type="radio" name="hideOnlineStatus" value="0" <cfif getUserSettings.hide_online eq "0">checked="checked"</cfif>>Everybody</label>
											</p>

											<h3>Follow Me Settings</h3>
											
											<p>
												Select who can follow you from room to room:<br>
												<label><input type="radio" name="hideInRoom" value="1" <cfif getUserSettings.hide_inroom eq "1">checked="checked"</cfif>>Nobody</label>
												<label><input type="radio" name="hideInRoom" value="0" <cfif getUserSettings.hide_inroom eq "0">checked="checked"</cfif>>My friends</label>
											</p>

											<div class="settings-buttons">
											<a href="#" class="new-button" style="" id="profileForm-submit"><b>Save changes</b><i></i></a>
											<noscript>&lt;input type="submit" value="Save changes" name="save" class="submit" /&gt;</noscript>
											</div>
										</form>

										<script type="text/javascript">
										$("profileForm-submit").observe("click", function(e) { e.stop(); $("profileForm").submit(); });
										$("profileForm-submit").show();
										</script>
									</div>
<cfelseif URL.tab eq "3">

<cfelseif URL.tab eq "4">

<cfelseif URL.tab eq "5">

<cfelseif URL.tab eq "6">
									
<cfelse>
	<cflocation url="?p=account&tab=2" addtoken="no">
</cfif>
									
									</div></div></div><div class="bb"><div></div></div></div>
								</div>
							</div></div></div>