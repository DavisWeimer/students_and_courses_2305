require 'rspec'
require './lib/course'
require './lib/student'

RSpec.describe Course do
  before(:each) do
    @course = course = Course.new("Calculus", 2)
    @student_1 = Student.new({name: "Morgan", age: 21})
    @student_2 = Student.new({name: "Jordan", age: 29})
  end
  describe "classes" do
    it 'exists' do
      expect(@course).to be_a(Course)
      expect(@course.name).to eq("Calculus")
      expect(@course.capacity).to eq(2)
      expect(@course.students).to eq([])
    end

    it 'open for enrollment!' do
      expect(@course.full?).to eq false
    end

    it 'enrollment is closed, Calculus is full. Nice, I can do something else now!' do
      expect(@course.full?).to eq false

      @course.enroll(@student_1)
      @course.enroll(@student_2)

      expect(@course.students).to eq([@student_1, @student_2])
      expect(@course.full?).to eq true
    end
  end
end