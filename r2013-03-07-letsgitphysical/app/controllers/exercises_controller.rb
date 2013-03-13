class ExercisesController < ApplicationController
  before_filter :ensure_logged_in
 def index
    @exercises = @auth.exercises.order(:activity).order(:completed)
    @activities = @auth.exercises.map(&:activity).uniq.sort
  end
  def new
    @exercise = Exercise.new
  end
  def create
    @auth.exercises << Exercise.create(params[:exercise])
    @exercises = @auth.exercises.order(:activity).order(:completed)
    @activities = @auth.exercises.map(&:activity).uniq.sort
  end
  def chart
    render :json => @auth.exercises.where(:activity => params[:activity])
  end
  def show
  end
  def edit
  end
  def update
  end
  def destroy
  end
end