# Business Process Framework (eTOM) 
The Business Process Framework "the Telecom Operation Map" (TOM) 
- enterprise-wide process decomposition or structured outline
- catalog and classification scheme
- `Domains, core processes, tasks`
- any number of levels of core processes

## The Business Process Framework (eTOM) Goals
1. Provide an `enterprise wide process discipline`
2. Be `consistent` process flows and `re-use`
3. Develop `clearer IT requirements`
4. Reduce `management time and cost`
5. Manage `complex business relationships`
0. understand application portfolios;

## The Business Process Framework (eTOM) Uses
1. Define project `scope`
2. Support `procurement` requests
3. Focus `process related` discussions
4. `Transform` business processes
5. `Map roles, owners /organizations` 

## Framework Use Cases
- developing process flows
- defining project scope
- plan, design, test, and deploy applications
- transforming business processes
- managing key performance indicators

### Uses
- use cases are organized by domain, core process within the domain, and categorized using a vertical process grouping
- Procurement (RFP): scope can be expressed in terms of eTOM's business processes. Can then be used to - determine conformance to the framework using the framework's point system.
- Role/Organizing Mapping: can used eTOM to perform RACI or RASCI analysis. Can use eTOM sub-processes to determine ownership. 
  - Resources are allocated to Responsible.
  - Support will assist in completing the task.
  - Consulted may provide input.
- KPIs (such as cost) can be associated with each step in a process flow. Then you can use a simulation tool to compute end-to-end process cost.

# Terms
Vertical Domain Areas = Strategy , Infa, Prudct(SIP) vs Ops  
S.I.P process groupings = Strategy & Commit, Infra LC M, Product, LC M,  
Ops process groupings = Ops Support & Readiness, Fullfilment, Assurance, Billing and Revenue M (FAB)  
BPF Domains= Distict group of processes  
domain = collection of core processes associated with a specific management area  
ABE = Core Process element > Task Level process elements  
Process Area = Strategy, Infrastructure and Product (SIP) and Operations (Ops).  
Process Groupings SIP = Strategy & Commit; Infrastructure Lifecycle Management; Product Lifecycle Management  
Process Ops Grouping = Operations Support & Readiness; Fulfuillment; Assurance; Billing & Revenue Management (FAB)  
Task Level process elements (level 2) ~SDLC   
BPF Common Domain = Common Process patterns (no meaning outside the context of other ABE)  

## 8 Domains
1. **Market / Sales Domain**: 
2. **Product Domain**: 
3. **Customer Domain**: 
4. **Service Domain**:
5. **Resource Domain**: compute and storage; associates products & services to resources; provides usage data
6. **Engaged Party Domain**: individuals or organizations involved with an enterprise (was Supplier-Partner)
7. **Enterprise Domain**: policy for overall enterprise
8. **Common Process Patterns Domain**: re-usable processes that can be used across the enterprise; e.g. capacity managemment; unique to this domain is that processes cannot execute on their own

# process patterns
**core process** - manages the `lifecycle` of or more key business entities
	- naming convention: start with a noun "e.g. Product Offering Lifecycle Management"
**tasks** - `follow` the core process
	- naming convention: start with a verb "e.g. Manage Product Offering Exit"
- no process is duplicated in the framework

# Notes
- First Level Categorization is the Process Area. There are two: Strategy, Infrastructure and Product (SIP) and Operations (Ops).
- Second Level Categorization is the Process Groupings. 
eTOM can and should play a role in `development` especially `planning`, ready-made set of requirements, and high-level use cases  
"use cases" inherit the business properties of a "task" and adds more detail regarding the interaction between processes and information.  
use case steps can be the task's sub-tasks.  

## Implementation = Business Process Transformation
- three approaches: bottom-up; top-down; hybrid
- if you only have process flows then use bottom-up
- if you only have process decomposition then use top-down

### step 1: define scope
- process swim lanes
- information flows
- material flows
- financial flows
- need SMEs in both the in-scope items and in eTOM

## bottom-up approach (spreadsheet)
- flow step ID; 
- process name; 
- (F)low or (D)ecomp; 
- source of input; 
- decomp req'd; 
- equivalent business process framework process + ID, 
- equivalence type:  "enterprise gap"(flow is missing an eTOM process) or, "full match", or "partial match" to an eTOM process. 
- extensions to eTOM should be clearly noted so they are not wiped out at the next eTOM update

**key considerations**
1. any shared processes? put them in Enterprise or Common Process Patterns
2. take care not to group processes according to organization (as organizations change)
3. introduce specialized processes at the lowest level possible

**extend/confirm a framework implementation**
- semantic analysis: analyzes the description of a process for clues to the sub-tasks; look for (1) nouns upon which actions are performed (2) look for nouns (3) look for phrases that imply actions on nouns
- lifecycle decomposition:
	tangible (product lifecycle management) entities: look for "gather", "develop", "deploy"  
	intangible (strategy) entities look for "research", "approve", "assess"  
	activity (assurance) entities look for "issue"; "analyze"; "fix"  
	- should have 7 +/- 2 first level processes
		- should have 5 +/- 2 sub-processes
		- process should never decompose into a single sub-process
**additional guidance**
- retain framework as a baseline
- implement a subset of the process areas
- add core processes; or elevate task-level process to a core process
- split task-level processes; this is where task specialization occurs

## Conformance
- measured by how close the model matches the framework
- conformance implies less rigid approach (don't use compliance)
- begin with first-level processes such as Order Handling and apply a conformance rating
- conformance is about equivalence; don't need exactly matching text
- conformance scores are not awarded to level one domains or core processes
- conformance scores are awarded to Tasks (level 3 and below) and Sub-tasks (level 4 and below)
	- Tasks are scored between 3.1 and 5
	- Sub-task scores are calculated as input to parent Task scores

## FAQ
`Q`. What are two reasons why an enterprise should use the framework to focus process related discussions?
`A`. Reducing the reliance on the subject matter expertise of members of a team assembled to solve the problem and keeping discussions from becoming unfocused and wandering off in different directions.
