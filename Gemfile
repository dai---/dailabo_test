source 'https://rubygems.org'

gem 'rails', '4.2.3'

# database
gem 'mysql2'

# stylesheets
gem 'sass-rails', '~> 5.0'
gem 'bootstrap-sass'

# JavaScript
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'

# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'

# JSON APIs
gem 'jbuilder', '~> 2.0'

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0', group: :doc

# form
gem 'simple_form'

# view
gem 'kaminari'
gem 'font-awesome-rails'

# model
gem 'paranoia'


# railsの定数管理
gem 'rails_config'

# 環境変数管理
gem 'dotenv-rails'

# develop環境でwebページに「開発環境だよー」ってわかるようにラベルを張ってくれる
gem "rack-dev-mark"

# crontabの管理を簡単に行える
gem 'whenever', :require => false

# 区分値
gem 'active_hash'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Use Unicorn as the app server
group :production do
  gem 'unicorn'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'rails-erd'              #   モデルの関連図をPDFで書きだしてくれます
  gem 'better_errors'          #★ エラー画面を見やすくする
  gem 'quiet_assets'           #★ ログの内容をすっきり見やすくしてくれる
  gem 'rails_best_practices'   #   Railsのベストプラクティスを教えてくれる
  gem 'binding_of_caller'      #★ better_errorsのエラー画面でREPLが使える
  gem 'pry-rails'              #★ rails(コンソール)でpryが使える
  gem 'pry-byebug'             #★ pryでデバックコマンドが使える
  gem 'pry-doc'                #★ pry上でクラスやメソッドなどのドキュメントや定義元のソースコードを確認できる
  gem 'awesome_print'          #★ プリントデバッグの出力を整形して表示してくれる
  gem 'tapp'                   #★ プリントデバッグを便利に
  gem 'hirb'                   #★ SQLの結果を見やすく整形してくれる
  gem 'hirb-unicode'           #★ hirbの日本語対応
  gem 'annotate'               #★ schemaをmodelに書き出してくれる
  gem 'rack-mini-profiler'     #   DBへのアクセスとかViewの表示速度とかをWebページ上に表示してくれる
  gem 'bullet'                 #   N+1問題を起こしている箇所を検出して教えてくれる
  gem 'letter_opener_web'      #   開発中に送信したメールを実際には送信せずに、ブラウザから見ることができる。
end

group :development do
end

group :test do
  gem 'spring-commands-rspec'
  gem 'capybara'
  gem 'factory_girl_rails'
end
