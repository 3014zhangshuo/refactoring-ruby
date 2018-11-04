managers = []
employees.each do |e|
  managers << e if e.manager?
end

managers = employees.select { |e| e.manager? }

offices = []
employees.each { |e| offices << e.office }

offices = employees.collect { |e| e.office }
offices = employees.map(&:office)

managerOffices = []
employees.each do |e|
  managerOffices << e.office if e.manager?
end

managerOffices = employees.select { |e| e.manager? }.collect { |e| e.office }

total = 0
employees.each { |e| total += e.salary }

total = employees.inject(0) { |sum, e| sum + e.salary }
