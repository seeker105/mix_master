require 'rails_helper'

RSpec.describe Song, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it { should have_many(:playlist_songs) }
  # it { should have_many(:playlists).through(:playlist_songs) }
end
