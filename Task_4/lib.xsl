<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<head>
		<style>
			body{
				font-family:Times New Roman;
				font-size=20px;
				background-color:azure;
			}
			
			table{
				background-color:lightgreen;
				text-align:center
			}
			tr{
				background-color : lightyellow
			}
		</style>
	</head>
	<body>
			<center>
			<h1>Library</h1>
			<table cellspacing="10" cellpadding="10" border="1">
				<tr style="background-color:lightgrey">
					<th>TITLE</th>
					<th>AUTHOR</th>
					<th>ISBN-NO</th>
					<th>PUBLISHER</th>
					<th>EDITION</th>
					<th>PRICE</th>
				</tr>
				<xsl:for-each select="lib/book">
					<tr>
						<td><xsl:value-of select="title"/></td>
						<td><xsl:value-of select="author"/></td>
						<td><xsl:value-of select="isbn-no"/></td>
						<td><xsl:value-of select="publisher"/></td>
						<td><xsl:value-of select="edition"/></td>
						<td><xsl:value-of select="price"/></td>
					</tr>
				</xsl:for-each>
		</table>
		</center>
	</body>
</html>