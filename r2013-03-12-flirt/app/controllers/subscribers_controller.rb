class SubscribersController < ApplicationController
  def new
    @user = User.new
  end
  def create
    user = User.create(params[:user])
    subscriber = Subscriber.create(tagline: 'Please enter a tagline', bio: 'Please enter a bio', gender: 'Please enter gender', age: 99)
    subscriber.user = user
  end
end