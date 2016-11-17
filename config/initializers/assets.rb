# Be sure to restart your server when you modify this file.

# Version of your assets, change this if you want to expire all your assets.
Rails.application.config.assets.version = '1.0'

# Add additional assets to the asset load path
# Rails.application.config.assets.paths << Emoji.images_path

# Precompile additional assets.
# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
# Rails.application.config.assets.precompile += %w( search.js )
Rails.application.config.assets.precompile += %w( bootstrap.min.js, classie.js, isotope.pkgd.min.js, jquery-1.11.1.min.js,
 jquery.counterup.min.js, jquery.easing.min.js, jquery.stellar.min.js, jssor.slider.mini.js, owl.carousel.min.js, smoothscroll.js,
  theme.js, waypoints.min.js, wow.min.js)
