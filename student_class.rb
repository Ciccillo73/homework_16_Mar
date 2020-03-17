class Student

  attr_accessor :name, :cohort
  def initialize(name,cohort)
    @name = name
    @cohort = cohort
  end

  def can_talk()
    return "I can talk"
  end

  def fav_language(name)
    return "I love #{name}"
  end

end
