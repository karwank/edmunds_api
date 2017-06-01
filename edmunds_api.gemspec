$:.push File.expand_path("../lib", __FILE__)

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "edmunds_api"
  s.version     = "1.0.1"
  s.authors     = ["Karol"]
  s.email       = ["karol@nabthat.com"]
  s.homepage    = "https://github.com/nabthat/edmunds_api"
  s.summary     = "Edmunds auto API"
  s.description = "Ruby warapper for the Edmunds auto API"
  s.license 

  s.files = Dir["{app,config,db,lib}/**/*"] + ["Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "rest-client"
  s.add_dependency "crack"

end
