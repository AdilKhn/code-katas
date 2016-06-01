require 'test/unit'
require_relative 'triangle_classifier'

class TriangleClassifierTests < Test::Unit::TestCase
  def setup
  end

  def teardown
  end

  def test_has_classify_method
    assert(TriangleClassifier.respond_to?(:classify), 'Class has a classify method')
  end

  def test_classifies_scalene
    pend('to be written')
  end

  def test_classifies_isosceles
    pend('to be written')
  end

  def test_classifies_equilateral
    pend('to be written')
  end

  def test_throws_argument_error_on_invalid_input
    assert_raise ArgumentError do
      TriangleClassifier.classify
    end
  end
end
