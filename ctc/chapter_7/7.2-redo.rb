class Employee

  attr_reader :level, :name, :call
  attr_accessor :free

  def initialize(level, name)
    @level = level
    @name = name
    @free = true
    @call = nil
  end

  def receive_call(call)
    @call = call
    @free = !@free
  end

  def free?
    @free
  end

end


class PM < Employee
end

class Fresher < Employee
end

class TL < Employee
end

class Call

  def initialize
  end

  def disconnect
  end

end


class CallHandler

  LEVELS = 3
  NUM_FRESHERS = 3
  EMPLOYEE_LEVEL = [] #this is an array of arrays, each containing the IDs of employees
  #at a given level

  def initialize
    @call_queue = Queue.new
  end

  def handle_call(call)
    employee = get_employee
    if !employee
      employee.receive_call(call)
    else
      @call_queue.enqueue(call)
    end
  end

  def get_employee
    employee_level.each do |emoloyees|
      employees.each do |employee|
        return employee if employee.free?
      end
    end
    nil
  end




end
