require 'spec_helper'

describe Hotstat do

  describe 'fetch_data' do
    before do
    end

    it "returns player data" do
      player_list = ['Arkanthiel#1571', 'PlayerOne#1309']

      expect(described_class.fetch_data(player_list)).to include([
        an_object_having_attributes(name: 'Arkanthiel#1571', mmr1: '1475', mmr2: '1452'),
        an_object_having_attributes(name: 'PlayerOne#1309')
      ])
    end

  end

end
