# OpenAPI

Goals
1. Encourage competition
2. Ensure interoperability
3. Reduce customization
4. Reduce cost 
5. Reduce installation difficulty

Integration Program Uses
1. Create reusable architecture patterns
2. Follow a design and implementation blueprint
3. Integrate systems from multiple vendors
4. Define new interfaces
5. Make changes to systems quickly

Domains
=======
market and Sales, 
Product, 
Customer, 
Service, 
Resource, 
Engaged Party
Enterrise
Common

API Ecosystem
The ecosystem contains representational state transfer, referred to as REST based APIs. A
RESTful API is an API that uses HTTP requests to GET, PUT, POST and DELETE data.

https://projects.tmforum.org/jira/projects/AP/summary
 https://projects.tmforum.org/wiki/display/API/Open+API+Table?_ga=2.22306686.453793557.1575299569-1987672211.1572445947

exam prep
=========
    how to extend framework
    ABE Extension naming
    extension as a subclass or ServiceSpecExtendedBy decorator
    anti-patern is the extension sterotype
GB922 format and content

Platforms using OpenAPI
=======================
Product and Customer Management Platform
    Product Ordiering, Activation and Config
Service Management Platform
    Service Ordering, Service Cat, Service Invent, Resource Orderingm Activ and Config
Resource Management Platform
    Resource Ordering Activation and Config
Network as a Service Management Platform

naming
======
camel case for atributes
GB922 format

Lifecycle
=========
concept
    API Proposal
identification
    requirments
design
    what entities 
    attributes
    operations
    notifications
implementation
spec
    API Spec doc for humans, in Swagger for machines
implement
    API Implementation Code Postman testing suite
testing
    testing via CTK script

openapi tools
=============
linux foundation swagger 3.0
swagger
    doc
    spec
    swaggerhub
json editor
postman test suite
https://circleci.com/
aws cloud9 ide
https://jsonschema.net/
https://github.com/snowplow/schema-guru
https://github.com/json-schema-faker/json-schema-faker
https://github.com/better/jsonschema2db
npm i json-schema-table

patterns
========
**EntitySpecification/Entity** – many entities are described by specifications, which take the form of paper spec sheets or links to specifications that can be found when shopping on the web. The facts (attributes) for a specification, such as weight, dimensions, color, and so forth, are common to all instances of the entity related to the specification.
**Composite/Atomic** – entities are often grouped together. For example, bundles of product offerings, network elements composed of physical and logical resources.
Entity/Role – an entity can often play many roles, while retaining a basic set of facts about the entity in general. For example, an individual can play the role of customer and employee, but the individual’s name and address don’t change from role to role.
**Business Interaction** – as an enterprise carries out its mission, it interacts with individuals and organizations in a number of ways. This generalization pattern models the characteristics (entities, attributes, and associations) common to most interactions. As such it allows new interactions, such as customer orders, late payment notices, and so forth, to be easily added to the Information Framework. 	<BI>Categories<Entiries> relationthips
**CharacteristicSpecification/Characteristic** – attempting to model every attribute for new and/or existing entities or attributes associated with new types (specifications) of entities is a near impossible task. This pattern enables new attributes to be dynamically defined, eliminating the need to explicitly model them.

Examples
========
EntitySpecification/Entity (EntitySpecification describes-specifies-defines Entity)
 Composite/Atomic = conprisesof-compound-collection 0..Atomic<Entity>
  Entity/Role = manyRoles-plays 
   Business Interaction request-order-events-notification-ack<items>
    CharacteristicSpecification/CharacteristicValue = spec-described-by, enumby

future
======
CQRS stands for Command Query Responsibility Segregation (CQRS).
~Reactive micro service
~Apache openwhisk 
~Zeebe 

Notes
======
RAND ~Apache Lic
Swagger.io - https://editor.swagger.io/
CTK is a testsuite from postman
Vodafone, ONAP,
metro ethernet

Open APIs
- supports interoperability between applications and acts as the glue that holds together the other frameworks
- five goals: ensure interoperability; encourage competition; reduce customization; reduce cost; reduce installation difficulty
- focus on API ecosystem
- rapid; repeatable
- RESTful APIs: HTTP GET PUT POST and DELETE
- eight domains: market/sales; product; customer;service;resource;engaged party;enterprise;common
- common domain represents APIs that can be used across two or more domains
- "first level" APIs may contain sub-APIs which inherit from the first-level API
- used to: follow a design and implementation blueprint; create reusable patterns; integrate systems from multiple vendors; define new interfaces; make changes to systems quickly
