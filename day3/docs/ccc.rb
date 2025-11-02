require 'optparse'

User = Struct.new(:id, :name)

def find_user id
    not_found = ->{raise "USER NOT FOUND FOR #{id}"}
    [ User.new(1, "Wayne"), User.new(2, "Garth")].find(not_found) do |u|
            u.id == id
    end
end

op = OptionParser.new
op.accept(User) do |user_id|
    find_user user_id.to_i
end

op.on("--user ID", User) do |user|
    puts user
end

op.parse!
