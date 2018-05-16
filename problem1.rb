=begin

For this problem, you need to write a program that takes in a file name
and an integer, N, and returns the first N unique words in the file given.
These can be hard coded into your program, but should be very easy to change, 
either through constants or as parameters to a function in your code. 
If the file given contains less than N unique words, all unique words in the file should be printed,
without any error conditions

=end

########################################
fileName = "test.txt"                 ## CHANGE THESE FOR TESTING
numN = 10                              ##
########################################
arrayOfWords = []
document = File.new(fileName, "r")
countLine = 0
while (line = document.gets)
  value = line.split(' ')
  arrayOfWords.push(value)
  countLine = countLine + 1
end
document.close

index = 0
count = 0
arrayCount = 0
mergedArray = []

begin 
  mergedArray = mergedArray + arrayOfWords[arrayCount]
  arrayCount = arrayCount + 1
end while arrayCount < countLine
  
mergedArray.uniq!
#print mergedArray
begin
  puts mergedArray[index]
  index = index + 1
end while index < numN
