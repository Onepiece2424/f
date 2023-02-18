class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    email = Email.find(12)
    puts 'メールです！'
    puts 'タイトル：' + email.subject

    EmailMailer.send_mail(email).deliver_now
  end
end
