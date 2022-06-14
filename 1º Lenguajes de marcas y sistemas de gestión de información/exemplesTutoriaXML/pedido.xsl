<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
  <xsl:template match="/">

<html>
<head>
 <link rel="stylesheet" type="text/css" href="pedidos.css"/>
</head>
<table border="1">

<tr><th>Producto</th><th>Talla</th><th>Unidades</th><th>Prioridad</th></tr>

<xsl:for-each select="//producto">
 <xsl:sort select="unidades" order="descending"/>
  <tr>
      <td><xsl:value-of select="referencia"/></td>
      <td>
      
      <xsl:value-of select="talla"/>
      
      </td>
      <td><xsl:value-of select="unidades"/></td>

      <td>
      <xsl:if test="unidades &gt; 10">
       <b>Importante      </b>
      </xsl:if>      
      <xsl:if test="unidades &lt; 10">
       Normal
      </xsl:if>      
      </td>
      
  </tr>    

</xsl:for-each>


</table>  
</html>  
  

  </xsl:template>
</xsl:stylesheet>
