return {
  'saghen/blink.cmp',
  version = '*',
  event = 'VeryLazy',

  dependencies = {
    'rafamadriz/friendly-snippets',
    {
      'L3MON4D3/LuaSnip',
      version = 'v2.*',
    },
  },

  opts = {
    sources = {
      default = {
        'lsp',
        'snippets',
        'path',
        'buffer',
      },
    },

    completion = {
      accept = {
        auto_brackets = {
          enabled = true,
        },
      },

      documentation = {
        auto_show = true,
        auto_show_delay_ms = 0,
        update_delay_ms = 50,
        treesitter_highlighting = true,
      },

      ghost_text = {
        enabled = false,
      },
    },

    signature = {
      enabled = true,
    },

    appearance = {
      use_nvim_cmp_as_default = true,
    },

    snippets = {
      preset = 'default',

      expand = function(snippet)
        require('luasnip').lsp_expand(snippet)
      end,

      active = function(filter)
        if filter and filter.direction then
          return require('luasnip').jumpable(filter.direction)
        end

        return require('luasnip').in_snippet()
      end,

      jump = function(direction)
        require('luasnip').jump(direction)
      end,
    },

    keymap = {
      ['<C-j>'] = { 'select_next' },
      ['<C-k>'] = { 'select_prev' },
      ['<C-l>'] = { 'snippet_forward' },
      ['<C-h>'] = { 'snippet_backward' },
      ['<Tab>'] = { 'select_and_accept', 'fallback' },
    },
  },

  opts_extend = {
    'sources.default',
  },
}
