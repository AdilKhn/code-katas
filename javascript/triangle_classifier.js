var TriangleClassifier = {

    side1: 1,
    side2: 1,
    side3: 1,

    validate: function() {
        return true;
    }

}

module.exports = function (len1, len2, len3){

    TriangleClassifier.side1 = len1;
    TriangleClassifier.side2 = len2;
    TriangleClassifier.side3 = len3;

    return TriangleClassifier;
}
