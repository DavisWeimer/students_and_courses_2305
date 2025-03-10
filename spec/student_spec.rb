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

    it 'has an empty scores array' do
      expect(@student.scores).to be_a(Array)
      expect(@student.scores).to eq([])
    end

    it 'can log a score' do
      expect(@student.scores).to eq([])

      @student.log_score(89)
      @student.log_score(78)

      expect(@student.scores).to eq([89, 78])
    end

    it 'can find the average of all logged scores' do
      @student.log_score(89)
      @student.log_score(78)

      expect(@student.scores).to eq([89, 78])
      expect(@student.grade).to eq(83.5)
    end
  end
end