<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" />

    <xsl:template match="packages">

	   <html>
		 <head>	
		 
			<title>Banana Airline Bookings</title>		
			<meta charset="UTF-8" />
			
			<style>
			body {
			background-color: black;
			color: white;
			}
			
			#label {
			font-weight: bold;
			color: blue;
			}
			
			#indent{
			color: purple;
			font-weight: bold;
			margin-left: 2em;
			}
			
			h1 {
			color: #00FFFF;
			}
			
			h2 {
			color: #006666;
			}
			
			#planeImage {
			margin: 2em;
			}
			
			#planeVideo {
			margin-left: 2em;
			}
			
			#youtube {
			margin: 2em;
			}
			
	</style>
			
		  </head>
		  <body>
			<h1>Welcome to Banana Airlines</h1>
			
			<xsl:apply-templates select="package"/>
			
			
		  </body>
	   </html>
	   
    </xsl:template>
	
	<xsl:template match="package">
	
	<h2>Bookings for </h2>
	<xsl:value-of select="packageName"/><xsl:text> </xsl:text>
	<xsl:value-of select="description"/><xsl:text> </xsl:text>
	<br/>
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