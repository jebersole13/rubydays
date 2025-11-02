require 'optparse'

Options = Struct.new(:name)

class Parser
    def self.parse(options)
        args = Options.new("world")

        opt_parser = OptionParser.new do |parser|
            parser.banner = "Usage: op.rb [options]"

            parser.on("-nName","--name=NAME", "Name to say hello to") do |n|
                args.name = n
            end

            parser.on("-f","--food=FOOD", "Prints your favored food item") do |f|
                args.food = f
            end

            parser.on("-h","--help","Prints this help") do
                puts parser
                exit
            end
        end

        opt_parser.parse!(options)
        return args 
    end
end

options = Parser.parse %w[--help]