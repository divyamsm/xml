<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>Mangalore Local concerts</h2>
        <table border="1">
      <tr >
        <th>Bandname</th>
        <th>Genre</th>
        <th>place</th>
        <th>ticketprice</th>
      </tr>
      <xsl:for-each select="ad/band">
      <xsl:sort select="genre"/>
      <xsl:if test="ticketprice &lt; 100 and show/venue='Mangalore' and show/date/month='April'">
      <tr bgcolor="#FF0000">
        <td><xsl:value-of select="name" /></td>
        <td><xsl:value-of select="genre" /></td>
        <td><xsl:value-of select="show/venue" /></td>
        <td><xsl:value-of select="ticketprice" /></td>
      </tr>
         </xsl:if>
      <xsl:if test="discount != ''">
      <tr bgcolor="#CFB53B">
        <td><xsl:value-of select="name" /></td>
        <td><xsl:value-of select="genre" /></td>
        <td><xsl:value-of select="show/venue" /></td>
        <td><xsl:value-of select="ticketprice" /></td>
      </tr>
         </xsl:if>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 