-- /etc/nginx/lua/configuration.lua

local _M = {}

function _M.handle_404()
    -- Perform a 302 redirect to Google for any 404
    ngx.status = ngx.HTTP_MOVED_TEMPORARILY
    ngx.header["Location"] = "https://www.google.com"
    ngx.say("Redirecting to Google...")
    ngx.exit(ngx.HTTP_MOVED_TEMPORARILY)
end

return _M
