class StudentsController < ApplicationController
    def index
        students = Student.all
        render json: students
    end

    def grades
        sortedstudents = Student.all.order(grade: :desc)
        render json: sortedstudents
    end

    def highest_grade
        highestgradestudent = Student.all.order(grade: :desc).first
        render json: highestgradestudent
    end
end
