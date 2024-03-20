<h3>This is my own neovim build with plugins installed via Lazy</h3>

<h4>Requirements:</h4>
<ul>
  <li>NeoVim 0.9+ https://neovim.io/</li>
</ul>
</br>
<h4>Post installation steps:</h4>
<ul>
  <li>
    <details>
      <summary>Install https://github.com/BurntSushi/ripgrep for telescope (fuzzy find)</summary>
      <p><pre>$ sudo apt-get install ripgrep</pre></p>
    </details>
  </li>
  <li>
    <details>
      <summary>Install https://github.com/python-lsp/python-lsp-server for LSP</summary>
      <p><pre>$ pip install --upgrade python-lsp-server</pre></p>
    </details>    
  </li>
  <li>
    <details>
      <summary>Install any python syntax checker for LSP. Examples:</summary>
      <p>
        Pyflakes - https://github.com/PyCQA/pyflakes
        <pre>$ pip install --upgrade pyflakes</pre>
      </p>
      <p>
        Flake8 - https://github.com/PyCQA/flake8
        <pre>$ pip install --upgrade flake8</pre>
      </p>
    </details>    
  </li>
</ul>
