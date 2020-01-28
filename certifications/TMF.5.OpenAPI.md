# OpenAPI =
- API Ecosystem
- rapid, repeatable
- supports interoperability between applications and acts as the glue that holds together the other frameworks
- The ecosystem contains representational state transfer, referred to as REST based APIs. A
- RESTful API is an API that uses HTTP requests to GET, PUT, POST and DELETE data.;

# Goals =
1. Encourage competition
2. Ensure interoperability
3. Reduce customization
4. Reduce cost 
5. Reduce installation difficulty;

# Benifits =
- Business agility and interop
- Partnering for new services
- Simplification of the IT estate
- Reduced time to market;

# Integration Program Uses =
1. Create reusable architecture patterns
2. Follow a design and implementation blueprint
3. Integrate systems from multiple vendors
4. Define new interfaces
5. Make changes to systems quickly;

# Domains =
market and Sales, 
Product, 
Customer, 
Service, 
Resource, 
Engaged Party
Enterrise
Common;

# Platforms using OpenAPI = 
1. Product and Customer Management Platform
2. Service Management Platform
3. Resource Management Platform
4. Network as a Service Management Platform;
- platfrms = NFV, Big Data, NGOSS/BSS, IOT, Smart City, Smart Grids;
- Product and Customer Management Platform = Product Ordiering, Activation and Config;
- Service Management Platform = Service Ordering, Service Cat, Service Invent, Resource Orderingm Activ and Config;
- Resource Management Platform = Resource Ordering Activation and Config

# Lifecycle =
- concept
- identification
- design
- implementation
- spec
- implement
- testing;

- concept = API Proposal;
- identification = requirments;
- design =
   - what entities 
   - attributes
   - operations
   - notifications;
- spec = API Spec doc for humans, in Swagger for machines;
- implement = API Implementation Code Postman testing suite;
- testing = testing via CTK script;

# openapi tools =
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

# patterns =;
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
- defiened by Swagger or RAML
- payload in json
- TMF Open API;

# REST Contraints=
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
- ref implemenation
- download spec
- ctk profile;

# Docs=
- API Governance manifesto
- GB990 api data model and info framework mapping guide book r15.5.0
- tr250 api rest
- tmf425 api crowdsourced guide r15.5
- tmf630 conformance
- api verification via business process gb921d
- gb992 adendum mapping for bpf;

# Notes =;
- C.R.U.D = Create, Read, Update , Delete 
- R.E.S.T = Representation State Transfer;-
- Uniform Contract Verbs = POST, GET, PUT, DELETE, PATCH OPTIONS, HEAD; 
- API in business speak = is a contractl
- RAND = ~Apache Lic;
- naming format = camel case for atributes;
- spec = GB922 format;
- Swagger.io = https://editor.swagger.io/;
- CTK = is a testsuite from postman;
- common domain  = represents APIs that can be used across two or more domains;
- "first level" = APIs may contain sub-APIs which inherit from the first-level API;
- CQRS = Command Query Responsibility Segregation (CQRS).;
- ~Reactive micro service = ;
- ~Apache openwhisk = ;
- ~Zeebe = ;
- Web Api Protocol and Styles = COBRA,js,  XML-RPC, SOAP, REST;
- request/response = pattern for web api typically json or xml;

