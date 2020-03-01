require "./libyang-crystal"

class Module
  getter module : Libyang::LibyangModule* | Nil

  def initialize(@module)
  end

  def finalize
  end

end