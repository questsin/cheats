# MongoDB Cheat Sheet
https://docs.mongodb.com/manual/reference/

Topics: Indexing, MongoDB CLI, MongoDB Shell, MongoDB Structure, Replica Set

## Show All Databases

```
show dbs
```

## Show Current Database

```
db
```

## Create Or Switch Database

```
use acme
```

## Drop

```
db.dropDatabase()
```

## Create Collection

```
db.createCollection('posts')
```

## Show Collections

```
show collections
```

## Insert Row

```
db.posts.insert({
  title: 'Post One',
  body: 'Body of post one',
  category: 'News',
  tags: ['news', 'events'],
  user: {
    name: 'John Doe',
    status: 'author'
  },
  date: Date()
})
```

## Insert Multiple Rows

```
db.posts.insertMany([
  {
    title: 'Post Two',
    body: 'Body of post two',
    category: 'Technology',
    date: Date()
  },
  {
    title: 'Post Three',
    body: 'Body of post three',
    category: 'News',
    date: Date()
  },
  {
    title: 'Post Four',
    body: 'Body of post three',
    category: 'Entertainment',
    date: Date()
  }
])
```

## Get All Rows

```
db.posts.find()
```

## Get All Rows Formatted

```
db.find().pretty()
```

## Find Rows

```
db.posts.find({ category: 'News' })
```

## Sort Rows

```
# asc
db.posts.find().sort({ title: 1 }).pretty()
# desc
db.posts.find().sort({ title: -1 }).pretty()
```

## Count Rows

```
db.posts.find().count()
db.posts.find({ category: 'news' }).count()
```

## Limit Rows

```
db.posts.find().limit(2).pretty()
```

## Chaining

```
db.posts.find().limit(2).sort({ title: 1 }).pretty()
```

## Foreach

```
db.posts.find().forEach(function(doc) {
  print("Blog Post: " + doc.title)
})
```

## Find One Row

```
db.posts.findOne({ category: 'News' })
```

## Find Specific Fields

```
db.posts.find({ title: 'Post One' }, {
  title: 1,
  author: 1
})
```

## Update Row

```
db.posts.update({ title: 'Post Two' },
{
  title: 'Post Two',
  body: 'New body for post 2',
  date: Date()
},
{
  upsert: true
})
```

### commands

find, aggregate

### cursor methods
pretty, limit, sort, count

## MQL commands
*One, *Many
$eq, $ne, $gt, $lt, $gte, $lte
$and $or $nor $not $expr
all size
$regex

find*
insert*
replace*
update*
delete*
upsert


## Operators
$inc
$set
$unset


## Update Specific Field

```
db.posts.update({ title: 'Post Two' },
{
  $set: {
    body: 'Body for post 2',
    category: 'Technology'
  }
})
```

## Increment Field (\$inc)

```
db.posts.update({ title: 'Post Two' },
{
  $inc: {
    likes: 5
  }
})
```

## Rename Field

```
db.posts.update({ title: 'Post Two' },
{
  $rename: {
    likes: 'views'
  }
})
```

## Delete Row

```
db.posts.remove({ title: 'Post Four' })
```

## Sub-Documents

```
db.posts.update({ title: 'Post One' },
{
  $set: {
    comments: [
      {
        body: 'Comment One',
        user: 'Mary Williams',
        date: Date()
      },
      {
        body: 'Comment Two',
        user: 'Harry White',
        date: Date()
      }
    ]
  }
})
```

## Find By Element in Array (\$elemMatch)

```
db.posts.find({
  comments: {
     $elemMatch: {
       user: 'Mary Williams'
       }
    }
  }
)
```

## Add Index

```
db.posts.createIndex({ title: 'text' })
```

## Text Search

```
db.posts.find({
  $text: {
    $search: "\"Post O\""
    }
})
```

## Greater & Less Than

```
db.posts.find({ views: { $gt: 2 } })
db.posts.find({ views: { $gte: 7 } })
db.posts.find({ views: { $lt: 7 } })
db.posts.find({ views: { $lte: 7 } })
```

db.listingsAndReviews.aggregate([
          { "$match": { "amenities": "Wifi" } },
          { "$project": { "price": 1,
                          "address": 1,
                          "_id": 0 }}]).pretty()

db.listingsAndReviews.aggregate([ { "$project": { "address": 1, "_id": 0 }},
        { "$group": { "_id": "$address.country" }}])

db.listingsAndReviews.aggregate([
      { "$project": { "address": 1, "_id": 0 }},
      { "$group": { "_id": "$address.country",
                    "count": { "$sum": 1 } } }
    ])        


### Indexs
db.trips.createIndex({ "birth year": 1 })

db.trips.createIndex({ "start station id": 1, "birth year": 1 })

{
  $and: [
  { "address.suburb": { $exists: true, $nin: [""] } },
    { "review_scores.review_scores_rating": { $exists: true, $nin: [""] } },
  ]
}

### Joins

$lookup
$graphLookup

validate_m320 example --file answer_schema.json
#### patterns

Approximation
Attribute
Bucket
Computed
Extended Reference
Outlier
Preallocated
Polymorphic
Schema Versioning
Subset
Tree and Graph

### Model Tree Structures
### Parent References
`
// all ancestors
db.categories.aggregate( [
  $graphLookup: {
    from: 'categories',
    startWith: '$name
    connectFromField: 'parent',
    connectToField : 'name',
    as: 'ancestors',
}])
`
### Child References
### Array of Ancestors
### Materialized Paths

### hybrid
{
  "parent": "",
  "ancestors":["",""]
}