<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My bands</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th style = "text-align:left">Band</th>
        <th style = "text-align:left">Place</th>
        <th style = "text-align:left">Genre</th>
      </tr>
      <xsl:for-each select="ad/band">
        <xsl:choose>
          <xsl:when test = "genre = 'Pop'">
          <tr bgcolor = "green">
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="show/venue"/></td>
            <td><xsl:value-of select="genre"/></td>
          </tr></xsl:when>
          <xsl:when test = "genre = 'Classical'">
          <tr bgcolor = "yellow">
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="show/venue"/></td>
            <td><xsl:value-of select="genre"/></td>
          </tr>
          </xsl:when>
          <xsl:when test = "genre = 'instrumental'">
          <tr bgcolor = "blue">
            <td><xsl:value-of select="name"/></td>
            <td><xsl:value-of select="show/venue"/></td>
            <td><xsl:value-of select="genre"/></td>
          </tr>
          </xsl:when>
        </xsl:choose>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>

</xsl:stylesheet> 