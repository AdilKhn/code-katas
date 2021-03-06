var TriangleClassifier = {

    side1: 1,
    side2: 1,
    side3: 1,

    validate: function() {

      return this.side1 + this.side2 > this.side3 &&
             this.side2 + this.side3 > this.side1 &&
             this.side1 + this.side3 > this.side2;
    },

    classify: function(){
      if (this.unique([this.side1,this.side2,this.side3]).length == 1){
        return 'equilateral';
      }

      if (this.unique([this.side1,this.side2,this.side3]).length == 2){
        return 'isoceles';
      }

      if (this.unique([this.side1,this.side2,this.side3]).length == 3){
        return 'scalene';
      }
    },

    unique: function(array) {
      return array.filter(function(x, i) {
        return array.indexOf(x) === i
      });
    }


};

module.exports = function (len1, len2, len3){

    TriangleClassifier.side1 = len1;
    TriangleClassifier.side2 = len2;
    TriangleClassifier.side3 = len3;

    return TriangleClassifier;
}
