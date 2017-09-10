class Member < ApplicationRecord
  after_create :send_mail_when_up
  
  private
  
  def send_mail_when_up
    NotificationMailer.send_confirm_to_user(self).deliver_later
  end
  
end
