# Rail4 + mysql テスト


	$ git clone 

`config/database.yml`のusername,passwordなどを自分の設定にを変更

	development:
	  adapter: mysql2
	  encoding: utf8
	  database: mRuby_development
	  pool: 5
	  username: root
	  password: root
	  socket: /tmp/mysql.sock

データベースを作成

	$ bundle exec rake db:create

マイグレーション作成

	$ bundle exec rails g scaffold  post name:

テーブル作成

	$ bundle exec rake db:migrate
