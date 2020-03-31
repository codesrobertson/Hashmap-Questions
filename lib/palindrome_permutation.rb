# Time Complexity: O(n)
# Space Complexity: O(n)

def palindrome_permutation?(string)
  while string.empty? 
    return true
  end 

  board = {}
  letters = string.chars 
  chalk = 0

  letters.each do |c|
    board[c] = 0
  end

  letters.each do |c|
    if board[c]
      board[c] += 1
    end 
    if board[c] % 2 == 0
      chalk += 1
    end
  end 
  return chalk == letters.length/2
end 