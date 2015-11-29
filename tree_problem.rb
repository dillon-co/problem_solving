class Float
  def round_to(x)
    (self * 10**x).round.to_f / 10**x
  end

  def ceil_to(x)
    (self * 10**x).ceil.to_f / 10**x
  end

  def floor_to(x)
    (self * 10**x).floor.to_f / 10**x
  end
end

###### This is for finding the length of all the branches on a home made tree,
###### starting from the bottom branch

@branches = []

def calculate_branches(a, b)
  @angle_a = Math.atan(a / b)
  branch_height = 0
  until branch_height > b
    @branches << tree_branch(branch_height, b)
    branch_height += DISTANCE_BETWEEN_BRANCHES
  end  
end

def tree_branch(branch_height, height_of_tree)
  side_b = height_of_tree - branch_height
  side_a = side_b * Math.tan(@angle_a)
end  

puts "what is the height of the tree?(inches)"
height = gets.chomp("> ").to_f
puts "What is the width of the first branch?(inches)"
first_branch = gets.chomp("> ").to_f
puts "what is the distance between the branches?(inches)"
DISTANCE_BETWEEN_BRANCHES = gets.chomp().to_i
calculate_branches(first_branch, height) 
@count = 0
@branches.each do |branch|
  @count+=1
  puts "#{@count}.) #{branch.round_to(2)} "
end 