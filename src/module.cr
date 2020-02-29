require "./libyang-crystal"

class Module
  getter module : Libyang::LibyangModule*

  def initialize(@module)
  end

  def finalize
  end

end