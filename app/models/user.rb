class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  def full_name
    "#{first_name} #{last_name}"
  end
end
