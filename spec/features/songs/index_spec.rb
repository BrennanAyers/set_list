require 'rails_helper'

RSpec.describe 'songs index page', type: :feature do
  before :each do
    @artist = create(:artist)
    @song = create(:song, artist: @artist)
    create_list(:song, 4, artist: @artist)
  end

  it 'user can see all songs' do
    artist = Artist.create(name: "Placeholder")
    song_1 = artist.songs.create(title: "Don't Stop Believin'", length: 303, play_count: 123456)
    song_2 = artist.songs.create(title: "Never Gonna Give You Up", length: 253, play_count: 987654321)

    visit '/songs'

    expect(page).to have_content(song_1.title)
    expect(page).to have_content "Play Count: #{song_1.play_count}"
    expect(page).to have_content(song_2.title)
    expect(page).to have_content "Play Count: #{song_2.play_count}"
  end

  it 'shows song information grouped by song' do
    artist = Artist.create!(name: '1903')
    song_1 = artist.songs.create(title: 'Testing', length: 90, play_count: 1)
    song_2 = artist.songs.create(title: 'Testing Redux', length: 90, play_count: 10)

    visit '/songs'

    within("#song_#{song_1.id}") do
      expect(page).to have_content("Play Count: #{song_1.play_count}")
      expect(page).to have_content("Length: #{song_1.length}")
    end

    within("#song_#{song_2.id}") do
      expect(page).to have_content("Play Count: #{song_2.play_count}")
      expect(page).to have_content("Length: #{song_2.length}")
    end
  end
end
