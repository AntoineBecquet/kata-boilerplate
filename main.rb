#
# Requiring Your Gemfile
#

require 'rubygems'
require 'bundler/setup'

Bundler.require(:default)

#
# Require all the module you're creating here
#

require_relative "./lib/mod"
require_relative "./lib/cell"
require_relative "./lib/life_array"

#
# v  Write your main loop downhere v
#

content = File.read(ARGV[0])

puts content

life_array = LifeArray.new(content)

life_array.iter!

puts life_array.to_s

