require 'byebug'
class TriangleClassifier
  def self.lookup_table(num)
    table = {
      1 => :equilateral,
      2 => :isoceles,
      3 => :scalene
    }

    table[num]
  end

  def classify(len1 = 1, len2 = 1, len3 = 1)
    validate(len1, len2, len3)
    sides = [len1, len2, len3]
    TriangleClassifier.lookup_table(sides.uniq.length)
  end

  private

  def validate(len1, len2, len3)
    sides = [len1, len2, len3]
    outcomes = []
    sides.combination(2).to_a.each do |x|
      sum_of_two_sides = x.reduce(:+)
        sides.each do |side|
          outcomes.push(side >= sum_of_two_sides)
        end
    end
    raise ArgumentError, 'Invalid Triangle' if outcomes.include?(true)
    return true
  end
end
