source 'https://rubygems.org'

gem 'rails', '3.2.2'
gem 'haml'
gem 'haml-rails'
gem 'bootstrap-sass' # Will use this for now, going to checkout less-rails
gem 'thin' # Ruby webserver instead of WEBrick
gem 'bcrypt-ruby'

group :development do
	gem 'sqlite3'
	gem 'rspec-rails'
	gem 'guard-rspec'
    gem 'annotate', '~>2.4.1.beta'
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

	# System dependent gems for Guard
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
	
	# gems for Spork
	gem 'guard-spork'
	gem 'spork'
end

group :production do
	gem 'pg'
end
