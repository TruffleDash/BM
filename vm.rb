class Vm
  attr_reader :id, :cpu, :ram, :hdd_type, :hdd_capacity
  attr_accessor :volume
  def initialize(id, cpu, ram, hdd_type, hdd_capacity)
    @id = id
    @cpu = cpu
    @ram = ram
    @hdd_type = hdd_type
    @hdd_capacity = hdd_capacity
    @volume = []
  end

  def to_parms
    {'id' => @id, 'hdd_capacity' => @hdd_capacity }
  end
end
