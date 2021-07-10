function getBodyText(win) {
    var doc = win.document, body = doc.body, selection, range, bodyText;
    if (body.createTextRange) {
        return body.createTextRange().text;
    } else if (win.getSelection) {
        selection = win.getSelection();
        range = doc.createRange();
        range.selectNodeContents(body);
        selection.addRange(range);
        bodyText = selection.toString();
        selection.removeAllRanges();
        return bodyText;
    }
}


var str = getBodyText(window);
var find = ','; 
var re = new RegExp(find, 'g'); 
str = str.replace(re, ' ');
var res = str.split(" ");
res.sort();
alert(res);