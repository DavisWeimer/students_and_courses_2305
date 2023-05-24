require 'rspec'
require './lib/student'

RSpec.describe Student do
  before(:each) do
    @student = Student.new({name: "Morgan", age: 21})
  end
  describe "stats" do
    it 'exists' do
      expect(@student).to be_a(Student)
      expect(@student.name).to eq("Morgan")
      expect(@student.age).to eq(21)
    end

    it 'have and empty scores array' do
      expect(@student.scores).to be_a(Array)
      expect(@student.scores).to eq([])
    end
  end
end