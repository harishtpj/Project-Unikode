# Crystal program to generate multiplication tables
# Created by M.V.Harish Kumar on 04-02-2025

def gen_tables(number, times)
  puts "#{number} Tables\n"
  (1..times).each do |i|
    puts "#{number} × #{i} = #{number*i}"
  end
end

print "Enter the no. to generate tables: "
n = read_line.to_i
print "Enter the no. till which to generate table: "
t = read_line.to_i
gen_tables n, t
