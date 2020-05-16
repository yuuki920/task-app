class DaysController < ApplicationController
  before_action :authenticate_user!

  def index
    if current_user
      @days = Day.all.where(user_id: current_user.id)
      @notes =Note.all.where(user_id: current_user.id)
      render "notes/index"
    else
      redirect_to new_user_session_path
    end
  end

  def new
    @day = Day.new
  end

  def create
    Day.create(day_params)
    redirect_to root_path
  end

  def edit
    @day = Day.find(params[:id])
  end

  def update
    day = Day.find(params[:id])
    day.update(day_params)
    redirect_to root_path
  end

  def show
    @day = Day.find(params[:id])
  end

  def destroy
    day= Day.find(params[:id])
    day.destroy
    redirect_to root_path
  end

  private
   def day_params
    params.require(:day).permit(:title, :content, :start_time).merge(user_id: current_user.id)
   end

end
