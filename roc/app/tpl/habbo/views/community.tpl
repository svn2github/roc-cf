<cfif not StructKeyExists(session, "username")>
	<cflocation url="?p=index" addtoken="no">
</cfif>

<div id="container">
	<div id="content" style="position: relative" class="clearfix">
	
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
		
		
	<div id="column1" class="column"></div>
					
	<div id="column2" class="column">
		<div class="habblet-container ">		
			<div id="twitterfeed-habblet-container">
				<div id="twitterfeed-habblet-content"></div>
				<script>
					new TWTR.Widget({
	                   version: 2,
	                   id: 'twitterfeed-habblet-content',
	                   type: 'search',
	                   search: 'from:SojoboOtaku OR from:OtakuStudios',
	                   title: 'Official tweeters',
	                   subject: 'Otaku Studios',
	                   interval: 30000,
	                   width: 300,
	                   height: 186,
	                   theme: {
	                       shell: {
	                           background: '#4a4d4f',
	                           color: '#ffffff'
	                       },
	                       tweets: {
	                           background: '#ffffff',
	                           color: '#4a4d4f',
	                           links: '#fe6301'
	                       }
	                   },
	                   features: {
	                       scrollbar: true,
	                       loop: false,
	                       live: false,
	                       behavior: 'default'
	                   } }).render().start();
				</script>
			</div>
		</div>
	</div>
