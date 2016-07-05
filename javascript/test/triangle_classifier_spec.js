var chai = require('chai');
var mocha = require('mocha');
var TriangleClassifier = require(__dirname + "/../triangle_classifier.js");



it ("It takes arguments for sides of a triangle", function(){
    var tc = TriangleClassifier(1,1,1);
    chai.expect(tc).to.eq(3)
});

it(" has a validate method", function(){
    var tc = TriangleClassifier(1,1,1);
    var result = tc.validate();
    chai.expect(result).to.be.true;
});
