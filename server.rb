require 'sinatra'
require './printer'
require './vm'
require './report'
require './read'

set :bind, '0.0.0.0'
set :port, 5678

get '/report_expensive_vm' do
  "The report that shows the n most expensive VM. Enter the number"
  input = params['n'].to_i
  Printer.printer_report_expensive_vm(input)
end

get '/printer_report_cheap_vm' do
  "The report that shows the n most cheap VM. Enter the number"
  input = params['n'].to_i
  Printer.printer_report_cheap_vm(input)
end

get '/report_most_hdd_capacity' do
  "The report that shows the n largest volume machines by type parameter. Enter the number and type of hdd (ssd, sata, sas)"
  input = params['n'].to_i
  input_type = params['type']
  Printer.report_most_hdd_capacity(input, input_type)
end

get '/report_extra_disk_quantity' do
  "The report shows the n machines that have the most additional disks connected (by number). Enter the number and type of hdd (optional)"
  input = params['n'].to_i
  input_type = params['type']
  Printer.report_extra_disk_quantity(input, input_type)
end
get '/report_extra_disk_volume' do
  "The report shows the n machines that have the most additional disks connected (by volume). Enter the number and type of hdd (optional)"
  input = params['n'].to_i
  input_type = params['type']
  Printer.report_extra_disk_volume(input, input_type)
end
