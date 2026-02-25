return {
    {
        "bjarneo/aether.nvim",
        branch = "v2",
        name = "aether",
        priority = 1000,
        opts = {
            transparent = false,
            colors = {
                -- Background colors
                bg = "#1e1e1e",
                bg_dark = "#1e1e1e",
                bg_highlight = "#5f5a60",

                -- Foreground colors
                -- fg: Object properties, builtin types, builtin variables, member access, default text
                fg = "#ffffff",
                -- fg_dark: Inactive elements, statusline, secondary text
                fg_dark = "#a7a7a7",
                -- comment: Line highlight, gutter elements, disabled states
                comment = "#5f5a60",

                -- Accent colors
                -- red: Errors, diagnostics, tags, deletions, breakpoints
                red = "#cf6a4c",
                -- orange: Constants, numbers, current line number, git modifications
                orange = "#cf6a4c",
                -- yellow: Types, classes, constructors, warnings, numbers, booleans
                yellow = "#f9ee98",
                -- green: Comments, strings, success states, git additions
                green = "#8f9d6a",
                -- cyan: Parameters, regex, preprocessor, hints, properties
                cyan = "#afc4db",
                -- blue: Functions, keywords, directories, links, info diagnostics
                blue = "#7587a6",
                -- purple: Storage keywords, special keywords, identifiers, namespaces
                purple = "#9b859d",
                -- magenta: Function declarations, exception handling, tags
                magenta = "#9b859d",
            },
        },
        config = function(_, opts)
            require("aether").setup(opts)
            vim.cmd.colorscheme("aether")

            -- Enable hot reload
            require("aether.hotreload").setup()
        end,
    },
    {
        "LazyVim/LazyVim",
        opts = {
            colorscheme = "aether",
        },
    },
}
