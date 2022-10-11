class SchoolScheduleReference
  attr_reader :schedule

  def initialize()
    @schedule = fetch_osu_schedule()
  end

  def get_quarter(quarter_id)
    return @schedule.quarter[quarter_id]
  end

  def get_course_list(quarter_id)
    return get_quarter(quarter_id).course_list
  end

  private def fetch_osu_schedule; end # TODO retrieve school schedule
end

class Registrar
  MAX_COURSES = 5
  attr_reader :course_list

  def initialize(
    reference=SchoolScheduleReference.new,
    quarter_id)
		@course_list = reference.get_course_list(quarter_id)
	end

  def remove_from_schedule(course)
    @course_list.remove(
      course)
  end

  def add_to_schedule(course)
    @course_list.add(course) if course_list_max() < MAX_COURSES
  end

  private def course_list_max
    return @course_list.maximum_number_of_courses
  end
end