=begin

For this problem, you must write a program that has a function/method/procedure 
that takes in an array (or equivalent data structure) of strings, and prints out the 
elements of that array in sorted order, one per line. You should sort the words 
according to a numerical value, calculated as follows: The numeric value of a word is
the sum of the numeric values of the characters in it. The numeric value for a character is the ASCII
value if your language encodes strings/characters using ASCII,
and the Unicode Code point if your language encodes using Unicode.

=end

def sortArray(arrayOfWords) #gets array and calls getACIIValue to get the ascii value of the word
  sortedArray = []
  arrayOfWords.each_with_index{|val, index| 
    temp = getACIIValue(val)
    obj = [val, temp]
    sortedArray.push(obj)
    }
  sortNewArray(sortedArray)
end

def printArray(arrayOfWords) #prints the sorted array
    arrayOfWords.each_with_index{|val, index| 
    puts "#{val[0]} --- #{val[1]}"} #printed word and ASCII value for your reference
end

def sortNewArray(arrayOfObjects) #uses identifies the ascii value and sorts them by the ascii value
  sizeOfArray = arrayOfObjects.size
  if sizeOfArray == 1
    return arrayOfObjects
  end
  begin
    bool = false
    (0..sizeOfArray-2).each do |index|
      if arrayOfObjects[index][1] > arrayOfObjects[index+1][1]
        arrayOfObjects[index], arrayOfObjects[index+1] = arrayOfObjects[index+1], arrayOfObjects[index]
        bool = true
      end
    end
  end while bool
    printArray(arrayOfObjects)
end
  
def getACIIValue(word) #gets the ascii value
  asciiVal = 0
  word.each_byte do |c|
    asciiVal = asciiVal + c 
  end
  return asciiVal
end

  

array = ['hello', 'my', 'name', 'is', 'Nimesh']
sortArray(array)
print "Printed ASCII value of word for your reference"