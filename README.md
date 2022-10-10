# Exercise 3: Formatting and Objects

This exercise lets us practice some tiny but important principles from Martin's Clean Code, chapters 5 and 6.

Modify the following code to reflect the clean code principles and the [Law of Demeter](https://en.wikipedia.org/wiki/Law_of_Demeter).

```
class Student




  MAX_COURSES = 5
  def remove_from_schedule(course, schedule, quarter_id)
    schedule.quarter[quarter_id].course_list.remove(course)
  end
  def add_to_schedule(course, schedule, quarter_id)
    quarter     = schedule.quarter[quarter_id]
    course_list = quarter.course_list
    max_courses = course_list.maximum_number_of_courses
    if max_courses < MAX_COURSES
        course_list.add(course)
    end
    end
end
```
