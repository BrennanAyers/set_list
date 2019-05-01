require 'rails_helper'

RSpec.describe Song, type: :model do
  describe 'relationship' do
    it {should belong_to :artist}
  end

end
