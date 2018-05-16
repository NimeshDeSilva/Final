=begin

Write a function/method/procedure that takes in a single parameter, that is a matrix,
and prints the row averages and the column averages. Make sure you specify how the
matrix is passed as a parameter in your language as part of your README.

=end

######################## EDIT MATRIX HOWEVER YOU PLEASE
matrix = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
  ]
######################## MAKE SURE TO KEEP IT A 2D ARRAY THOUGH
def addRows(matrixPassed)
  rowSum = 0
  rowLen = 0
  rowIndex = 0
  matrixPassed.each do |sub|
    sub.each do |elements|
      rowSum = rowSum + elements
      rowLen = rowLen + 1
    end
    rowAvg = rowSum/rowLen
    puts "Row# #{rowIndex+1} rowSum = #{rowSum}, rowLen = #{rowLen}, rowAvg = #{rowAvg}"
    rowSum = 0
    rowLen = 0
    rowIndex = rowIndex + 1
  end
end

def addColumns(matrixPassed)
  columnSum = 0
  columnIndex = 0
  columnBeingIndexed = 0
  rowIndex = 0
  found = false
  begin
    columnLen = 0
    #puts "columnBeingIndexed = #{columnBeingIndexed}"
    rowIndex = 0
    matrixPassed.each do |sub|
      sub.each do |elements|
        if columnIndex == columnBeingIndexed
          columnSum = columnSum + sub[columnIndex]
          columnLen = columnLen + 1
          #puts "columnSum = #{columnSum}"
          #puts "columnLen = #{columnLen}"
        end
        columnIndex = columnIndex + 1
        #puts "columnIndex = #{columnIndex}"
      end
      columnIndex = 0
      rowIndex = rowIndex + 1
      #puts "rowIndex = #{rowIndex}"
    end
    columnAvg = columnSum/columnLen
    puts "Column# #{columnBeingIndexed+1} columnSum = #{columnSum}, columnLen = #{columnLen}, columnAvg = #{columnAvg}"
    columnBeingIndexed = columnBeingIndexed + 1
    columnSum = 0
    columnIndex = 0
  end while columnBeingIndexed < columnLen
end



matrix.each do |sub|
    sub.each do |elements|
    end
  print sub
  puts
end
addRows(matrix)
addColumns(matrix)
