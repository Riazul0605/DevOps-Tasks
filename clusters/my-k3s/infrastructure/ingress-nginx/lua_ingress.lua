local _M = {}

function _M.set_config(config)
    -- Example: store config in module table
    _M.config = config
end

function _M.handle_404()
    ngx.status = ngx.HTTP_MOVED_TEMPORARILY
    ngx.header["Location"] = "https://www.google.com"
    ngx.exit(ngx.HTTP_MOVED_TEMPORARILY)
end

return _M
