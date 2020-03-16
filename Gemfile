source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

gem 'rails', '5.2.3'
gem 'bcrypt',                     '3.1.13'
gem 'faker', :git => 'https://github.com/faker-ruby/faker.git', :branch => 'master'
gem 'will_paginate',              '3.3'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'
gem 'puma',                       '4.3.3'
gem 'jquery-rails',               '4.3.5'
gem 'sass-rails',                 '6.0.0'
gem 'webpacker',                  '4.2.2'
gem 'turbolinks',                 '5.2.1'
gem 'jbuilder',                   '2.10.0'
gem "nokogiri",                   '1.10.8'
gem 'bootsnap',                   '1.4.6', require: false
gem 'pg' ,                        '1.1.4'


group :development, :test do
  gem 'byebug',                    '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',                '3.7.0'
  gem 'listen',                     '3.2.1'
  gem 'spring',                     '2.1.0'
  gem 'spring-watcher-listen',      '2.0.1'
  gem 'database_cleaner',           '1.8.3'
end

group :test do
  gem 'rspec-rails', '~> 3.5'
end

group :production do
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
# gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]