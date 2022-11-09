class Person
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    @age = age
    @name = name
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  private

  def is_of_age?
    @age >= 18
  end

  def can_use_services?
    is_of_age || @parent_permission
  end
end