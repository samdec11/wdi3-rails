require 'open-uri'

class StoriesController < ApplicationController
  def index
    @stories = Story.all
  end
  def scrape
    pages = params[:pages].to_i
    pages = 1 if pages == 0
    Story.delete_all
    url = "https://news.ycombinator.com/"
    i = 0
    pages.times do
      doc = Nokogiri::HTML(open(url))
      stories = doc.css('.title a')
      stories[0..-2].each do |s|
        link = s.attributes['href'].value
        title = s.children.text
        Story.create(:title => title, :url => link)
      end
      base =  i == 0 ? "https://news.ycombinator.com/" : "https://news.ycombinator.com"
      url =  base + stories[-1].attributes['href'].value
      i += 1
  end
    @stories = Story.all
  end
end