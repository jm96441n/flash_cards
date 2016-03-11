class Card
  attr_reader :def, :term

  def initialize(args={})
    @def = args.fetch(:def, "no definition")
    @term = args.fetch(:term, "no term")
  end

end
