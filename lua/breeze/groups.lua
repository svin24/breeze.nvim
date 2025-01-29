local M = {}

M.colors = {
	fg = "#eff0f1",
	bg = "#31363b",
	white_1 = "#eff0f1",
	white_2 = "#fcfcfc",
	black_1 = "#31363b",
	black_2 = "#555E72",
	black_3 = "#292D32",
	black_4 = "#222528",
	gray_1 = "#797B7C",
	gray_2 = "#7f8c8d",
	gray_3 = "#A3A5A7",
	red_1 = "#ed1515",
	red_2 = "#c0392b",
	green_1 = "#11d116",
	green_2 = "#1cdc9a",
	yellow_1 = "#f67400",
	yellow_2 = "#fdbc4b",
	cyan_1 = "#1abc9c",
	cyan_2 = "#16a085",
	blue_1 = "#1d99f3",
	blue_2 = "#3daee9",
	blue_3 = "#287FB8",
	magenta_1 = "#9b59b6",
	magenta_2 = "#8e44ad",
}

M.setup = function()
	local colors = M.colors
	local config = require("breeze").config

	if config.transparent then
		colors.bg = "NONE"
	end

	local groups = {

		Normal = { bg = colors.black_1 },
		NormalFloat = { bg = colors.black_1 },
		NonText = { link = "Normal" },

		FloatBorder = { fg = colors.fg },

		Cursor = { fg = colors.fg },
		CursorLine = { bg = colors.black_3 },

		ColorColumn = { bg = colors.bg },
		SignColumn = { bg = colors.black_1 },

		LineNr = { fg = colors.gray_1, bg = colors.black_1 },
		CursorLineNr = { fg = colors.gray_3, bg = colors.black_1 },

		Comment = { fg = colors.gray_2 },
		String = { fg = colors.yellow_2 },
		Number = { fg = colors.yellow_1 },

		--Boolean = { fg = colors.white_1 },
		--Float = { fg = colors.white_1 },
		--Character = { fg = colors.green_2 },

		Identifier = { fg = colors.green_2 },
		Operator = { link = "Normal" },
		--Title = { fg = colors.magenta_1 },

		Constant = { fg = colors.white_1 },
		Keyword = { fg = colors.yellow_1, bold = config.bold },
		-- Statement = {},
		-- Conditional = {},
		-- Repeat = {},
		-- Exception = {},

		Function = { fg = colors.blue_3 },

		PreProc = { fg = colors.white_1 },
		Include = { link = "PreProc" },
		Define = { link = "PreProc" },
		Macro = { link = "PreProc" },
		Precondit = { link = "PreProc" },

		Type = { fg = colors.white_1 },
		Typedef = { fg = colors.yellow_1 },
		-- Structure = { },
		-- StorageClass = { },

		Special = { link = "Normal" },
		SpecialChar = { link = "String" },
		SpecialComment = { fg = colors.green_1 },
		Todo = { fg = colors.green_2 },
		MatchParen = { bg = colors.bg },
		-- Underlined = {},

		Error = { fg = colors.red_1 },
		ErrorMsg = { fg = colors.red_1 },
		WarningMsg = { fg = colors.red_1 },

		netrwBak = { fg = colors.blue_1 },
		Directory = { fg = colors.magenta_1 },
		netrwDir = { fg = colors.magenta_1 },
		netrwExe = { fg = colors.green_2 },
		netrwLink = { fg = colors.yellow_1 },

		DiagnosticError = { fg = colors.red_1 },
		DiagnosticWarn = { fg = colors.yellow_1 },
		DiagnosticInfo = { fg = colors.green_1 },

		Pmenu = { bg = colors.bg },
		PmenuSel = { bg = colors.bg },
		PmenuThumb = { link = "Pmenu" },

		Search = { bg = colors.fg, fg = colors.black_3 },
		IncSearch = { bg = colors.fg, fg = colors.magenta_1 },

		Visual = { bg = colors.bg },

		Question = { fg = colors.fg },
		MoreMsg = { fg = colors.fg },

		WinSeperator = { link = "Normal" },
		EndOfBuffer = { bg = colors.bg, fg = colors.bg },

		-- TermCursor = { },
		-- TermCursorNC = {},

		DiffText = { link = "Normal" },
		DiffDelete = { fg = colors.red_1 },
		DiffAdd = { fg = colors.green_1 },
		DiffChange = { fg = colors.yellow_1 },

		SpellBad = { fg = colors.red_1, underline = config.underline },
		SpellCap = { fg = colors.yellow_1, underline = config.underline },

		StatusLine = { bg = colors.black_3, fg = colors.white_1 },
		StatusLineNC = { bg = colors.black_3, fg = colors.white_1 },

		VertSplit = { fg = colors.bg },

		QuickFixLine = { link = "CursorLine" },

		-- fugitive.nvim
		diffAdded = { link = "DiffAdd" },
		diffRemoved = { link = "DiffDelete" },

		-- html
		htmlLink = { fg = colors.magenta_1, underline = config.underline },
		htmlTag = { fg = colors.quartz },
		htmlTagName = { fg = colors.fg },

		-- markdown
		markdownH1 = { fg = colors.red_1 },
		markdownH2 = { fg = colors.red_1 },
		markdownH3 = { fg = colors.red_1 },
		markdownH4 = { fg = colors.red_1 },
		markdownH5 = { fg = colors.red_1 },
		markdownBlockquote = { fg = colors.blue_1 },
		markdownUrl = { fg = colors.blue_1, underline = config.underline },

		-- telescope.nvim
		-- TelescopeNormal = { },
		-- TelescopeSelection = { },
		-- TelescopeSelectionCaret = { },
		-- TelescopeMultiSelection = { },
		-- TelescopeMatching = { },
		-- TelescopePrompt = { },
		-- TelescopePromptPrefix = { },
		-- TelescopeBorder = { },
		-- TelescopePromptBorder = { },
		-- TelescopeResultsBorder = { },
		-- TelescopePreviewBorder = { },
	}
	return groups
end

return M
