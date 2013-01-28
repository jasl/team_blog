module TeamBlog
  class Engine < ::Rails::Engine
    require 'bootstrap-wysihtml5-rails'
    require 'kaminari'

    initializer "TeamBlog precompile hook", :group => :all do |app|
      app.config.assets.precompile += %w(application.js application.css)
    end
    isolate_namespace TeamBlog
  end
end
