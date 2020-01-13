# Information Framework SID =
- enterprise-wide information decomposition or structured outline and model
- technology neutral information model, can be used to generate technology specific data model
- defacto standard
- Framework + Model
https://en.wikipedia.org/wiki/Frameworx#Information_Framework;


## Goals Achieved =
1. Reducing the cost of integration
2. Reducing time to market /introduction of new technologies
3. Support multiple implementations from a single model
4. Facilitate new/existing development
5. Reduce management time and cost;

## Information Framework Uses =
1. Starting point for database development
2. Defining project scope
3. Developing application program interfaces
4. Facilitating application Integration
5. Supporting procurement requests;

## benifits =
1. Represents a consistent approach to modeling
2. makes the framework easier to understand
3. provides built in extensibility
4. can be applied when extending the framework;

# The 8 Domains =
1. Market and Sales, 
2. Product, 
3. Customer, 
4. Service, 
5. Resource, 
6. Business Patner, vs Engaged party, 
7. Enterprise, 
8. Common;

# 3 Concepts =  
1. ABE, 
2. Entites, 
3. associations;

# Unified Modeling Lanugae (UML) Class Diagram =
1. Entites, subclasseseq.types, Shopper, BusinessShopper eq. SnakeCase
2. attributes eq. camelCase : type
3. operations like methods()
4. associations/relationships. 1-1, 1-*,*-*, eq. SnakeCaseVerb;

## Terms = def = hint;
IF Domains = Collection of Business entities;
Common Domain = Common Business Entities;
Info Entity Model = OO, Relationships/association, detals/characteristics/attributes > Data Model; 
Core entity (CE) = Main Business Entity (BE);
Aggregate Business Entity (ABE) = BE + dependencies via asociations;
Primary Process = basic CRUD

# Extension =
Compliance (rigorous) vs  Comformance (subjctive) 
.. .. IF .. ..(PF)
Defined by the Vendor for a list of ABE;

# Notes = def = hint;
- Common BE = entities not owned by any particular domain, each entity represents an abstraction of real-world entities;
- business entity: e.g. = "Customer", links between entities are "associations";
- "aggregated business entity (ABE)" = grouping of highly cohesive CBEs, named after the Core Entity;
- Core Entity = is the business entity that is the parent entity of all other entities in an ABE.;
- mappimgs = only Information Framework and Business Process Framework are mapped at lower levels;
- Primary Process = is a core process that manages an ABE's lifecycle (CRUD: create / read / update / delete). There must only be ONE primary process for an ABE.;
- Secondary Process = may read an ABE, but should not update it. If necessary, take care, as you are binding it closely.
- Mappings are used to check completeness of the overall framework, to assist in defining scope of a project, to support impact analysis.;
4 technniques to = add an attribute;

# patterns 5 + 1 = 
EntitySpecification/Entity
    Composite/Atomic
        Entity/EntityRole
            Business Interaction
                CharacteristicSpecification/CharacteristicValue
Entity/EntityExtension;

1. EntitySpecification/Entity ex =
- <Entity>Specification 0..1 <Entity>SpecificationDescribes * <Entity>
- <Product>Specification 0..1 <Product>SpecificationDescribes * <Product>
- <Service>Specification 0..1 <Service>SpecificationDescribes * <Service>
- <Performance>Specification 0..1 <Performance>SpecificationDescribes * <Performance>;
2. Composite/Atomic ex = 
    BundledProductOffering, SimpleProductOffering, ProductOffering;
3. Entity/EntityRole ex =
    Party, PartyRole, CustomerRole,;
4. Business Interaction ex. = Signup, PO;
5. CharacteristicSpecification/CharacteristicValue = fixed table with key/value;
