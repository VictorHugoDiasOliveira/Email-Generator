require 'email_generator'

# Generate 10 e-mails with default configurations
emails = EmailGenerator.generate_emails(10)
puts emails

# Generate 5 emails with custom domains and a username length of 12 characters.
emails = EmailGenerator.generate_emails(5, domains: ['custom.com', 'example.org'], username_length: 12, gender: :female, country: 'RU')
puts emails
