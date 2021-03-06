class School
attr_accessor :name, :roster

def initialize(name)
  @name = name
  @roster = {}
end

def grade(grade)
  @roster[grade]
end

def add_student(name, grade)
  if  @roster[grade] != nil
  @roster[grade] << name
else
  @roster[grade] = [name]
end
end

def sort
  @roster.each do |key, value|
    value.sort!
  end
end

end
