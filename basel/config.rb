#require 'bootstrap-sass'
#require 'compass/import-once/activate'
# Require any additional compass plugins here.
require 'compass'
require 'breakpoint'
require 'sass-globbing'
require 'rgbapng'
require 'toolkit'
require 'singularitygs'
require 'autoprefixer-rails'

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "../basel/css"
sass_dir = "../basel/sass"
images_dir = "../basel/images"
generated_images_dir = images_dir + "/generated"
javascripts_dir = "../basel/js"

# Delete all the debugging! Use the command line
# $ compass compile -e production --force

## Change :development to :production when ready to deploy the CSS to the live server.
## Stop compiler and restart after changing.
environment = :development

# You can select your preferred output style here (can be overridden via the command line):
# output_style = :expanded or :nested or :compact or :compressed

# To enable relative paths to assets via compass helper functions. Uncomment:
relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
line_comments = true


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass sass scss && rm -rf sass && mv scss sass

# Cleans and adds vendor prefixes
on_stylesheet_saved do |file|
  css = File.read(file)
  File.open(file, 'w') do |io|
    io << AutoprefixerRails.process(css)
  end
end
