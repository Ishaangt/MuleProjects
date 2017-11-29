<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:param name="policyName"/>
<xsl:param name="npv"/>
<xsl:output method="xml"/>
	<xsl:template match="/">
		<root>
			<policy_name><xsl:value-of select="$policyName" /></policy_name>
			<profile>
				<applicant_name>
					<xsl:value-of select="concat(//fname,' ',//lname)"/>
				</applicant_name>
				<npv><xsl:value-of select="$npv" /></npv>
			</profile>
		</root>
	</xsl:template>

</xsl:stylesheet>