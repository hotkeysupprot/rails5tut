class NotificationMailer < ApplicationMailer
  default from: "ho@gmail.com"
  
  def send_confirm_to_user(member)
    @member = member
    mail(
      subject: "会員登録が完了しました。",
      to: @member.email
    ) do |format|
      format.text
    end
  end
end
