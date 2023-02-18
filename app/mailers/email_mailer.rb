class EmailMailer < ApplicationMailer
  def send_mail(email)
    @email = email
    mail(
      from: @email.from,
      to:   @email.to,
      subject: 'メールきたよ〜'
    )
  end
end
