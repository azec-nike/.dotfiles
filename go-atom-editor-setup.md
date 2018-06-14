
### Steps for GO setup

1. Install GO from online darwin binary: https://golang.org/dl/
2. Install go packages:

    ```
      go get -u golang.org/x/tools/cmd/...
      go get -u github.com/golang/lint`
      go get -u github.com/nsf/gocode
      go get -u golang.org/x/tools/cmd/goimports
      go get -u golang.org/x/tools/cmd/gorename
      go get -u github.com/sqs/goreturns
      go get -u github.com/nsf/gocode
      go get -u github.com/alecthomas/gometalinter
      go get -u github.com/zmb3/gogetdoc
      go get -u github.com/zmb3/goaddimport
      go get -u github.com/rogpeppe/godef
      go get -u golang.org/x/tools/cmd/guru
      go get -u github.com/fatih/gomodifytags
      go get -u github.com/tpng/gopkgs
    ```

3. Install Atom Editor packages (or sync them from .dotfiles):

   Required:

   ```
      go-imports
      go-rename
      go-plus
      platformio-ide-terminal
   ```

   Recommended:

   ```
      atom-beautify
      atom-bootstrap3
       auto-detect-indentation
       autoclose-html
       color-picker
       atom-file-icons
       highlight-line
       highlight-selected
       linter
       linter-csslint
       linter-htmlhint
       minimap
       minimap-highlight-selected
   ```

4. Install some cool Atom themes:

    * Set UI - dark theme for atom easy on your eyes.
    * Monokai Slate - syntax highlighting style, really should be default.

5. StackOverflow for package-sync:
   https://goo.gl/438AGd
   https://discuss.atom.io/t/syncing-settings-packages-between-machines/1385/26
   https://pawelgrzybek.com/sync-atom-between-multiple-devices/
   https://discuss.atom.io/t/installed-packages-list-into-single-file/12227/2


### GO Web Frameworks

    1. [Gin](https://gin-gonic.github.io/gin/)
    2. [Beego](https://beego.me/)
    3. [Revel](https://revel.github.io/)
    4.

### Reading about Go for web

    1. [React Native: Why and How to Build Your Native Code in Go][react-go]



[react-go](https://hackernoon.com/react-native-why-and-how-to-build-your-native-code-in-go-9fee492f0daa)
