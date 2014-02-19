source 'https://rubygems.org'

gem "middleman",          "~>3.2.2"

# easy publish
gem 'middleman-gh-pages', "~> 0.0.3"
gem 'middleman-blog'

# Live-reloading plugin
gem "middleman-livereload", "~> 3.1.1"

# === Gumby Requirements ===
gem "compass",        "~> 0.12.2"
gem "modular-scale",  "~> 1.0.6"

gem "pry",            "~> 0.9.12.6"

# For faster file watcher updates on Windows:
platforms :mswin, :mingw do
  gem "wdm", "~> 0.1.0"
end

# Cross-templating language block fix for Ruby 1.8
platforms :mri_18 do
  gem "ruby18_source_location"
end
