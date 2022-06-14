<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

   <xsl:template match="/">
   <html>
      <body>
         <table border="1">
            <tr>
               <td><b>Nombre</b></td>
               <td><b>Programacion</b></td>
               <td><b>Sistemas Operativos</b></td>
               <td><b>Redes</b></td>
            </tr>
         
            <xsl:for-each>
            <tr>
               <td><xsl:value-of select="//nombre/text()"/></td>
               <td><xsl:value-of select="//programacion/text()"/></td>
               <td><xsl:value-of select="//sistemas_operativos/text()"/></td>
               <td><xsl:value-of select="//redes//text"/>-
            </tr>
            </xsl:for-each>
         </table>
      </body>
   </html>
   </xsl:template>
</xsl:stylesheet>
