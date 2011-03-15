module UberCoolUtilities
  def self.included(target)
    puts "module #{self} has been included in #{target}" 
  end
end

class MyCoolClass
  include UberCoolUtilities
end