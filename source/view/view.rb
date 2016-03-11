module View

  def self.intro
    puts "Welcome to Abusive Flashcards! Get it right dummy"
    puts "Please choose an option: "
  end

  def self.options
    puts "To play the game, type 'game'"
    puts "To view all the cards, type 'view'"
    puts "To add a card, type 'add'"
    puts "To quit, type 'QUIT'"
  end

  def self.input
    gets.chomp.downcase
  end

  def self.p_term(card)
    puts card.term
  end

  def self.try_again
    incorrect = ['Wrong answer dummy, try again loser',
          '+5 points for for creativity. -5 for being a dummy.','Incorrect. I have a self help book recommendation for you: Not Being Such a Dummy, For Dummies', 'Hint: Give up, dummy','Well, this is going to take a while', 'Really? Just making up words now?....Unbelievable.'
          ]
    puts incorrect.sample
    puts ' '
  end

  def self.correct
    puts 'That is correct, good job not screwing up'
    puts ' '
  end

  def self.end_game
    puts 'No more cards dummy, try again'
  end

end
