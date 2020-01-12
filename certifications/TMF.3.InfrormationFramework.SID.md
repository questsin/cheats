# Information Framework SID
https://en.wikipedia.org/wiki/Frameworx#Information_Framework  

- enterprise-wide information decomposition or structured outline and model
- technology neutral information model; can be used to generate technology specific data model

## Goals Achieved
1. Reducing the cost of integration
2. Reducing time to market /introduction of new technologies
3. Support multiple implementations from a single model
4. Facilitate new/existing development
5. Reduce management time and cost

## Information Framework Uses
1. Starting point for database development
2. Defining project scope
3. Developing application program interfaces
4. Facilitating application Integration
5. Supporting procurement requests

## Terms
IF Domains = Collection of Business entities
Common Domain = Common Business Entities
Domains > ABE 
Unified Modeling Lanugae (UML) Class Diagram
Info Entity Model > OO, Relationships/association, detals/characteristics/attributes > Data Model 
Core entity (CE) = Main Business Entity (BE)
Business Entity (BE)
Aggregate Business Entity (ABE) = BE + dependencies via asociations
Framework + Model
uml relationships = 1 to many etc
Primary Process = basic CRUD
Domains, ABE, Entities

Compliance (rigorous) vs  Comformance (subjctive) 
.. .. IF .. ..(PF)
Defined by the Vendor for a list of ABE

# Notes
- CBE: entities not owned by any particular domain; each entity represents an abstraction of real-world entities
- business entity: e.g. "Customer"; links between entities are "associations"
- "aggregated business entity (ABE)": grouping of highly cohesive CBEs; named after the Core Entity
- Core Entity is the business entity that is the parent entity of all other entities in an ABE.
- ABEs can be nested.
- used to: define project scope; starting point for database development; develop APIs; facilitate application integration; support procurement requests
- domains in common with the other framework
- only Information Framework and Business Process Framework are mapped at lower levels
- Primary Process is a core process that manages an ABE's lifecycle (CRUD: create / read / update / delete). There must only be ONE primary process for an ABE.
- Secondary Process may read an ABE, but should not update it. If necessary, take care, as you are binding it closely.
- Mappings are used to check completeness of the overall framework; to assist in defining scope of a project; to support impact analysis.
