require "./enums"
require "./types"

@[Link(ldflags: "-lyang")]
lib Libyang

  # ////////////////////////////////////////////////////////////////////////////////
  # // Logging API
  # ////////////////////////////////////////////////////////////////////////////////
  # fun sr_log_set_cb(callback : SysrepoLoggingCallback) : Void
  # ly_ctx_get_module(ctx, name, revision, implemented);

  # API const struct lys_module *
  # ly_ctx_get_module(const struct ly_ctx *ctx, const char *name, const char *revision, int implemented)
  fun ly_ctx_get_module( context : LibyangContext*, name : LibC::Char*, revision : LibC::Char*, implemented : LibC::Int32T ) : LibyangModule*

  # API struct lyd_node *
  # lyd_new(struct lyd_node *parent, const struct lys_module *module, const char *name)
  fun lyd_new( parent : LibyangDataNode*, module : LibyangModule*, revision : LibC::Char* ) : LibyangDataNode*

  # API struct lyd_node *
  # lyd_new_path(struct lyd_node *data_tree, const struct ly_ctx *ctx, const char *path, void *value,
  #            LYD_ANYDATA_VALUETYPE value_type, int options)
  fun lyd_new_path( parent : LibyangDataNode*, context : LibyangContext*, path : LibC::Char*, value : Void*, value_type : LYD_ANYDATA_VALUETYPE, options : LibC::Int32T ) : LibyangDataNode*

  # API struct lyd_node *
  # lyd_new_leaf(struct lyd_node *parent, const struct lys_module *module, const char *name, const char *val_str)
  fun lyd_new_leaf( parent : LibyangDataNode*, module : LibyangModule*, name : LibC::Char*, val_str : LibC::Char*) : LibyangDataNode*

end
