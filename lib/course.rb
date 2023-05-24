class Course
  attr_reader :name,
              :capacity,
              :students,
              :course_cap
  
  def initialize(name, capacity)
    @name = name
    @capacity = capacity
    @students = []
    @course_cap = false
  end

  def full?
    @students.count == 2
  end

  def enroll(student)
    @students.push(student)
  end
end
