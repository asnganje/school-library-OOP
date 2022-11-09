require './person'

class Teacher < person
  attr_accessor :specialization

  def initialize(specialization)
    super(name, age, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
