# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'admin_theme')
Rails.application.config.assets.paths << Rails.root.join('app', 'assets', 'admin_theme', 'images')

Rails.application.config.assets.precompile += %w(admin-manifest.css admin-manifest.js)
Rails.application.config.assets.precompile += %w(ckeditor/config.js)
Rails.application.config.assets.precompile += %w(*.png *.jpg *.jpeg *.gif)
