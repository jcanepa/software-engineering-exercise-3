class Registrar
  def get_course_list(schedule, quarter_id)
    quarter = schedule.quarter[quarter_id]
    return quarter.course_list
  end

  def remove_student_from_schedule(student, schedule, quarter_id)
    course_list = get_course_list(schedule, quarter_id)
    student.remove_from_schedule(course_list)
  end

  def add_student_to_schedule(student, schedule, quarter_id)
    course_list = get_course_list(schedule, quarter_id)
    student.add_to_schedule(course_list)
  end
end

class Student

  MAX_COURSES = 5

  def remove_from_schedule(course_list)
    course_list.remove(course)
  end

  def add_to_schedule(course_list)
    max_courses = course_list.maximum_number_of_courses
    course_list.add(course) if max_courses < MAX_COURSES
  end
end