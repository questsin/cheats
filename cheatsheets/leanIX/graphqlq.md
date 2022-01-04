factSheet(id: ID!markAsViewed: Boolean = false): BaseFactSheet
factSheets(
ids: [ID!]
externalIds: [String!]
omitArchivedFactSheets: Boolean = false
): SimpleBaseFactSheetConnection
This query provides the FactSheets for requested FactSheet-Ids or External-Ids. It has the same functionality as the factSheet() query but can handle multiple ids or external ids within one call. This query is intendet for integration systems to reduce the number of API calls when getting FactSheets by its ids or external ids.

allFactSheets(
before: String
after: String
first: Int
last: Int
factSheetType: FactSheetType
filter: FilterInput
sort: [Sorting]
hierarchy: HierarchyInput): BaseFactSheetConnection
Provides all fact sheets based on an optional filter.

allFacetItems(
before: String
after: String
first: Int
last: Int
factSheetType: String
facetKey: String!
filterText: String): FacetItemConnection
allLogEvents(
before: String
after: String
first: Int
last: Int
factSheetId: ID!
eventTypes: [EventTypes]
sinceRev: Long
mode: EventViewMode = AUDIT_TRAIL
): LogEventConnection
Retrieves all log events

subscriptionRole(id: ID!): SubscriptionRole
A subscription role.

allSubscriptionRoles(
before: String
after: String
first: Int
last: Int
sort: [Sorting]
filter: SubscriptionRoleFilter): SubscriptionRoleConnection
Provides all subscription roles.

tag(id: ID!): Tag
A tag to put on Fact Sheets.

allTags(
before: String
after: String
first: Int
last: Int
sort: [Sorting]
filter: TagQueryFilters): TagConnection
Provides all tags.

view(
factSheetType: FactSheetType
key: String
filter: FilterInput
viewOption: ViewOptionInput): ViewResult
Runs a query to get all or a set of fact sheets based on given filter. For each fact sheet in the result set a mapping is created to a field and all possible values of this field type.

recentlyViewed(type: ViewedItemType = FACT_SHEETcount: Int): [ViewedItem]
Runs a query to get the last x viewed items, based on the user id.

tagGroup(id: ID!): TagGroup
A tag group consisting of some tags.

allTagGroups(
before: String
after: String
first: Int
last: Int
sort: [Sorting]): TagGroupConnection
Provides all tag groups.

document(
documentId: ID
factSheetIdentifier: FactSheetIdentifierType
name: String): Document
A document associated with a Fact Sheet.

relation(
from: FactSheetIdentifierType!
to: FactSheetIdentifierType!
type: RelationName!): BaseRelation
Retrieves the single relation of a specific relation type between two Fact Sheets. In case of a to-many relation (many-to-many, one-to-many), a relation is uniquely identified by two fact sheet identifiers ('from' and 'to') and the relation type (relToParent, relToRequiredBy, ...). In case of a to-one relation (many-to-one, one-to-one), a relation is already uniquely identified by the 'from' identifier and the relation type.

geoCoding(
rawAddress: String!
before: String
after: String
first: Int
last: Int): LocationConnection
Using external geo coding services like google maps or OpenStreetMap to resolve an address string.