require 'email_generator'

# Gerar 10 e-mails com configurações padrão
emails = EmailGenerator.generate_emails(10)
puts emails

# Gerar 5 e-mails com domínios personalizados e comprimento de nome de usuário de 12 caracteres
emails = EmailGenerator.generate_emails(5, domains: ['custom.com', 'example.org'], username_length: 12)
puts emails
