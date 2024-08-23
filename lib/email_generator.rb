require 'name_generator'

module EmailGenerator
  DEFAULT_DOMAINS = %w[gmail.com yahoo.com outlook.com example.com].freeze

  class << self
    def generate_email(domains: DEFAULT_DOMAINS, username_length: 8, gender: :male, country: 'BR')
      username = NameGenerator.generate_full_name(gender, country).gsub(" ", "")
      domain = domains.sample
      "#{username}@#{domain}"
    end

    def generate_emails(quantity, domains: DEFAULT_DOMAINS, username_length: 8, gender: :male, country: 'BR')
      Array.new(quantity) { generate_email(domains: domains, username_length: username_length, gender: gender, country: country) }
    end

    # private
    # def generate_username(length)
    #   charset = Array('a'..'z') + Array('0'..'9')
    #   Array.new(length) { charset.sample }.join
    # end
  end
end
