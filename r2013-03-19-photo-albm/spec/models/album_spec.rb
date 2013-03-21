# == Schema Information
#
# Table name: albums
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'spec_helper'

describe Album do
  describe '.create' do
    it 'has an id' do
      album = Album.create(name: 'NYC Trip')
      expect(album.id).to_not be nil
      expect(album.name).to eq 'NYC Trip'
    end
    it 'fails validation if name is empty' do
      album = Album.create
      expect(album.id).to be nil
    end
  end
  describe '#photos' do
    it 'has photos' do
      album = Album.create(name: 'NYC Trip')
      photo = FactoryGirl.create(:photo)
      album.photos << photo
      expect(album.photos.first).to be_an_instance_of(Photo)
    end
  end
end
