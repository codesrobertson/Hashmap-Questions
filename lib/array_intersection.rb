# Time Complexity: O(n)
# Space Complexity: O(n)

def intersection(list1, list2)
  crossroads = []

  list1.each do |n|
    crossroads << n if list2.include?(n) != false
  end 
  return crossroads
end