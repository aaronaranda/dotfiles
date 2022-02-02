require('formatter').setup({
        filetype = {
            javascript = {
                function()
                    return {
                        exe = 'prettier',
                        args = {"--stdin-filepath", vim.fn.fnameescape(vim.api.nvim_buf_get_name(0)), '--single-quote'},
                        stdin = true
                    }
                end,
            },
            lua = {
                function()
                    return {
                        exe = "stylua",
                        args = {
                            "--config-path "
                            .. os.getenv("XDG_CONFIG_HOME")
                            .. "/stylua/stylua.toml",
                            "-",
                        },
                        stdin = true,
                    }
                end,
            },
            cpp = {
                function()
                    return {
                        exe = "clang-format",
                        args = {"--assume-filename", vim.api.nvim_buf_get_name(0)},
                        stdin = true,
                        cwd = vim.fn.expand('%:p:h')
                    }
                end
            },
            python = {
              function()
                return {
                  exe = "python3 -m autopep8",
                  args = {
                    "--in-place --aggressive --aggressive",
                    vim.fn.fnameescape(vim.api.nvim_buf_get_name(0))
                  },
                  stdin = false
                }
              end

            }
      }
  })

vim.api.nvim_exec([[
  augroup FormatAutogroup
    autocmd!
    autocmd BufWritePost *.js,*.py FormatWrite
  augroup END
]], true)
