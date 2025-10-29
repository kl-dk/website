# KLGatewayLTTCarePlan - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGatewayLTTCarePlan**

## Resource Profile: KLGatewayLTTCarePlan 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTCarePlan |

 
Care plan for Danish municipalities to use for each child or youth regarding the health act §126a. 

## Scope and usage

A CarePlan is created as soon as a citizen participates in an LTT (Lettilgængeligt tilbud) at the municipality. It models the treatment pathway the citizen follows within the LTT and groups together all related contacts belonging to the same treatment process.

CarePlan.status and CarePlan.intent are mandatory in the FHIR CarePlan resource. CarePlan.intent is always 'plan' in this implementation guide. CarePlan status should at least distiguish between 'active', 'completed' and 'entered-in-error'. The status 'active' means that the care plan is currently being acted upon and should be used until the service is completed and the status of the care plan changes to 'completed'. If the care plan has been created by mistake and should never have existed, then the status 'entered-in-error' must be used.

CarePlan.activity.detail.status is also mandatory, and it is recommended to use the status codes 'in-progress', 'completed' and 'entered-in-error'. The status should align with the CarePlan.status.

CarePlan.subject references the citizen, which is always the child or youth.

CarePlan.period.start is the tima at which the service for that specific citizen was first started (forløbstart).

CarePlan.activity.detail.reasonCode describes the child or youth's issue and the focus area of treatment.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

| | | |
| :--- | :--- | :--- |
| forløbsstatus | Indikerer om forløbet er igangsat, er færdiggjort eller oprettet ved en fejl | CarePlan.status |
| forløbshensigt | Indikerer niveauet af autorisation og hvor langt i processen forløbet er | CarePlan.intent |
| forløbstart | Tid, hvor forløbet er startet fx på baggrund af en henvendelse | CarePlan.period.start |
| forløbslut | Tid, hvor forløbet er afsluttet. Forløb afsluttes når de vurderes fuldført eller hvis der konstateres frafald som ikke vurderes realistisk at genoptage | CarePlan.period.end |
| forløbssubjekt | Den borger (barn eller ung) som forløbet retter sig mod | CarePlan.subject |
| forløbskode | Kode, der udtrykker hvilken klasse forløbet tilhører. | CarePlan.activity.detail.code |
| forløbstema | Tema omhandler de udfordringer barnet/den unge kommer med. Temaer kan blive afdækket i forsamtale, i screening eller i behandlingsforløb. Det er muligt at angive flere temaer og løbende opdatere temaer registreret tidligere i forløb | CarePlan.activity.detail.reasonCode |
| forløbsAktivitetsstatus | Indikerer om forløbet er igangsat, er færdiggjort eller oprettet ved en fejl | CarePlan.activity.detail.status |

**Usages:**

* Use this Profile: [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md)
* Refer to this Profile: [BasedOnCarePlan](StructureDefinition-klgateway-ltt-encounter-based-on-care-plan.md) and [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md)
* Examples for this Profile: [CarePlan/Forloeb](CarePlan-Forloeb.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-care-plan)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-care-plan.csv), [Excel](StructureDefinition-klgateway-ltt-care-plan.xlsx), [Schematron](StructureDefinition-klgateway-ltt-care-plan.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-care-plan",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTCarePlan",
  "title" : "KLGatewayLTTCarePlan",
  "status" : "active",
  "date" : "2025-10-29T22:49:04+01:00",
  "publisher" : "Kommunernes Landsforening",
  "contact" : [
    {
      "name" : "Kommunernes Landsforening",
      "telecom" : [
        {
          "system" : "url",
          "value" : "http://kl.dk"
        }
      ]
    }
  ],
  "description" : "Care plan for Danish municipalities to use for each child or youth regarding the health act §126a.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "workflow",
      "uri" : "http://hl7.org/fhir/workflow",
      "name" : "Workflow Pattern"
    },
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "w5",
      "uri" : "http://hl7.org/fhir/fivews",
      "name" : "FiveWs Pattern Mapping"
    },
    {
      "identity" : "v2",
      "uri" : "http://hl7.org/v2",
      "name" : "HL7 v2 Mapping"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "CarePlan",
  "baseDefinition" : "http://hl7.org/fhir/StructureDefinition/CarePlan",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "CarePlan",
        "path" : "CarePlan",
        "constraint" : [
          {
            "key" : "klgateway-ltt-careplan-endtime",
            "severity" : "error",
            "human" : "If the care plan has status = 'completed', then there must be an end time.",
            "expression" : "status = 'completed' implies period.end.exists()",
            "source" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan"
          }
        ]
      },
      {
        "id" : "CarePlan.instantiatesCanonical",
        "path" : "CarePlan.instantiatesCanonical",
        "max" : "0"
      },
      {
        "id" : "CarePlan.instantiatesUri",
        "path" : "CarePlan.instantiatesUri",
        "max" : "0"
      },
      {
        "id" : "CarePlan.basedOn",
        "path" : "CarePlan.basedOn",
        "max" : "0"
      },
      {
        "id" : "CarePlan.replaces",
        "path" : "CarePlan.replaces",
        "max" : "0"
      },
      {
        "id" : "CarePlan.partOf",
        "path" : "CarePlan.partOf",
        "max" : "0"
      },
      {
        "id" : "CarePlan.status",
        "path" : "CarePlan.status",
        "short" : "[DK] forløbsstatus"
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "short" : "[DK] forløbshensigt",
        "patternCode" : "plan"
      },
      {
        "id" : "CarePlan.category",
        "path" : "CarePlan.category",
        "max" : "0"
      },
      {
        "id" : "CarePlan.title",
        "path" : "CarePlan.title",
        "max" : "0"
      },
      {
        "id" : "CarePlan.description",
        "path" : "CarePlan.description",
        "max" : "0"
      },
      {
        "id" : "CarePlan.subject",
        "path" : "CarePlan.subject",
        "short" : "[DK] forløbssubjekt",
        "type" : [
          {
            "code" : "Reference",
            "targetProfile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
            ]
          }
        ]
      },
      {
        "id" : "CarePlan.encounter",
        "path" : "CarePlan.encounter",
        "max" : "0"
      },
      {
        "id" : "CarePlan.period",
        "path" : "CarePlan.period",
        "min" : 1
      },
      {
        "id" : "CarePlan.period.start",
        "path" : "CarePlan.period.start",
        "short" : "[DK] forløbstart",
        "min" : 1
      },
      {
        "id" : "CarePlan.period.end",
        "path" : "CarePlan.period.end",
        "short" : "[DK] forløbslut"
      },
      {
        "id" : "CarePlan.created",
        "path" : "CarePlan.created",
        "max" : "0"
      },
      {
        "id" : "CarePlan.author",
        "path" : "CarePlan.author",
        "max" : "0"
      },
      {
        "id" : "CarePlan.contributor",
        "path" : "CarePlan.contributor",
        "max" : "0"
      },
      {
        "id" : "CarePlan.careTeam",
        "path" : "CarePlan.careTeam",
        "max" : "0"
      },
      {
        "id" : "CarePlan.addresses",
        "path" : "CarePlan.addresses",
        "max" : "0"
      },
      {
        "id" : "CarePlan.supportingInfo",
        "path" : "CarePlan.supportingInfo",
        "max" : "0"
      },
      {
        "id" : "CarePlan.goal",
        "path" : "CarePlan.goal",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity",
        "path" : "CarePlan.activity",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CarePlan.activity.outcomeCodeableConcept",
        "path" : "CarePlan.activity.outcomeCodeableConcept",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.outcomeReference",
        "path" : "CarePlan.activity.outcomeReference",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.progress",
        "path" : "CarePlan.activity.progress",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.reference",
        "path" : "CarePlan.activity.reference",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail",
        "path" : "CarePlan.activity.detail",
        "min" : 1
      },
      {
        "id" : "CarePlan.activity.detail.kind",
        "path" : "CarePlan.activity.detail.kind",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.instantiatesCanonical",
        "path" : "CarePlan.activity.detail.instantiatesCanonical",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.instantiatesUri",
        "path" : "CarePlan.activity.detail.instantiatesUri",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.code",
        "path" : "CarePlan.activity.detail.code",
        "short" : "[DK] forløbskode",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-care-plan-activity-types"
        }
      },
      {
        "id" : "CarePlan.activity.detail.code.coding",
        "path" : "CarePlan.activity.detail.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.system",
        "path" : "CarePlan.activity.detail.code.coding.system",
        "patternUri" : "http://fhir.kl.dk/term/CodeSystem/CareSocialCodes"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.version",
        "path" : "CarePlan.activity.detail.code.coding.version",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.code",
        "path" : "CarePlan.activity.detail.code.coding.code",
        "patternCode" : "01302bcb-c7f3-42c4-8ded-68e33da064eb"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.display",
        "path" : "CarePlan.activity.detail.code.coding.display",
        "patternString" : "Lettilgængelige tilbud til børn og unge i psykisk mistrivsel"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.userSelected",
        "path" : "CarePlan.activity.detail.code.coding.userSelected",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.code.text",
        "path" : "CarePlan.activity.detail.code.text",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.reasonCode",
        "path" : "CarePlan.activity.detail.reasonCode",
        "short" : "[DK] forløbstema",
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-focus-area"
        }
      },
      {
        "id" : "CarePlan.activity.detail.reasonCode.coding",
        "path" : "CarePlan.activity.detail.reasonCode.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CarePlan.activity.detail.reasonCode.coding.version",
        "path" : "CarePlan.activity.detail.reasonCode.coding.version",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.reasonCode.coding.userSelected",
        "path" : "CarePlan.activity.detail.reasonCode.coding.userSelected",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.reasonCode.text",
        "path" : "CarePlan.activity.detail.reasonCode.text",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.reasonReference",
        "path" : "CarePlan.activity.detail.reasonReference",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.goal",
        "path" : "CarePlan.activity.detail.goal",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.status",
        "path" : "CarePlan.activity.detail.status",
        "short" : "[DK] forløbsAktivitetsstatus"
      },
      {
        "id" : "CarePlan.activity.detail.statusReason",
        "path" : "CarePlan.activity.detail.statusReason",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.doNotPerform",
        "path" : "CarePlan.activity.detail.doNotPerform",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.scheduled[x]",
        "path" : "CarePlan.activity.detail.scheduled[x]",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.location",
        "path" : "CarePlan.activity.detail.location",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.performer",
        "path" : "CarePlan.activity.detail.performer",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.product[x]",
        "path" : "CarePlan.activity.detail.product[x]",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.dailyAmount",
        "path" : "CarePlan.activity.detail.dailyAmount",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.quantity",
        "path" : "CarePlan.activity.detail.quantity",
        "max" : "0"
      },
      {
        "id" : "CarePlan.activity.detail.description",
        "path" : "CarePlan.activity.detail.description",
        "max" : "0"
      },
      {
        "id" : "CarePlan.note",
        "path" : "CarePlan.note",
        "max" : "0"
      }
    ]
  }
}

```
