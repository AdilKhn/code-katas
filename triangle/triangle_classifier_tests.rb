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
  end

  def test_classifies_isosceles
  end

  def test_classifies_equilateral
  end

  def test_throws_argument_error_on_invalid_input
    value = TriangleClassifier.classify
    assert_kind_of(ArgumentError, value, 'ArgumentError if no parameters')
  end
end
