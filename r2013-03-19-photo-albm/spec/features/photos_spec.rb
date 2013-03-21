require 'spec_helper'

describe 'Photos' do
  describe 'GET /photos/new' do
    it 'shows the New Photo form when the New Photo link is clicked', :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      click_link('New Photo')
      page.should have_link('Cancel')
      page.should have_button('Create Photo')
    end
    it 'removes the form when the cancel link is clicked', :js => true do
      album = FactoryGirl.create(:album)
      visit album_path(album)
      click_link('New Photo')
      click_link('Cancel')
      page.should_not have_link('Cancel')
      page.should_not have_button('Create Photo')
    end
  end
end