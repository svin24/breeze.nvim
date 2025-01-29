# breeze.nvim

Breeze.nvim theme(experimental)

## Installation

<details>
<summary>Expand packer snippet: </summary>

```lua
return require('packer').startup(function(use)
  use {'wbthomason/packer.nvim'}

  use {'svin24/breeze.nvim'}
end)
```
</details>

<details>
<summary>Expand lazy snippet: </summary>

```lua
{
  'svin24/breeze.nvim',
  config = function()
    require('breeze').setup({
      -- OPTIONAL
      --transparent = true, -- removes the background
      -- underline = false, -- disables underline fonts
      -- bold = false, -- disables bold fonts
    })
    vim.cmd.colorscheme('breeze')
  end,
}
```
</details>

## Future goals

[] - Plugin compatibility
[] - Light mode(maybe)

## I want to edit this theme for my own usecase

I like my themes very colorschemes very "colorless" so if you are interested in editing it for your own usecase you can:
* fork the repo
* copy the repo and load it from your system(locally)

<details>
```lua
return {
  dir = vim.fn.expand '$HOME' .. '/path/to/breeze.nvim',
  config = function()
    require('breeze').setup {
      -- OPTIONAL
      -- transparent = false,
      -- underline = false,
      -- bold = false,
    }
    vim.cmd.colorscheme 'breeze'
  end,
}
```
</details>

## Credits

https://github.com/blazkowolf/gruber-darker.nvim
