# Preview all emails at http://localhost:3000/rails/mailers/email_mailer
class EmailMailerPreview < ActionMailer::Preview
  def send_mail
    email = Email.new(to: "test@gamil.com", from: "gyoraigirl@gmail.com", subject: "天の助へ", body: "私はどんな小さなおふざけも許さない…なぜなら私は魚雷だから", sent_at: Time.local(2023, 2, 19))

    EmailMailer.send_mail(email).deliver_now
  end
end
