var svgns = "http://www.w3.org/2000/svg";
var svgDocument = evt.target.ownerDocument;
var shape = svgDocument.createElementNS(svgns, "circle");
shape.setAttributeNS(null, "cx", 25);
shape.setAttributeNS(null, "cy", 25);
shape.setAttributeNS(null, "r",  20);
shape.setAttributeNS(null, "fill", "green"); 
