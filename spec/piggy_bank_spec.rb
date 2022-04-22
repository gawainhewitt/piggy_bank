require 'piggy_bank'

describe PiggyBank do

  it 'can put coins in the piggy bank' do  #unit test
    piggybank = PiggyBank.new
    coin = '50p'
    expect { piggybank.put_coins_in(coin) }.not_to raise_error
  end

  it 'if money is in the piggybank returns "cling" when shaken' do #feature test
    #arrange
    piggybank = PiggyBank.new
    #act
    coin = '50p'
    piggybank.put_coins_in(coin)
    #assert
    expect(piggybank.shake).to eq 'cling'
  end
  
  it 'returns coins when broken' do #feature test
    #arrange
    piggybank = PiggyBank.new
    #act
    piggybank.put_coins_in('50p')
    piggybank.put_coins_in('30p')
    piggybank.put_coins_in('70p')
    piggybank.put_coins_in('10p')

    #assert
    expect(piggybank.break).to eq ['50p', '30p', '70p', '10p']
  end


end

# As a user,
# So I can enjoy my hard earned savings
# I can break my piggy bank and get back the number or coins that I had put in


# arrange, act, assert
    # arrange - what instances, classes etc, 
      # do you need to carry out the test?
      # set up the environment e.g. piggybank = PiggyBank.new
    # Act - what code do you need to run
      # What code do you need to put to make it work
    # Assert - comparing expected behaviour with actual behavious
