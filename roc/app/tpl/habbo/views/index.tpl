				<div id="overlay"></div>
						<div id="site-header">
							<form id="loginformitem" name="loginformitem" action="?p=login" method="post">
								<cfif IsDefined("reason") and reason neq "">
									<div id="loginerrorfieldwrapper">
										<cfif reason eq "field_username">
											<div id="loginerrorfield">
												<div>Please enter a username.</div>
											</div>
										</cfif>
										
										<cfif reason eq "field_password">
											<div id="loginerrorfield">
												<div>Please enter a password.</div>
											</div>
										</cfif>
										
										<cfif reason eq "login_username">
											<div id="loginerrorfield">
												<div>Incorrect username.</div>
											</div>
										</cfif>
										
										<cfif reason eq "login_password">
											<div id="loginerrorfield">
												<div>Incorrect password. Forgotten your password? <a href="##">Request a new one.</a></div>
											</div>
										</cfif>
										
										<cfif reason eq "session_expired">
											<div id="loginerrorfield">
												<div>Your session has expired - please log in.</div>
											</div>
										</cfif>
									</div>
								</cfif>
								<div style="clear: both;"></div>
								<div id="site-header-content">
									<div id="habbo-logo"></div>
									<div id="login-form">
										<div id="login-form-email">
											<label for="login-username" class="login-text">Username</label>
											<input tabindex="3" type="text" class="login-field" name="username" id="login-username" value="" maxlength="48">
										</div>
										<div id="login-form-password">
											<label for="login-password" class="login-text">Password</label>
											<input tabindex="4" type="password" class="login-field" name="password" id="login-password" maxlength="32">
										</div>
										<div id="login-form-submit">
											<input type="submit" value="Login" name="login">
										</div>
									</div>
									<script type="text/javascript">
										HabboView.add(function() {
											LandingPage.init();
											if (!LandingPage.focusForced) {
												LandingPage.fieldFocus('login-username');
											}
										});
									</script>
									
									<noscript>
										<div id="alert-javascript-container">
											<div id="alert-javascript-title">
												Missing JavaScript support
											</div>
											<div id="alert-javascript-text">
												Javascript is disabled on your browser. Please enable JavaScript or upgrade to a Javascript-capable browser to use <cfoutput>#sitename#</cfoutput> :)
											</div>
										</div>
									</noscript>
								</div>
							</form>
						</div>
						<div id="fp-container">
							<div id="content">
								<div id="column1" class="column">
									<div class="habblet-container ">		
										<div style="width: 890px; margin: 0 auto">
											<div id="tagline"><cfoutput>#sitename#</cfoutput>... make friends, chillax, get noticed!</div>
										</div>
										<div id="frontpage-image-container">
											<div id="join-now-button-container">
												<div id="join-now-button-wrapper-fb">
													<div class="join-now-alternative">&nbsp;</div>
													<div class="join-now-button">
														<a class="join-now-link" href="#" onclick="assistedLogin(FB); return false;"> 
															<span class="join-now-text-big">Play {hotelName}</span>
															<span class="join-now-text-small">with<span class="fbword">Facebook</span></span>
														</a>
														<span class="close"></span>
													</div>
												</div>
												<div id="join-now-button-wrapper">
													<div class="join-now-alternative">
														<a href="?p=register" class="newusers" onclick="startRegistration(this); return false;"><b>New to <cfoutput>#sitename#</cfoutput>?</b><span style="color: #8f8f8f;">Click here to</span></a>
													</div>
													<div class="join-now-button">
														<a class="join-now-link" id="register-link" href="?p=register" onclick="startRegistration(this); return false;"> 
															<span class="join-now-text-big">Join now</span>
															<span class="join-now-text-small">for Free</span>
														</a>
														<span class="close"></span>
													</div>
												</div>
											</div>
											<script type="text/javascript">
												function startRegistration(elem) {
													targetUrl = elem.href;
													if (typeof targetUrl == "undefined") {
														targetUrl = "?p=register";
													}
													window.location.href = targetUrl;
												}
											</script>
											<div id="people-inside">
												<b><span><span class="stats-fig"><cfoutput>#users_online#</cfoutput></span> players online now</span></b>
												<i></i>
											</div>
											<a href="?p=register" id="frontpage-image" style="background-image: url('app/tpl/habbo/images/loginbackdrop-turkey.png')" onclick="startRegistration(this); return false;"></a>
										</div>
										<script type="text/javascript">
											document.observe("dom:loaded", function() {
												LandingPage.checkLoginButtonSetTimer();
											});
										</script>
									</div>
									<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
								</div>
								<!--[if lt IE 7]>
									<script type="text/javascript">
										Pngfix.doPngImageFix();
									</script>
								<![endif]-->
							</div>
						</div>
						<script type="text/javascript">
							if (typeof HabboView != "undefined") {
								HabboView.run();
							}
						</script>