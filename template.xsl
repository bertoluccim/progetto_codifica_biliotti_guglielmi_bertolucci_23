<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    xmlns="http://www.w3.org/1999/xhtml">
    
    <xsl:output method="html" encoding="UTF-8" indent="yes" omit-xml-declaration="yes"/>
    
    <xsl:template match="/">
        <html>
            <head>
                <title>
                    <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                </title>
                <link rel="stylesheet" type="text/css" href="template.css"/>
            </head>
            <body>
                <div class="index">
                    <div class="titolone">
                        <h1 id="titolo">
                            <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/>
                        </h1>
                        <h2>di <i><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:author"/></i></h2>
                    </div>
                    <hr/>
                    <div class="navbar_info">
                        <p class="navbar_info_btn" onclick="apri_info_tab(this)">Informazioni editoriali</p>
                        <p class="navbar_info_btn" onclick="apri_info_tab(this)">Informazioni di pubblicazione</p>
                        <p class="navbar_info_btn" onclick="apri_info_tab(this)">Informazioni sulla conservazione</p>
                        <p class="navbar_info_btn" onclick="apri_info_tab(this)">Informazioni sul manoscritto</p>
                    </div>
                    <div class="porta_titoli">
                        <div class="titoli">
                            <h2><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:edition"/></h2>
                            <xsl:apply-templates select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:editionStmt/tei:respStmt"/>
                        </div>
                        <div class="titoli">
                            <p>Opera digitale consultabile presso <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:publisher"/></p>
                            <p><i><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:availability"/></i>-<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:publicationStmt/tei:date"/></p>
                        </div>
                        <div class="titoli">
                            <p>L'opera originale è conservata presso l'archivio della Fondazione <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:repository"/> (Centro di Documentazione Ebraica Contemporanea), a <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:settlement"/> (<xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:msIdentifier/tei:country"/>)</p>
                            <p><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:condition"/></p>
                            <p>Modalità di acquisizione: donato da <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:acquisition/tei:p/tei:persName"/> e digitalizzato e distribuito da <xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:history/tei:acquisition/tei:p/tei:orgName"/></p>
                        </div>
                        <div class="titoli">
                            <table>
                                <tr><td>Supporto:</td><td><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:support"/></td></tr>
                                <tr><td>Numero pagine:</td><td><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:supportDesc/tei:extent"/></td></tr>
                                <tr><td>Layout pagine:</td><td><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:objectDesc/tei:layoutDesc/tei:layout"/></td></tr>
                                <tr><td>Produzione risorsa:</td><td><xsl:value-of select="tei:TEI/tei:teiHeader/tei:fileDesc/tei:sourceDesc/tei:msDesc/tei:physDesc/tei:handDesc"/></td></tr>
                                <tr><td>Lingua:</td><td><xsl:value-of select="tei:TEI/tei:teiHeader/tei:profileDesc/tei:langUsage/tei:language"/></td></tr>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="pulsantiera">
                    <h2 id="btn_Persone" onclick="gestisci_Persone()">Persone</h2>
                    <h2 id="btn_Luoghi" onclick="gestisci_Luoghi()">Luoghi</h2>
                    <h2 id="btn_Cancellazioni" onclick="gestisci_Cancellazioni()">Cancellazioni</h2>
                    <h2 id="btn_Unclear" onclick="gestisci_Unclear()">Unclear</h2>
                </div>
                <div class="trascrizione">
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p116.jpeg" usemap="Mp116" id="p116"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 116]"/></div></div>
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p117.jpeg" usemap="Mp117" id="p117"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 117]"/></div></div>
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p118.jpeg" usemap="Mp118" id="p118"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 118]"/></div></div>
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p119.jpeg" usemap="Mp119" id="p119"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 119]"/></div></div>
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p120.jpeg" usemap="Mp120" id="p120"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 120]"/></div></div>
                    <div class="pagina"><div class="pagina_img"><img src="_imgs/p121.jpeg" usemap="Mp121" id="p121"/></div><div class="pagina_txt"><xsl:apply-templates select="tei:TEI/tei:text/tei:body/tei:ab[@n = 121]"/></div></div>
                </div>
            </body>
            <script type="text/javascript" src="script.js"></script>
        </html>
    </xsl:template>
    
    <xsl:template match="tei:respStmt">
        <p>
            <xsl:value-of select="tei:resp"/>
            <xsl:for-each select="tei:name">
                <xsl:if test="position() > 1">
                    <xsl:text> - </xsl:text>
                </xsl:if>
                <b><xsl:value-of select="."/></b>
            </xsl:for-each>
        </p>
    </xsl:template>

    <xsl:template match="tei:del"> 
        <span class="el_Cancellazioni"> 
            <xsl:value-of select="."/> 
        </span>
	</xsl:template>
    
    <xsl:template match="tei:placeName"> 
        <span class="el_Luoghi"> 
            <xsl:value-of select="."/> 
        </span>
	</xsl:template>

    <xsl:template match="tei:persName"> 
        <span class="el_Persone"> 
            <xsl:value-of select="."/> 
        </span>
	</xsl:template>
    
    <xsl:template match="tei:unclear"> 
        <span class="el_Unclear"> 
            <xsl:value-of select="."/> 
        </span>
	</xsl:template>

    <xsl:template match="tei:TEI/tei:text/tei:body/tei:ab/tei:lb">
    <br/>
        <xsl:element name="span">   
            <xsl:attribute name="id">
                <xsl:value-of select="@facs"/>
            </xsl:attribute>
            <xsl:value-of select="@n" /> ➛
        </xsl:element>
    </xsl:template>
    
</xsl:stylesheet>
