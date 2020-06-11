require 'pry'

class School

  attr_reader :roster
  def initialize(name)
    @roster = {}
  end

  def add_student(name, grade)
    roster[grade] ||= []
    roster[grade] << name
  end

  def grade(grade)
    roster.detect do |a, b|
      if x == grade
        return b
      end
    end

  end

end
