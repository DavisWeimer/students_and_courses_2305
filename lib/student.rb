class Student
  attr_reader :name,
              :age,
              :scores

  def initialize(stats)
    @name = stats[:name]
    @age = stats[:age]
    @scores = []
    @score_log = 0
  end

  def log_score(score)
    @scores.push(score)
    @score_log += 1
  end

  def grade
    sum = 0
    @scores.each do |score|
      sum += score
    end
    sum.to_f / @score_log
  end
end
