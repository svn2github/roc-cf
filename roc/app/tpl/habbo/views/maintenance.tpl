<div id="container">
	<div id="content">
		<div id="process-content">

			<div class="fireman">
				<h1>Maintenance break!</h1>
				<p>
				Sorry! <cfoutput>#sitename#</cfoutput> is being worked on at the moment.<br><br>
				We'll be back soon. We promise.
				<p>
			</div>

			<div class="tweet-container">
				<h2>What's going on?</h2>
				<div class="tweet"></div>
			</div>

			<div id="footer"></div>

		</div>
	</div>
</div>


<script type='text/javascript'>
$(document).ready(function(){
  $(".tweet").tweet({
	username: "SojoboOtaku",
    count: 10
  });
});
</script>
