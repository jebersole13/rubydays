require 'optparse'

options = {}
OptionParser.new do |parser|
    parser.on("-r", "--require LIBRARY", "Require the LIBRARY before executing your script") do |lib|
    puts "You required #{lib}!"
    end
end.parse!
