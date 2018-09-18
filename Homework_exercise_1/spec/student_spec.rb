require('minitest/autorun')
require('minitest/rg')
require_relative('../student')
#
class TestStudent < MiniTest::Test
#
def setup
  @student1 = Student.new("Connor", "E22")
  @student2 = Student.new("Susan", "E23")
  @student3 = Student.new("Peter", "E21")
end

def test_student_name
  result = @student1.get_name
  assert_equal("Connor", result)
end

def test_cohort
  result = @student2.get_cohort
  assert_equal("E23", result)
end

def test_change_name
  @student1.name = "Connor Brown"
  result = @student1.get_name
  assert_equal("Connor Brown", result)
end

def test_change_cohort
  @student3.cohort = "E25"
  result = @student3.get_cohort
  assert_equal("E25", result)
end

def test_can_talk
  result = @student2.talk
  assert_equal("I can talk", result)
end

def test_favourite_language
  result = @student1.say_favourite_language("Ruby")
  assert_equal("I love Ruby", result)
end






end
