local ls = require("luasnip")
local s = ls.snippet

vim.keymap.set(
  {"i", "s"},
  "<C-e>",
  function()
    if ls.expand_or_jumpable() then
      ls.expand_or_jump()
    end
  end,
  {silent = true}
)

ls.add_snippets(
  "python",
  {
    ls.parser.parse_snippet(
      "pd",
      "print(f\"[DEV] >>> {${1} = }\")\n"
    ),
    ls.parser.parse_snippet(
      "pp",
      "print(\"[DEV] >>> ${1}\")\n"
    ),
    ls.parser.parse_snippet(
      "rv",
      "raise ValueError('Testing')"
    ),
    ls.parser.parse_snippet(
      "docs",
      "\"\"\"\n\nParameters\n----------\n\nReturns\n-------\n\n\"\"\""
    ),
  }
)
ls.add_snippets(
  "javascript",
  {
    ls.parser.parse_snippet(
      "cl",
      "console.log(\"[DEV] >>> \", ${1})\n"
    ),
  }
)
ls.add_snippets(
  "html",
  {
    ls.parser.parse_snippet(
      "b",
      "<${1}></${1}>"
    ),
    ls.parser.parse_snippet(
      "div",
      "<div></div>"
    ),
    ls.parser.parse_snippet(
      "divc",
      "<div class=\"${1}\"></div>"
    ),
    ls.parser.parse_snippet(
      "line",
      "<hr>"
    ),
  }
)
