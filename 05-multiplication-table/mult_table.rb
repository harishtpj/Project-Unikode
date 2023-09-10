# Ruby program to generate multiplication tables
# Created by M.V.Harish Kumar on 10-09-2023

def gen_tables(number, times)
    puts "#{number} Tables"
    (1..times).each do |i|
        puts "#{number} × #{i} = #{number*i}"
    end
end

print "Enter the no. to generate tables: "
n = gets.to_i
print "Enter the no. till which to generate: "
t = gets.to_i
gen_tables n, t