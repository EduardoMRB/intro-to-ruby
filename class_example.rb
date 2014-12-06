class Person
  def name=(name)
    @name = name
  end

  def name
    @name
  end

  def birthdate=(birthdate)
    @birthdate = birthdate
  end

  def birthdate
    @birthdate
  end

  def to_s
    "Person's name is #{@name}, born in #{@birthdate}"
  end
end
