class Employee < ApplicationRecord
  has_many :addresses
  
  def full_name
    "#{last_name}, #{first_name}"
  end
end
