<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <title>Music Library</title>
                <style>
                    body { font-family: Arial, sans-serif; }
                    h1 { color: #333; }
                    ul { list-style-type: none; padding: 0; }
                    li { margin: 10px 0; padding: 10px; border: 1px solid #ccc; border-radius: 5px; }
                    .songTitle { font-weight: bold; }
                    .artist { color: #555; }
                    .albums { color: #777; }
                </style>
            </head>
            <body>
                <h1>Music Library</h1>
                <ul>
                    <xsl:for-each select="music/song">
                        <li>
                            <div class="songTitle"><xsl:value-of select="songTitle"/></div>
                            <div class="artist">Artist: <xsl:value-of select="artist"/></div>
                            <div class="albums">
                                Albums:
                                <ul>
                                    <xsl:for-each select="albums/album">
                                        <li><xsl:value-of select="."/></li>
                                    </xsl:for-each>
                                </ul>
                            </div>
                            <div class="debutYear">Debut Year: <xsl:value-of select="debutYear"/></div>
                        </li>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>