# A list of courses for a given academic quarter.
class CourseList
  attr_reader :maximum_number_of_courses

  def initialize(quarter)
    @list = fetch_term_list(quarter)
    @maximum_number_of_courses = 7
  end

  # TODO: implement empty methods below
  def fetch_term_list(quarter); end
  def remove(course); end
  def add(course); end
end

# A registrar manages the course list for a given quarter.
class Registrar
  MAX_COURSES = 5

  def initialize(quarter_id, course_list = nil)
    @course_list = course_list || CourseList.new(quarter_id)
  end

  def remove_from_schedule(course)
    @course_list.remove(course)
  end

  def add_to_schedule(course)
    @course_list.add(course) if course_list_max < MAX_COURSES
  end

  def course_list_max
    @course_list.maximum_number_of_courses
  end
end
