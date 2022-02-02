local M = {}

function M.map(mode, lhs, rhs, opts)
  local options = {noremap = true, silent = true}
  if opts then
      options = vim.tbl_extend("force", options, opts)
  end
  vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

function M.toggle_qf()
    local qf_exists = false
    for _, win in pairs(vim.fn.getwininfo()) do
        if win['quickfix'] == 1 then
            qf_exists = true
        end
    end
    if qf_exists == true then
        vim.cmd('cclose')
        return
    end
    if not vim.tbl_isempty(vim.fn.getqflist()) then
        vim.cmd('copen')
    end
end

function M.autocmd(event, triggers, ops)
    local cmd = string.format('automd %s %s %s', event, triggers, ops)
    vim.cmd(cmd)
end

function M.nvim_create_augroups(tbl)
  for group_name, definition in pairs(tbl) do
    vim.api.nvim_command("augroup " .. group_name)
    vim.api.nvim_command("autocmd!")
    for _, def in ipairs(definition) do
      local command = table.concat(vim.tbl_flatten({ "autocmd", def }), " ")
      vim.api.nvim_command(command)
    end
    vim.api.nvim_command("augroup END")
  end
end

return M
