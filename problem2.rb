=begin
In this problem, you must create a program that prompts the user for a single choice, 
between a bicycle, car, or jet plane. Once the choice is made, 
you should pick a random speed for the vehicle, defined by the ranges below,
and travel for "one hour" at that speed. You should continue iterating, pick a new speed each hour,
until your vehicle travels 1000 miles. You should then print how many hours it took, and the maximum speed reached.

The speed ranges for the three vehicles are as follows:

Bicycle: 5-15 miles per hour
Car: 20-70 miles per hour
Jet Plane: 400-600 miles per hour

=end

distanceDest = 1000
distanceCurr = 0
maxSpeed = 0
prng = Random.new(1234)
currSpeed = 0
numHours = 0
puts "Pick a vehicle."
puts "1.  Bicycle"
puts "2.  Car"
puts "3.  Jet Plane"
puts "Choose 1-3: "
choice = gets.to_i
if choice == 1
  begin
    currSpeed = prng.rand(5..15).to_i
    #puts "currSpeed = #{currSpeed}"
    if(currSpeed > maxSpeed)
      maxSpeed = currSpeed
    end
    distanceCurr = distanceCurr + currSpeed
    numHours = numHours + 1
  end while distanceCurr < distanceDest  
  puts "The number of hours it took to travel 1000 miles was #{numHours} hours."
  puts "The maximum speed was #{maxSpeed} mph."
end
if choice == 2
  begin
    currSpeed = prng.rand(20..70).to_i
    #puts "currSpeed = #{currSpeed}"
    if(currSpeed > maxSpeed)
      maxSpeed = currSpeed
    end
    distanceCurr = distanceCurr + currSpeed
    numHours = numHours + 1
  end while distanceCurr < distanceDest  
  puts "The number of hours it took to travel 1000 miles was #{numHours} hours."
  puts "The maximum speed was #{maxSpeed} mph."
end
if choice == 3
  begin
    currSpeed = prng.rand(400..600).to_i
    #puts "currSpeed = #{currSpeed}"
    if(currSpeed > maxSpeed)
      maxSpeed = currSpeed
    end
    distanceCurr = distanceCurr + currSpeed
    numHours = numHours + 1
  end while distanceCurr < distanceDest  
  puts "The number of hours it took to travel 1000 miles was #{numHours} hours."
  puts "The maximum speed was #{maxSpeed} mph."
end
  