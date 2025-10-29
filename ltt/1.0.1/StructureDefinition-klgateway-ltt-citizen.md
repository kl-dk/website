# KLGatewayLTTCitizen - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **KLGatewayLTTCitizen**

## Resource Profile: KLGatewayLTTCitizen 

| | |
| :--- | :--- |
| *Official URL*:http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen | *Version*:1.0.1 |
| Active as of 2025-10-29 | *Computable Name*:KLGatewayLTTCitizen |

 
Administrative information about a citizen participating in LTT. 

## Scope and usage

This model is used to identify the subject of a delivery report by the personal id number (CPR-nummer), which should go into Patient.identifier. The personal id number must be an official Danish 'CPR-nummer' without hyphen.

The model also identifies the managing organization that acts as the custodian of the reported data. The managing organization is identified by its official SOR code. The SOR codes should be documented in Patient.managingOrganization.identifier.

Citizen resources is used to identify only the child or youth and not the parents or legal guardians.

Patient.active is optional and assumed true, if not given. Patient.active = false is used to report entered-in-error. However, this option should only be used, if the patient is fully unknown to the municipality system, and should never have been in the system at all.

### Conversions between Danish information model and FHIR profile

Nedenstående tabel definerer kort den enkelte attribut på dansk og specificerer hvilke af FHIR-profilens atributter, der skal bruges til specifikation af indholdet.

| | | |
| :--- | :--- | :--- |
| CPR | Officielt cpr-nummer på borgeren | Patient.identifier |
| harAktivJournal | Angiver om borger har en aktiv journal i den journalførende organisation eller ej | Patient.active |
| journalførendeOrganisation | Organisation som ejer journalen med oplysninger | Patient.managingOrganization.identifier |

**Usages:**

* Use this Profile: [KLGatewayLTTDeliveryReport](StructureDefinition-klgateway-ltt-delivery-report.md)
* Refer to this Profile: [KLGatewayLTTCarePlan](StructureDefinition-klgateway-ltt-care-plan.md), [KLGatewayLTTEncounter](StructureDefinition-klgateway-ltt-encounter.md) and [KLGatewayLTTReferral](StructureDefinition-klgateway-ltt-referral.md)
* Examples for this Profile: [Patient/Josefine](Patient-Josefine.md)

You can also check for [usages in the FHIR IG Statistics](https://packages2.fhir.org/xig/kl.dk.fhir.ltt|current/StructureDefinition/klgateway-ltt-citizen)

### Formal Views of Profile Content

 [Description of Profiles, Differentials, Snapshots and how the different presentations work](http://build.fhir.org/ig/FHIR/ig-guidance/readingIgs.html#structure-definitions). 

 

Other representations of profile: [CSV](StructureDefinition-klgateway-ltt-citizen.csv), [Excel](StructureDefinition-klgateway-ltt-citizen.xlsx), [Schematron](StructureDefinition-klgateway-ltt-citizen.sch) 



## Resource Content

```json
{
  "resourceType" : "StructureDefinition",
  "id" : "klgateway-ltt-citizen",
  "url" : "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen",
  "version" : "1.0.1",
  "name" : "KLGatewayLTTCitizen",
  "title" : "KLGatewayLTTCitizen",
  "status" : "active",
  "date" : "2025-10-29T22:39:09+01:00",
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
  "description" : "Administrative information about a citizen participating in LTT.",
  "fhirVersion" : "4.0.1",
  "mapping" : [
    {
      "identity" : "rim",
      "uri" : "http://hl7.org/v3",
      "name" : "RIM Mapping"
    },
    {
      "identity" : "cda",
      "uri" : "http://hl7.org/v3/cda",
      "name" : "CDA (R2)"
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
    },
    {
      "identity" : "loinc",
      "uri" : "http://loinc.org",
      "name" : "LOINC code for the element"
    }
  ],
  "kind" : "resource",
  "abstract" : false,
  "type" : "Patient",
  "baseDefinition" : "http://hl7.dk/fhir/core/StructureDefinition/dk-core-patient",
  "derivation" : "constraint",
  "differential" : {
    "element" : [
      {
        "id" : "Patient",
        "path" : "Patient"
      },
      {
        "id" : "Patient.identifier",
        "path" : "Patient.identifier",
        "max" : "1"
      },
      {
        "id" : "Patient.identifier:cpr",
        "path" : "Patient.identifier",
        "sliceName" : "cpr",
        "short" : "[DK] CPR",
        "min" : 1
      },
      {
        "id" : "Patient.identifier:x-ecpr",
        "path" : "Patient.identifier",
        "sliceName" : "x-ecpr",
        "max" : "0"
      },
      {
        "id" : "Patient.identifier:d-ecpr",
        "path" : "Patient.identifier",
        "sliceName" : "d-ecpr",
        "max" : "0"
      },
      {
        "id" : "Patient.active",
        "path" : "Patient.active",
        "short" : "[DK] harAktivJournal",
        "min" : 1
      },
      {
        "id" : "Patient.name",
        "path" : "Patient.name",
        "max" : "0"
      },
      {
        "id" : "Patient.name:official",
        "path" : "Patient.name",
        "sliceName" : "official",
        "max" : "0"
      },
      {
        "id" : "Patient.telecom",
        "path" : "Patient.telecom",
        "max" : "0"
      },
      {
        "id" : "Patient.gender",
        "path" : "Patient.gender",
        "max" : "0"
      },
      {
        "id" : "Patient.birthDate",
        "path" : "Patient.birthDate",
        "max" : "0"
      },
      {
        "id" : "Patient.deceased[x]",
        "path" : "Patient.deceased[x]",
        "max" : "0"
      },
      {
        "id" : "Patient.address",
        "path" : "Patient.address",
        "max" : "0"
      },
      {
        "id" : "Patient.maritalStatus",
        "path" : "Patient.maritalStatus",
        "max" : "0"
      },
      {
        "id" : "Patient.multipleBirth[x]",
        "path" : "Patient.multipleBirth[x]",
        "max" : "0"
      },
      {
        "id" : "Patient.photo",
        "path" : "Patient.photo",
        "max" : "0"
      },
      {
        "id" : "Patient.contact",
        "path" : "Patient.contact",
        "max" : "0"
      },
      {
        "id" : "Patient.communication",
        "path" : "Patient.communication",
        "max" : "0"
      },
      {
        "id" : "Patient.generalPractitioner",
        "path" : "Patient.generalPractitioner",
        "max" : "0"
      },
      {
        "id" : "Patient.generalPractitioner:referencedSORUnit",
        "path" : "Patient.generalPractitioner",
        "sliceName" : "referencedSORUnit",
        "max" : "0"
      },
      {
        "id" : "Patient.managingOrganization",
        "path" : "Patient.managingOrganization",
        "short" : "[DK] journalførendeOrganisation",
        "min" : 1
      },
      {
        "id" : "Patient.managingOrganization.reference",
        "path" : "Patient.managingOrganization.reference",
        "max" : "0"
      },
      {
        "id" : "Patient.managingOrganization.type",
        "path" : "Patient.managingOrganization.type",
        "max" : "0"
      },
      {
        "id" : "Patient.managingOrganization.identifier",
        "path" : "Patient.managingOrganization.identifier",
        "min" : 1,
        "type" : [
          {
            "code" : "Identifier",
            "profile" : [
              "http://hl7.dk/fhir/core/StructureDefinition/dk-core-sor-identifier"
            ]
          }
        ]
      },
      {
        "id" : "Patient.managingOrganization.display",
        "path" : "Patient.managingOrganization.display",
        "max" : "0"
      },
      {
        "id" : "Patient.link",
        "path" : "Patient.link",
        "max" : "0"
      }
    ]
  }
}

```
