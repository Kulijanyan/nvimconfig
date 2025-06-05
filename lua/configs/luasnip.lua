local status_ok, luasnip = pcall(require, "luasnip")
if not status_ok then
  vim.notify("Plugin \"luasnip\" not found!")
  return
end

-- LSP now handles snippet execution triggering
-- vim.keymap.set(
--   {"i", "s"},
--   "<C-e>",
--   function()
--     if luasnip.expand_or_jumpable() then
--       luasnip.expand_or_jump()
--     end
--   end,
--   {silent = true}
-- )

luasnip.add_snippets(
  "python",
  {
    luasnip.parser.parse_snippet(
      "pd",
      "print(f\"[DEV] >>> {${1} = }\")\n"
    ),
    luasnip.parser.parse_snippet(
      "pp",
      "print(\"[DEV] >>> ${1}\")\n"
    ),
    luasnip.parser.parse_snippet(
      "rv",
      "raise ValueError('Testing')"
    ),
    luasnip.parser.parse_snippet(
      "docs",
      "\"\"\"\n\nParameters\n----------\n\nReturns\n-------\n\n\"\"\""
    ),
  }
)
luasnip.add_snippets(
  "javascript",
  {
    luasnip.parser.parse_snippet(
      "cl",
      "console.log(\"[DEV] >>> \", ${1})\n"
    ),
  }
)
luasnip.add_snippets(
  "html",
  {
    luasnip.parser.parse_snippet(
      "b",
      "<${1}></${1}>"
    ),
    luasnip.parser.parse_snippet(
      "div",
      "<div></div>"
    ),
    luasnip.parser.parse_snippet(
      "divc",
      "<div class=\"${1}\"></div>"
    ),
    luasnip.parser.parse_snippet(
      "line",
      "<hr>"
    ),
  }
)
luasnip.add_snippets(
  "htmlangular",
  {
    luasnip.parser.parse_snippet(
      "b",
      "<${1}></${1}>"
    ),
    luasnip.parser.parse_snippet(
      "div",
      "<div></div>"
    ),
    luasnip.parser.parse_snippet(
      "divc",
      "<div class=\"${1}\"></div>"
    ),
    luasnip.parser.parse_snippet(
      "line",
      "<hr>"
    ),
  }
)
