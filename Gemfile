source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'jquery-rails'
gem 'rails', '~> 5.1.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'faker'
gem 'bootstrap-sass', '~> 3.3.6'
gem 'sass-rails', '~> 5.0'
gem 'bootstrap', git: 'https://github.com/twbs/bootstrap-rubygem'

gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bcrypt'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  #rails generate rspec:install was not working, added the following based on github rspec-rails error response

  gem "rspec-rails"

  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'launchy'
  gem 'pry'
  gem 'shoulda-matchers'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
