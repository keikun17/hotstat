module Hotstat
  class Player
    attr_accessor :name, :mmr1, :mmr2

    def initialize args = {}
      args.each do |k,v|
        instance_variable_set("@#{k}", v) unless v.nil?
      end
    end
  end
end
