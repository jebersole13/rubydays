require 'optparse'

options = {}

OptionParser.new do |parser|
    parser.on('-a')
    parser.on('-b NUM', Integer)
    parser.on('-v', '--verbose')
end.parse!(into: options)

p options