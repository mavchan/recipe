class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :members
  has_many :teams, through: :members
  has_surveys

  def full_name
    return (self.first_name + " " + self.last_name)
  end
end