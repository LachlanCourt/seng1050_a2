<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

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
		<p class="noMargin" style="float:right">
			<xsl:for-each select="images">
				<img alt="">
					<xsl:attribute name="src">
					<xsl:value-of select="."/>
					</xsl:attribute>
				</img><br/>
			</xsl:for-each>
			
			<xsl:value-of select="description"/><br/>
			<span class="xslBreak"><xsl:text> </xsl:text></span><br/>
			
			<!--<div style="float:right;">-->
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
				<a class="xslExternalURL" href='{externalUrl}'><xsl:value-of select="externalUrl"/></a><br/>
				
				
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
	
	<!-- cost, nights, popularity, accommodationOptions+, highlights+, couponCode?, reviews*, images+, externalUrl, contactDetails-->
	<!--
	<span id="label"><xsl:text>Address: </xsl:text></span>
	<xsl:value-of select="address"/>
	<br/>
	
	<span id="label"><xsl:text>Phone number: </xsl:text></span>
	<xsl:value-of select="phone"/>
	<br/>
	
	<span id="label"><xsl:text>Legs: </xsl:text><br/></span>
	<xsl:for-each select="leg">
		<xsl:sort select="flight"/>
		
		<xsl:choose>
			<xsl:when test="class != ''">
				<span id="indent"><xsl:text>Date: </xsl:text></span>
				<xsl:value-of select="date"/><xsl:text> </xsl:text><br/>
				<span id="indent"><xsl:text>Flight number: </xsl:text></span>
				<xsl:value-of select="flight"/><xsl:text> </xsl:text><br/>
				<span id="indent"><xsl:text>Departure: </xsl:text></span>
				<xsl:value-of select="depart/airportcode/@airport"/>
				<xsl:text> (</xsl:text><xsl:value-of select="depart/airportcode"/><xsl:text>) </xsl:text>
				<xsl:value-of select="depart/time"/><xsl:text> </xsl:text><br/>
				<xsl:if test="depart/airportweb != ''">
					<span id="indent"><xsl:text>Airport website: </xsl:text></span>
					<a href='{depart/airportweb}'><xsl:value-of select="depart/airportweb"/></a>
					<br/>
				</xsl:if>
				<span id="indent"><xsl:text>Arrival: </xsl:text></span>
				<xsl:value-of select="arrive/airportcode/@airport"/>
				<xsl:text> (</xsl:text><xsl:value-of select="arrive/airportcode"/><xsl:text>) </xsl:text>
				<xsl:value-of select="arrive/time"/><xsl:text> </xsl:text><br/>
				<xsl:if test="arrive/airportweb != ''">
					<span id="indent"><xsl:text>Airport website: </xsl:text></span>
					<a href='{arrive/airportweb}'><xsl:value-of select="arrive/airportweb"/></a>
					<br/>
				</xsl:if>
				<span id="indent"><xsl:text>Class: </xsl:text></span>
				<xsl:value-of select="class"/><xsl:text> </xsl:text><br/>
				<span id="indent"><xsl:text>Aircraft: </xsl:text></span>
				<xsl:value-of select="aircraft"/><xsl:text> </xsl:text><br/>
				<img id="planeImage" alt="A plane">
					<xsl:attribute name="src">
						<xsl:value-of select="aircraft_photo"/>
					</xsl:attribute>
				</img><br/>
				<video id="planeVideo" width="320" height="240" controls="controls">
					<source type="audio/mp4">
						<xsl:attribute name="src">
							<xsl:value-of select="aircraft_video"/>			
						</xsl:attribute>			
					</source>
				</video><br/>
				<xsl:if test="aircraft_youtube != ''">
					<embed id="youtube" width="320" height="240">
						<xsl:attribute name="src">
							<xsl:value-of select="aircraft_youtube"/>			
						</xsl:attribute>			
					</embed>
				</xsl:if>
				<br/>
			</xsl:when>
		</xsl:choose>
	</xsl:for-each>
	-->
	<br/>
	</xsl:template>
	
	
	
</xsl:stylesheet> 