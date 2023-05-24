require 'rspec'
require './lib/course'
require './lib/student'
require './lib/instructor'
require './lib/gradebook'

RSpec.describe Gradebook do
  before(:each) do
    @course_1 = Course.new("Calculus", 2)
    @course_2 = Course.new("Trigonometry", 4)
    @instructor = Instructor.new({name: "Sir Mathwhizz", age: 104})
    @gradebook = Gradebook.new(@instructor.name)
    @student_1 = Student.new({name: "Morgan", age: 21})
    @student_2 = Student.new({name: "Jordan", age: 29})
  end
  describe "entry" do
    it 'exists' do
      expect(@gradebook).to be_a(Gradebook)
      expect(@gradebook.instructor).to eq("Sir Mathwhizz")
      expect(@gradebook.courses).to eq([])
    end
  end

  describe "courses" do
    it 'contain Course objects' do
      expect(@gradebook.courses).to eq([])

      @gradebook.add_course(@course_1)
      @gradebook.add_course(@course_2)

      expect(@gradebook.courses).to eq([@course_1, @course_2])
    end
  end

  describe "students" do
    it 'list contains all enrolled students' do
      expect(@gradebook.courses).to eq([])
      expect(@gradebook.list_all_students).to be_a(Hash)
      
      @gradebook.add_course(@course_1)
      @gradebook.add_course(@course_2)
      @course_1.enroll(@student_1)
      @course_1.enroll(@student_2)
      @gradebook.add_students_to_gradebook

      expect(@gradebook.courses).to eq([@course_1, @course_2])
      expect(@gradebook.list_all_students).to eq({:@course_1 => @course_1.students})
    end
  end
end