# == Schema Information
#
# Table name: photos
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  url        :string(255)
#  album_id   :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Photo do
  describe '.create' do
    it 'has an id' do
      photo = Photo.create(name: 'Times Square', url: 'photos/ts.jpg')
      expect(photo.id).to_not be nil
      expect(photo.name).to eq 'Times Square'
      expect(photo.url).to eq 'photos/ts.jpg'
    end
    it 'fails validation if url is empty' do
      photo = Photo.create
      expect(photo.id).to be nil
    end
  end
  describe '#album' do
    it 'belongs to an album' do
      album = FactoryGirl.create(:album)
      photo = Photo.create(name: 'Times Square', url: 'photos/ts.jpg')
      album.photos << photo
      expect(photo.album).to be_an_instance_of(Album)
    end
  end
end
