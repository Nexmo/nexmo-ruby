require File.expand_path('lib/nexmo/version', File.dirname(__FILE__))

Gem::Specification.new do |s|
  s.name = 'nexmo'
  s.version = Nexmo::VERSION
  s.license = 'MIT'
  s.platform = Gem::Platform::RUBY
  s.authors = ['Nexmo']
  s.email = ['devrel@nexmo.com']
  s.homepage = 'https://github.com/Nexmo/nexmo-ruby'
  s.description = 'Nexmo Client Library for Ruby'
  s.summary = 'This is the Ruby client library for Nexmo\'s API. To use it you\'ll need a Nexmo account. Sign up for free at https://www.nexmo.com'
  s.files = Dir.glob('lib/**/*.rb') + %w(LICENSE.txt README.md nexmo.gemspec)
  s.required_ruby_version = '>= 2.5.0'
  s.add_dependency('nexmo-jwt', '~> 0.1.1')
  s.add_dependency('zeitwerk', '~> 2', '>= 2.2')
  s.add_dependency('sorbet-runtime', '~> 0.5')
  s.add_development_dependency('timecop', '~> 0.9')
  s.require_path = 'lib'
  s.post_install_message = <<~HEREDOC
    This Ruby gem has moved to `vonage`!

    We will support this last release of `nemo` through October 2021 with any needed bug fixes or security fixes.

    New features will only be relased under the new `vonage` gem, so make sure to switch as soon as you can.

    To switch now, change your dependency in your `Gemfile` to `vonage` or run `gem install vonage` from the command line.

    You can find more information on GitHub at https://github.com/Vonage/vonage-ruby-sdk.
  HEREDOC
  s.metadata = {
    'homepage' => 'https://github.com/Nexmo/nexmo-ruby',
    'source_code_uri' => 'https://github.com/Nexmo/nexmo-ruby',
    'bug_tracker_uri' => 'https://github.com/Nexmo/nexmo-ruby/issues',
    'changelog_uri' => 'https://github.com/Nexmo/nexmo-ruby/blob/master/CHANGES.md',
    'documentation_uri' => 'https://www.rubydoc.info/github/nexmo/nexmo-ruby'
  }
end
