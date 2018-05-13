

current_path = []


  def robot_path(x, y)
    p = new Point(x,y)
    current_path.push(p)
    return true if (x == 0 && y == 0)
    success = false
    if(is_free?(x-1, y))
      success = robot_path(x-1, y)
    elsif(is_free?(x, y-1))
      success = getPaths(x, y-1)
    elsif !success
      current_path.remove(p)
    end
    return success
  end

#how do we break this problem up into simpler pieces?
#opne when you are in the square, you have to go down Y times
#and you have to go right X times
#the path can be defined as the times you choose to go right
(x +1 + y+1) choose (x-1)


#base case is we are at 0, 0
#we can reduce the problem into smaller and smaller paths


#verbalization
  #I will be using the method isFree? to check whether a given coordinate is free
  #there are 3 possibilities for what can happen
  #base case-- 'x and y are 0'
