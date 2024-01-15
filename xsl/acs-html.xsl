<?xml version="1.0" encoding="UTF-8" ?>
<!-- **********************************************************************-->
<!-- Copyright 2012-2018                                                   -->
<!-- Matthew Boelkins                                                      -->
<!--                                                                       -->
<!-- This file is part of Active Calculus.                                 -->
<!--                                                                       -->
<!-- Permission is granted to copy, distribute and/or modify this document -->
<!-- under the terms of the Creative Commons BY-SA license.  The work      -->
<!-- may be used for free by any party so long as attribution is given to  -->
<!-- the author(s), the work and its derivatives are used in the spirit of -->
<!-- "share and share alike".  All trademarks are the registered marks of  -->
<!-- their respective owners.                                              -->
<!-- **********************************************************************-->

<!-- ACS customizations for HTML runs -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<!-- Assumes current file is in mathbook/user, so it must be copied there -->
<xsl:import href="./core/pretext-html.xsl" />
<!-- Assumes next file can be found in mathbook/user, so it must be copied there -->
<xsl:import href="acs-common.xsl" />

<!-- Specify options for WeBWorK exercises -->
<xsl:param name="webwork.divisional.static" select="'no'" />

<!-- added stuff for doenet interactives--> 
    <xsl:template match="interactive[@doenet]" mode="iframe-interactive">
        <div class="doenetml-applet">
            <script type="text/doenetml">
                <xsl:value-of disable-output-escaping="yes" select="text()"/>
            </script>
        </div>
        <script onload="onLoad()" type="module" src="https://dev.doenet.org/cdn/doenet-standalone.js"> </script>
        <link rel="stylesheet" href="https://dev.doenet.org/cdn/style.css"> </link>
        <script>
            <xsl:text>function onLoad() {window.renderDoenetToContainer(document.querySelector(".doenetml-applet"))}</xsl:text>
        </script>
    </xsl:template>
<!-- added stuff for doenet interactives--> 

</xsl:stylesheet>

<!--
<!DOCTYPE xsl:stylesheet [
    <!ENTITY % entities SYSTEM "./core/entities.ent">
    %entities;
]> -->

