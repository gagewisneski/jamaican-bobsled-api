class Jamaican < ApplicationRecord
  has_many :shirts
  def full_name
    return "#{first_name} #{last_name}"
  end
end
