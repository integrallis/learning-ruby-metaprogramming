class EnglishCalculator
  class << self
    def evaluate(&expression)
      self.new.instance_eval(&expression)
    end
  end
  
  #def multiply()
end