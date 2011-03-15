clazz = Class.new
clazz.class_eval do
  def wheres_the_beef?
    puts "in here"
  end
end

instance_of_clazz = clazz.new
instance_of_clazz.wheres_the_beef?

