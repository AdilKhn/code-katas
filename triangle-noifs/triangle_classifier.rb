require 'byebug'
class TriangleClassifier
  def classify(len1=1, len2=1, len3=1)
    raise ArgumentError, 'Invalid Triangle' if invalid?(len1,len2,len3)
    sides = [len1, len2, len3]


    return :scalene if sides.uniq.length == 3
    return :isoceles if sides.uniq.length == 2
    return :equilateral if sides.uniq.length == 1
  end

  private
  def invalid?(len1, len2, len3)
    sides = [len1, len2, len3]
    outcomes = []
    sides.combination(2).to_a.each do |x|
      sum_of_two_sides = x.reduce(:+)
        sides.each do |side|
          outcomes.push(side >= sum_of_two_sides)
        end
    end
    outcomes.include?(true)
  end
end
