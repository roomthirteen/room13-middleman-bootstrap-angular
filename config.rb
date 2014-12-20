
# remove layout for all components templates as they are loaded with angular
with_layout :plain do
  page "/components/*"
end


# Reload the browser automatically whenever files change
activate :livereload



set :css_dir, 'css'
set :js_dir, 'js'
set :images_dir, 'img'

# append bower directory to sprockets
after_configuration do
  @bower_config = JSON.parse(IO.read("#{root}/.bowerrc"))
  sprockets.append_path File.join "#{root}", @bower_config["directory"]
end

# append angular components directory to sprockets
sprockets.append_path File.join root, "source/components"


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  # activate :minify_css

  # Minify Javascript on build
  # activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"
end
