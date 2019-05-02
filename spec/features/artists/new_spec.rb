require 'rails_helper'

RSpec.describe 'As a visitor', type: :feature do
  describe 'when I visit the new artist form page'
    it 'I can create a new artist' do
      visit 'artists/new'

      fill_in 'Name', with: 'Bro'
      click_on 'Create Artist'

      new_artist = Artist.last

      expect(current_path).to eq("/artists/#{new_artist.id}")

  end
end
