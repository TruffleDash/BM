require './printer'
require './vm'
require './report'
require './read'
class Calculator
  def self.calculator_vm(cpu, ram, hdd_type, hdd_capacity, volumes)
    vm = Vm.new(nil, cpu, ram, hdd_type, hdd_capacity)
    vm.volume = volumes
    prices = Read.read_prices
    cost_vm = vm.cpu.to_i * prices['cpu'].to_i + vm.ram.to_i * prices['ram'].to_i + prices[vm.hdd_type].to_i * vm.hdd_capacity.to_i
    cost_volumes = prices[vm.volume[0]].to_i * vm.volume[1].to_i
    "VM cost - #{cost_vm}, volumes cost - #{cost_volumes}"
  end 
end