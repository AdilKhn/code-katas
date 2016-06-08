class TriangleClassifier
  def classify(len1, len2, len3)
    raise ArgumentError, 'Need three sides' if len1.nil? || len2.nil? || len3.nil?
    raise ArgumentError, 'Invalid Triangle' if invalid?(len1,len2,len3)
    sides = [len1, len2, len3]


    return :scalene if sides.uniq.length == 3
    return :isoceles if sides.uniq.length == 2
    return :equilateral if sides.uniq.length == 1
  end

  private
  def invalid?(len1, len2, len3)
    return true if  len1 + len2 <= len3
    return true if  len2 + len3 <= len1
    return true if  len1 + len3 <= len2
  end
end
