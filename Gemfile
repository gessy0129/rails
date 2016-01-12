ruby '2.2.2'

source 'https://rails-assets.org' do
  # bower tools
  # enumerable method library
  gem 'rails-assets-lodash', '3.5.0'
  # email domain suggest
  gem 'rails-assets-email-domain-suggest', '1.0.4'
  gem 'rails-assets-kana-text-extension', '0.0.5'
end

source 'https://rubygems.org' do
  gem 'bundler', '1.10.6'
  # Compositions
  gem 'rails', '4.2.4'
  gem 'unicorn', '4.8.3'
  gem 'mysql2', '0.3.18'
  gem 'rb-readline', '0.5.2'
  gem 'quiet_assets', '1.1.0'
  gem 'rambulance', '0.3.1'
  gem 'listen', '3.0.3'

  ## Models
  gem 'foreigner', '1.7.2'
  gem 'activerecord-import', '0.7.0'
  gem 'fog', '1.28.0'
  gem 'kaminari', '0.16.3'
  gem 'mini_magick', '4.1.0'
  # Use ActiveModel has_secure_password
  gem 'bcrypt', '3.1.10'
  gem 'settingslogic', '2.0.8'
  gem 'rubyzip', '1.1.7'
  gem 'awesome_nested_set', '3.0.2'
  gem 'attr_encrypted', '1.3.4'
  gem 'active_hash', '1.4.0'
  gem 'paperclip', '4.2.1'
  gem 'paperclip-dimension-validator', '0.1.1'

  ## Session
  gem 'redis'
  gem 'redis-rails', '4.0.0'

  ## Controllers
  gem 'cancancan', '~> 1.10'
  gem 'omniauth', '1.2.2'
  gem 'omniauth-twitter', '1.2.0'
  gem 'omniauth-facebook', '2.0.1'

  ## Presenter
  gem 'draper', '1.4.0'

  ## Views
  gem 'slim-rails', '3.0.1'
  gem 'jquery-rails', '3.1.2'
  gem 'less-rails', '2.7.0'
  gem 'twitter-bootstrap-rails'
  gem 'redcarpet', '3.3.2'

  gem 'meta-tags', '2.0.0'
  gem 'rinku', '1.7.3'

  ## Mail
  gem 'premailer-rails', '1.8.0'

  ## Crawler
  gem 'parallel', '1.4.1'
  gem 'nokogiri', '1.6.6.2'

  ## Search
  gem 'elasticsearch-model', '0.1.7'
  gem 'elasticsearch-rails', '0.1.7'
  gem 'elasticsearch-extensions', '0.0.18'
  gem 'searchkick', '0.8.7'

  ## Batch / Async
  gem 'whenever', '0.9.4', require: false
  gem 'sidekiq', '3.3.2'
  gem 'sinatra', require: false

  ## sitemap
  gem 'sitemap_generator', '5.1.0'
  
  # Assets
  gem 'sass'
  gem 'sass-rails', '5.0.1'
  gem 'coffee-rails', '4.1.0'
  gem 'bower-rails', '0.9.2'
  gem 'foundation-rails', '5.5.1.0'
  gem 'compass-rails', '2.0.4'

  # Use Uglifier as compressor for JavaScript assets
  gem 'uglifier', '2.7.1'

  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
  gem 'jbuilder', '1.5.3'

  gem 'exception_notification', '4.1.0.rc1'

  # AB test
  gem 'chanko', '2.0.5'

  # Breadcrumb
  gem 'gretel', '3.0.8'

  # Validation
  gem 'validates_email_format_of'

  group :staging, :development do
    # 環境情報の可視化
    gem 'rack-dev-mark', '0.7.4'
  end

  # f-secure
  gem 'rack-secure-upload', '0.1.2'

  # Use Capistrano for deployment
  group :development do
    gem 'brakeman', '3.0.2'
    gem 'capistrano', '3.4.0'
    gem 'capistrano-rails', '1.1.2'
    gem 'capistrano-bundler', '1.1.4'
    gem 'capistrano-rbenv', '2.0.3'
    gem 'capistrano-sidekiq', '0.5.0'
    gem 'seed_dump', '3.2.2'

    # slackとの連携
    gem 'slackistrano', require: false
  end

  ## Tools
  group :ci, :development, :test do
    # N+1クエリ問題
    gem 'bullet', '4.14.4'
    # Rails パフォーマンス計測
    gem 'rack-mini-profiler', '0.9.3'

    gem 'pry-rails', '0.3.3'
    gem 'pry-coolline', '0.2.5'
    gem 'pry-byebug', '3.1.0'
    gem 'pry-doc', '0.6.0'

    # PryでのSQLの結果を綺麗に表示
    gem 'hirb', '0.7.3'
    gem 'hirb-unicode', '0.0.5'

    # pryの色付けをしてくれる
    gem 'awesome_print', '1.6.1'

    # routing, tableのshcemaをコメント挿入
    # gem 'annotate', '2.6.8'

    # templateの骨格確認
    gem 'xray-rails', '0.1.16'

    # テスト
    gem 'fuubar', '2.0.0'
    gem 'rspec-rails', '3.2.1'
    gem 'shoulda-matchers', '2.8.0', require: false
    gem 'factory_girl_rails', '4.5.0'
    gem 'database_cleaner', '1.4.1'
    gem 'simplecov', '0.9.2', require: false
    gem 'parallel_tests', '1.3.7'
    gem 'database_rewinder', '0.5.1'
    gem 'timecop', '0.7.4'

    # 文法チェック
    gem 'rubocop', '0.27.1'
    gem 'parser', '2.2.2.6'
    gem 'i18n-tasks', '0.8.4'
  end

  # performance monitoring tool
  gem 'newrelic_rpm', '3.10.0.279'
end
