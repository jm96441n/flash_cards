require 'readline'
require_relative 'card'
module DeckParser
  def parser(filename, array=[])
    File.open(filename, 'r') do |file|
      file.each_line.each_slice(2).each do |term,ans|
        ans = ans.slice(0..-2)
        term = term.slice(0..-2)
        card = Card.new({def: ans, term: term })
        array << card
      end
    end
  end
end
