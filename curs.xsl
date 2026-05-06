<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0">

    <xsl:key name="teacher" match="курс" use="преподаватель"/>
    <xsl:key name="topic" match="курс" use="тема"/>

    <xsl:template match="/">
        <html>
        <head>
            <title>Наши курсы</title>
        </head>
        <body>
            <h1>Наши курсы</h1>
            <h3>Курсы, которые читает Борисов И.О.</h3>
            <ul>
                <xsl:for-each select="key('teacher', 'Борисов И.О.')">
                    <li><xsl:value-of select="название"/></li>
                </xsl:for-each>
            </ul>

            <h3>Курсы, которые используют XML</h3>
            <ul>
                <xsl:for-each select="key('topic', 'XML')">
                    <li><xsl:value-of select="название"/></li>
                </xsl:for-each>
            </ul>

            <h3>Курсы, Гаврилов М.A. Алгоритмы и структура данных</h3>
            <ul>
                <xsl:for-each select="key('teacher', Гаврилов М.A.')[Алгоритмы и структура данных]">
                    <li><xsl:value-of select="название"/></li>
                </xsl:for-each>
            </ul>

        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
