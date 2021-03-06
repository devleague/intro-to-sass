# Require any additional compass plugins here.

# Set this to the root of your project when deployed:
http_path          = "/"
css_dir            = "css"
sass_dir           = "css"
fonts_dir          = "fonts"
images_dir         = "images"
javascripts_dir    = "js"

# You can select your preferred output style here (can be overridden via the command line):
#output_style = :expanded or :nested or :compact or :compressed
  if environment != :production
    output_style = :expanded
    line_comments = true
    disable_warnings = false
    # give us all the info
    disable_warnings = true
    sass_options = {:quiet => true}
  end


  if environment == :production
    output_style = :compressed
    line_comments = false
    # keep the build output nice and clean
    disable_warnings = true
    sass_options = {:quiet => true}
  end

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true

# To disable debugging comments that display the original location of your selectors. Uncomment:
# line_comments = false


# If you prefer the indented syntax, you might want to regenerate this
# project again passing --syntax sass, or you can uncomment this:
# preferred_syntax = :sass
# and then run:
# sass-convert -R --from scss --to sass lib scss && rm -rf sass && mv scss sass

Sass::Script::Number.precision = 9

module Sass::Script::Functions
  def random(max = Sass::Script::Number.new(100))
    Sass::Script::Number.new(rand(max.value), max.numerator_units, max.denominator_units)
  end
end

require 'bootstrap-sass'