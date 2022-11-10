class StudentsController < ApplicationController

  def index
    students = Student.all
    render json: students
  end

  def grades
    students = Student.all.order(grade: :desc)
    render json: students
  end

  def highest_grade
    value = Student.maximum('grade')
    best = Student.find_by "grade = ?", value
    render json: best
  end
end
