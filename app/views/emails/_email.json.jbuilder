json.extract! email, :id, :to, :from, :subject, :body, :sent_at, :created_at, :updated_at
json.url email_url(email, format: :json)
