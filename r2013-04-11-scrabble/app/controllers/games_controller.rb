class GamesController < ApplicationController
  def create
    @game = Game.find_or_create_by_name_and_is_active(params[:channel], true)
    player = User.find(params[:user_id])
    @game.users << player if @game.users.exclude?(player)
    if player == @game.users.first
      @game.current_player = player.username
      @game.save
    end
    Pusher.trigger(params[:channel], 'chat', "<span style='color: red'>#{@auth.username} has joined the game!</span>")
    Pusher.trigger(params[:channel], 'join_game', "#{@auth.username}")
  end
  def refresh_players
    channel = params[:channel]
    @game = Game.where(name: channel, is_active: true).first
  end
  def move
    user = User.find(params[:user_id])
    game = Game.where(name: params[:channel], is_active: true).first
    if game.current_player == user.username
      Pusher.trigger(params[:channel], 'place_letter', {user: user.username, letter: params[:letter], location: params[:location], channel: params[:channel]})
    end
    render :nothing => true
  end
  def end_turn
    @game = Game.find(params[:game_id])
    player_index = @game.users.index(User.where(username: "Sean").first)
    next_player = @game.users[player_index + 1] || @game.users[0]
    @game.current_player = next_player.username
    @game.save
    Pusher.trigger(params[:channel], 'join_game', "#{@auth.username}")
    render :refresh_players
  end
end