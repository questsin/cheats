const nm3 = require('./nm3')

var docs = new nm3.Computable.Markdown
var snippet = new nm3.Computable
var killChain = new nm3.Computable
var killChain2 = new nm3.Computable
var myNotes = new nm3.Computable



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
    .examples([' bt'])
    .description('simple description2')
    .description(docs.value) //erases the old descriptions
    //.print()
 killChain
    .id('killChain')
    .method('Reconnaissance',['recon'],docs,snippet,null)
    .method('Scanning',['scan'])
    .method('GainingAccess',['exploit'])
    .method('MaintainingAccess',['rat','trojan'])
    .method('ClearingTracks',['tidy','clean'])
    .save();
    //.print();

 killChain2
    .id('killChain2')
    .method('Reconnaissance',['recon'],docs,snippet,null)
    .method('Scanning',['scan'])
    .method('GainingAccess',['exploit'])
    .method('MaintainingAccess',['rat','trojan'])
    .method('ClearingTracks',['tidy','clean'])
    .save();
    //.print();


var x = killChain
    .id('killChain')
    .load()
    .save()
    //.print()

 myNotes
    .context('commands')
    .context('nmap')
    .tags(['recon','qq','qw'])
    .print()


    