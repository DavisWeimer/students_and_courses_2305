class Instructor
  attr_reader :name,
              :age

  def initialize(stats)
    @name = stats[:name]
    @age = stats[:age]
  end

end