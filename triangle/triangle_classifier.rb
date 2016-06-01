class TriangleClassifier
  def self.classify(len1, len2, len3)
     raise ArgumentError , 'Need three sides' if len1.nil? || len2.nil? || len3.nil?
  end
end
