# Time Complexity: O(n)
# Space Complexity: O(n)

def permutations?(string1, string2)
  if string1.length != string2.length 
    return false
  end 

  perm = string1.chars
  mutant = string2.chars 
  mindflayer = {}

  perm.each do |c|
    mindflayer[c] = true
  end 

  mutant.each do |c|
    if mindflayer[c] != true
      return false
    end 
  end 
  return true
end