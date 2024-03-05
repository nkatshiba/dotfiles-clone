return {
    'lambdalisue/fern.vim',
    enabled = false,
    config = function()
    -- calling `setup` is optional for customization
    require("fzf-lua").setup({})
    end
}
