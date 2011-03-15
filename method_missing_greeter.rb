class Greeter
  Greetings = {:english => 'Hello',
               :french => 'Bon Jour',
               :dutch => 'Hallo',
               :spanish => 'Hola'}
  
  def method_missing(method_name, *args)
    name = method_name.to_s.split(/_/).first
    language = method_name.to_s.split(/_/).last.to_sym
    puts "#{Greetings[language]}!" if name == 'greet'
  end
end
