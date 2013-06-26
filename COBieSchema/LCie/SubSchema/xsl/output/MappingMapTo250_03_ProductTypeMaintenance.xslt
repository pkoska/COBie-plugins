<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2013r2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://assettype.cobielite.cobie.erdc.org" xmlns:ns1="http://attribute.cobielite.cobie.erdc.org" xmlns:ns2="http://cobielite.cobie.erdc.org" xmlns:cobielite="http://core.cobielite.cobie.erdc.org" xmlns:ns3="http://document.cobielite.cobie.erdc.org" xmlns:ns4="http://job.cobielite.cobie.erdc.org" xmlns:ns5="http://resource.cobielite.cobie.erdc.org" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" exclude-result-prefixes="ns0 ns1 ns2 ns3 ns4 ns5 xs fn">
	<xsl:output method="xml" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<ProductTypemaintenance xmlns="http://maintenance250.lcie.cobielite.cobie.erdc.org" xmlns:att="http://attribute.lcie.cobielite.cobie.erdc.org" xmlns:con="http://contact.lcie.cobielite.cobie.erdc.org" xmlns:cobielite="http://core.cobielite.cobie.erdc.org" xmlns:doc="http://document.lcie.cobielite.cobie.erdc.org" xmlns:lcie="http://lcie.cobielite.cobie.erdc.org" xmlns:pwd="http://maintenance250.defs.lcie.cobielite.cobie.erdc.org">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'http://maintenance250.lcie.cobielite.cobie.erdc.org C:/Users/RDITLACB/git/cobieserver/COBieSchema/LCie/SubSchema/250_03_ProductTypeMaintenance.xsd'"/>
			<pwd:InformationExchangeID>250.03_ProductTypeMaintenance</pwd:InformationExchangeID>
			<xsl:for-each select="ns2:Facility/cobielite:AssetTypes">
				<cobielite:AssetTypes>
					<xsl:for-each select="ns0:AssetType[fn:exists(cobielite:Jobs)]">
						<xsl:variable name="var1_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
						<xsl:variable name="var2_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
						<xsl:variable name="var3_externalID" as="node()?" select="@cobielite:externalID"/>
						<pwd:AssetType>
							<xsl:if test="fn:exists($var2_externalEntityName)">
								<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var2_externalEntityName)"/>
							</xsl:if>
							<xsl:if test="fn:exists($var3_externalID)">
								<xsl:attribute name="cobielite:externalID" select="fn:string($var3_externalID)"/>
							</xsl:if>
							<xsl:if test="fn:exists($var1_externalSystemName)">
								<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var1_externalSystemName)"/>
							</xsl:if>
							<cobielite:AssetTypeName>
								<xsl:sequence select="fn:string(cobielite:AssetTypeName)"/>
							</cobielite:AssetTypeName>
							<xsl:for-each select="cobielite:AssetTypeCategory">
								<cobielite:AssetTypeCategory>
									<xsl:sequence select="fn:string(.)"/>
								</cobielite:AssetTypeCategory>
							</xsl:for-each>
							<xsl:for-each select="cobielite:AssetTypeDescription">
								<cobielite:AssetTypeDescription>
									<xsl:sequence select="fn:string(.)"/>
								</cobielite:AssetTypeDescription>
							</xsl:for-each>
							<xsl:for-each select="cobielite:AssetTypeManufacturerContactAssignments">
								<cobielite:AssetTypeManufacturerContactAssignments>
									<xsl:sequence select="(./@node(), ./node())"/>
								</cobielite:AssetTypeManufacturerContactAssignments>
							</xsl:for-each>
							<xsl:for-each select="cobielite:AssetTypeModelNumber">
								<cobielite:AssetTypeModelNumber>
									<xsl:sequence select="fn:string(.)"/>
								</cobielite:AssetTypeModelNumber>
							</xsl:for-each>
							<xsl:for-each select="cobielite:Assets">
								<cobielite:Assets>
									<xsl:sequence select="()"/>
								</cobielite:Assets>
							</xsl:for-each>
							<xsl:for-each select="cobielite:AssetTypeDocuments">
								<cobielite:AssetTypeDocuments>
									<xsl:for-each select="ns3:Document">
										<xsl:variable name="var4_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
										<xsl:variable name="var5_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
										<xsl:variable name="var6_externalID" as="node()?" select="@cobielite:externalID"/>
										<doc:Document>
											<xsl:if test="fn:exists($var5_externalEntityName)">
												<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var5_externalEntityName)"/>
											</xsl:if>
											<xsl:if test="fn:exists($var6_externalID)">
												<xsl:attribute name="cobielite:externalID" select="fn:string($var6_externalID)"/>
											</xsl:if>
											<xsl:if test="fn:exists($var4_externalSystemName)">
												<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var4_externalSystemName)"/>
											</xsl:if>
											<cobielite:DocumentName>
												<xsl:sequence select="fn:string(cobielite:DocumentName)"/>
											</cobielite:DocumentName>
											<xsl:for-each select="cobielite:DocumentCategory">
												<cobielite:DocumentCategory>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:DocumentCategory>
											</xsl:for-each>
											<xsl:for-each select="cobielite:DocumentDescription">
												<cobielite:DocumentDescription>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:DocumentDescription>
											</xsl:for-each>
											<xsl:for-each select="cobielite:DocumentURI">
												<cobielite:DocumentURI>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:DocumentURI>
											</xsl:for-each>
											<xsl:for-each select="cobielite:DocumentReferenceURI">
												<cobielite:DocumentReferenceURI>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:DocumentReferenceURI>
											</xsl:for-each>
										</doc:Document>
									</xsl:for-each>
								</cobielite:AssetTypeDocuments>
							</xsl:for-each>
							<xsl:for-each select="cobielite:Jobs">
								<cobielite:Jobs>
									<xsl:for-each select="ns4:Job">
										<xsl:variable name="var7_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
										<xsl:variable name="var8_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
										<xsl:variable name="var9_externalID" as="node()?" select="@cobielite:externalID"/>
										<pwd:Job>
											<xsl:if test="fn:exists($var8_externalEntityName)">
												<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var8_externalEntityName)"/>
											</xsl:if>
											<xsl:if test="fn:exists($var9_externalID)">
												<xsl:attribute name="cobielite:externalID" select="fn:string($var9_externalID)"/>
											</xsl:if>
											<xsl:if test="fn:exists($var7_externalSystemName)">
												<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var7_externalSystemName)"/>
											</xsl:if>
											<cobielite:JobName>
												<xsl:sequence select="fn:string(cobielite:JobName)"/>
											</cobielite:JobName>
											<cobielite:JobTaskID>
												<xsl:sequence select="fn:string(cobielite:JobTaskID)"/>
											</cobielite:JobTaskID>
											<xsl:for-each select="cobielite:JobCategory">
												<cobielite:JobCategory>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:JobCategory>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobStatus">
												<cobielite:JobStatus>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:JobStatus>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobDescription">
												<cobielite:JobDescription>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:JobDescription>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobDuration">
												<cobielite:JobDuration>
													<xsl:sequence select="(./@node(), ./node())"/>
												</cobielite:JobDuration>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobStartDate">
												<cobielite:JobStartDate>
													<xsl:sequence select="xs:string(xs:date(fn:string(.)))"/>
												</cobielite:JobStartDate>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobStartConditionDescription">
												<cobielite:JobStartConditionDescription>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:JobStartConditionDescription>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobFrequencyValue">
												<cobielite:JobFrequencyValue>
													<xsl:sequence select="(./@node(), ./node())"/>
												</cobielite:JobFrequencyValue>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobPriorTaskID">
												<cobielite:JobPriorTaskID>
													<xsl:sequence select="fn:string(.)"/>
												</cobielite:JobPriorTaskID>
											</xsl:for-each>
											<xsl:for-each select="cobielite:Resources">
												<cobielite:Resources>
													<xsl:for-each select="ns5:Resource">
														<xsl:variable name="var10_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
														<xsl:variable name="var11_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
														<xsl:variable name="var12_externalID" as="node()?" select="@cobielite:externalID"/>
														<pwd:Resource>
															<xsl:if test="fn:exists($var11_externalEntityName)">
																<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var11_externalEntityName)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var12_externalID)">
																<xsl:attribute name="cobielite:externalID" select="fn:string($var12_externalID)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var10_externalSystemName)">
																<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var10_externalSystemName)"/>
															</xsl:if>
															<cobielite:ResourceName>
																<xsl:sequence select="fn:string(cobielite:ResourceName)"/>
															</cobielite:ResourceName>
															<xsl:for-each select="cobielite:ResourceCategory">
																<cobielite:ResourceCategory>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:ResourceCategory>
															</xsl:for-each>
															<xsl:for-each select="cobielite:ResourceDescription">
																<cobielite:ResourceDescription>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:ResourceDescription>
															</xsl:for-each>
															<xsl:for-each select="cobielite:ResourceAttributes">
																<cobielite:ResourceAttributes>
																	<xsl:for-each select="ns1:Attribute">
																		<xsl:variable name="var13_propertySetExternalIdentifier" as="node()?" select="@cobielite:propertySetExternalIdentifier"/>
																		<xsl:variable name="var14_propertySetName" as="node()?" select="@cobielite:propertySetName"/>
																		<xsl:variable name="var15_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
																		<xsl:variable name="var16_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
																		<xsl:variable name="var17_externalID" as="node()?" select="@cobielite:externalID"/>
																		<att:Attribute>
																			<xsl:if test="fn:exists($var16_externalEntityName)">
																				<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var16_externalEntityName)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var17_externalID)">
																				<xsl:attribute name="cobielite:externalID" select="fn:string($var17_externalID)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var15_externalSystemName)">
																				<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var15_externalSystemName)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var14_propertySetName)">
																				<xsl:attribute name="cobielite:propertySetName" select="fn:string($var14_propertySetName)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var13_propertySetExternalIdentifier)">
																				<xsl:attribute name="cobielite:propertySetExternalIdentifier" select="fn:string($var13_propertySetExternalIdentifier)"/>
																			</xsl:if>
																			<cobielite:AttributeName>
																				<xsl:sequence select="fn:string(cobielite:AttributeName)"/>
																			</cobielite:AttributeName>
																			<cobielite:AttributeCategory>
																				<xsl:sequence select="fn:string(cobielite:AttributeCategory)"/>
																			</cobielite:AttributeCategory>
																			<xsl:for-each select="cobielite:AttributeDescription">
																				<cobielite:AttributeDescription>
																					<xsl:sequence select="fn:string(.)"/>
																				</cobielite:AttributeDescription>
																			</xsl:for-each>
																			<xsl:for-each select="cobielite:AttributeValue">
																				<cobielite:AttributeValue>
																					<xsl:sequence select="(./@node(), ./node())"/>
																				</cobielite:AttributeValue>
																			</xsl:for-each>
																		</att:Attribute>
																	</xsl:for-each>
																</cobielite:ResourceAttributes>
															</xsl:for-each>
															<xsl:for-each select="cobielite:ResourceDocuments">
																<cobielite:ResourceDocuments>
																	<xsl:for-each select="ns3:Document">
																		<xsl:variable name="var18_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
																		<xsl:variable name="var19_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
																		<xsl:variable name="var20_externalID" as="node()?" select="@cobielite:externalID"/>
																		<doc:Document>
																			<xsl:if test="fn:exists($var19_externalEntityName)">
																				<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var19_externalEntityName)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var20_externalID)">
																				<xsl:attribute name="cobielite:externalID" select="fn:string($var20_externalID)"/>
																			</xsl:if>
																			<xsl:if test="fn:exists($var18_externalSystemName)">
																				<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var18_externalSystemName)"/>
																			</xsl:if>
																			<cobielite:DocumentName>
																				<xsl:sequence select="fn:string(cobielite:DocumentName)"/>
																			</cobielite:DocumentName>
																			<xsl:for-each select="cobielite:DocumentCategory">
																				<cobielite:DocumentCategory>
																					<xsl:sequence select="fn:string(.)"/>
																				</cobielite:DocumentCategory>
																			</xsl:for-each>
																			<xsl:for-each select="cobielite:DocumentDescription">
																				<cobielite:DocumentDescription>
																					<xsl:sequence select="fn:string(.)"/>
																				</cobielite:DocumentDescription>
																			</xsl:for-each>
																			<xsl:for-each select="cobielite:DocumentURI">
																				<cobielite:DocumentURI>
																					<xsl:sequence select="fn:string(.)"/>
																				</cobielite:DocumentURI>
																			</xsl:for-each>
																			<xsl:for-each select="cobielite:DocumentReferenceURI">
																				<cobielite:DocumentReferenceURI>
																					<xsl:sequence select="fn:string(.)"/>
																				</cobielite:DocumentReferenceURI>
																			</xsl:for-each>
																		</doc:Document>
																	</xsl:for-each>
																</cobielite:ResourceDocuments>
															</xsl:for-each>
														</pwd:Resource>
													</xsl:for-each>
												</cobielite:Resources>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobAttributes">
												<cobielite:JobAttributes>
													<xsl:for-each select="ns1:Attribute">
														<xsl:variable name="var21_propertySetExternalIdentifier" as="node()?" select="@cobielite:propertySetExternalIdentifier"/>
														<xsl:variable name="var22_propertySetName" as="node()?" select="@cobielite:propertySetName"/>
														<xsl:variable name="var23_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
														<xsl:variable name="var24_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
														<xsl:variable name="var25_externalID" as="node()?" select="@cobielite:externalID"/>
														<att:Attribute>
															<xsl:if test="fn:exists($var24_externalEntityName)">
																<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var24_externalEntityName)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var25_externalID)">
																<xsl:attribute name="cobielite:externalID" select="fn:string($var25_externalID)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var23_externalSystemName)">
																<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var23_externalSystemName)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var22_propertySetName)">
																<xsl:attribute name="cobielite:propertySetName" select="fn:string($var22_propertySetName)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var21_propertySetExternalIdentifier)">
																<xsl:attribute name="cobielite:propertySetExternalIdentifier" select="fn:string($var21_propertySetExternalIdentifier)"/>
															</xsl:if>
															<cobielite:AttributeName>
																<xsl:sequence select="fn:string(cobielite:AttributeName)"/>
															</cobielite:AttributeName>
															<cobielite:AttributeCategory>
																<xsl:sequence select="fn:string(cobielite:AttributeCategory)"/>
															</cobielite:AttributeCategory>
															<xsl:for-each select="cobielite:AttributeDescription">
																<cobielite:AttributeDescription>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:AttributeDescription>
															</xsl:for-each>
															<xsl:for-each select="cobielite:AttributeValue">
																<cobielite:AttributeValue>
																	<xsl:sequence select="(./@node(), ./node())"/>
																</cobielite:AttributeValue>
															</xsl:for-each>
														</att:Attribute>
													</xsl:for-each>
												</cobielite:JobAttributes>
											</xsl:for-each>
											<xsl:for-each select="cobielite:JobDocuments">
												<cobielite:JobDocuments>
													<xsl:for-each select="ns3:Document">
														<xsl:variable name="var26_externalSystemName" as="node()?" select="@cobielite:externalSystemName"/>
														<xsl:variable name="var27_externalEntityName" as="node()?" select="@cobielite:externalEntityName"/>
														<xsl:variable name="var28_externalID" as="node()?" select="@cobielite:externalID"/>
														<doc:Document>
															<xsl:if test="fn:exists($var27_externalEntityName)">
																<xsl:attribute name="cobielite:externalEntityName" select="fn:string($var27_externalEntityName)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var28_externalID)">
																<xsl:attribute name="cobielite:externalID" select="fn:string($var28_externalID)"/>
															</xsl:if>
															<xsl:if test="fn:exists($var26_externalSystemName)">
																<xsl:attribute name="cobielite:externalSystemName" select="fn:string($var26_externalSystemName)"/>
															</xsl:if>
															<cobielite:DocumentName>
																<xsl:sequence select="fn:string(cobielite:DocumentName)"/>
															</cobielite:DocumentName>
															<xsl:for-each select="cobielite:DocumentCategory">
																<cobielite:DocumentCategory>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:DocumentCategory>
															</xsl:for-each>
															<xsl:for-each select="cobielite:DocumentDescription">
																<cobielite:DocumentDescription>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:DocumentDescription>
															</xsl:for-each>
															<xsl:for-each select="cobielite:DocumentURI">
																<cobielite:DocumentURI>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:DocumentURI>
															</xsl:for-each>
															<xsl:for-each select="cobielite:DocumentReferenceURI">
																<cobielite:DocumentReferenceURI>
																	<xsl:sequence select="fn:string(.)"/>
																</cobielite:DocumentReferenceURI>
															</xsl:for-each>
														</doc:Document>
													</xsl:for-each>
												</cobielite:JobDocuments>
											</xsl:for-each>
										</pwd:Job>
									</xsl:for-each>
								</cobielite:Jobs>
							</xsl:for-each>
						</pwd:AssetType>
					</xsl:for-each>
				</cobielite:AssetTypes>
			</xsl:for-each>
		</ProductTypemaintenance>
	</xsl:template>
</xsl:stylesheet>