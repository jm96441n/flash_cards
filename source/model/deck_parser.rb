require 'readline'
require_relative 'card'
module DeckParser
  def self.parser(filename, array)
    File.open(filename, 'r') do |file|
      file.each_line.each_slice(2).each do |ans,term|
        card = Card.new({def: ans, term: term })
        array << card
      end
    end
  end
end
