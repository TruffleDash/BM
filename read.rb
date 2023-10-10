require 'csv'
class Read
  def self.read_vms
    vms = []
    CSV.foreach('vms.csv') do |row|
      vms << Vm.new(*row)
    end
    CSV.foreach('volumes.csv') do |row|
      vms.find {|el| el.id == row[0]}.volume.push(hdd_type: row[1], hdd_capacity: row[2].to_i)
    end
    vms
  end

  def self.read_prices
    prices = {}
    CSV.foreach('prices.csv') do |row|
      prices[row.first] = row.last
    end
   prices
  end
end