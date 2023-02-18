class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(email)
    puts 'メールです！'
    puts 'タイトル：' + email.subject

    EmailMailer.send_mail(email).deliver_now
  end
end
