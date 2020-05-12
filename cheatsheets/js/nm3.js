//npm install crypto-js
const fs = require('fs')
CryptoJS = {};
CryptoJS.MD5 = function () {
    return ''
};
CryptoJS.SHA256 = function () {
    return ''
};

var empty = null;
var cwd = process.cwd();
console.log(cwd);
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
        this.value = {};
    }
    uri(uriSting) {
        this.value.uriSting = uriSting;
        return this;
    }
    createOrUpdate(idSting) {
        this.value.id = idSting;
        return this;
    }
    print() {
        console.log('print');
        return console.log(JSON.stringify(this.value, null, " "));
    }
}
Computable.Notes = class extends Computable {
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
    description(descriptionSting) {
        this.value.description = descriptionSting;
        return this;
    }
}
Computable.Code = class extends Computable.Notes {
    constructor() {
        super();
    }
    code(codeSting) {
        this.value.code = codeSting;
        return this;
    }
    examples(exampleArray) {
        this.value.examples = exampleArray;
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
Computable.CC = class extends Computable {
    constructor() {
        super();
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
}
Computable.Command = class extends Computable {
    constructor() {
        super();
    }
    name(nameSting, aliasArray) {
        this.obj.name = nameSting;
        return this;
    }
    args(argsSting) {
        this.obj.args = argsSting;
        return this;
    }
    param(paramArray) {
        this.obj.param = paramArray;
        return this;
    }
}

const storeData = (data, path) => {
    try {
        fs.writeFileSync(path, JSON.stringify(data))
    } catch (err) {
        console.error(err)
    }
}

const loadData = (path) => {
    try {
        return fs.readFileSync(path, 'utf8')
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

var computableObject = {
    guid: uuidv4(),
    hash: sha256Hash(JSON.stringify(this)),
    version: (this.version || 1) + 1,
    versions: [],
    created: Date.now(),
    deleted: false,
    updated: false,
    type: empty,
    name: empty,
    author: empty,
    owner: empty,
    description: empty,
    groups: [],
    roles: [],
    permissions: [],
    tags: [],
    url: function () {
        return this.guid;
    },
    create: function () {
        return this.guid;
    },
    read: function () {
        return this.guid;
    },
    update: function () {
        this.updated = Date.now();
    },
    delete: function () {
        this.deleted = Date.now();
    }
};

exports.computableObject = computableObject;
exports.Computable = Computable;