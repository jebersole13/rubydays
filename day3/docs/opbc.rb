require 'optparse'
require 'optparse/time'

OptionParser.new do |parser|
    parser.on("-t","--time [TIME]", Time, "Execute order: given time") do |time|
        p time
    end
end.parse!