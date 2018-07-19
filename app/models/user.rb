class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :posts
  
  after_create :send_welcome_email
  private

  def send_welcome_email
    NotifierMailer.with(user: self).welcome_email.deliver_now
  end
end


# NotifierMailer.welcome_email(self).deliver
# NotifierMailer.with(user: @user).welcome_email.deliver_now
