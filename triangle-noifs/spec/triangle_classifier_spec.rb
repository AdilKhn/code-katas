require_relative '../triangle_classifier'
describe TriangleClassifier do
  it 'has a classify method ' do
    classfier = TriangleClassifier.new
    expect(classfier).to respond_to :classify
  end

  context 'invalid inputs ' do
    it 'uses default args if no parameters are passed' do
      classifier = TriangleClassifier.new
      expect(classifier.classify).to eq :equilateral
    end

    it 'raises an Argument error if sum of two sides is not greater than the third' do
      classifier = TriangleClassifier.new
      expect{ classifier.classify(1, 1, 3) }.to raise_error(ArgumentError)
    end
  end

  context '#classify method' do
    it 'returns isoceles when two sides are equal' do
      classifier = TriangleClassifier.new
      expect(classifier.classify(4, 3, 3)).to eq :isoceles
    end

    it 'returns scalene if all sides are different' do
      classifier = TriangleClassifier.new
      expect(classifier.classify(4, 3, 2)).to eq :scalene
    end

    it 'returns equilateral when all three sides are equal' do
      classifier = TriangleClassifier.new
      expect(classifier.classify(3, 3, 3)).to eq :equilateral
    end
  end
end
