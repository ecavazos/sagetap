require 'ostruct'
require 'yaml'

settings = YAML.load_file("#{Rails.root}/config/settings.yml")
Sagetap::Settings = OpenStruct.new(settings[Rails.env])
