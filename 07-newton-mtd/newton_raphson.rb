# Ruby program to implement Newton-Raphson method
# Created by M.V.Harish Kumar on 26-01-2025

def derive(f)
  iota = 1e-10
  -> (x) { (f.(x+iota) - f.(x)) / iota }
end

def newton_raphson(fn, x0, max_iter)
  dfn = derive(fn)
  iter = 0
  root_found = true

  if fn.(x0) != 0
    printf "% 12s|\t    x0|\tx\n", "Iteration no"
    puts "=" * 30
  end

  while fn.(x0) != 0
    if iter != -1
      if iter == max_iter
        puts "Maximum iteration reached"
        root_found = false
        break
      end
    end
    iter += 1
    printf "% 12s|\t%2.4f|\t", "Iteration #{iter}", x0
    derivative = dfn.(x0)
    if derivative == 0
      puts "Derivation is 0."
      root_found = false
      break
    end
    x = x0 - (fn.(x0) / derivative)
    puts x0=x
  end
  

  puts "The root is #{x0}" if root_found
end

func = -> (x) {2*x**2 - 7*x + 3}
print "Enter value for x0: "
x0 = gets.to_f
print "Enter maximum iteration: "
max_iter = gets.to_i
newton_raphson func, x0, max_iter
