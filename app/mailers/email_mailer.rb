class EmailMailer < ApplicationMailer
  def send_mail(email)
    @email = email

    attachments['20220430_膝丸燈の画像.jpeg'] = File.read('tmp/20220430_膝丸燈の画像.jpeg')

    mail(
      from: @email.from,
      to:   @email.to,
      subject: 'メールきたよ〜'
    )
  end
end
