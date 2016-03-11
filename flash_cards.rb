require_relative "source/control/controller.rb"

class FlashCards
  def self.run
    Control.file_select
  end
end


FlashCards.run
