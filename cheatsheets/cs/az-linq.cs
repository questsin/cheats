/LINQ expression
//SQL translation

input.Select(family => family.parents[0].familyName);
//SELECT VALUE f.parents[0].familyName FROM Families f

input.Select(family => family.children[0].grade + c); // c is an int variable
//SELECT VALUE f.children[0].grade + c FROM Families f

input.Select(family => new { name = family.children[0].familyName, grade = family.children[0].grade + 3});
//SELECT VALUE {"name":f.children[0].familyName, "grade": f.children[0].grade + 3 } FROM Families f

input.Where(family=> family.parents[0].familyName == "Smith");
//SELECT * FROM Families f WHERE f.parents[0].familyName = "Smith"