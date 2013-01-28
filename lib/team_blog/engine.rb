module TeamBlog
  class Engine < ::Rails::Engine
    require 'bootstrap-wysihtml5-rails'
    require 'kaminari'

    initializer "TeamBlog precompile hook", :group => :all do |app|
      app.config.assets.precompile += %w(team_blog/application.js
                                         team_blog/application.css
                                         team_blog/admin/application.js
                                         team_blog/admin/application.css)
    end
    isolate_namespace TeamBlog
  end
end
