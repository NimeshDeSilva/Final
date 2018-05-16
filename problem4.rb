=begin
For this problem, you must create a program that when run, outputs a random
number between zero and one, once every second. This should continue forever, until
a user hits any key, at which point the generation of random number should stop 
immediately, and the following two statistics should be printed:

The total number of random numbers generated
The average value of the numbers generated

=end
total = 0.0
count = 0.0
prng = Random.new(1234)


Thread.new do
  begin
    system("stty raw -echo")
    input = STDIN.getc
  ensure
    system("stty -raw echo")
  end  
  average = total/count
  puts "The total number of random numbers generated is #{total}"
  puts "The average value of the numbers generated is #{average}"
  exit
end

loop do
  num = prng.rand(0.0..1.0)
  count = count + 1.0
  total = total + num
  puts "#{num}\r"
  sleep 1
end
