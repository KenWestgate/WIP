SELECT DISTINCT "Capability"
	FROM public."AssetCapability";
	
SELECT a."Id", ac."Capability", cpl."Capability", cpl."Parameter", acp."Value"
	FROM public."Asset" as a
		INNER JOIN public."AssetCapability" as ac
			ON a."Id" = ac."AssetId" AND ac."Capability" = 'gassensor'
		INNER JOIN public."AssetCapabilityParameter" acp
			ON acp."AssetCapabilityId" = ac."Id"
		INNER JOIN public."CapabilityParameterLookUp" cpl
			ON cpl."Id" = acp."CapabilityParameterId"

SELECT a."Id", ac."Capability", cpl."Capability", cpl."Parameter", acp."Value"
	FROM public."Asset" as a
		INNER JOIN public."AssetCapability" as ac
			ON a."Id" = ac."AssetId" AND ac."Capability" = 'batterypercent'
		INNER JOIN public."AssetCapabilityParameter" acp
			ON acp."AssetCapabilityId" = ac."Id"
		INNER JOIN public."CapabilityParameterLookUp" cpl
			ON cpl."Id" = acp."CapabilityParameterId"

SELECT a."AssetName", v."Timestamp", i."CapabilityName", i."CapabilityParameter", v."Name", v."Value"
	FROM public."Asset" AS a
		INNER JOIN public."Identifier" i
			ON a."Id" = i."AssetId"
		INNER JOIN public."Value" v
			ON i."Id" = v."IdentifierId"
WHERE a."AirboxAssetId" = 'be294b63-cfeb-455b-b88f-05f6e35e510d'
ORDER BY v."Timestamp" DESC;