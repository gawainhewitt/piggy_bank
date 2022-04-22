require 'piggy_bank'

describe PiggyBank do

  it 'can put coins in the piggy bank' do
    # arrange
    piggybank = PiggyBank.new
    # act
    coin = '50p'
    # assert
    expect { piggybank.put_coins_in(coin) }.not_to raise_error

  end
  
end

# As a user,
# So that I can save money
# I can put coins in my piggy bank



# arrange, act, assert
    # arrange - what instances, classes etc, 
      # do you need to carry out the test?
      # set up the environment e.g. piggybank = PiggyBank.new
    # Act - what code do you need to run
      # What code do you need to put to make it work
    # Assert - comparing expected behaviour with actual behavious
