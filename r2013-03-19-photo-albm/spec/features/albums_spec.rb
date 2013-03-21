require 'spec_helper'

describe 'Albums' do
  describe 'GET /' do
    it 'shows the New Album link' do
      visit root_path
      page.should have_link('New Album')
    end
  end
  describe 'GET /albums/new' do
    it 'shows the New Album form when the New Album link is clicked', :js => true do
      visit root_path
      click_link('New Album')
      page.should have_link('Cancel')
      page.should have_button('Create Album')
    end
    it 'removes the form when the cancel link is clicked', :js => true do
      visit root_path
      click_link('New Album')
      click_link('Cancel')
      page.should_not have_link('Cancel')
      page.should_not have_button('Create Album')
    end
  end
  describe 'POST /albums' do
    it 'creates an album', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'Cats')
      click_button('Create Album')

      click_link('New Album')
      fill_in('Name', :with => 'Horses')
      click_button('Create Album')

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cats')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'Dogs')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Horses')

      visit root_path

      page.should have_css('table tr:nth-child(2) td:nth-child(1)', :text => 'Cats')
      page.should have_css('table tr:nth-child(3) td:nth-child(1)', :text => 'Dogs')
      page.should have_css('table tr:nth-child(4) td:nth-child(1)', :text => 'Horses')
    end
  end
  describe 'GET /albums/3' do
    it 'displays the album show page', :js => true do
      visit root_path
      click_link('New Album')
      fill_in('Name', :with => 'Dogs')
      click_button('Create Album')
      click_link('Dogs')
      current_path.should eq '/albums/1'
    end
    it 'shows New Photo button' do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      page.should have_link('New Photo')
    end
  end
end