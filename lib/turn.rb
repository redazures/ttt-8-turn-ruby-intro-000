
board=[" "," "," "," "," "," "," "," "," "]
def display_board(board)
  puts " #{board[0]} | #{board[1]} | #{board[2]} "
  puts "-----------"
  puts " #{board[3]} | #{board[4]} | #{board[5]} "
  puts "-----------"
  puts " #{board[6]} | #{board[7]} | #{board[8]} "
end

def turn(board)
  puts "Please enter 1-9:"
  input=gets.strip
  input_to_index(index)
  
  #while valid_move(converted_number)==false
  #  puts "This (#{converted_number}) is not a valid move. Please input correct move"
  #  input_to_index=gets.strip
  #  converted_number=input_to_index.to_i
  #end
  move(board,converted_number,"X")
  display_board(board)
  #puts 1+converted_number
end

def checkint(board, index)
  if index >0 && index<9
    true
  else
    false
  end
end

def valid_move?(board,index)
  if board[index]==" " && checkint(index)=true
    true
  else board[index]=="X" || board[index]=="O"
    false
  end
end

def move(board, index,input="X")
  board[index]=input
end

def input_to_index(index)
  index=index.to_i
  if index==0
    index=-1
  else
    index=index-1
  end
end
#move(board,3,"X")
#display_board(board)
#x = valid_move(8)
#puts x
#puts input_to_index("10")
#puts input_to_index("fag")
#input=gets.strip
#output=input_to_index(input)
#toutput=valid_move(output)
#puts output
board=["X"," "," "," "," "," "," "," ","X"]
output = valid_move?(board,1)
output2 = valid_move?(board,8)
puts output
puts output2
