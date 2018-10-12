class StudentDaysController < ApplicationController
  def index
    @student_days = StudentDay.all
    render json: @student_days
  end

  def create
    @student_day = StudentDay.new(student_day_params)
    time_in = DateTime.now
    date = DateTime.now.strftime('%Y-%m-%d')

    if time_in.to_i <= DateTime.parse("#{date} 9:15").to_i
      @student_day.status = "on time"
    elsif time_in.to_i > date.to_i
      @student_day.status = "late"
    end

    @student_day.time_in = time_in

    byebug
    @student_day.save

    render json: @student_day
  end

  private

  def student_day_params
    params.require(:student_day).permit(:student_id, :day_id, :time_in, :status)
  end
end
