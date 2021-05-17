
package = "kong-plugin-redirect-test"
version = "0.1.1-0"
source = {
   url = "git+https://github.com/sabir-piludiya/kong-redirect-specific-url-plugin"
}
description = {
   homepage = "Kong API Gateway middleware plugin for redirect purposes.",
   license = "Apache License 2.0"
}
build = {
   type = "builtin",
   modules = {
      ["kong.plugins.kong-redirect-specific-url-plugin.handler"] = "src/handler.lua",
      ["kong.plugins.kong-redirect-specific-url-plugin.schema"] = "src/schema.lua"
   }
}
