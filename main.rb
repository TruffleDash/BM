require './printer'
require './vm'
require './report'
require './read'


input = ARGV[0]
input_type = ARGV[1].to_s
puts "The report that shows the n most expensive VM. Enter the number"
# input = STDIN.gets.chomp
Printer.printer_report_expensive_vm(input.to_i)

puts "The report that shows the n most cheap VM. Enter the number"
# input = STDIN.gets.chomp
Printer.printer_report_cheap_vm(input.to_i)

puts "The report that shows the n largest volume machines by type parameter. Enter the number and type of hdd (ssd, sata, sas)"
# input = STDIN.gets.chomp
# input_type = STDIN.gets.chomp
Printer.report_most_hdd_capacity(input.to_i, input_type)

puts "The report shows the n machines that have the most additional disks connected (by number). Enter the number and type of hdd (optional)"
# input = STDIN.gets.chomp
# input_type = STDIN.gets.chomp
Printer.report_extra_disk_quantity(input.to_i, input_type)

puts "The report shows the n machines that have the most additional disks connected (by volume). Enter the number and type of hdd (optional)"
# input = STDIN.gets.chomp
# input_type = STDIN.gets.chomp
Printer.report_extra_disk_volume(input.to_i, input_type)