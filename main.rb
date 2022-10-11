class Registrar

  MAX_COURSES = 5

  def get_course_list(schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
    return quarter.course_list
  end

  def remove_from_schedule(course)
    get_course_list().remove(
      course)
  end

  def add_to_schedule(course)
    course_list = get_course_list()
    max_courses = course_list.maximum_number_of_courses
    course_list.add(course) if max_courses < MAX_COURSES
  end
end