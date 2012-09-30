				<script type="text/javascript">
					function submitform()
					{
					  document.forms["login-form"].submit();
					}
				</script>
				
				<div id="overlay"></div>
					<div id="header-container">
						<div id="header" class="clearfix">
							<h1><a href="?p=index"></a></h1>
							<cfif StructKeyExists(session, "username")>
								<div id="subnavi">
									<div id="subnavi-user">
										<ul>
										<li id="myfriends" class=""><a href="#"><span>My Friends</span></a><span class="r"></span></li>
										<li id="mygroups" class=""><a href="#"><span>My Groups</span></a><span class="r"></span></li>
										<li id="myrooms" class=""><a href="#"><span>My Rooms</span></a><span class="r"></span></li>
										</ul>
									</div>
									<div id="subnavi-search">
										<div id="subnavi-search-upper">
											<ul id="subnavi-search-links">
												<li><a href="" target="_blank">Submit an idea</a></li>
												<li><a href="" target="_blank">Help</a></li>
												<li><a href="?p=logout" style="color:#000">Sign Out</a></li>
											</ul>
										</div>
									</div>
									<div id="to-hotel">										
										<a href="?p=client" class="new-button green-button" target="eac955c8dbc88172421193892a3e98fc7402021a" onclick="HabboClient.openOrFocus(this); return false;"><b>Enter <cfoutput>#sitename#</cfoutput></b><i></i></a>
									
										<cfif rank gte "5">
											<a href="ase" class="new-button red-button" target="eac955c8dbc88172421193892a3e98fc7402021a" style="margin-right:5px;"><b>Housekeeping</b><i></i></a>
										</cfif>
									</div>
								</div>
							<cfelse>
								<div id="subnavi">
									<div id="subnavi-user">
										<div class="clearfix">&nbsp;</div>
									</div>

									<div id="subnavi-login">
										<form action="?p=login&redirect=<cfoutput>#p#</cfoutput>" method="post" id="login-form" name="login-form">
											<ul style="height:49px;">
												<li>
													<label for="login-username" class="login-text"><b>Username</b></label>
													<input tabindex="1" type="text" class="login-field" name="username" id="login-username">
													<a href="javascript: submitform()" id="login-submit-new-button" class="new-button" style="float: left; "><b>Login</b><i></i></a>
													
												</li>
												<li>
													<label for="login-password" class="login-text"><b>Password</b></label>
													<input tabindex="2" type="password" class="login-field" name="password" id="login-password">
												</li>
											</ul>
										</form>
										<div id="subnavi-login-help" class="clearfix">
											<ul>
												<li><a href="?p=register"><span>Register for free</span></a></li>
											</ul>
										</div>
								<div id="remember-me-notification" class="bottom-bubble" style="display: none; top: 57px; right: -50px; ">
									<div class="bottom-bubble-t"><div></div></div>
									
									<div class="bottom-bubble-b"><div></div></div>
								</div>
									</div>
								</div>
							</cfif>
							
							<script type="text/javascript"> 
								L10N.put("purchase.group.title", "Create a group");
								document.observe("dom:loaded", function() {
								});
							</script>
		
							<ul id="navi">
								<cfif StructKeyExists(session, "username")>
									<li <cfif p eq "me" or p eq "profile" or p eq "account">class="metab selected"><strong><cfoutput>#session.username# ( <i style="background-image: url(app/tpl/habbo/images/rpx/icon_habbo_small.png)">&nbsp;</i>)</cfoutput></strong><cfelse>class="metab"><a href="?p=me"><cfoutput>#session.username#</cfoutput> ( <i style="background-image: url(app/tpl/habbo/images/rpx/icon_habbo_small.png)">&nbsp;</i>)</a></cfif><span></span></li>
								<cfelse>
									<li id="tab-register-now"><a href="?p=register">Register now!</a><span></span></li>
								</cfif>
								<li <cfif p eq "community" or p eq "articles" or p eq "vip">class="selected"><strong>Community</strong><cfelse>><a href="?p=community">Community</a></cfif><span></span></li>
								<li <cfif p eq "credits" or p eq "pixels">class="selected"><strong>Credits</strong><cfelse>><a href="?p=credits">Credits</a></cfif><span></span></li>
							</ul>
							<div id="habbos-online">
								<div class="rounded-container"><div style="background-color: rgb(188, 224, 238); "><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(244, 250, 252); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(253, 254, 254); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(238, 247, 251); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(244, 250, 252); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(253, 254, 254); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div><div class="rounded-done"><span><cfoutput>#users_online#</cfoutput> members online</span></div><div style="background-color: rgb(188, 224, 238); "><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(253, 254, 254); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(244, 250, 252); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div><div style="margin: 0px 1px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(238, 247, 251); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div><div style="margin: 0px 2px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div></div><div style="margin: 0px 4px; height: 1px; overflow: hidden; background-color: rgb(188, 224, 238); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(227, 242, 248); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(244, 250, 252); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(253, 254, 254); "><div style="height: 1px; overflow: hidden; margin: 0px 1px; background-color: rgb(255, 255, 255); "></div></div></div></div></div></div></div>
							</div>
						</div>
					</div>
					<div id="content-container">
						<div id="navi2-container" class="pngbg">
							<div id="navi2" class="pngbg clearfix">
								<cfif p eq "community" or p eq "articles" or p eq "vip" or p eq "staff" or p eq "expert">
									<ul>
										<!-- The last <li> MUST have the class 'last'. -->
										<cfif p eq "community"><li class="selected">Community<cfelse><li><a href="?p=community">Community</a></cfif></li>
										<cfif p eq "articles"><li class="selected">Articles<cfelse><li><a href="?p=articles">Articles</a></cfif></li>
										<cfif p eq "staff"><li class="selected">Staff<cfelse><li><a href="?p=staff">Staff</a></cfif></li>
										<cfif p eq "expert"><li class="selected">eXperts<cfelse><li><a href="?p=expert">eXperts</a></cfif></li>
										<cfif p eq "vip"><li class="selected last">Buy VIP<cfelse><li class="last"><a href="?p=vip">Buy VIP</a></cfif></li>
									</ul>
								<cfelseif p eq "credits" or p eq "pixels">
									<ul>
										<cfif p eq "credits"><li class="selected">Credits<cfelse><li><a href="?p=credits">Credits</a></cfif></li>
										<cfif p eq "pixels"><li class="selected last">Pixels<cfelse><li class="last"><a href="?p=pixels">Pixels</a></cfif></li>
									</ul>
								<cfelse>
									<ul>
										<cfif p eq "me"><li class="selected">Home<cfelse><li><a href="?p=me">Home</a></cfif></li>
										<cfif p eq "profile"><li class="selected">My Page<cfelse><li><a href="?p=profile">My Page</a></cfif></li>
										<cfif p eq "account"><li class="selected last">Account Settings<cfelse><li class="last"><a href="?p=account">Account Settings</a></cfif></li>
									</ul>
								</cfif>
							</div>
						</div>