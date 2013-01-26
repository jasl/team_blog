$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "team_blog/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "team_blog"
  s.version     = TeamBlog::VERSION
  s.authors     = ["Jasl"]
  s.email       = ["jasl9187@hotmail.com"]
  s.homepage    = "https://github.com/jasl/team_blog"
  s.summary     = "a simple rails engine add to build a team's blog."
  s.description = "a simple rails engine add to build a team's blog."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 3.2.11"
  s.add_dependency "jquery-rails"
  s.add_dependency "sass-rails"
  s.add_dependency "bootstrap-sass"
  s.add_dependency "compass-rails"
  s.add_dependency "kaminari"
  s.add_dependency "bootstrap-wysihtml5-rails"
end
