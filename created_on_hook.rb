class Object
  attr_accessor :created_on
end

class Class
  alias_method :old_new, :new
  def new(*args)
    instance = old_new(*args)
    instance.created_on = Time.now
    instance
  end
end