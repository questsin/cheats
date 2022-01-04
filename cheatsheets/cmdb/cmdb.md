### metadata repository
configuration management system (CMS) 
https://www.atlassian.com/itsm/it-asset-management/cmdb
https://uit.stanford.edu/service-management/toolkit/cmdb
https://store.servicenow.com/sn_appstore_store.do#!/store/home
https://docs.microfocus.com/UCMDB/11.0/ucmdb-docs/docs/eng/doc_lib/Content/database/OracleManual_c_create_schema_obj.htm
https://www.cmdbuild.org/en

IT asset management (ITAM)
CONTRACT MANAGEMENT 
CONFIGURATION MANAGEMENT 
INVENTORY MANAGEMENT

Assets, which are known as configuration items or CIs
The relationships/dependencies of CIs with other CIs and other related entities
Other configuration data

products, facilities, software, systems, and even key stakeholders in a process. 

Keeping the CMDB updated is difficult because of the overwhelming number of assets it might track; as CIs are introduced, updated, reconfigured, retired, or merged with other assets, all of that data needs to be updated and tracked in the CMDB as well.

respond more quickly to 
incidents, and 
improve budget forecasting, 
decision-making, and the 
deployment of network components.

## schema
CI Type
CI Unique Identifier or Identification Code
CI Name or Label (often, both long names and short names)
CI Abbreviations or Acronyms
CI Description
CI Ownership (organizations and people)
CI Importance
Source CI that is related to a Target CI
 Predicate/descriptor/relatedBy

## CI Types
Hardware
Software
Communications/Networks
Location
Documentation
People (staff and contractors)

## The most common CI types include:
Hardware
Software
Applications
Communications and networks
Devices
Services
Location
Documentation
People (including staff and contractors)

## Common tracked asset relations include:

Incidents
Issues
Deployments
Changes
Updates and upgrades
Configurations
User control access

ITAM
====
How much did a particular asset cost?
What is its current accumulated depreciation?
What contracts and maintenance agreements are associated with it?
Is it still under warranty?
If it’s a software asset, what are the license details?
What is its current version?
Which endpoints are running it?

KEY CMDB TABLES
Base Configuration Item - cmdb
Name
Business criticality 
Used for: Production
Service classification 
Managed by
Owned by
Approval group : Software
Location
Operational status: Operational


Configuration Item cmdb_ci
CI Relationship - cmdb_rel_ci


 [cmdb_ci] table,
 [cmdb_rel_ci] table,
 [cmdb_ci_database] and Computer [cmdb_ci_computer]. The Computer table is extended to the Server [cmdb_ci_server] table, which is extended to the UNIX Server [cmdb_ci_unix_server] 