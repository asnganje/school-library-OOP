require './nameable'
require './decorator'
require './capitalize_decorator'
require './trimmer_decorator'

class Person < Nameable
  attr_reader :id
  attr_accessor :name, :age

  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @age = age
    @name = name
    @parent_permission = parent_permission
    @id = Random.rand(1..1000)
  end

  def correct_name
    @name
  end

  def can_use_services?
    (of_age || @parent_permission)
  end

  private

  def of_age?
    @age >= 18
  end

  def add_rental(person, date)
    Rental.new(date, self, person)
  end
end

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = CapitalizeDecorator.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = TrimmerDecorator.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
