class TriangleClassifier
  def classify(len1, len2, len3)
    raise ArgumentError, 'Need three sides' if len1.nil? || len2.nil? || len3.nil?
    
    raise ArgumentError, 'Invalid Triangle' if !evaluate(len1,len2,len3)
  end

  private
  def evaluate(len1, len2, len3)
    return false if  len1 + len2 <= len3 
    return false if  len2 + len3 <= len1 
    return false if  len1 + len3 <= len2
  end
end
