class Account
  attr_reader :cleared_balance # accessor method cleared_balance
  protected :cleared_balance # and make it protected
  def greater_balance_than(other)
    return @cleared_balance > other.cleared_balance
  end
end