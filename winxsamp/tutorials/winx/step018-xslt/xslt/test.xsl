<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="classes">
	<HTML>
		<HEAD>
		<xsl:call-template name="style-sheet"/>
		</HEAD>
		<BODY>
			<H1>Classes</H1>
			<TABLE height="1">
				<xsl:call-template name="cell-header"/>
				<xsl:for-each select="class">
					<xsl:call-template name="cell-data"/>
				</xsl:for-each>
			</TABLE>
			<BR/>
		</BODY>
	</HTML>
	</xsl:template>

	<xsl:template name="cell-header">
		<xsl:param name="title"/>
		<TR VALIGN="top">
			<TH width="30%" height="19">
				Class
			</TH>
			<TH width="70%" height="19">
				Brief
			</TH>
		</TR>
	</xsl:template>
	<xsl:template name="cell-data">
		<xsl:param name="title"/>
		<TR VALIGN="top">
			<TD width="30%" height="19">
				<xsl:value-of select="@name"/>
			</TD>
			<TD width="70%" height="19">
				<xsl:value-of select="."/>
			</TD>
		</TR>
	</xsl:template>

<xsl:template name="style-sheet">
<style>
&lt;!--
body
	{
	padding: 0px 0px 0px 26px;
	background: #ffffff; 
	color: #000000;
	font-family: Verdana, Arial, Helvetica, sans-serif;
	font-size: 70%;
	}

div
	{
	width: 90%;
	border: 2px solid #999999;
	padding: 4px 8px;
	background: #cccccc;
	}
	
h1, h2, h3, h4
	{
	font-family: Verdana, Arial, Helvetica, sans-serif;
	margin-left: -26px;
	}
	
h1
	{
	font-size: 145%;
	margin-top: .5em;
	margin-bottom: .5em; 
	}
	
h2
	{
	font-size: 130%;
	margin-top: 1em;
	margin-bottom: .6em; 
	}
	
h3
	{
	font-size: 115%;
	margin-top: 1em;
	margin-bottom: .6em;
	}
	
h4
	{
	font-size: 100%;
	margin-top: 1em;
	margin-bottom: .6em; 
	}

ul p, ol p, dl p
	{
	margin-left: 0em;
	}

p
	{
	margin-top: .6em;
	margin-bottom: .6em;
	}

dl
	{
	margin-top: 0em; 
	}

dd
	{
	margin-bottom: 0em;  
	margin-left: 1.9em; 
	}

dt
	{
	margin-top: .6em; 
	}

ul, ol
	{
	margin-top: .6em; 	
	margin-bottom: 0em;
	}
	
ol
	{
	margin-left: 3.6em; 
	}	
	
ul
	{
	list-style-type: disc; 
	margin-left: 1.9em; 
	}

li
	{
	margin-bottom: .6em;
	}

ul ol, ol ol
	{
	list-style-type: lower-alpha;
	{

pre
	{
	margin-top: .6em;
	margin-bottom: .6em; 
	}

pre,code
	{
	font: 100% Courier New, Courier, mono; 
	color: #660000;
	}

table
	{
	width: 90%;
	background: #999999;
	margin-top: .6em;
	margin-bottom: .3em;
	}
		
th
	{ 
	padding: 4px 8px;
	background: #cccccc;
	font-size: 70%;
	vertical-align: bottom;
	}
		
td
	{ 
	padding: 4px 8px;
	background: #ffffff;
	vertical-align: top;
	font-size: 70%;
	}

blockquote
	{
	margin-left: 3.8em;
	margin-right: 3.8em;
	margin-top: .6em;
	margin-bottom: .6em;
	}

sup
	{
	text-decoration: none;
	font-size: smaller; 
	}

a:link
	{
	color: #0066ff;
	}
	
a:visited
	{
	color: #996600; 
	}
	
a:hover
	{
	color: #cc9900;
	}
	
.label
	{
	font-weight: bold; 
	margin-top: 1em;
	margin-left: -26px;
	}
	
.tl
	{
	margin-bottom: .75em; 
	}
	
.atl
	{
	padding-left: 1.5em;
	padding-bottom: .75em; 
	}
	
.cfe
	{
	font-weight: bold; 
	}
	
.mini
	{
	font-size: smaller;
	}
	
.dt
	{
	margin-bottom: -.6em; 
	}
	
.indent
	{
	margin-left: 1.9em; 
	margin-right: 1.9em;
	}

.product
	{
	text-align: right;
	color: #333333;
	font-size: smaller;
	font-style: italic;
	}


.buttonbarshade
	{
	position: relative;
	margin: 0;
	left: 10px;
	top: 2;
	width: 100%;
	height: 21px;
	}

.buttonbartable
	{
	position: absolute;
	margin: 0;
	left: 0;
	top: 2;
	width: 100%;
	height: 21px;
	}

table.buttonbartable td, table.buttonbarshade td
	{
	background:  #99ccff;
	border-left: 2px solid #ffffff;
	margin: 0;
	padding: 3px 0px 4px 0px;
	font-family: Verdana, sans-serif;
	font-size: 9pt;
	}

table.buttonbartable td.button1
	{
	background: #6699ff;
	padding: 0;
	font-weight: bold;
	text-align: center;
	cursor: hand;
	}

table.buttonbartable td.button2
	{
	background: #99cc66;
	font-weight: bold;
	text-align: center;
	}

table.buttonbartable td.button3
	{
	background: #cc9966;
	font-weight: bold;
	text-align: center;
	}

table.buttonbartable td.runninghead
	{
	padding-left: 4px;
	font-style: italic;
	text-align: left;
	}

.version
	{
	text-align: left;
	color: #000000;
	margin-top: 3em;
	margin-left: -26px;
	font-size: smaller;
	font-style: italic;
	}


.lang, .ilang
	{
	color: #0000ff;
	font: normal 7pt Arial, Helvetica, sans-serif;
	}

div.langMenu
	{
	position: absolute;
	z-index: 1;
	width: 96pt;
	padding: 8pt;
	visibility: hidden;
	border: 1px solid #000000;
	background: #ffffd0;
	}

div.langMenu ul
	{
	padding-left: 2em;
	margin-left: 0;
	}

div.filtered
	{
	margin: 4pt 0 8pt -26px;
	padding: 4px 4px 8px 26px;
	width: 100%;

	border: 2px solid #aaaacc;

	background: #ffffff;
	}

div.filtered2
	{
	margin: 4pt 0 8pt -26px;
	padding: 4px 4px 8px 26px;
	width: 100%;

	border: none;
	background: #ffffff;
	}

div.filtered h1, div.filtered h2, div.filtered h3, div.filtered h4
	{
	margin-left: -22px;
	}

div.filtered span.lang
	{
	position: relative;
	left: -22px;
	}


div.reftip
	{
	position: absolute;
	z-index: 1;
	padding: 8pt;
	visibility: hidden;
	border: 1px solid #000000;
	background: #ffffd0;
	}

pre.syntax
	{
	background: #dddddd;
	padding: 2pt,4pt;
	cursor: text;
	}

pre.syntax
	{
	color: #000000;
	}

a.synParam
	{
	color: #0040ff;
	text-decoration: none;
	}

a.synParam:hover
	{
	text-decoration: underline;
	}

div.sapop
	{
	position: absolute;
	z-index: 1;
	left: 26px;
	width: 100%;
	padding: 10px 10px 10px 36px;
	visibility: hidden;
	border: 1px solid #000000;
	background: #ffffd0;
	}


div.footer
	{
	width: 100%;
	border: none;
	background: #ffffff;
	margin-top: 18pt;
	padding-bottom: 12pt;
	color: #228B22;
	text-align: center;
	font-size: 76%;
	}

.note
	{
	margin-left: 14pt;
	margin-right: 12pt;
	}

.indent1
	{
	margin-left: 12pt;
	}

.indent2
	{
	margin-left: 24pt;
	}

.indent3
	{
	margin-left: 36pt;
	}

p.proch
	{
	padding-left: 16px;
	}

p.proch img
	{
	position: relative; 
	vertical-align: top;
	left: -18px; 
	margin-right: -14px; 
	margin-bottom: -18px;
	}

div.itfBorder
	{
	margin: 18pt,0,0,-28pt;
	padding: 0;
	width: 280pt;
	height: 6px;
	border: none;
	background: #6699cc;
	filter: alpha(style=1,startX=0,startY=0,finishX=100,finishY=0,opacity=100,finishOpacity=0);
	}

div.itf
	{
	margin: 0,0,0,-27pt;
	padding: 2pt,4pt;
	width:280pt;
	border: none;
	background: none;
	font-family: arial, verdana, sans-serif;
	font-size: 10pt;
	}

div.itf table
	{
	margin: 3pt,0,0,0;
	padding: 0;
	width: 280pt;
	}

td.itficon
	{
	margin: 0;
	padding: 0;
	}

td.itf
	{
	margin: 0;
	padding: 2px,0,0,5px;
	font-family: arial, verdana, sans-serif;
	font-size: 8pt;
	}
--&gt;
</style>
</xsl:template>
</xsl:stylesheet>
