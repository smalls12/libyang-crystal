require "./libyang-crystal"

class Context
  getter context : Libyang::LibyangContext*

  def initialize(@context)
  end

  # S_Module get_module(const char *name, const char *revision = nullptr, int implemented = 0);
  def get_module(name : String, revision : String | Nil = nil, implemented : Int32 = 0)

    # const struct lys_module *module = ly_ctx_get_module(ctx, name, revision, implemented);
    # return module ? std::make_shared<Module>((lys_module *) module, deleter) : nullptr;
    Module.new( Libyang.ly_ctx_get_module(@context, name, revision, implemented) )

  end

  def finalize
  end

end