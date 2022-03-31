source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.5'


gem 'rails', '~> 6.0.1'

gem 'pg', '>= 0.18', '< 2.0'

gem 'puma', '~> 4.3'
gem 'rack-cors'
gem 'bootsnap', '>= 1.4.2', require: false
gem "figaro"

group :development, :test do
 
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end


gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
