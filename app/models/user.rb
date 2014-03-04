class User < ActiveRecord::Base
  attr_accessible :email, :first_name, :last_name

  def name
    "#{first_name} #{last_name}"
  end

  def full_name
    name
  end
end
