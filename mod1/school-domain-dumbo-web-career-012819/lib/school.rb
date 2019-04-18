require 'pry'

class School
  attr_accessor :school, :roster
  # attr_reader :school

  def initialize(school)
    @school = school
    @roster = {}
  end

  # def roster
  #   {}
  # end
  def add_student(student, grade)
    if @roster.has_key?(grade)
      @roster[grade] << student
    else
      @roster[grade] = [student]
    end
  end

  def grade(num)
    @roster[num]
  end

  def sort
    new_hash = {}
    @roster.each {|k, v| new_hash[k] = v.sort}
    new_hash.sort_by {|k, v| k}.to_h
  end

end


school = School.new("Bayside High School")
# binding.pry
