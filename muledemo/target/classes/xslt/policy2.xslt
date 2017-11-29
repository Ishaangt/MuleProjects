<?xml version="1.0" ?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="policyName"/>
<xsl:param name="npv"/>
<xsl:output method="xml"/>
<xsl:template match="/">
  <root>
  	<policy_name><xsl:value-of select="$policyName" /></policy_name>
	<customer>
		<last_name><xsl:value-of select="//lname" /></last_name>
		<first_name><xsl:value-of select="//fname " /></first_name>
		<npv><xsl:value-of select="$npv" /></npv>
	</customer>
</root>
</xsl:template>

</xsl:stylesheet>