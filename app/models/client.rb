class Client < ActiveRecord::Base
  has_many :time_entries

  def pay(amount)
    new_balance = self.balance - amount
    self.update_attribute(:balance, new_balance)
  end
end
