class Registrar
  def get_course_list(schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
    return quarter.course_list
  end

  def remove_student_from_schedule(course_controller, schedule, quarter_id)
    course_controller.remove_from_list(
      get_course_list(schedule, quarter_id))
  end

  def add_course_controller_to_schedule(course_controller, schedule, quarter_id)
    course_controller.add_to_list(
      get_course_list(schedule, quarter_id))
  end
end

class CourseController
  MAX_COURSES = 5

  def remove_from_list(course, course_list)
    course_list.remove(course)
  end

  def add_to_list(course, course_list)
    max_courses = course_list.maximum_number_of_courses
    course_list.add(course) if max_courses < MAX_COURSES
  end
end