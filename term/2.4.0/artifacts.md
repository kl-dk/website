# Artifacts Summary - KL Terminologi v2.4.0

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CancellationTypes](ValueSet-CancellationTypes.md) | Cancellation valueset, to be implemented in KL-term and FKI |
| [KLBetydningKoderFSIII](ValueSet-KLImportanceLevelCodesFSIII.md) | Importance level codes (Betydning), as evaluated by the citizen |
| [KLBorgerIndforståetMedHenvendelseKoder](ValueSet-KLConsentToLiasing.md) | Codes for citizens knowledge of referal/request as defined by FFB |
| [KLBorgervurderingsObservationskoderFSIII](ValueSet-KLCitizenObservationCodesFSIII.md) | Observation codes for citizens own observations as defined by FSIII |
| [KLBorgervurderingsResultatkoderFSIII](ValueSet-KLCitizenObservationResultCodesFSIII.md) | Performance and Importance level codes, as evaluated by the citizen |
| [KLForebyggelseIndsatserFSIII](ValueSet-KLPreventionInterventionsFSIII.md) | Prevention and health promotion interventions as defined by FSIII |
| [KLForebyggelseOmråderFSIII](ValueSet-KLPreventionAreasFSIII.md) | Prevention areas (observation codes), used for documentation within prevention and health promotion |
| [KLFunktionsevneniveauFFB](ValueSet-KLSeveritiesFFB.md) | Severities related to conditions in FFB (funktionsevneniveau) |
| [KLFunktionsevneniveauFSIII](ValueSet-KLSeveritiesFSIII.md) | Severities related to conditions in FSIII home care (funktionsniveau) |
| [KLGenerelInformationFSIII](ValueSet-KLGeneralInformationFSIII.md) | Generel information codes (observations) as defined by FSIII |
| [KLHenvendelseHenvisningFraFSIII](ValueSet-KLRequestFromFSIII.md) | Type of service requesters as defined by FSIII |
| [KLHjemmeplejeIndsatserFSIII](ValueSet-KLHomeCareInterventionsFSIII.md) | Home Care Interventions as described by FSIII |
| [KLHjemmeplejeOmråderFSIII](ValueSet-KLHomeCareAreasFSIII.md) | Observation codes for the five home care areas as defined by FSIII |
| [KLIndsatser](ValueSet-KLInterventions.md) | Interventions as described by FSIII and FFB |
| [KLIndsatserFSIII](ValueSet-KLInterventionsFSIII.md) | Interventions as described by FSIII |
| [KLIndsatsforløbTypekoder](ValueSet-KLCarePlanCategoryCodes.md) | Codes for constraining the CarePlan category |
| [KLIngenOplysningerKoder](ValueSet-KLMatterOfInterestValues.md) | Matter of interest values to support when no observations have been made |
| [KLKildeTilOplysningFFB](ValueSet-KLMatterOfInterestInformerFFB.md) | Codes that identify who's perspective the matter-of-interest is comming from |
| [KLKomplikationskoderSCT](ValueSet-KLComplicationCodesSCT.md) | Codes that indicate whether an intervention had complications or not |
| [KLKontaktTyper](ValueSet-KLEncounterTypes.md) | Encounter types in Danish municipality health, social and elderly care (note that these are specific to this model, they are not replicas of a municipality terminology service) |
| [KLMålKategoriKoder](ValueSet-KLGoalTypeCodes.md) | Codes used to distinguish different kinds of goals |
| [KLMålgrupperFFB](ValueSet-KLTargetGroupsFFB.md) | Target groups as defined by FFB |
| [KLMåltypeKoder](ValueSet-KLChangeValueCodes.md) | Change values for goals (måltype). Express the target value for change of a condition |
| [KLMåltypeKoderFSIII](ValueSet-KLChangeValueCodesFSIII.md) | Change values for goals in FSIII (FSIII måltype). Express the target value for change of a health condition or funtional condition |
| [KLMåltypekoderFFB](ValueSet-KLChangeValueCodesFFB.md) | Change values for goals in FFB (FFB måltype). Express the target value for change of an activity or participation condition |
| [KLObservationskoder](ValueSet-KLObservationCodes.md) | SNOMED CT and NPU codes used in Danish municipalities |
| [KLOpfølgningKoderFFB](ValueSet-KLFollowUpCodesFFB.md) | Follow-up codes used in FFB |
| [KLOpfølgningKoderFSIII](ValueSet-KLFollowUpCodesFSIII.md) | Follow-up codes used in FSIII |
| [KLOpfølgningKodes](ValueSet-KLFollowUpCodes.md) | Follow-up codes used in Danish municipalities |
| [KLOplysningKoder](ValueSet-KLInformationCodes.md) | Information codes from FSIII and FFB (Område, Tema, Generelle oplysninger) |
| [KLOplysningsaktivitetsOgVurderingskoder](ValueSet-KLInformationGatheringInvestigationCodes.md) | Codes that identify valid items in an investigation in Danish municipalities |
| [KLOplysningsaktivitetsTypeKoder](ValueSet-KLInformationGatheringTypeCodes.md) | Codes used to specify which kind of information gathering is conducted |
| [KLServiceTyper](ValueSet-KLServicesTypes.md) | Types of services that the Danish municipalities provide which is covered by FSIII and FFB |
| [KLStøttebehovsvurderingskoderFFB](ValueSet-KLNeedsAssessmentCodesFFB.md) | Needs assesment codes as defined in FFB |
| [KLSværhedgrader](ValueSet-KLSeverities.md) | Severities related to conditions |
| [KLSygeplejeIndsatserFSIII](ValueSet-KLNursingInterventionsFSIII.md) | Nursing interventions as described by FSIII |
| [KLSygeplejeOmråderFSIII](ValueSet-KLNursingAreasFSIII.md) | Observation codes for the 12 nursing areas as defined by FSIII |
| [KLTemaerFFB](ValueSet-KLThemesFFB.md) | FFB Themes |
| [KLTilbudsKoderFFB](ValueSet-KLServiceCodesFFB.md) | Social service (tilbud) as defined by FFB |
| [KLTilstandADKoderFFB](ValueSet-KLConditionADCodesFFB.md) | Danish municipality FFB condition codes for Activities and Participation |
| [KLTilstandFFKoderFFB](ValueSet-KLConditionFFCodesFFB.md) | Danish municipality FFB condition codes for body functions and structures |
| [KLTilstandKoder](ValueSet-KLConditionCodes.md) | Danish municipality condition codes |
| [KLTilstandKoderFFB](ValueSet-KLConditionCodesFFB.md) | Danish municipality FFB condition codes |
| [KLTilstandKoderFSIII](ValueSet-KLConditionCodesFSIII.md) | Danish municipality FSIII condition codes |
| [KLTilstandKoderForebyggelse](ValueSet-KLConditionCodesPrevention.md) | Danish municipality Prevention condition codes |
| [KLTilstandKoderTræning](ValueSet-KLConditionCodesTheraphy.md) | Danish municipality theraphy condition codes |
| [KLTilstandOKoderFFB](ValueSet-KLConditionOCodesFFB.md) | Danish municipality FFB condition codes for Environmental Factors |
| [KLTilstandeKoderHjemmepleje](ValueSet-KLConditionCodesHomeCare.md) | Danish municipality home care condition codes (funktionsevnetilstande) |
| [KLTilstandeKoderSygepleje](ValueSet-KLConditionCodesNursing.md) | Danish municipality nursing condition codes |
| [KLTilstandeOgMålgrupperFFB](ValueSet-KLConditionsAndTargetGroupsFFB.md) | Conditions and target groups as defined by FFB |
| [KLTræningIndsatserFSIII](ValueSet-KLTrainingInterventionsFSIII.md) | Training interventions as defined by FSIII |
| [KLTræningOmråderFSIII](ValueSet-KLTheraphyAreasFSIII.md) | Theraphy areas (observation codes), used for documentation within physical training, physiotheraphy and occupational theraphy in Danish Municipalities as defined by FSIII |
| [KLTypeAfObservationPåMål](ValueSet-KLTargetMeasureCodes.md) | Target measure code, that determines whether the target is expressed as a severity, change value or using another observation |
| [KLUdførelsesKoderFSIII](ValueSet-KLPerformanceLevelCodesFSIII.md) | Performance level codes (Udførelse), as evaluated by the citizen |
| [KLVurderingTypekoder](ValueSet-KLEvaluationTypeCodes.md) | Codes used to distinguish different kinds of evaluations |
| [KLVurderingTypekoderSCT](ValueSet-KLEvaluationTypeCodesSCT.md) | SNOMED CT codes used to distinguish different kinds of evaluations |
| [KLYdelserFFB](ValueSet-KLInterventionsFFB.md) | social interventions (ydelser) as defined by FFB |

### Terminology: Code Systems 

These define new code systems used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [CareSocialCodes](CodeSystem-CareSocialCodes.md) | Administrative/technical codes in Local Govenment Denmark (KL), associated with common use cases across areas or kl-core |
| [FBOE](CodeSystem-FBOE.md) | Concepts used for standardizing documentation for Danish postpartum nursing/childrens health promotion program in schools (Da: Sundhedsplejen). The concepts are utilized in the National Database for Children and Youth (LDBU). |
| [FFB](CodeSystem-FFB.md) | Codes from FFB |
| [FSIII](CodeSystem-FSIII.md) | Codes from FSIII |
| [KLLokaleKoder](CodeSystem-KLCommonproprietary.md) | Proprietary codes associated with KLCommonCareSocial, partial list, ID's likely to change. |
| [LTT](CodeSystem-LTT.md) | Concepts used for standardizing documentation for Danish children/teenagers with mental challenges whom are helped in readily available treatment offers in the Danish municipalities. |
| [NPU](CodeSystem-NPU.md) | NPUcodes used in Danish municipalities |

