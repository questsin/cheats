const nm3 = require('./nm3')

const docs = new nm3.Computable.Markdown
const snippet = new nm3.Computable.Code
const killChain = new nm3.Computable.CC

docs
    .header("header")
    .paragraph('paragraph')
    //.print();
snippet
    .tags(['1','2','3'])
    .groups(['ok'])
    .description('simple description')
    .groups(['ok2'])
    .code('2 + 3')
    .examples(['t'])
    .description('simple description2')
    .description(docs.value) //erases the old descriptions
    //.print()
killChain
    .createOrUpdate('killChain')
    .method('Reconnaissance',['recon'],docs,snippet,null)
    .method('Scanning',['scan'])
    .method('GainingAccess',['exploit'])
    .method('MaintainingAccess',['rat','trojan'])
    .method('ClearingTracks',['tidy','clean'])
    .print();
