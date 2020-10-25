<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" />
	<xsl:template match="packages">

	   <html>
		 <head>	
				
			<title>GoHoliday Travel Packages</title>	
			<link rel="stylesheet" type="text/css" href="style.css" />	
			<meta charset="UTF-8" />		
			
			
			<style>
				
			
			</style>
			
		  </head>
		  <body>
		  
			<!-- Menu for page navigation with relative URLs -->
		<nav>
			<header>
				<div class="menuContainer">
					
					<div class="dropdown">
						<button class="menuButton">
							<a href="index.html" class="menuButton">Home</a>
						</button>
					</div>
					
					<div class="dropdown">
						<button class="menuButton">Holiday Packages
							<div class="dropdown-content">
								<a href="XML_Adventure.xml" class="menuButton">Adventure Packages</a>
								<a href="XML_Family.xml" class="menuButton">Family Holiday Packages</a>
							</div>
						</button>
					</div>
					
					<div class="dropdown">
						<button class="menuButton">
							<a href="holidaysuggestion.html" class="menuButton">Suggest a Holiday</a>
						</button>
					</div>
					
					<div class="dropdown">
						<button class="menuButton">
							<a href="aboutus.html" class="menuButton">About Us</a>
						</button>
					</div>
					
					<div class="dropdown">
						<button class="menuButton">
							<a href="contact.html" class="menuButton">Contact Us</a>
						</button>
					</div>
					
					<div class="dropdown">
						<button class="menuButton">Legal Notices
							<div class="dropdown-content">
								<a href="termsandconditions.html" class="menuButton">Terms and Conditions</a>
								<a href="privacy.html" class="menuButton">Privacy Policy</a>
							</div>
						</button>
					</div>
				</div>
				<br/>
			</header>
		</nav>
			
			<h1 class="capitilizeFirst"><xsl:value-of select="package/@type"/> Holiday Packages</h1><br/>
			<hr/>
			<xsl:apply-templates select="package"/>
			
			<address id="contactForm">
				
				&#169; 2020 Lachlan Court<br/>
				c3308061<br/>
				<a href="mailto:c3308061@uon.edu.au">Contact us</a><br/>
				Bachelor of Computer Science<br/>
				Website created for <a href="https://www.newcastle.edu.au/course/SENG1050">UON SENG1050</a> Assignment 2
			</address>
		  </body>
	   </html>
	   
	</xsl:template>
		
	<xsl:template match="package">
		<h3 style="margin-left: 10%;"><xsl:value-of select="packageName"/><xsl:text> </xsl:text></h3>
		<div>
			<p class="noMargin">
				<xsl:for-each select="images">
					<img alt="">
						<xsl:attribute name="src">
						<xsl:value-of select="."/>
						</xsl:attribute>
					</img>
				</xsl:for-each>
				<br/>
				<xsl:value-of select="description"/><br/>
				<span class="xslBreak"><xsl:text> </xsl:text></span><br/>
				
				
				<strong><xsl:text>Cost: </xsl:text></strong><xsl:text>$</xsl:text>
				<xsl:value-of select="cost"/><xsl:text> </xsl:text><br/>
				
				<strong><xsl:text>Number of Nights: </xsl:text></strong>
				<xsl:value-of select="nights"/><xsl:text> </xsl:text><br/>
				
				<strong><xsl:text>Popularity Rating: </xsl:text></strong>
				<xsl:value-of select="popularity"/><xsl:text> </xsl:text><br/>
				
				<strong><xsl:text>Accommodation Options Available: </xsl:text></strong><br/>
				<xsl:for-each select="accommodationOptions">
					<strong id="indent"><xsl:text>Room type: </xsl:text></strong>
					<xsl:value-of select="location"/><xsl:text> </xsl:text>
					<strong><xsl:text>Extra Cost: </xsl:text></strong>
					<xsl:if test="not(additionalCost != '')">
						<xsl:text>None</xsl:text>
					</xsl:if>				
					<xsl:if test="additionalCost = 0">
						<xsl:text>None</xsl:text>
					</xsl:if>		
					<xsl:if test="additionalCost != 0">
						<xsl:text>$</xsl:text>
						<xsl:value-of select="additionalCost"/><xsl:text> </xsl:text>
					</xsl:if>

					<br/>
					
				</xsl:for-each>
				
				
				<strong><xsl:text>Highlights: </xsl:text></strong><br/>
				<xsl:for-each select="highlights">
					<span class="basicFormatting" id="indent"></span><xsl:text></xsl:text><xsl:value-of select="."/><xsl:text> </xsl:text><br/>
				</xsl:for-each>
				
				<xsl:if test="couponCode != ''">
					<strong><xsl:text>Coupon Code: </xsl:text></strong>
					<xsl:value-of select="couponCode"/><xsl:text> </xsl:text><br/>
				</xsl:if>
				
				<strong><xsl:text>Reviews: </xsl:text></strong><br/>
				<xsl:for-each select="reviews">
					<span class="basicFormatting" id="indent"></span><xsl:text></xsl:text><xsl:value-of select="."/><xsl:text> </xsl:text><br/>
				</xsl:for-each>
				
				<strong><xsl:text>Learn More: </xsl:text></strong>
				<a class="externalURL" href='{externalUrl}'><xsl:value-of select="externalUrl"/></a><br/>
				
				
				<strong><xsl:text>Contact Details: </xsl:text></strong>
				<xsl:for-each select="contactDetails">
					<br/>
					<strong id="indent"><xsl:text>Name: </xsl:text></strong>
					<xsl:value-of select="contactName"/><br/>
					<strong id="indent"><xsl:text>Number: </xsl:text></strong>
					<xsl:value-of select="contactNumber"/><br/>
					<strong id="indent"><xsl:text>Email: </xsl:text></strong>
					<xsl:value-of select="contactEmail"/><br/>
				</xsl:for-each>
			</p>
		</div>
		<br/>
	</xsl:template>
	
	
	
</xsl:stylesheet> 