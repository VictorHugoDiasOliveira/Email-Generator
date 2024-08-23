# Email-Generator
EmailGenerator is a Ruby library for generating random email addresses. It provides functionality to customize domains and username lengths, making it a useful tool for testing and other scenarios where random email addresses are needed.

## Usage

To use the module, simply require it and call the `generate_email` or `generate_emails` method:'

## Generate a single email with default settings
email = EmailGenerator.generate_email
puts email  # Example output: "abc12345@gmail.com"

## Generate multiple emails
emails = EmailGenerator.generate_emails(10)
puts emails  # Example output: ["abc12345@gmail.com", "def67890@gmail.com", ...]

## Generate multiple emails with custom domains and username length
emails = EmailGenerator.generate_emails(5, domains: ['custom.com', 'example.org'], username_length: 12)
puts emails  # Example output: ["abc12345abcd@custom.com", "def67890abcd@example.org", ...]