//npm install crypto-js
const fs = require('fs')
var CryptoJS = require("crypto-js");

var empty = null;

fs.access('tmp', function(err) {
    if (err && err.code === 'ENOENT') {
      fs.mkdir('tmp',function(){}); //Create dir in case not found
    }
});

class Sequence {
    constructor() {
        this.value = {};
    }
    print() {
        console.log('print');
        return console.log(JSON.stringify(this.value, null, " "));
    }
}

class Computable {
    constructor() {
        this.value = {}
        this.value.meta = {
            guid: uuidv4(),
            hash: empty,
            version: (this.version || 1) + 1,
            versions: [],
            created: Date.now(),
            deleted: false,
            updated: false,
            type: empty,
            author: empty,
            owner: empty,
            groups: [],
            roles: [],
            permissions: []
        };
    }
    id(idSting) {
        this.value.id = idSting;
        var cwd = process.cwd();
        this.value.path = process.cwd() + '\\tmp';
        this.value.filename = CryptoJS.MD5(idSting).toString();
        this.value.fileExt = '.js';
        return this;
    }
    createOrUpdate(idSting) {
        //this.value.id = idSting;
        return this;
    }
    createOrReplace(idSting) {
        //this.value.id = idSting;
        return this;
    }
    load(){
        var iobj = loadData(
            this.value.path + '\\' +
            this.value.filename +
            this.value.fileExt)  
        if (iobj) {
            //console.log(iobj);
            this.value = iobj;
        } 
        return this;
    }
    save() {
        //console.log('save');
        storeData(this.value,
            this.value.path + '\\' +
            this.value.filename +
            this.value.fileExt);
        return this;
    }
    print() {
        console.log('print');
        return console.log(JSON.stringify(this.value, null, " "));
    }
    context(contextString) {
        if (this.value.contexts ) {
            if (this.value.contexts.indexOf(contextString) === -1 ) {
                this.value.contexts.push(contextString);
            }
        } else {
            this.value.contexts = [contextString];
        }
        return this;
    }
    method(methodSting, aliasArray, doc, snippet, code) {
        this.value[methodSting] = this.value[methodSting] || {};
        if (doc) {
            this.value[methodSting].doc = doc
        };
        if (snippet) {
            this.value[methodSting].snippet = snippet
        };
        if (code) {
            this.value[methodSting].code = code
        };
        return this;
    }
    superset(supersetArray, operator) {
        this.value.superset = supersetArray;
        return this;
    }
    subset(subsetArray, operator) {
        this.value.subset = subsetArray;
        return this;
    }
    tags(tagsArray, operator) {
        this.value.tags = tagsArray;
        return this;
    }
    groups(groupsArray, operator) {
        this.value.groups = groupsArray;
        return this;
    }
    categories(categoriesArray, operator) {
        this.value.categories = categoriesArray;
        return this;
    }
    headings(headingsArray, levelNum) {
        this.value.headings = headingsArray;
        return this;
    }
    location(locationSting) {
        this.value.location = locationSting;
        return this;
    }
    title(titleSting) {
        this.value.title = titleSting;
        return this;
    }
    entity(entitySting) {
        this.value.entity = entitySting;
        return this;
    }
    description(descriptionSting) {
        this.value.description = descriptionSting;
        return this;
    }
    cli(cliSting) {
        this.value.cli = cliSting;
        return this;
    }
    code(codeSting) {
        this.value.code = codeSting;
        return this;
    }
    examples(exampleArray) {
        this.value.examples = exampleArray;
        return this;
    }
    args(argsSting) {
        this.value.args = argsSting;
        return this;
    }
    params(paramArray) {
        this.value.param = paramArray;
        return this;
    }
}

Computable.Markdown = class extends Sequence {
    paragraph(tmpSting) {
        this.value.paragraph = tmpSting;
        return this;
    }
    lineBreak(tmpSting) {
        this.value.lineBreak = tmpSting;
        return this;
    }
    header(tmpSting) {
        this.value.header = tmpSting;
        return this;
    }
    blockQuote(tmpSting) {
        this.value.blockQuote = tmpSting;
        return this;
    }
    list(tmpSting) {
        this.value.list = tmpSting;
        return this;
    }
    ordered(tmpSting) {
        this.value.ordered = tmpSting;
        return this;
    }
    unordered(tmpSting) {
        this.value.unordered = tmpSting;
        return this;
    }
    codeBlock(tmpSting) {
        this.value.codeBlock = tmpSting;
        return this;
    }
    horizontalRule(tmpSting) {
        this.value.horizontalRule = tmpSting;
        return this;
    }
    emphasis(tmpSting) {
        this.value.emphasis = tmpSting;
        return this;
    }
    code(tmpSting) {
        this.value.code = tmpSting;
        return this;
    }
}

const storeData = (data, path) => {
    try {
        fs.writeFileSync(path, JSON.stringify(data, null, " "))
    } catch (err) {
        console.error(err)
    }
}

const loadData = (path) => {
    try {
        return JSON.parse(fs.readFileSync(path, 'utf8'))
    } catch (err) {
        console.error(err)
        return false
    }
}

function uuidv4() {
    return 'xxxxxxxx-xxxx-4xxx-yxxx-xxxxxxxxxxxx'.replace(/[xy]/g, function (c) {
        var r = Math.random() * 16 | 0,
            v = c == 'x' ? r : (r & 0x3 | 0x8);
        return v.toString(16);
    });
}

function md5Hash(text) {
    return CryptoJS.MD5(text).toString();
}

function sha256Hash(text) {
    return CryptoJS.SHA256(text).toString();
}

exports.Computable = Computable;