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
      if a == grade
        return b
      end
    end
  end

  def sort
    sort_hash = {}
    roster.each do |a, b|
      sort_hash[a] = b.sort
    end
    sort_hash
  end

end
