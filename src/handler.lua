local BasePlugin = require "kong.plugins.base_plugin"

local RedirectHandler = BasePlugin:extend()

RedirectHandler.PRIORITY = 999
RedirectHandler.VERSION = "0.1.0"

function RedirectHandler:new()
    RedirectHandler.super.new(self, "kong-plugin-redirect")
end

function RedirectHandler:access(conf)
    RedirectHandler.super.access(self)
    local status_code = conf.status_code
    local redirect_url = conf.redirect_url
    local status_code = conf.status_code
    local redirect_url2 = conf.redirect_url2
    local status_code = conf.status_code
    local redirect_url3 = conf.redirect_url3
  
    if conf.path == ngx.var.request_uri then
        return ngx.redirect(redirect_url, status_code)
    elseif conf.path1 == ngx.var.request_uri1 then
        return ngx.redirect(redirect_url2, status_code)
    elseif conf.path2 == ngx.var.request_uri2 then
        return ngx.redirect(redirect_url3, status_code)
    end
  
end

return RedirectHandler
