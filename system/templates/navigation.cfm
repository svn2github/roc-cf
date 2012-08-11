<cfquery name = "UsersOnline" datasource = "#DSN#">
	SELECT users_online FROM server_status
</cfquery>
	<div class="barline">
	<div class="MainNavigation">
		<div class="Option"><a href="../home/">Home</a></div>
		<div class="Option"><a href="../community/">Community</a></div>
		<div class="Option"><a href="http://otaku-studios.com/">Forum</a></div>
		<div class="Option"><a href="http://code.google.com/p/roc-cf/">Roc-CF</a></div>
	</div>
	<a href="#">
		<span class="online"><cfoutput query="UsersOnline">#users_online#</cfoutput> User(s) Online!</span>
	</a>
	</div>