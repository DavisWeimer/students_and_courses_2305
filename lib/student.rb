class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(stats)
    @name = stats[:name]
    @age = stats[:age]
    @scores = []
  end
end
