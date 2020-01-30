# OpenAPI = suite of api's making it easier to create, build, operate complex innovative services;

API Ecosystem =
- rapid, repeatable
- supports interoperability between applications and acts as the glue that holds together the other frameworks
- The ecosystem contains representational state transfer, referred to as REST based APIs. A
- RESTful API is an API that uses HTTP requests to GET, PUT, POST and DELETE data.;

# Goals (Reduce)3 =
1. `Encourage competition`
2. `Ensure interoperability`
3. `Reduce customization`
4. `Reduce cost `
5. `Reduce installation difficulty`;

# Benefits =
- agility/interop - `Business agility and interop` 
- partner - `Partnering for new services`
- simplify - `Simplification of the IT estate`
- TTM - `Reduced time to market`;

# Integration Program Uses =
1. `Create reusable architecture patterns`
2. `Follow a design and implementation blueprint`
3. `Integrate systems from multiple vendors`
4. `Define new interfaces`
5. `Make changes to systems quickly`;

# Domains =
market and Sales, 
Product, 
Customer, 
Service, 
Resource, 
Engaged Party
Enterprise
Common;

# Platforms using OpenAPI = 
1. Product and Customer Management Platform
2. Service Management Platform
3. Resource Management Platform
4. Network as a Service Management Platform;
- platforms = NFV, Big Data, NGOSS/BSS, IOT, Smart City, Smart Grids;
- Product and Customer Management Platform = `Product Ordering, Activation and Config`;
- Service Management Platform = `Service Ordering, Service Cat, Service Invent, Resource Ordering Active and Config`;
- Resource Management Platform = `Resource Ordering Activation and Config`

# Life cycle =
- `concept`
- `identification`
- design
- implementation
- spec
- implement
- testing;

- concept = API Proposal;
- identification = requirements;
- design =
   - what entities 
   - attributes
   - operations
   - notifications;
- spec = API Spec doc for humans, in Swagger for machines;
- implement = API Implementation Code Postman testing suite;
- testing = testing via CTK script;

# open api tools =
- linux foundation swagger 3.0
- swagger for doc, spec, swaggerhub
- json editor
- postman test suite
- https://circleci.com/
- aws cloud9 ide
- https://jsonschema.net/
- https://github.com/snowplow/schema-guru
- https://github.com/json-schema-faker/json-schema-faker
- https://github.com/better/jsonschema2db
- npm i json-schema-table;

# rest design patterns docs = 630 and 631;
- Resource Archtypes = Resource Collection, Managed Resource, Task, Hub;
- Contract Elements = http verbs;
- query entities = get attribute, selection, filtering, paging
- create via = post;
- update via = patch, put;
- response structure= location header, exception code;
- exeption code = http exit codes like 404;

# url patterns =;
- select = GET {apiRoot}/{resourceName}/{resourceID}?fields={atributeName*};
- select with filtering = GET {apiRoot}/{resourceName}/?[{atributeName}={atributeValue}&*];
- select and filtering = GET {apiRoot}/report?fields={atributeName*}&[{atributeName}.gt={atributeValue}&*];

# pubsub =
- post create api/hub
- post notify post/listener
- retun callback
- http://in.listener.com;


# info patterns = similar to sid;
**EntitySpecification/Entity** = many entities are described by specifications, which take the form of paper spec sheets or links to specifications that can be found when shopping on the web. The facts (attributes) for a specification, such as weight, dimensions, color, and so forth, are common to all instances of the entity related to the specification.;
**Composite/Atomic** = entities are often grouped together. For example, bundles of product offerings, network elements composed of physical and logical resources.
Entity/Role – an entity can often play many roles, while retaining a basic set of facts about the entity in general. For example, an individual can play the role of customer and employee, but the individual’s name and address don’t change from role to role.;
**Business Interaction** = as an enterprise carries out its mission, it interacts with individuals and organizations in a number of ways. This generalization pattern models the characteristics (entities, attributes, and associations) common to most interactions. As such it allows new interactions, such as customer orders, late payment notices, and so forth, to be easily added to the Information Framework. 	<BI>Categories<Entiries> relationthips;
**CharacteristicSpecification/Characteristic** = attempting to model every attribute for new and/or existing entities or attributes associated with new types (specifications) of entities is a near impossible task. This pattern enables new attributes to be dynamically defined, eliminating the need to explicitly model them.;

# Examples =;
EntitySpecification/Entity = (EntitySpecification describes-specifies-defines Entity);
 Composite/Atomic = conprisesof-compound-collection 0..Atomic<Entity>;
  Entity/Role = manyRoles-plays ;
   Business Interaction = request-order-events-notification-ack<items>;
    CharacteristicSpecification/CharacteristicValue = spec-described-by, enumby;

# SOAP Web Services = 
- XML messages
- in web services description language (wsdl)
- examples: TMF TIP, MTOSI, OSS/J;

# REST Web Services = 
- HTTP based
- defined by Swagger or RAML
- payload in json
- TMF Open API;

# REST Constraints=
- Client Server
- Stateless
- Cache
- Interface/Uniform Contract
- Layered System
- Code on Demand;

# Standards = 
- W3C
- IETF
- HTTP, XML, URI,MIME;

# Test Kits =
- api spec
- postman collection
- swagger
- ref implementation
- download spec
- ctk profile;

# Docs=
- API Governance manifesto
- `tr250 api rest` conformance
- `tmf-425 api crowd sourced guide` r15.5
- `tmf-630 conformance`
- api verification via business process `gb921d`
- `GB990 api data model` and info framework mapping guide book r15.5.0
- `gb992` addendum mapping for bpf;

# micro services= 
- isolated
- autonomous
- context-bound
- data encapsulation;

# Notes =;
- C.R.U.D = Create, Read, Update , Delete; 
- R.E.S.T = Representation State Transfer;
- S.O.A.P = Simple Object Access Protocol;
- Uniform Contract Verbs = POST, GET, PUT, DELETE, PATCH OPTIONS, HEAD; 
- API in business speak = is a contract;
- how many levels for API MAP = 3; 
- RAND = ~Apache Lic;
- naming format = camel case for attributes;
- spec = GB922 format;
- Swagger.io = https://editor.swagger.io/;
- CTK = is a test suite from postman;
- common domain  = represents APIs that can be used across two or more domains;
- "first level" = APIs may contain sub-APIs which inherit from the first-level API;
- CQRS = Command Query Responsibility Segregation (CQRS).;
- ~Reactive micro service = ;
- ~Apache openwhisk = ;
- ~Zeebe = ;
- Web Api Protocol and Styles = COBRA,js,  XML-RPC, SOAP, REST;
- request/response = pattern for web api typically json or xml;
- governance activities = `management of portfolio`, life cycle, standards and policies;

# Conformance = 
;

# Account Management API

Provides standardized mechanism for the management of billing and settlement accounts, as well as for financial accounting (account receivable) either in B2B or B2B2C contexts

# Appointment API

The appointment API provides a standardized mechanism to book an appointment with all the necessary appointment characteristics. The API allows searching of free slots based on parameters, as for example a party, then creating the appointment. The appointment has characteristics such as nature of appointment, place of appointment.

# Customer Management API

Provides a standardized mechanism for customer and customer account management, such as creation, update, retrieval, deletion and notification of events.

# Partnership Type Management API

Standardized mechanisms for creating partnership types. It is one of the APIs involved in an onboarding process. Identifies a type of a partnership between parties, including the list of role types that are permitted (i.e Buyer, Seller, Developer). Role types may refer to agreement specifications to be signed by parties playing the role.
The API allows the retrieval, creation, update, and deletion of partnership type and its owned sub-resources.

# Party Management API

Provides a standardized mechanism for party management such as creation, update, retrieval, deletion and notification of events.
Party can be an individual or an organization that has any kind of relationship with the enterprise.

# Party Role Management API

A standardized mechanism for general party roles and includes operations such as creation, update, retrieval, deletion and notification of events. Notice that for the management of customers there is a specific Customer Management API.
Party Role management API manages the following data resources: PartyRole

# Privacy Management API

The Privacy management API provides a standardized mechanism for privacy profile types, privacy profiles and privacy agreements such as creation, update, retrieval, deletion and notification of events.

# Product Catalog Management API

Provides a standardized solution for rapidly adding partners’ products to an existing Catalog. It brings the capability for Service Providers to directly feed partners systems with the technical description of the products they propose to them. 

# Product Inventory Management API

Provides standardized mechanism for product inventory management such as creation, partial or full update and retrieval of the representation of a product in the inventory. It also allows the notification of events related to product lifecycle.

# Product Offering Qualification API

Product Offering Qualification API is one of Pre-Ordering Management API Family. Product Offering Qualification API goal is to provide Product Offering commercial eligibility.

# Product Ordering API

Provides a standardized mechanism for placing a product order with all of the necessary order parameters. The API consists of a simple set of operations that interact with CRM/Order negotiation systems in a consistent manner. A product order is created based on a product offering that is defined in a catalog. The product offering identifies the product or set of products that are available to a customer and includes characteristics such as pricing, product options and market.

# Quote Management API

The Quote API is one of the Pre-Ordering Management APIs. The customer Quote API provides a standardized mechanism for placing a customer quote with all of the necessary quote parameters.

# Shopping Cart API

A standardized mechanism for the management of shopping carts. Including creation, update, retrieval, deletion and notification of an event. Shopping Cart entity is used for the temporary selection and reservation of product offerings in e-commerce and retail purchase.

# Trouble Ticket API

Provides a standardized client interface to Trouble Ticket Management Systems for creating, tracking and managing trouble tickets among partners as a result of an issue or problem identified by a customer or another system. Examples of Trouble Ticket API clients include CRM applications, network management or fault management systems, or other trouble ticket management systems (e.g. B2B).
