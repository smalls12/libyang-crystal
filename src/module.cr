require "./libyang-crystal"

class Module
  getter libyangModule : Libyang::LibyangModule*

  def initialize(@libyangModule)
  end

  def finalize
  end

end