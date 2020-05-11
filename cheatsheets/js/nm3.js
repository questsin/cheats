//npm install crypto-js
CryptoJS = {};
CryptoJS.MD5 = function () {
    return ''
};
CryptoJS.SHA256 = function () {
    return ''
};

var empty = null;

class Sequence {
    constructor() {
        this.obj = {};
    }
    print() {
        console.log('print');
        return console.log(JSON.stringify(this.obj,null," "));
    }    
}

class Computable {
    constructor() {
        this.obj = {};
    }
    uri(uriSting) {
        this.obj.uriSting = uriSting;
        return this;
    }
    print() {
        console.log('print');
        return console.log(JSON.stringify(this.obj,null," "));
    }
}
Computable.Notes = class extends Computable {
    tags(tagsArray, operator) {
        this.obj.tags = tagsArray;
        return this;
    }
    groups(groupsArray, operator) {
        this.obj.groups = groupsArray;
        return this;
    }
    categories(categoriesArray, operator) {
        this.obj.categories = categoriesArray;
        return this;
    }
    headings(headingsArray, levelNum) {
        this.obj.headings = headingsArray;
        return this;
    }
    location(locationSting) {
        this.obj.location = locationSting;
        return this;
    }
    title(titleSting) {
        this.obj.title = titleSting;
        return this;
    }
    description(descriptionSting) {
        this.obj.description = descriptionSting;
        return this;
    }
}
Computable.Code = class extends Computable.Notes {
    constructor() {
        super();
    }
    code(codeSting) {
        this.obj.code = codeSting;
        return this;
    }
    examples(exampleArray) {
        this.obj.examples = exampleArray;
        return this;
    }
}
Computable.Markdown = class extends Sequence {
    paragraph(tmpSting) {
        this.obj.paragraph = tmpSting;
        return this;
    }
    lineBreak(tmpSting) {
        this.obj.lineBreak = tmpSting;
        return this;
    }
    header(tmpSting) {
        this.obj.header = tmpSting;
        return this;
    }
    blockQuote(tmpSting) {
        this.obj.blockQuote = tmpSting;
        return this;
    }
    list(tmpSting) {
        this.obj.list = tmpSting;
        return this;
    }
    ordered(tmpSting) {
        this.obj.ordered = tmpSting;
        return this;
    }
    unordered(tmpSting) {
        this.obj.unordered = tmpSting;
        return this;
    }
    codeBlock(tmpSting) {
        this.obj.codeBlock = tmpSting;
        return this;
    }
    horizontalRule(tmpSting) {
        this.obj.horizontalRule = tmpSting;
        return this;
    }
    emphasis(tmpSting) {
        this.obj.emphasis = tmpSting;
        return this;
    }
    code(tmpSting) {
        this.obj.code = tmpSting;
        return this;
    }


}
Computable.CC = class extends Computable {
    constructor() {
        super();
    }
    method(methodSting, aliasArray) {
        this.obj[methodSting] = empty;
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