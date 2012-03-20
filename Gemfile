source 'https://rubygems.org'

gem 'rails', '3.2.2'

group :development do
	gem 'sqlite3'
	gem 'rspec-rails'
	gem 'guard-rspec'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

group :test do
	gem 'rspec-rails'
	gem 'capybara'
	# System dependent gems
	# Linux
	gem 'rb-inotify'
	gem 'libnotify'
	# Mac
	# gem 'rb-fsevent', :require => false
	# gem 'growl'
	#
	# God forbid, Windows
	# gem 'rb-fchange'
	# gem 'rb-notifu'
	# gem 'win32console'
end

group :production do
	gem 'pg'
end
