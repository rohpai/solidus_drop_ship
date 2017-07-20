source 'https://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem "solidus", github: "solidusio/solidus", branch: branch
gem "solidus_auth_devise", '~> 1.6', '>= 1.6.3'

if branch == 'master' || branch >= "v2.0"
  gem "rails-controller-testing", group: :test
else
  gem "rails_test_params_backport", group: :test
  gem "rails", "~> 4.2.7"
end

# group :development, :test do
#   spree_branch = 'master'
#   gem 'spree',                  github: 'spree/spree', branch: spree_branch
#   gem 'spree_auth_devise',      github: 'spree/spree_auth_devise', branch: spree_branch
# end

gemspec
