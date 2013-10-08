require 'bundler'
Bundler.require
require File.join(File.dirname(__FILE__), 'Lib', 'Scale')

def usage message
  $stderr.puts(message)
  $stderr.puts("Usage: #{File.basename($0)} <scale>")
  exit 2
end

scale_type = nil

if ARGV[0]
  scale_type = ARGV.shift
else
  usage "Need to provide scale"
end

puts Scale.new(scale_type).to_s
