<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>My CD Collection</h2>
    <table border="1">
      <tr bgcolor="#9acd32">
        <th>Title</th>
        <th>Address</th>
        <th>Type</th>
        <th>Date</th>
        <th>Floors</th>
        <th>Rooms</th>
        <th>Price</th>
      </tr>
      <xsl:for-each select="CATALOG/OBJECT">
        <xsl:sort select="DATE"/>
        <xsl:sort select="NUMBER_OF_ROOMS"/>
        <tr>
          <td><xsl:value-of select="TITLE"/></td>
          <td><xsl:value-of select="ADDRESS"/></td>
          <td><xsl:value-of select="TYPE"/></td>
          <td><xsl:value-of select="DATE"/></td>
          <td><xsl:value-of select="NUMBER_OF_FLOORS"/></td>
          <td><xsl:value-of select="NUMBER_OF_ROOMS"/></td>
          <td><xsl:value-of select="PRICE"/></td>
        </tr>
      </xsl:for-each>
    </table>
    
  </body>
  </html>
</xsl:template>

</xsl:stylesheet>