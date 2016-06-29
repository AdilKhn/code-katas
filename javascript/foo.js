var chai = require('chai');
var mocha = require('mocha');

describe('somtheing',function() {
    it("something else", function(){
      console.log('doing it');
      chai.expect(2).to.be.equal(2);
    });
});
