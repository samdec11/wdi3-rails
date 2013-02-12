class HomeController < ApplicationController
  def startpage
  end

  def a
  end

  def b
  end

  def num
    case params['num'].downcase
    when '1'
      redirect_to('/start')
    when '2'
      redirect_to('/start/2')
    when '3'
      redirect_to('/start/3')
    when 'a'
      redirect_to('/start/a')
    when 'b'
      redirect_to('/start/b')
    end
  end

  def one
  end

  def two
  end

  def three
  end

end