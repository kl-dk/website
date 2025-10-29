# KLGatewayLTTReferral - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGatewayLTTReferral**

## Resource Profile: KLGatewayLTTReferral 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-referral | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTReferral |

 
Referral of the child or youth to other services. 

## Scope and usage

This model is used whenever a referral is created for a child or youth as part of the LTT. Notice that a referral does not necessarily mean that the LTT for the citizen is completed.

CarePlan.activity.detail.code holds the referral code, which has to come from the specified list of referrals.

Careplan.period.start is when the referral is issued.

CarePlan.status and CarePlan.intent are mandatory. CarePlan.intent is always 'plan' in this implementation guide. CarePlan.status should be either 'completed' or 'entered-in-error'.

CarePlan.activity.detail.status is also mandatory, and the status 'completed' is expected to be used. It is recommended not to use 'entered-in-error' - if the CarePlan is entered-in-error use CarePlan.status.

CarePlan.subject references the citizen.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

| | | |
| :--- | :--- | :--- |
| henvisningsstatus | Indikerer om henvisningen er klar til at blive handlet på, om dokumentationen repræsentere en fremtidig intention eller er historisk. | CarePlan.status |
| henvisningshensigt | Indikerer niveauet af autorisation og hvor langt i planlægningen henvisningen er | CarePlan.intent |
| henvisningsAktivitetsstatus | Indikerer om henvisningen er igangsat, eller om den ikke er startet, er aflyst, eller er færdiggjort. | CarePlan.activity.detail.status |
| forløbsreference | Reference til det forløb borgeren deltager i, da henvisningen foretages | CarePlan.basedOn |
| henvisningssubjekt | Den borger, som henvisningen retter sig mod | CarePlan.subject |
| henvisningstidspunkt | Det tidspunkt henvisningen foretages | CarePlan.period.start |
| henvisningskode | Kode, der udtrykker hvortil borgeren er henvist | CarePlan.activity.detail.code |

**Usages:**

* Use this Profile: [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md)
* Examples for this Profile: [CarePlan/Henvisning](CarePlan-Henvisning.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-referral)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-referral.csv), [Excel](StructureDefinition-klgateway-ltt-referral.xlsx), [Schematron](StructureDefinition-klgateway-ltt-referral.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-referral",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-referral",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTReferral",
  "title" : "KLGatewayLTTReferral",
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
  "description" : "Referral of the child or youth to other services.",
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
        "id" : "CarePlan.identifier",
        "path" : "CarePlan.identifier",
        "max" : "0"
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
        "short" : "[DK] forløbsreference",
        "min" : 1,
        "max" : "1",
        "type" : [
          {
            "extension" : [
              {
                "url" : "http://hl7.org/fhir/StructureDefinition/structuredefinition-hierarchy",
                "valueBoolean" : true
              }
            ],
            "code" : "Reference",
            "targetProfile" : [
              "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-care-plan"
            ]
          }
        ]
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
        "short" : "[DK] henvisningsstatus"
      },
      {
        "id" : "CarePlan.intent",
        "path" : "CarePlan.intent",
        "short" : "[DK] henvisningshensigt",
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
        "short" : "[DK] henvisningssubjekt",
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
        "short" : "[DK] henvisningstidspunkt",
        "min" : 1
      },
      {
        "id" : "CarePlan.period.end",
        "path" : "CarePlan.period.end",
        "max" : "0"
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
        "short" : "[DK] henvisningskode",
        "min" : 1,
        "binding" : {
          "strength" : "required",
          "valueSet" : "http://fhir.kl.dk/ltt/ValueSet/fkgateway-ltt-type-of-referral"
        }
      },
      {
        "id" : "CarePlan.activity.detail.code.coding",
        "path" : "CarePlan.activity.detail.code.coding",
        "min" : 1,
        "max" : "1"
      },
      {
        "id" : "CarePlan.activity.detail.code.coding.version",
        "path" : "CarePlan.activity.detail.code.coding.version",
        "max" : "0"
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
        "short" : "[DK] henvisningsAktivitetsstatus",
        "patternCode" : "completed"
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
