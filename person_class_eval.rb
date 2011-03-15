class Person
  
  def self.make_greeting(language, greeting)
    class_eval "def greet_in_#{language}; puts '#{greeting}'; end"
  end
  
  make_greeting("spanish", "Hola!")
  make_greeting("english", "Hello!")
end

 