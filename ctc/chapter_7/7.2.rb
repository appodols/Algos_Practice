class Employee
end

class Manager < Employee
end

class Director < Employee
end

@calls = queue


def dispatch_call
  call = @calls.dequeue
  employees.each{|employee| employee.assign_call(call) if employee.free?}
  managers.each{|employee| managers.assign_call(call) if manager.free?}
  directors.each{|director| managers.assign_call(call) if director.free?}
end


#1..we have a call handler
#2 constants for ther number of employees and the level of entry people
#call handler
#get call handler
#dispatch call--get lowest level employee, otherwise add it to the call queue
#We have call as an object
#we have employee as an object
#3 classes extend from employee
