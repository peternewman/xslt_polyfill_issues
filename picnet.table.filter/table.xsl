<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>
    <xsl:template match="/">
<html>
<head>
<script type="text/javascript" src="jquery-1.7.2.min.js"></script>
<script type="text/javascript" src="picnet.table.filter.min.js"></script>
<script type="text/javascript" src="table.js"></script>
<title>Table</title>
</head>
<body>

<table class='tablesorter' id='menu' border='1'>
<caption><b>Table</b></caption>
<thead>
<tr>
<th>Food</th>
<th filter-type='ddl'>Beverage</th>
</tr>
</thead>
<tbody>
<xsl:for-each select="/stuff/item">
	<xsl:sort select="@eat" order="ascending"/>
	<tr>
		<td><xsl:value-of select="@eat"/></td>
		<td><xsl:value-of select="@drink"/></td>
	</tr>
</xsl:for-each>
</tbody>
</table>
</body>
</html>
    </xsl:template>
</xsl:stylesheet>
