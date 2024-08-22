class SchedulesController < ApplicationController
  def index
    @schedules = Schedule.all
    @schedule_count = Schedule.count
  end

  def new
    @schedule = Schedule.new
  end

  def create
    @schedule = Schedule.new(params.require(:schedule).permit(:title, :startDate, :endDate, :allDay, :memo))
    if @schedule.save
      flash[:notice] = "予定#{@schedule.id}を登録しました"
      redirect_to :schedules
    else
      flash[:alert] = "予定を登録できませんでした"
      render "new"
    end
  end

  def show
    @schedule = Schedule.find(params[:id])
  end

  def edit
    @schedule = Schedule.find(params[:id])
  end

  def update
    @schedule = Schedule.find(params[:id])
    if @schedule.update(params.require(:schedule).permit(:title, :startDate, :endDate, :allDay, :memo))
      flash[:notice] = "予定#{@schedule.id}を編集しました"
      redirect_to :schedules
    else
      flash[:alert] = "予定を編集できませんでした"
      render "edit"
    end
  end

  def destroy
    @schedule = Schedule.find(params[:id])
    @schedule.destroy
    flash[:notice] = "予定#{@schedule.id}を削除しました"
    redirect_to :schedules
  end
end
