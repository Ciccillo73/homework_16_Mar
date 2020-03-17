require('minitest/autorun')
require('minitest/reporters')

require_relative('../student_class')

class TestStudent < MiniTest::Test

  def setup()
    @student = Student.new("Franky", "G18")
  end

  def test_can_have_name()
    assert_equal("Franky", @student.name())
  end

  def test_have_cohort()
    assert_equal("G18", @student.cohort())
  end

  def test_can_update_name()
    @student.name = "Bob"
    assert_equal("Bob", @student.name)
  end

  def test_can_update_cohort()
    @student.cohort = "G16"
    assert_equal("G16", @student.cohort)
  end

  def test_can_talk()
    assert_equal("I can talk", @student.can_talk())
  end

  def test_has_favorite_language()
    result = @student.fav_language("Python")
    assert_equal("I love Python", result)
  end


end
