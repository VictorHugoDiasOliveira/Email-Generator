# lib/email_generator.rb

module EmailGenerator
  DEFAULT_DOMAINS = %w[gmail.com yahoo.com outlook.com example.com].freeze

  class << self
    def generate_email(domains: DEFAULT_DOMAINS, username_length: 8)
      username = generate_username(username_length)
      domain = domains.sample
      "#{username}@#{domain}"
    end

    def generate_emails(quantity, domains: DEFAULT_DOMAINS, username_length: 8)
      Array.new(quantity) { generate_email(domains: domains, username_length: username_length) }
    end

    private
    def generate_username(length)
      charset = Array('a'..'z') + Array('0'..'9')
      Array.new(length) { charset.sample }.join
    end
  end
end
