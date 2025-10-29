# Artifacts Summary - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* **Artifacts Summary**

## Artifacts Summary

This page provides a list of the FHIR artifacts defined as part of this implementation guide.

### Structures: Resource Profiles 

These define constraints on FHIR resources for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [KLGAtewayLTTIncrementalDelivery](StructureDefinition-klgateway-ltt-incremental-delivery.md) | Delivery for all delivery reports made since last update (unordered). |
| [KLGatewayLTTCarePlan](StructureDefinition-klgateway-ltt-care-plan.md) | Care plan for Danish municipalities to use for each child or youth regarding the health act §126a. |
| [KLGatewayLTTCitizen](StructureDefinition-klgateway-ltt-citizen.md) | Administrative information about a citizen participating in LTT. |
| [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md) | Delivery report to deliver data for each child or youth. |
| [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md) | Encounter between a child or youth and the LTT |
| [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md) | Referral of the child or youth to other services. |

### Structures: Extension Definitions 

These define constraints on FHIR data types for systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [BasedOnCarePlan](StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.md) | Extension for pointing to the care plan describing why this encounter is taking place (will be part of R5 and comming FHIR versions without needing the extension) |
| [DeliveryType](StructureDefinition-klgateway-ltt-encounter-delivery-type.md) | Extension for a code that specifies some context of how a treatment is delivered to a child or youth. |

### Terminology: Value Sets 

These define sets of codes used by systems conforming to this implementation guide.

| | |
| :--- | :--- |
| [Lettilgængeligt Tilbud - Deltagere i kontakt](ValueSet-fkgateway-ltt-type-of-participants.md) | Participants |
| [Lettilgængeligt Tilbud - Forløbskoder](ValueSet-fkgateway-ltt-care-plan-activity-types.md) | Types of careplan acitivities in LTT |
| [Lettilgængeligt Tilbud - Henvisning](ValueSet-fkgateway-ltt-type-of-referral.md) | Referral/Guidance to another service. |
| [Lettilgængeligt Tilbud - Kontakttyper](ValueSet-fkgateway-ltt-encounter-types.md) | Types of encounters in LTT |
| [Lettilgængeligt Tilbud - Leveringstype](ValueSet-fkgateway-ltt-type-of-delivery.md) | Delivery types |
| [Lettilgængeligt Tilbud - Tema](ValueSet-fkgateway-ltt-focus-area.md) | Focus areas reflect the challenges presented by the child or youth. |

### Example: Example Instances 

These are example instances that show what data produced and consumed by systems conforming with this implementation guide might look like.

| | |
| :--- | :--- |
| [Behandlingskontakt](Encounter-Behandlingskontakt.md) | Josefines seneste behandlingskontakt. |
| [DeliveryReport-Josefine-1](Bundle-DeliveryReport-Josefine-1.md) | DeliveryReport-Josefine-1 |
| [DeliveryReport-Josefine-2](Bundle-DeliveryReport-Josefine-2.md) | DeliveryReport-Josefine-2 |
| [DeliveryReport-Josefine-3](Bundle-DeliveryReport-Josefine-3.md) | DeliveryReport-Josefine-3 |
| [DeliveryReport-Josefine-4](Bundle-DeliveryReport-Josefine-4.md) | DeliveryReport-Josefine-4 |
| [DeliveryReport-Josefine-5-6-7](Bundle-DeliveryReport-Josefine-5-6-7.md) | DeliveryReport-Josefine-5-6-7 |
| [DeliveryReport-Josefine-8](Bundle-DeliveryReport-Josefine-8.md) | DeliveryReport-Josefine-8 |
| [DeliveryReport-Josefine-9](Bundle-DeliveryReport-Josefine-9.md) | DeliveryReport-Josefine-9 |
| [Forloeb](CarePlan-Forloeb.md) | Forløb for barnet Josefine |
| [Henvisning](CarePlan-Henvisning.md) | Henvisning for barnet Josefine |
| [Josefine](Patient-Josefine.md) | Barnet Josefine |
| [RapportOmJosefine](Bundle-RapportOmJosefine.md) | Rapport om Josefine. |
| [TestIncrementalDelivery](Bundle-TestIncrementalDelivery.md) | Example of an incremental delivery with one delivery report |

