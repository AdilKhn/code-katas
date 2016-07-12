var chai = require('chai');
var mocha = require('mocha');
var TriangleClassifier = require(__dirname + "/../triangle_classifier.js");

describe("initialize", function(){
  it ("It takes arguments for sides of a triangle", function(){
      var tc = TriangleClassifier(2,3,4);
      chai.expect(tc.side2).to.eq(3)
  });
});

describe("validate method", function(){
  it(" has a validate method", function(){
      var tc = TriangleClassifier(1,1,1);
      var result = tc.validate();
      chai.expect(result).to.be.true;
  });

  it('sum of two sizes is greater than third to be valid', function(){
    var tc = TriangleClassifier(1,2,4);
    var result = tc.validate();
    chai.expect(result).to.be.false;
  });

});

describe('#classify method', function(){
  it(' has a classify method', function(){
    var tc = TriangleClassifier(2,3,4);
    chai.expect(tc).respondTo('classify');
  });

  it('returns equilateral when all sides are same', function(){
    var tc = TriangleClassifier(1,1,1);
    var type = tc.classify();

    chai.expect(type).to.eq('equilateral');
  });

  it('returns isoceles when two sides are same', function(){
    var tc = TriangleClassifier(3,3,4);
    var type = tc.classify();

    chai.expect(type).to.eq('isoceles');
  });
});
