<div class="wrapper">
	<div class="SubNavigation">
		<cfif page_sub eq "home">
		<div class="Option"><a href="index.cfm">Home</a></div>
		<div class="Option"><a href="settings.cfm">Settings</a></div>
		<cfelseif page_sub eq "community">
		<div class="Option"><a href="index.cfm">Home</a></div>
		<div class="Option"><a href="rares.cfm">Rares</a></div>
		<div class="Option"><a href="olympics.cfm">Olympics</a></div>
		</cfif>
	</div>
<div class="HotelNavigation">
	<div class="Option"><a href="/client">Enter Hotel</a></div>
</div>