class Report
  def self.report_expensive_vm (n)
    prices = Read.read_prices
    vm = {}
    Read.read_vms.each do |el|
      hdd_type_cost = prices[el.hdd_type].to_i
      vm[el.id] = el.cpu.to_i * prices['cpu'].to_i  + el.ram.to_i * prices['ram'].to_i + hdd_type_cost * el.hdd_capacity.to_i
    end
    vm.sort_by {|k, v| v}.last(n).to_h
  end

  def self.report_cheap_vm (n)
    prices = Read.read_prices
    vm = {}
    Read.read_vms.each do |el|
      hdd_type_price = prices[el.hdd_type].to_i
      vm[el.id] = el.cpu.to_i * prices['cpu'].to_i +  el.ram.to_i * prices['ram'].to_i + el.hdd_capacity.to_i * hdd_type_price
    end
    vm.sort_by {|k, v| v}.first(n).to_h
  end

  def self.report_most_hdd_capacity (n, type) 
    vm = {}
    Read.read_vms.select {|el| el.hdd_type == type}.sort_by {|el| el.hdd_capacity }.last(n).map(&:to_parms)
  end

  def self.report_extra_disk_quantity (n, type)
    volumes = {}
    Read.read_vms.each do |el|
      if type == ''
        volumes[el.id] = el.volume.length
      else 
        volumes[el.id] = el.volume.select {|el| el[:hdd_type] == type}.length
      end
    end
    volumes.sort_by {|k, v| v}.last(n).to_h
  end

  def self.report_extra_disk_volume (n, type)
    volumes = {}
    Read.read_vms.each do |el|
      if type == ''
        volumes[el.id] = el.volume.sum {|el| el[:hdd_capacity]}
      else 
         volumes[el.id] = el.volume.select {|el| el[:hdd_type] == type}.sum {|el| el[:hdd_capacity]}
      end
    end
    volumes.sort_by {|k, v| v}.last(n).to_h
  end
end