class NotesController < ApplicationController
  before_action :authenticate_user!
  
  def index
    if current_user
      @notes = Note.includes(:user).where(user_id: current_user.id)
      @days =Day.all.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path
    end
  end

  def new
    @note = Note.new
  end
  
  def create
    Note.create(note_params)
    redirect_to root_path
  end

  def edit
    @note = Note.find(params[:id])
  end

  def update
    note = Note.find(params[:id])
    note.update(note_params)
    redirect_to root_path
  end

  def show
    @note = Note.find(params[:id])
  end

  def destroy
    note= Note.find(params[:id])
    note.destroy
    redirect_to root_path
  end


  private
    def note_params
      params.require(:note).permit(:text).merge(user_id: current_user.id)
    end

end