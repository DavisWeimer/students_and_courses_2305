require 'rspec'
require './lib/instructor'

RSpec.describe Instructor do
  before(:each) do
    @instructor = Instructor.new({name: "Sir Mathwhizz", age: 104})
  end
  describe "stats" do
    it 'exists' do
      expect(@instructor).to be_a(Instructor)
      expect(@instructor.name).to eq("Sir Mathwhizz")
      expect(@instructor.age).to eq(104)
    end
  end
end