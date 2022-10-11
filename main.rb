class ScheduleReference
  attr_reader :schedule

  def initialize(schedule)
    @schedule = schedule
  end

  def get_quarter(quarter_id)
    return @schedule.quarter[quarter_id]
  end
end

class Registrar
  MAX_COURSES = 5
  attr_reader :course_list

  def initialize(reference, quarter_id)
    quarter = reference.get_quarter(quarter_id)
		@course_list = quarter.course_list
	end

  def remove_from_schedule(course)
    @course_list.remove(
      course)
  end

  def add_to_schedule(course)
    @course_list.add(course) if course_list_max() < MAX_COURSES
  end

  def course_list_max
    return @course_list.maximum_number_of_courses
  end
end