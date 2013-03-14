class SubscribersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    @user = User.new(params[:user])
    if @user.save
      subscriber = Subscriber.create(tagline: 'Please enter a tagline', bio: 'Please enter a bio', gender: 'Please enter gender', age: 99)
      subscriber.user = @user
    end
  end
end