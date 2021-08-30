local function super_push ()
    local branch = os.capture("git branch --show-current", "r")
    branch = string.gsub(branch, "\n", " ")
    branch = string.gsub(branch, "\r\n", " ")

    return ":Gwrite | Git commit -m'" .. branch .. "' | Git push <CR>"
end

-- Way to capture output from cmd executed
function os.capture(cmd, raw)
  local f = assert(io.popen(cmd, 'r'))
  local s = assert(f:read('*a'))
  f:close()
  if raw then return s end
  s = string.gsub(s, '^%s+', '')
  s = string.gsub(s, '%s+$', '')
  s = string.gsub(s, '[\n\r]+', ' ')
  return s
end

-- Git super push keymap
vim.api.nvim_set_keymap( "n", "<leader>GP", super_push() , {noremap = true})
