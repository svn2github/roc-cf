							<cfif not StructKeyExists(session, "username")>
								<cflocation url="?p=index" addtoken="no">
							</cfif>
							<div id="container">
								<div id="content" style="position: relative" class="clearfix">
									<div id="wide-personal-info">
										<div id="habbo-plate">
											<a href="?p=account">
												<img alt="me"
													<cfif motto neq "crikey">
														src="avatarimage.cfm?user=<cfoutput>#session.username#</cfoutput>&direction=3&head_direction=3&gesture=sml&img_format=png&size=&action=std">
													<cfelse>
														src="app/tpl/habbo/images/sticker_croco.gif" style="margin-top:57px;">
													</cfif>
												
											</a>
										</div>

										<div id="name-box" class="info-box">
											<div class="label">Name:</div>
											<div class="content"><cfoutput>#session.username#</cfoutput></div>
										</div>
										
										<div id="motto-box" class="info-box">
											<div class="label">Motto:</div>
											<div class="content"><cfoutput>#motto#</cfoutput></div>
										</div>
										
										<div id="last-logged-in-box" class="info-box">
											<div class="label">Last signed in:</div>
											<div class="content"><cfoutput>#last_online#</cfoutput></div>
										</div>

										<div class="enter-hotel-btn">
											<div class="open enter-btn">
												<a href="?p=client" onclick="HabboClient.openOrFocus(this); return false;">Enter <cfoutput>#sitename#</cfoutput><i></i></a>
												<b></b>
											</div>
										</div>
									</div>

									<div id="promo-box">
										<div id="promo-bullets">
										</div>
										
										<cfinclude template="../../../func/getWebPromos.cfm">
										
										<cfloop query="getWebPromos">
											<cfoutput>
												<div class="promo-container" style="background-image: url('#getWebPromos.promo_image#');<cfif getWebPromos.currentrow neq 1>display: none;</cfif>">
													<div class="promo-content-container">
														<div class="promo-content">
															<div class="title">
																#getWebPromos.title#
															</div>
															
															<div class="body">
																#getWebPromos.description#
															</div>
														</div>
													</div>
													
													<div class="promo-link-container">
														<cfif getWebPromos.button_text neq "">
															<div class="enter-hotel-btn">
																<div class="open enter-btn">
																	<a style="padding: 0 8px 0 19px;" href="#getWebPromos.button_link#">#getWebPromos.button_text#</a>
																	<b></b>
																</div>
															</div>
														</cfif>
													</div>
												</div>
											</cfoutput>
										</cfloop>
									</div>
									
									<script type="text/javascript">
										document.observe("dom:loaded", function() { PromoSlideShow.init(); });
									</script>


									<div id="column1" class="column">
										<div class="habblet-container ">		
											<div id="twitterfeed-habblet-container">
												
											</div>
										</div>
										
										<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
									</div>
									
									<div id="column2" class="column">
										<div class="habblet-container ">		
											<div class="ad-container">
											
											</div>
										</div>
										
										<script type="text/javascript">if (!$(document.body).hasClassName('process-template')) { Rounder.init(); }</script>
									</div>
									
									<script type="text/javascript">
										HabboView.run();
									</script>
								
									<div id="column3" class="column">
										<div class="habblet-container ">		
											<div class="ad-container">
											
											</div>
										</div>
													
										<div class="habblet-container ">		
									
										</div>
									</div>
									
									<!--[if lt IE 7]>
										<script type="text/javascript">
											Pngfix.doPngImageFix();
										</script>
									<![endif]-->
								</div>

								<!--[if lt IE 7]>
									<script type="text/javascript">
										Pngfix.doPngImageFix();
									</script>
								<![endif]-->
							</div>