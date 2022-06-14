<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<xsl:template match="/">
<html>
  <head>
    <title>La borsa el <xsl:value-of select="@dia"/> a les
      <xsl:value-of select="@hora"/></title>
  </head>
  <body>
    <table border="2" align="center">
    <tr>
      <th>Codi</th>
      <th>Nom</th>
      <th>Preu</th>
    </tr>
    <xsl:for-each select="//empresa">
      <xsl:sort select="preu" order="descending"/>
      <tr>
        <td>
          <xsl:value-of select="codi"/>
        </td>
        <td>
          <xsl:value-of select="nom"/>
    <xsl:if test="@index='general'"> (*)</xsl:if>
  </td>
        <td>
          <xsl:choose>
            <xsl:when test="preu &gt; 75">
              <font color="blue"><xsl:value-of select="preu"/></font>
            </xsl:when>
            <xsl:when test="preu &lt; 25">
              <font color="red"><xsl:value-of select="preu"/></font>
            </xsl:when>  
            <xsl:otherwise>
              <xsl:value-of select="preu"/>
            </xsl:otherwise>                
          </xsl:choose>
        </td>
      </tr>
    </xsl:for-each>
    </table>
    <p align="center">(*) Aquestes empreses són de l´índex general.</p>
  </body>
</html>
</xsl:template>

</xsl:stylesheet>
