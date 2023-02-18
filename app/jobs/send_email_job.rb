class SendEmailJob < ApplicationJob
  queue_as :default

  def perform(*args)
    email = Email.find(args[0])
    puts 'メールです！'
    puts 'タイトル：' + email.subject
  end
end
