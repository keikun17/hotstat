require "hotstat/version"
require 'nokogiri'
require 'open-uri'

module Hotstat

  PLAYER_URL = 'http://hosmax.com/player/detail/?name='

  def self.fetch_data(players_arr)
    players = []

    players = players_arr.map do |player_code|
      player_str = player_code.gsub('#', '%23')
      raw_html = open(PLAYER_URL + player_str)
      page = Nokogiri::HTML(raw_html)

      player_name = page.css('[class=hero-title]').first.children.first.content

      # Remove whitespace on the fetched name
      player_name.gsub!(' ', '')

      # Remove endline on fetched name
      player_name.gsub!("\n","")

      # Fetch mmrs
      mmrs = page.css('[class=mmr]')


      if mmrs[0]
        mmr1 = mmrs[0].content
      end

      if mmrs[1]
        mmr2 = mmrs[1].content
      end

      # Instantiate player
      Player.new(name: player_name , mmr1: mmr1, mmr2: mmr2)
    end

    players
  end


end
