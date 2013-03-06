class PrioritiesController < ApplicationController
  before_filter :ensure_logged_in
  def index
    @priorities = @auth.priorities.order(:value).reverse
  end
  def create
    color = params[:color]
    name = params[:name]
    value = params[:value]
    priority = Priority.create(:name => name, :color => color, :value => value)
    @auth.priorities << priority
    render :json => priority
  end
  def update
    priority = Priority.find(params[:id])
    priority.update_attributes(params[:priority])
    render :json => priority
  end
  def up
    priority = Priority.find(params[:id])
    render :json => priority.swap_higher(@auth)
  end
  def down
    priority = Priority.find(params[:id])
    render :json => priority.swap_lower(@auth)
  end
end