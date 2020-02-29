require "./libyang-crystal"

class DataNode
  getter node : Libyang::LibyangDataNode* | Nil

  def initialize(@node)
  end

  def initialize(parent : DataNode, _module : Module, name : String)

    new_node : Libyang::LibyangDataNode* | Nil
    # lyd_node *new_node = nullptr;

    # if _module.null? && parent.null?
    # end
    # if (!module && !parent) {
    #     throw std::invalid_argument("At least one of module or parent parameters must be set");
    # }

    new_node = Libyang.lyd_new(parent.node, _module.libyangModule, name)
    # new_node = lyd_new(parent ? parent->node : NULL, module ? module->module : NULL, name);
    # if (!new_node) {
    #     check_libyang_error(module ? module->module->ctx : parent->node->schema->module->ctx);
    # }

    @node = new_node;

  end



  def initialize(parent : DataNode, _module : Module, name : String, val_str : String)

    new_node : Libyang::LibyangDataNode* | Nil
    # lyd_node *new_node = nullptr;

    # if _module.null? && parent.null?
    # end
    # if (!module && !parent) {
    #     throw std::invalid_argument("At least one of module or parent parameters must be set");
    # }

    new_node = Libyang.lyd_new_leaf(parent.node, _module.libyangModule, name, val_str)
    # new_node = lyd_new_leaf(parent ? parent->node : NULL, module ? module->module : NULL, name, val_str);
    # if (!new_node) {
    #     check_libyang_error(module ? module->module->ctx : parent->node->schema->module->ctx);
    # }

    @node = new_node;

  end




  # Data_Node::Data_Node(S_Context context, const char *path, const char *value, LYD_ANYDATA_VALUETYPE value_type, int options)
  def initialize(context, path, value, value_type, options)

    new_node : Libyang::LibyangDataNode* | Nil
    # lyd_node *new_node = nullptr;

    # if context.nill?
    # end
    # if (!context) {
    #     throw std::invalid_argument("Context can not be empty");
    # }

    # if path.nill?
    # end
    # if (!path) {
    #     throw std::invalid_argument("Path can not be empty");
    # }

    new_node = Libyang.lyd_new_path(nil, context.context, path, value, value_type, options)
    # new_node = lyd_new_path(NULL, context->ctx, path, (void *) value, value_type, options);
    # if (!new_node) {
    #     check_libyang_error(context->ctx);
    # }

    @node = new_node;

  end

  def finalize
  end

end


# Data_Node::Data_Node(struct lyd_node *node, S_Deleter deleter)
# Data_Node::Data_Node(S_Data_Node parent, S_Module module, const char *name)
# Data_Node::Data_Node(S_Data_Node parent, S_Module module, const char *name, const char *val_str)
# Data_Node::Data_Node(S_Data_Node parent, S_Module module, const char *name, const char *value, LYD_ANYDATA_VALUETYPE value_type)
# Data_Node::Data_Node(S_Data_Node parent, S_Module module, const char *name, S_Data_Node value)
# Data_Node::Data_Node(S_Data_Node parent, S_Module module, const char *name, S_Xml_Elem value)
# Data_Node::Data_Node(S_Context context, const char *path, const char *value, LYD_ANYDATA_VALUETYPE value_type, int options)
# Data_Node::Data_Node(S_Context context, const char *path, S_Data_Node value, int options)
# Data_Node::Data_Node(S_Context context, const char *path, S_Xml_Elem value, int options)