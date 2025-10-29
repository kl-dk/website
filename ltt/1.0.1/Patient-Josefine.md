# Josefine - LTT Implementation Guide v1.0.1

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **Josefine**

## Example Patient: Josefine

Profile: [KLGatewayLTTCitizen](StructureDefinition-klgateway-ltt-citizen.md)

Anonymous Patient (no stated gender), DoB Unknown ( urn:oid:1.2.208.176.1.2#0505149996 (use: official, ))

-------

| | |
| :--- | :--- |
| Active: | true |
| Links: | * Managing Organization: Identifier: `urn:oid:1.2.208.176.1.1`/451000016003 (use: official, )
 |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "Josefine",
  "meta" : {
    "profile" : [
      "http://fhir.kl.dk/ltt/StructureDefinition/klgateway-ltt-citizen"
    ]
  },
  "identifier" : [
    {
      "use" : "official",
      "system" : "urn:oid:1.2.208.176.1.2",
      "value" : "0505149996"
    }
  ],
  "active" : true,
  "managingOrganization" : {
    "identifier" : {
      "use" : "official",
      "system" : "urn:oid:1.2.208.176.1.1",
      "value" : "451000016003"
    }
  }
}

```
