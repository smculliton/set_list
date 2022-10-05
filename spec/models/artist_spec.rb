require 'rails_helper'

RSpec.describe Artist do
  before(:each) do 
    @prince = Artist.create!(name: 'Prince')
    @purple = @prince.songs.create!(title: 'Purple Rain', length: 238, playcount: 123789)
    @beret = @prince.songs.create!(title: 'Raspberry Beret', length: 1228, playcount: 12189)
  end

  it {should have_many :songs}

  describe 'instance methods' do 
    describe '#average song length' do
      it 'returns the average song length' do 
        expect(@prince.average_song_length).to eq(733)
      end
    end
  end
end