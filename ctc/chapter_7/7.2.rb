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
