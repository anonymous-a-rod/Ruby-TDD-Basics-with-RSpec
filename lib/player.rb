class Player
  def initialize(credits: 0, active: 'No')
    @credits = credits
    @active = active
  end

  def sub_credits(amount)
    if amount == 0 
      raise StandardError
    end
    @credits -= amount
  end

  def add_credits(amount)
    if amount == 0 
      raise StandardError
    end
    @credits += amount
  end

  attr_accessor :credits, :active
end