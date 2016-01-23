class TimeEntry < ActiveRecord::Base
  belongs_to :client
  belongs_to :developer

  def initialize(args)
    super
    total = self.time * self.rate
    client = self.client
    old_balance = client.balance
    client.update_attribute(:balance, old_balance + total)
  end
end
