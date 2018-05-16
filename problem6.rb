=begin

Using recursion, write a function/method/procedure in your language that computes
the Golomb number, which is defined as :

G(n) = 1 + G(n - G( G( n - 1)))

The base case of this recursion is G(1) = 1

How long does your implementation take to return the value G(50)? 
Include this in your program so the timing is automatically printed when your program is run.

=end
def golombRecursive(numN)
  if numN == 1
    return 1
  end
  return 1 + golombRecursive(numN - golombRecursive(golombRecursive(numN - 1)))
end

print "Enter a number: "
numN = gets.to_i
counter = 1
golombRecursive(numN)
timerStart = Time.now
while counter <= numN
  print golombRecursive(counter)
  counter = counter + 1
end
timerEnd = Time.now
time = timerEnd - timerStart
puts
puts "It took #{time} seconds to return the value G(#{numN})"



