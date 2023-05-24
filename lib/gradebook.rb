class Gradebook
  attr_reader :instructor,
              :courses

  def initialize(instructor)
    @instructor = instructor
    @courses = []
    @students_enrolled = []
    @gradebook_students = {}
  end

  def add_course(course)
    @courses.push(course)
  end

  def list_all_students
    @gradebook_students
  end

  def add_students_to_gradebook
    @gradebook_students[:courses] = @course_1
  end
end


# {@course_1: @course.students}