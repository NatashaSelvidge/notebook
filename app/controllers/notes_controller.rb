class NotesController < ApplicationController
  before_action :find_note, only: [:index, :show, :edit, :update, :destroy]
  
  def index 
    @notes = Note.all.reverse
  end 

  def show 
 
  end

  def new 
    @note = Note.new
  end 

  def create 
    @note = Note.new(note_params)
    if @note.save
      redirect_to @note 
    else
      render :new
    end 
  end 

  def edit  

  end 

  def update 

  end 

  def destroy 
    @note = find_by_id(params[:id])
    @note.destroy
  end 
 private 

  def find_note
    @note = Note.find_by_id(params[:id])

  end 

  def note_params
    params.require(:note).permit(:title, :content)
  end 

  
end
