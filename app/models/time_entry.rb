class TimeEntry < ActiveRecord::Base
  belongs_to :client
  belongs_to :developer

  def initialize
    
end
