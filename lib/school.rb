# code here!
class School
  attr_accessor :roster
  attr_reader :name

  def initialize(name)
    @name=name
    @roster={}
  end


  def add_student(name, grade)
      roster[grade] ||= []
      roster[grade] << name
  end

  def grade(grade)
    roster[grade]
  end

  def sort
    roster.collect {|key, values| roster[key]= values.sort}
  end
end
