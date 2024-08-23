Gem::Specification.new do |spec|
    spec.name          = "email_generator"
    spec.version       = "0.2.0"
    spec.authors       = ["Victor Oliveira"]
    spec.email         = ["victorhugodias2001@gmail.com"]

    spec.summary       = %q{A simple library for generating emails for testing purposes.}
    spec.description   = 'This gem generates random email addresses with customizable domains and username lengths.'
    spec.homepage      = "https://github.com/VictorHugoDiasOliveira/Email-Generator"
    spec.license       = "MIT"

    spec.files         = Dir["lib/**/*", "README.md", "LICENSE"]
    spec.bindir        = "bin"
    spec.executables   = []
    spec.require_paths = ["lib"]

    spec.metadata["homepage_uri"] = spec.homepage
    spec.metadata["source_code_uri"] = spec.homepage
    spec.metadata["changelog_uri"] = "#{spec.homepage}/CHANGELOG.md"

    spec.post_install_message = "Thank you for installing Email-Generator!"
end