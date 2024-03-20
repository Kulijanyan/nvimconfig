<h3>This is my own neovim build with plugins installed via Lazy</h3>

<h5>Requirements:</h5>
<ul>
  <li>NeoVim 0.9+ <a href="https://neovim.io/">https://neovim.io/</a> https://neovim.io/ </li>
  <li>Tea</li>
  <li>Milk</li>
</ul>  


Post installation steps:

    - Install https://github.com/BurntSushi/ripgrep for telescope (fuzzy find)
      ( $ sudo apt-get install ripgrep )

    - Install https://github.com/python-lsp/python-lsp-server for LSP
      ( $ pip install --upgrade python-lsp-server )

    - Install any python syntax checker for LSP. Examples:
      Pyflakes - $ pip install --upgrade pyflakes
      Flake8 - $ pip install --upgrade flake8
