<?xml version="1.0"  encoding ="UTF-8" ?>
<xsl:stylesheet version="1.0 " xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
   <xsl:template match="/">
       <html>
           <body>
               <table border="2px">
                   <thead>
                    <tr>
                        <th>name</th>
                        <th>email</th>
                        <th>city</th>
                        <th>salary</th>
                        <th>images</th>
                    </tr>
                    </thead>
                    <tbody>
                        <xsl:for-each select="aptech/faculty">
                        <tr>
                            <td>
                        <xsl:value-of select="facultyname"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="facultyemail"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="facultycity"></xsl:value-of>
                            </td>
                            <td>
                                <xsl:value-of select="facultysalary"></xsl:value-of>
                            </td>
                            <td>
                                <img height="50px" src="images/{facultyimage}" alt=""/>
                            </td>
                        </tr>
                    </xsl:for-each>
                    </tbody>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>