class PiggyBank 

  def initialize
    @coin = []
  end
    
  def put_coins_in(coin)
    @coin << coin
  end

  def shake
    "cling"
  end

  def break
    @coin
  end
end