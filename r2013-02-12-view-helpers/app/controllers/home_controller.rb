class HomeController < ApplicationController
  def homepage
  end

  def numbers
    @amount = 234
    @large_number = 4328473285438532478
    @phone = 2128541492
  end

  def text
    @numbers = (1..20).to_a
    @person_count1 = 1
    @person_count2 = 2
    @story = 'a very long time ago in a place far away'
  end

  def assets
  end

  def url
  end
end