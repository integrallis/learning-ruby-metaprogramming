module Kernel
  def singleton_class
    class << self
      self
    end
  end
end

module Greeters
  class Base
    def self.greet(language, greeting)
      make_greeting(language, greeting)
    end
  
    def self.make_greeting(language, greeting)
      singleton_class.class_eval do
        define_method "greet_in_#{language}" do
          puts "#{greeting}"
        end
      end
    end
  end
end

class Person < Greeters::Base
  greet :french, "Bonjour!"
  greet :spanish, "Hola!"
  greet :english, "Hello!"
  greet :dutch, "Hallo!"
end

Person.greet_in_french
Person.greet_in_spanish
Person.greet_in_english
Person.greet_in_dutch



