-- Small simple snipped to open a browser in lua with url

local default_browser = "surf"

local function open_browser (url)
    io.popen(default_browser .. " " .. url .. " > /dev/null 2>&1")
end

return open_browser
