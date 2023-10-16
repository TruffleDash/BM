class Printer
  def self.printer_report_expensive_vm(n)
    vms = Report.report_expensive_vm(n)
    # puts "#{n} most expensive VM:"
    # vms.each {|key, value| puts "ID #{key}:  #{value}$"}
    vms.map {|key, value| "ID #{key}:  #{value}$"}
  end

  def self.printer_report_cheap_vm(n)
    vms = Report.report_cheap_vm(n)
    # puts "#{n} most cheap VM:"
    # vms.each {|key, value| puts "ID #{key}:  #{value}$"}
    vms.map {|key, value| "ID #{key}:  #{value}$"}
  end

  def self.report_most_hdd_capacity(n, type)
    vms = Report.report_most_hdd_capacity(n, type)
    #  puts "#{n} most largest VM by hdd type:"
    # vms.each {|el| puts "ID #{el['id']}:  #{el['hdd_capacity']} hdd capacity"}
    vms.map {|el| "ID #{el['id']}:  #{el['hdd_capacity']} hdd capacity"}
  end

  def self.report_extra_disk_quantity(n, type)
    volume = Report.report_extra_disk_quantity(n, type)
    #  puts "#{n} VM with the most additional hdd connected (by quantity)"
    # volume.each {|key, value| puts "ID #{key}:  #{value} hdd capacity"}
    volume.map {|key, value| "ID #{key}:  #{value} hdd capacity"}
  end

  def self.report_extra_disk_volume(n, type)
    volume = Report.report_extra_disk_volume(n, type)
    #  puts "#{n} VM with the most additional hdd connected (by volume)"
    # volume.each {|key, value| puts "ID #{key}:  #{value} hdd capacity"}
    volume.map {|key, value| "ID #{key}:  #{value} hdd capacity"}
  end
end