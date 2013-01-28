module TeamBlog
  class Engine < ::Rails::Engine
    require 'bootstrap-wysihtml5-rails'
    require 'kaminari'

    #initializer "TeamBlog precompile hook", :group => :all do |app|
    #  app.config.assets.precompile += %w(html5.js)
    #end
    isolate_namespace TeamBlog
  end
end
