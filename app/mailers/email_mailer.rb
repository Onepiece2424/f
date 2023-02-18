class EmailMailer < ApplicationMailer
  def send_mail(email)
    @email = Email.find(12)
    mail(
      from: 'system@example.com',
      to:   'manager@example.com',
      subject: 'お問い合わせ通知'
    )
  end
end
