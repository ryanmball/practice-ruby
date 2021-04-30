class Employee
  attr_accessor :first_name, :last_name, :active, :work_quality, :soft_skills, :eligible_for_raise

  def initialize(options_hash)
    @first_name = options_hash[:first_name]
    @last_name = options_hash[:last_name]
    @salary = options_hash[:salary]
    @active = options_hash[:active]
  end

  def print_info
    puts "#{first_name} #{last_name} makes #{@salary} a year."
  end

  def give_annual_raise
    @salary = 1.05 * @salary
  end
  
  def test_duplicate # the method is called for both occurrences, but the method in the other class is overridden with the code from the class being called
    p "is this going to work? employee"
  end
  
  def performance_review(measurements_hash)
    @work_quality = measurements_hash[:work_quality] || "satisfactory"
    @soft_skills = measurements_hash[:soft_skills] || "passable"
    @eligible_for_raise = measurements_hash[:eligible_for_raise] || true
  end
end

class Manager < Employee
  attr_accessor :employees
  
  def initialize(options_hash)
    super
    @employees = options_hash[:employees]
  end
  
  def send_report
    puts "Sending important email..."
    #use some fancy email sending library
    puts "Email sent!"
  end
  
  def give_all_raises
    employees.each { |employee| employee.give_annual_raise }
  end
  
  def fire_all_employees
    employees.each { |employee| employee.active = false }
  end
  
  def test_duplicate # the method is called for both occurrences, but the method in the other class is overridden with the code from the class being called
    p "is this going to work? manager"
  end

  def performance_review(measurements_hash)
    super
    @employee_morale = measurements_hash[:employee_morale] || "neutral"
  end
end

employee1 = Employee.new({first_name: "Jay", last_name: "Wengrow", salary: 1000000, active: true})
employee2 = Employee.new(first_name: "Peter", last_name: "Jang", salary: 20000, active: true)
# employee1.print_info
# employee2.print_info

manager = Manager.new(first_name: "Winston", last_name: "Barbe", salary: 120000, active: true, employees: [employee1, employee2])
# manager.print_info
# manager.send_report
p manager.employees
manager.give_all_raises
manager.fire_all_employees
p manager.employees

p employee1.test_duplicate
p manager.test_duplicate

p employee1.performance_review({}) # this is only printing the default value for eligible_for_raise
p manager.performance_review({})   # this is only printing the default value for employee_morale
