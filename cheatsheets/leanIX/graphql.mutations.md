createFactSheet(
input: BaseFactSheetInput!
patches: [Patch]
validateOnly: Boolean = false
): FactSheetMutationResult
Create a Fact Sheet

cloneFactSheet(
id: ID!
patches: [Patch]
cloningOptions: CloningOptionsType
rev: Long
validateOnly: Boolean = false
): FactSheetCloneResult
Clone a Fact Sheet

updateFactSheet(
id: ID!
rev: Long
patches: [Patch]!
comment: String
validateOnly: Boolean = false
): FactSheetMutationResult
Allows to update Fact Sheet data

updateFactSheetExternal(
externalIdPath: ID!
patches: [Patch]!
comment: String
validateOnly: Boolean = false
): FactSheetMutationResult
Allows to update Fact Sheet data using an external ID

createRelationConstraint(
factSheetId: ID!
constrainedRelationType: String!
constrainedRelationTargetFactSheetId: ID!
constrainingRelationType: String!
constrainingRelationTargetFactSheetId: ID!
validateOnly: Boolean = false
): BaseFactSheet
add a relation constraint, creating the constrained and constraining relations if missing

deleteRelationConstraint(
factSheetId: ID!
constrainedRelationType: String!
constrainedRelationTargetFactSheetId: ID!
constrainingRelationType: String!
constrainingRelationTargetFactSheetId: ID!
validateOnly: Boolean = false
): BaseFactSheet
remove a relation constraint, deleting the necessary relations

moveRelations(
factSheetId: ID!
sourceFactSheetId: ID!
relationType: String!
validateOnly: Boolean = false
): BaseFactSheet
move all relations of a given name from one Fact Sheet to another

copyRelations(
factSheetId: ID!
sourceFactSheetId: ID!
relationType: String!
validateOnly: Boolean = false
): BaseFactSheet
copy all relations of a given name from one Fact Sheet to another

createTagGroup(
name: String!
shortName: String
description: String
mode: TagGroupModeEnum!
mandatory: Boolean = false
restrictToFactSheetTypes: [FactSheetType!]
mandatoryForFactSheetTypes: [FactSheetType!]
validateOnly: Boolean = false
): TagGroup
Creates a tag group in the storage.

updateTagGroup(
id: ID!
patches: [Patch]!
validateOnly: Boolean = false
): TagGroup
Updates a tag group.

upsertTagGroup(
name: String!
shortName: String
description: String
mode: TagGroupModeEnum
mandatory: Boolean
restrictToFactSheetTypes: [FactSheetType!]
mandatoryForFactSheetTypes: [FactSheetType!]
validateOnly: Boolean = false
): TagGroup
Upserts a tag group

deleteTagGroup(id: ID!validateOnly: Boolean = false): TagGroup
Deletes a tag group from the storage if it does not contain any tag.

createTag(
name: String!
description: String
color: String
tagGroupId: ID
validateOnly: Boolean = false
): Tag
Creates a tag in the storage.

upsertTag(
name: String!
tagGroupName: String
description: String
color: String
validateOnly: Boolean = false
): Tag
Upserts a tag

updateTag(
id: ID!
patches: [Patch]!
validateOnly: Boolean = false
): Tag
Updates a tag

deleteTag(id: ID!validateOnly: Boolean = false): Tag
Deletes a tag from the storage if it is not assigned to any Fact Sheet.

createDocument(
factSheetId: ID!
factSheetRev: Long
name: String!
description: String
documentType: String
metadata: String
url: String
origin: String
refId: String
validateOnly: Boolean = false
): Document
Adds a document to the storage. To upload a file to the graphQL endpoint, please use the multipart endpoint to be able to send the binary file data including with graphQL's query and variables.

updateDocument(
id: ID!
factSheetRev: Long
patches: [Patch]!
validateOnly: Boolean = false
): Document
Updates fields or content of a document. When the binary content should be updated, one Patch object with path 'file' needs to be applied to specify a file name and triggering the replacement of binary content.

deleteDocument(
id: ID!
factSheetRev: Long
validateOnly: Boolean = false
): Document
Deletes a document

createComment(
factSheetId: ID!
message: String!
status: CommentStatus!
validateOnly: Boolean = false
): Comment
Adds a comment to a Fact Sheet

deleteComment(commentId: IDvalidateOnly: Boolean = false): Boolean
Deletes a comment from a fact sheet

createReply(
commentId: ID
message: String
newCommentStatus: CommentStatus
validateOnly: Boolean = false
): Reply
Adds a reply to a comment

createSubscription(
factSheetId: ID!
factSheetRev: Long
user: UserInput!
type: FactSheetSubscriptionType!
roleIds: [ID]
roles: [SubscriptionToSubscriptionRoleLinkInput]
validateOnly: Boolean = false
): Subscription
Adds a subscription to a Fact Sheet.

updateSubscription(
id: ID!
factSheetRev: Long
user: UserInput!
type: FactSheetSubscriptionType!
roleIds: [ID]
roles: [SubscriptionToSubscriptionRoleLinkInput]
validateOnly: Boolean = false
): Subscription
Updates fields of a subscription

deleteSubscription(
id: ID!
factSheetRev: Long
validateOnly: Boolean = false
): BaseFactSheet
Deletes a subscription

deleteSubscriptions(
factSheetId: ID!
factSheetRev: Long
validateOnly: Boolean = false
): BaseFactSheet
Deletes all subscriptions of current user from a fact sheet

createSubscriptionRole(
name: String!
description: String
type: FactSheetSubscriptionType
allowedFactSheetTypes: [FactSheetType!]
mandatoryForFactSheetTypes: [FactSheetType!]
validateOnly: Boolean = false
): SubscriptionRole
Adds a subscription role.

updateSubscriptionRole(
id: ID!
name: String!
description: String
type: FactSheetSubscriptionType
allowedFactSheetTypes: [FactSheetType!]
mandatoryForFactSheetTypes: [FactSheetType!]
validateOnly: Boolean = false
): SubscriptionRole
Updates a subscription role.

deleteSubscriptionRole(id: ID!validateOnly: Boolean = false): SubscriptionRole
Deletes a subscription role.

upsertRelation(
from: FactSheetIdentifierType!
to: FactSheetIdentifierType!
type: RelationName!
patches: [Patch!]
validateOnly: Boolean = false
): UpsertRelationResponse
Creates or updates a relation between two Fact Sheets. In case of a to-many relation (many-to-many, one-to-many), a relation is uniquely identified by two fact sheet identifiers ('from' and 'to') and the relation type (relToParent, relToRequiredBy, ...). In case of a to-one relation (many-to-one, one-to-one), a relation is already uniquely identified by the 'from' identifier and the relation type. In that case, the relation is seen as a property of the 'from' fact sheet that can be updated. This would result in a switch of the relation target.

deleteRelation(
from: FactSheetIdentifierType!
to: FactSheetIdentifierType!
type: RelationName!
validateOnly: Boolean = false
): DeleteRelationResponse
Deletes a relation between two Fact Sheets. If the type of the relation is "-to-one", the mutation will also delete a relation that targets a different to Fact Sheet.