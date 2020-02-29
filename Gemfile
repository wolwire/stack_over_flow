source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }
gem 'rails', '5.2.3'
gem 'aws-sdk-s3',                 '1.46.0', require: false
gem 'image_processing',           '1.9.3'
gem 'mini_magick',                '4.9.5'
gem 'carrierwave',                '0.11.2'
gem 'fog',                        '1.38.0'
gem 'bcrypt',                     '3.1.13'
gem 'faker',                      '2.1.2'
gem 'will_paginate',              '3.1.8'
gem 'bootstrap-will_paginate',    '1.0.0'
gem 'bootstrap-sass',             '3.4.1'
gem 'puma',                       '3.12.3'
gem 'sass-rails',                 '5.1.0'
gem 'webpacker',                  '4.0.7'
gem 'turbolinks',                 '5.2.0'
gem 'jbuilder',                   '2.9.1'
gem 'bootsnap',                   '1.4.4', require: false


group :development, :test do
  gem 'mysql2', '~> 0.5.2'
  gem 'byebug',  '11.0.1', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'web-console',                 '3.1.1'
  gem 'listen',                     '3.1.5'
  gem 'spring',                     '1.7.2'
  gem 'spring-watcher-listen',      '2.0.0'
end

group :test do
  gem 'rails-controller-testing', '0.1.1'
  gem 'guard', '2.13.0'
  gem 'guard-minitest', '2.4.4'
  gem 'rspec-rails', '~> 3.5'
  gem 'capybara'
  gem 'database_cleaner'
end
group :production do
  gem 'pg' ,'1.1.4'
end
# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]