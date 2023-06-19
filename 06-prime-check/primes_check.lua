-- Lua program to check if a number is prime or not
-- Uses the O(sqrt(n)) algorithm

function isPrime(n)
  if n == 2 then
    return true
  end

  sqrtNum = math.floor(math.sqrt(n))
  for i = 2, sqrtNum do
    if n % i == 0 then
      return false
    end
  end
  return n > 1
end

print("Prime numbers Checker\n")
io.write("Enter the number to check for prime: ")
num = tonumber(io.read("*n"))
ans = isPrime(num) and "%d is Prime" or "%d is NOT Prime"
print(string.format(ans, num))
