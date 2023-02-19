class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(email)
    puts 'メールきたで〜〜〜〜'
    puts 'メールタイトル：' + email.subject

    EmailMailer.send_mail(email).deliver_later
  end
end
