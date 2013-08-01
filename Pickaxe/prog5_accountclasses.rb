class Account
    attr_accessor :balance
    def initialize(balance)
      @balance = balance
    end
end

class Transaction
    def initialize(account_a, account_b)
      @account_a = account_a
	  @account_b = account_b
    end
  private
    def debit(account, amount)
	  account.balance -= amount
	end
	def credit(account, amount)
	  account.balance += amount
	end
  public
  #...
    def transfer(amount)
	  debit(@account_a, amount)
	  credit(@account_b, amount)
	end
	#...
end

p savings = Account.new(100)
p checking = Account.new(200)
p trans = Transaction.new(checking, savings)
p trans.transfer(50)