<cfif StructKeyExists(session, "username")>
	<cflocation url="?p=me" addtoken="no">
</cfif>

<cfif not IsDefined("step")>
	<cflocation url="?p=register&step=1" addtoken="no">
</cfif>

<cfif URL.step eq "1">
<style>
	body{background:black url(app/tpl/habbo/images/registration/registration_background_step2.png) no-repeat right 130px}
</style>

<div id="overlay age-gate"></div>
	<script type="text/javascript">
	HabboView.add( function() {
		 ChangePassword.init();


	});
	function submitform()
		{
		  document.forms["quickregisterform"].submit();
		}
	</script>
	<div id="stepnumbers">
		<div class="step1focus">Birthdate &amp; Gender</div>
		<div class="step2">Account details</div>
		<div class="stephabbo"></div>
	</div>

	<div id="main-container">


		    <div id="error-messages-container" class="cbb">
				<cfif StructKeyExists(URL, "e")>
					<cfif e eq "dob">
						<div class="rounded" style="background-color: #cb2121;">
						   <div id="error-title" class="error">
								Please supply a valid birthdate <br />
						   </div>
						</div>
					</cfif>
				</cfif>
			</div>

		<form id="quickregisterform" method="post" action="?p=register&step=2">

			<h2>Birthdate &amp; Gender</h2>

			<div id="date-selector">
				<h3>Please enter a valid birthdate</h3>
	<select name="bean.month" id="bean.month" class="dateselector"><option value="">Month</option><option value="1">January</option><option value="2">February</option><option value="3">March</option><option value="4">April</option><option value="5">May</option><option value="6">June</option><option value="7">July</option><option value="8">August</option><option value="9">September</option><option value="10">October</option><option value="11">November</option><option value="12">December</option></select> <select name="bean.day" id="bean.day" class="dateselector"><option value="">Day</option><option value="1">1</option><option value="2">2</option><option value="3">3</option><option value="4">4</option><option value="5">5</option><option value="6">6</option><option value="7">7</option><option value="8">8</option><option value="9">9</option><option value="10">10</option><option value="11">11</option><option value="12">12</option><option value="13">13</option><option value="14">14</option><option value="15">15</option><option value="16">16</option><option value="17">17</option><option value="18">18</option><option value="19">19</option><option value="20">20</option><option value="21">21</option><option value="22">22</option><option value="23">23</option><option value="24">24</option><option value="25">25</option><option value="26">26</option><option value="27">27</option><option value="28">28</option><option value="29">29</option><option value="30">30</option><option value="31">31</option></select> <select name="bean.year" id="bean.year" class="dateselector"><option value="">Year</option><option value="2004">2004</option><option value="2003">2003</option><option value="2002">2002</option><option value="2001">2001</option><option value="2000">2000</option><option value="1999">1999</option><option value="1998">1998</option><option value="1997">1997</option><option value="1996">1996</option><option value="1995">1995</option><option value="1994">1994</option><option value="1993">1993</option><option value="1992">1992</option><option value="1991">1991</option><option value="1990">1990</option><option value="1989">1989</option><option value="1988">1988</option><option value="1987">1987</option><option value="1986">1986</option><option value="1985">1985</option><option value="1984">1984</option><option value="1983">1983</option><option value="1982">1982</option><option value="1981">1981</option><option value="1980">1980</option><option value="1979">1979</option><option value="1978">1978</option><option value="1977">1977</option><option value="1976">1976</option><option value="1975">1975</option><option value="1974">1974</option><option value="1973">1973</option><option value="1972">1972</option><option value="1971">1971</option><option value="1970">1970</option><option value="1969">1969</option><option value="1968">1968</option><option value="1967">1967</option><option value="1966">1966</option><option value="1965">1965</option><option value="1964">1964</option><option value="1963">1963</option><option value="1962">1962</option><option value="1961">1961</option><option value="1960">1960</option><option value="1959">1959</option><option value="1958">1958</option><option value="1957">1957</option><option value="1956">1956</option><option value="1955">1955</option><option value="1954">1954</option><option value="1953">1953</option><option value="1952">1952</option><option value="1951">1951</option><option value="1950">1950</option><option value="1949">1949</option><option value="1948">1948</option><option value="1947">1947</option><option value="1946">1946</option><option value="1945">1945</option><option value="1944">1944</option><option value="1943">1943</option><option value="1942">1942</option><option value="1941">1941</option><option value="1940">1940</option><option value="1939">1939</option><option value="1938">1938</option><option value="1937">1937</option><option value="1936">1936</option><option value="1935">1935</option><option value="1934">1934</option><option value="1933">1933</option><option value="1932">1932</option><option value="1931">1931</option><option value="1930">1930</option><option value="1929">1929</option><option value="1928">1928</option><option value="1927">1927</option><option value="1926">1926</option><option value="1925">1925</option><option value="1924">1924</option><option value="1923">1923</option><option value="1922">1922</option><option value="1921">1921</option><option value="1920">1920</option><option value="1919">1919</option><option value="1918">1918</option><option value="1917">1917</option><option value="1916">1916</option><option value="1915">1915</option><option value="1914">1914</option><option value="1913">1913</option><option value="1912">1912</option><option value="1911">1911</option><option value="1910">1910</option><option value="1909">1909</option><option value="1908">1908</option><option value="1907">1907</option><option value="1906">1906</option><option value="1905">1905</option><option value="1904">1904</option><option value="1903">1903</option><option value="1902">1902</option><option value="1901">1901</option><option value="1900">1900</option></select>         </div>

			<div class="delimiter_smooth">
				<div class="flat">&nbsp;</div>
				<div class="arrow">&nbsp;</div>
				<div class="flat">&nbsp;</div>
			</div>

			<div id="inner-container">
				<div id="gender-selection">
					<h3>I am...</h3>
					<input type="hidden" id="avatarGender" name="bean.gender" value="male"/>
					<ul id="gender-choices">
						<li>
<span class="bgtop"></span>
<span class="bgbottom"></span>
<span class="gender-choice">
	Male<br/><img alt="male" src="app/tpl/habbo/images/registration/male_sign.png" width="36" height="47">
</span>
						</li>
						<li>
<span class="bgtop"></span>
<span class="bgbottom"></span>
<span class="gender-choice">
	Female<br/><img alt="female" src="app/tpl/habbo/images/registration/female_sign.png" width="36" height="47">
</span>
						</li>
					</ul>
				</div>
			</div>
		</form>

		<div id="select">
			<a id="back-link" href="?p=index">Go Back</a>
			<div class="button">
				<a id="proceed" href="javascript: submitform()" class="area">Next</a>
				<span class="close"></span>
			</div>
	   </div>
	</div>

	<script type="text/javascript">
		L10N.put("identity.register.overlay.loading.text", 'Loading...');
		document.observe("dom:loaded", function() {
			QuickRegister.initAgeGate(true);
			QuickRegister.initGenderChooser("male");
		});
	</script>



	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-448325-2']);
	  _gaq.push(['_trackPageview']);
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
	<script type="text/javascript">
		HabboView.run();
		function submitform()
		{
		  document.forms["quickregisterform"].submit();
		}
	</script>
<cfelseif URL.step eq "2">
<cfif IsDefined("bean.month")>
	<cfif bean.month eq "" or bean.day eq "" or bean.year eq "">
		<cflocation url="?p=register&step=1&e=dob" addtoken="no">
	</cfif>
</cfif>
<style>
	body{background:black url(app/tpl/habbo/images/registration/registration_background_step3_boy.png) no-repeat right 130px}
</style>

<div id="overlay"></div>
	<script type="text/javascript">
	HabboView.add( function() {
		 ChangePassword.init();


	});
	function submitform()
		{
		  document.forms["quickregister-form"].submit();
		}
	</script>
	<div id="stepnumbers">
		<div class="stepdone">Birthdate &amp; Gender</div>
		<div class="step2focus">Account details</div>
		<div class="stephabbo"></div>
	</div>

	<div id="main-container">

		<div id="error-messages-container" class="cbb">
			<cfif StructKeyExists(URL, "e")>
				<cfif e eq "tos">
					<div class="rounded" style="background-color: #cb2121;">
					   <div id="error-title" class="error">
You must accept the terms and conditions. <br />
					   </div>
					</div>
				</cfif>
				
				<cfif e eq "ulen">
					<div class="rounded" style="background-color: #cb2121;">
					   <div id="error-title" class="error">
Your username does not meet the expected requirements. <br />
					   </div>
					</div>
				</cfif>
				
				<cfif e eq "utaken">
					<div class="rounded" style="background-color: #cb2121;">
					   <div id="error-title" class="error">
That username is already taken. <br />
					   </div>
					</div>
				</cfif>
				
				<cfif e eq "einvalid">
					<div class="rounded" style="background-color: #cb2121;">
					   <div id="error-title" class="error">
That email address is invalid. <br />
					   </div>
					</div>
				</cfif>
				
				<cfif e eq "perr">
					<div class="rounded" style="background-color: #cb2121;">
					   <div id="error-title" class="error">
Your password does not meet the expected requirements. <br />
					   </div>
					</div>
				</cfif>
			</cfif>
		</div>

		<form method="post" action="?p=register&step=complete" id="quickregister-form">

			<h2>Account details</h2>

		  <div id="inner-container">
			<div class="inner-content bottom-border">
				<div class="field">
					<label for="username">Username</label>
					<input type="text" <cfif StructKeyExists(URL, "e")><cfif e eq "utaken" or e eq "ulen">class="error"</cfif></cfif> id="username" name="bean.username" value="<cfif StructKeyExists(session, "regUser")><cfoutput>#session.regUser#</cfoutput></cfif>" />
				</div>
				<div class="help">You'll need to use this <b>username to log in</b> to <cfoutput>#sitename#</cfoutput> in the future.</div>
				<div class="field">
					<label for="email-address">Email</label>
					<input type="text" <cfif StructKeyExists(URL, "e")><cfif e eq "einvalid">class="error"</cfif></cfif> id="email-address" name="bean.email" value="<cfif StructKeyExists(session, "regEmail")><cfoutput>#session.regEmail#</cfoutput></cfif>" />
				</div>
				<div class="help">If you ever need to <b>recover your password</b>, you'll need your <b>email address</b>. Please use a valid address.</div>
				<div id="password-field" class="field">
					<label for="register-password">Password</label>
					<input type="password" <cfif StructKeyExists(URL, "e")><cfif e eq "perr">class="error"</cfif></cfif> name="bean.password" id="register-password" maxlength="32" value="" />
				</div>
				<div class="help">Password must be at least <b>6 characters </b>long and include <b>letters and numbers</b>.</div>
			
				<div id="referrer-field" class="field">
					<label for="register-referrer">Referrer</label>
					<input type="referrer" name="bean.referrer" id="register-referrer" maxlength="32" value="<cfif StructKeyExists(session, "referrer")><cfoutput>#session.referrer#</cfoutput></cfif>" />
				</div>
				<div class="help">(Optional) Please enter the <b>user who invited you</b> to <cfoutput>#sitename#</cfoutput>.</div>
			</div>

			<div class="inner-content top-margin">
				<div class="field-content checkbox <cfif StructKeyExists(URL, "e")><cfif e eq "tos">error</cfif></cfif>">
				  <label>
					<input type="checkbox" name="bean.termsOfServiceSelection" id="terms" value="true" class="checkbox-field "/>
					I accept the Terms Of Service, as applies on <a href="http://help.habbo.com/entries/20106178-privacy-policies-terms-of-use" target="_blank" onclick="window.open('http://help.habbo.com/entries/20106178-privacy-policies-terms-of-use'); return false;">Habbo.com</a>
				  </label>
				</div>            

				<div class="field-content checkbox">
				  <label>
		<input type="checkbox" name="bean.marketing" id="marketing" value="true" class="checkbox-field"/>
					Keep me updated about the latest <cfoutput>#sitename#</cfoutput> happenings, news and gossip!
				  </label>
				</div>
				
			<cfif IsDefined("bean.month")>
				<input type="hidden" name="bean.month" value="<cfoutput>#bean.month#</cfoutput>"/>
				<input type="hidden" name="bean.day" value="<cfoutput>#bean.day#</cfoutput>"/>
				<input type="hidden" name="bean.year" value="<cfoutput>#bean.year#</cfoutput>"/>
			</cfif>
			
			<cfif StructKeyExists(session, "gender")>
				<input type="hidden" name="bean.gender" value="<cfoutput>#session.gender#</cfoutput>"/>
			<cfelse>
				<input type="hidden" name="bean.gender" value="<cfoutput>#bean.gender#</cfoutput>"/>
			</cfif>
				
			</div>
		  </div>
		</form>


		<div id="select">
			<div class="button">
				<a id="proceed-button" href="javascript: submitform()" class="area">Next</a>
				<span class="close"></span>
			</div>
			<a href="?p=register" id="back-link">Go Back</a>
	   </div>
	</div>

	<script type="text/javascript">
		document.observe("dom:loaded", function() {
			Event.observe($("back-link"), "click", function() {
				Overlay.show(null,'Loading...');
			});
			Event.observe($("proceed-button"), "click", function() {
				Overlay.show(null,'Loading...');            
				$("quickregister-form").submit();
			});
				$("email-address").focus();
		});
	</script>



	<script type="text/javascript">
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-448325-2']);
	  _gaq.push(['_trackPageview']);
	  (function() {
		var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
		ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
		var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
	</script>
	<script type="text/javascript">
		HabboView.run();
	</script>
<cfelseif step eq "complete">
	<cfif StructKeyExists(session, "username")>
		<cflocation url="?p=index" addtoken="no">
	</cfif>
	
	<cfif not IsDefined("bean.gender")>
		<!---<cflocation url="?p=register" addtoken="no">--->
		Gender not being posted to completion process!
	</cfif>
	
	<cfset StructClear(session)>
	<cfset session.gender = bean.gender>
	<cfset session.regUser = bean.username>
	<cfset session.regEmail = bean.email>
	
	<cfif Len(bean.username) lte 1 OR Len(bean.username) gt 20>
		<cflocation url="?p=register&step=2&e=ulen" addtoken="no">
	</cfif>

	<cfquery name = "NameCheck" datasource = "#config.DSN#">
		SELECT id
		FROM users
		WHERE username = <CFQUERYPARAM VALUE="#bean.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		LIMIT 1
	</cfquery>

	<cfif NameCheck.RecordCount>
		<cflocation url="?p=register&step=2&e=utaken" addtoken="no">
	</cfif>
	
	<cfif Len(bean.email) lt 1 OR not bean.email contains "@">
		<cflocation url="?p=register&step=2&e=einvalid" addtoken="no">
	</cfif>
	
	<cfif Len(bean.password) lt 6 OR Len(bean.password) gt 15>
		<cflocation url="?p=register&step=2&e=perr" addtoken="no">
	</cfif>
	
	<cfif NameCheck.RecordCount>
		<cflocation url="?p=register&step=2&e=utaken" addtoken="no">
	</cfif>
	
	<cfif not IsDefined("bean.termsOfServiceSelection")>
		<cflocation url="?p=register&step=2&e=tos" addtoken="no">
	</cfif>

	<cfquery name = "RegisterAccount" datasource = "#config.DSN#">
		INSERT INTO users (username, password, mail, gender, look, motto, last_online, rank, online, ip_last, auth_ticket, account_created, ip_reg, subscribed, referrer, credits, activity_points)
		VALUES (<CFQUERYPARAM VALUE="#bean.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, <CFQUERYPARAM VALUE="#hash(bean.password, "SHA-512")#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="128">, <CFQUERYPARAM VALUE="#bean.email#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">, 'm', '#defaultLook#', '#defaultMotto#', UNIX_TIMESTAMP(), '1', '0', '#ipaddress#', '', UNIX_TIMESTAMP(), '#ipaddress#', '<cfif IsDefined("bean.marketing")>1<cfelse>0</cfif>', '<cfif Len(bean.referrer) gt 1><CFQUERYPARAM VALUE="#bean.referrer#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50"><cfelse></cfif>', '#starterCredits#', '#starterPixels#')
	</cfquery>

	<cfquery name = "NewAccount" datasource = "#config.DSN#">
		SELECT id, username, mail FROM users
		WHERE username = <CFQUERYPARAM VALUE="#bean.username#" CFSQLType="CF_SQL_VARCHAR" MAXLENGTH="50">
		LIMIT 1
	</cfquery>

	<cfquery name = "UsersStats" datasource = "#config.DSN#">INSERT INTO user_stats (id, RoomVisits, OnlineTime, Respect, RespectGiven, GiftsGiven, GiftsReceived, DailyRespectPoints, DailyPetRespectPoints) VALUES (#NewAccount.id#, 0, 0, 0, 0, 0, 0, 3, 3)</cfquery>
	<cfquery name = "UsersStats" datasource = "#config.DSN#">INSERT INTO user_info (user_id, reg_timestamp) VALUES (#NewAccount.id#, UNIX_TIMESTAMP())</cfquery>
	
	<!-- Set Regular Session Variables -->
	<cfset StructClear(session)>
	<cfset session.userid = NewAccount.id>
	<cfset session.username = NewAccount.username>
	<cfset session.useremail = NewAccount.mail>
	<!-- Add additional session variables if needed to prevent having to use lots of MySQL Queries. -->
	
	<cflocation url="?p=client" addtoken="No">
<cfelse>
	<cflocation url="?p=register&step=1" addtoken="no">
</cfif>