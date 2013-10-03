require 'bundler'
Bundler.require

def usage message
  $stderr.puts(message)
  $stderr.puts("Usage: #{File.basename($0)} <scale>")
  exit 2
end

scale = nil

if ARGV[0]
  scale = ARGV.shift
else
  usage "Need to provide scale"
end
