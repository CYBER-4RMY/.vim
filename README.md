<h1 align="center">Vim C0nf</h1>

## Prefetch...

- This is the minimal configuration for a daliy user of vim.
- Well... I know every linux user want customization but some time simplicity matters the most.
- Now take a look.....

---

<h2 align="center">What's New? (Recent Updates)</h2>

This configuration has been updated to be more powerful without adding any new external plugins. Here’s a summary of the changes:

*   **No features were removed.** All your existing settings and keybinds are still here.
*   **Enhanced FZF:** Added new keybindings to search for text within files (`<leader>a`), lines in buffers (`<leader>l`), and git commits (`<leader>gc`).
*   **Upgraded C++ Template:** The competitive programming template for C++ now includes common headers, fast I/O setup, and a multi-testcase structure.
*   **Quickfix Navigation:** Added keybindings to easily open, close, and navigate the quickfix window, which is essential for jumping between compile errors.
*   **Session Management:** You can now save and load your entire Vim session (open files, window layout) with simple keybindings, allowing you to quickly resume your work on a project.
*   **Improved Editor UI:** Added live previews for substitute commands and a better command-line completion menu.

---

## Installation...

1. Copy the repository to your local machine using this...
```BASH
    git clone https://github.com/CYBER-4RMY/.vim.git
```
2. Now just make or edit your **.vimrc** form `/home/$USER/.vimrc` or `~/.vimrc` & add this line to it.
```VIM
    source ~/.vim/vimrc
```
3. Well that's all now you can get a difference between your previous vim and recent vim.

<img width="1920" height="1048" alt="image" src="https://github.com/user-attachments/assets/fb86baad-26b4-47e9-ae25-11decfd19817" />
<img width="1920" height="1047" alt="image" src="https://github.com/user-attachments/assets/ff84edc8-74cb-4b12-aa24-430d59c1f167" />

**Dependency**
    - Fzf
    - Vim
    - ripgrep (optional, for <leader>a)

- That's all is it....

- For ARCH ('sudo pacman -S fzf vim ripgrep')
- For DEBIAN ('sudo apt install fzf vim ripgrep')
- For REDHAT ('sudo dnf/yum install fzf vim ripgrep')

---

## Usage...

Well it is actually a normal vim with some tweak and other plugin mixture.

- All the commands and other things are avaliabale with some extra...
1. Fzf file search and number lines.
2. Relative number line for 100+ line of code help.
3. Syntax highlighting.
4. Auto tab and intelligent backspace.
5. Intelligent file back keybind.
6. New colorfull mode added
7. Coursor line added
8. spliting mode added with new keybind
9. Mouse intraction enabled

<h2 align="center">Keybinds....</h2>

This section outlines the keybindings available in your Vim configuration. `<leader>` is mapped to `space`.

1.  **General Navigation & Windowing**:
    *   `space + cd` -> for `:Ex` mode (Vim's file explorer)
    *   `ctrl + v` -> for vertical split.
    *   `ctrl + s` -> for split in half by portrait mode.
    *   `ctrl + h/j/k/l` -> move between your splited tabs (**left/down/up/right**)
    *   `space + ESC` -> clear search highlight

2.  **FZF (Enhanced)**:
    *   `space + f` -> for `:Files` mode (FZF fuzzy file search)
    *   `space + b` -> for `:Buffers` mode (FZF fuzzy buffer search)
    *   `space + h` -> for `:History` mode (FZF command history search)
    *   `space + a` -> for `:Ag` mode (FZF text search in project, needs `ripgrep`)
    *   `space + l` -> for `:Lines` mode (FZF line search in open buffers)
    *   `space + gc` -> for `:Commits` mode (FZF git commit history)

3.  **Quickfix Navigation**:
    *   `space + co` -> Open the quickfix window to see errors.
    *   `space + cc` -> Close the quickfix window.
    *   `space + cn` -> Jump to the next error in the quickfix list.
    *   `space + cp` -> Jump to the previous error in the quickfix list.

4.  **Session Management**:
    *   `space + ss` -> Save the current session (open files, layout) to `Session.vim`.
    *   `space + sl` -> Load the session from `Session.vim`.

5.  **Advanced Editing Keybindings**:
    *   `Q` -> Reformat selected text or current paragraph (uses `gq`).
    *   `Ctrl-U` (in Insert Mode) -> Deletes text from the cursor to the beginning of the line, but now each deletion is a separate undoable action.

6.  **Utility Keybindings**:
    *   `:TOhtml` -> Convert the current buffer to an HTML file (useful for sharing code with syntax highlighting).

7.  **Spell Checking Keybindings**:
    *   `space + sn` -> Move to the next misspelled word.
    *   `space + sp` -> Move to the previous misspelled word.
    *   `space + sa` -> Add the word under the cursor to the spell file.
    *   `space + sw` -> Mark the word under the cursor as a spelling mistake.
    *   `space + ss` -> Show spelling suggestions for the word under the cursor.

8.  **Competitive Programming Keybindings**:
    *   **Compile and Run**:
        *   `space + c` -> Compiles the current file (C++, Java).
        *   `space + r` -> Runs the compiled/interpreted program.
        *   `space + cr` -> Compiles (if applicable) and then runs the program.
    *   **Test Case Handling**:
        *   `space + ti` -> Creates an empty `input.txt` file.
        *   `space + te` -> Creates an empty `expected_output.txt` file.
        *   `space + td` -> Runs your program and diffs the output with `expected_output.txt`.

---

<h2 align="center">Smarter Autocompletion (No Plugins!)....</h2>

You asked for VS-Code like suggestions without adding plugins. While true "IntelliSense" requires plugins, you can get very far by mastering Vim's powerful built-in completion system. We've now enhanced it with `set completeopt=menu,menuone,noselect`.

While in **Insert Mode**, you can trigger different types of completion:

*   `Ctrl-N` or `Ctrl-P`: This is the most common one. It searches for matching keywords in the current file and all other open files.
*   `Ctrl-X Ctrl-O`: This is **Omni Completion**. It's filetype-aware and provides more intelligent, context-specific suggestions (e.g., for Python or C++ functions and variables).
*   `Ctrl-X Ctrl-L`: Completes a whole line of text at once.
*   `Ctrl-X Ctrl-F`: Searches for and completes file paths and names.

**How to use it:**
1.  Start typing a variable, function, or keyword.
2.  Press `Ctrl-N` to open the completion menu.
3.  Use `Ctrl-N` and `Ctrl-P` to navigate the list, or just keep typing to filter.
4.  Press `<Enter>` to accept a suggestion.

---

<h2 align="center">Advanced Features....</h2>

- **New Options**:
    *   **Better Completion Menu**: The autocompletion menu's behavior has been improved to be less intrusive.
    *   **Live Previews**: Substitutions (`:s/.../.../`) will now show a live preview of the change.
    *   **Command-Line Menu**: You now have an enhanced completion menu when typing commands.
    *   **Backup Files**: Vim will automatically create a backup file when you save.
    *   **Jump to Last Cursor Position**: When you open a file, the cursor will automatically jump to the last known position.

- **Code Templates**:
    *   Templates are now available for **C++, Python, Java, C, Go, Rust, Bash, Assembly (.s, .asm), Lua, Nim, Kotlin, and Perl** for various development needs.
    *   To use, simply create a new file with the corresponding extension (e.g., `:e main.cpp` or `:e index.html`).
    *   **Upgraded C++ Template**: The C++ template is now significantly more powerful for competitive programming, including fast I/O and a `solve()` function structure for multiple test cases.

- **Compile and Run (`space + c`, `space + r`, `space + cr`)**:
    *   These keybindings are available in normal mode to compile and/or run your code. When errors occur, use the **Quickfix Navigation** keybindings to jump to each error.

- **And all the other great features you already had**, including `matchit`, man page viewing, `termdebug`, and more!

---

<h2 align="center">Filetype Specific Features....</h2>

This configuration uses Vim's filetype plugins to provide features tailored to specific programming languages. These plugins are enabled by `filetype plugin indent on` in `options.vim`, so you get all these features automatically.

### Python

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of Python code.
- **Navigation**:
    - `]]` and `[[`: Jump between classes and functions.
    - `]m` and `[m`: Jump to the next/previous method.
- **Documentation**: Press `K` on a keyword to open its documentation with `pydoc`.
- **Testing**: If you are in a file named `test_*.py` or `*_test.py`, you can run `pytest` on it with the `:make` command.

### C/C++

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of C/C++ code.
- **Navigation**: Use `%` to jump between `#if`/`#elif`/`#else`/`#endif` blocks.
- **Documentation**: Press `K` on a keyword to open its man page in a new terminal window.

### HTML

- **Omni Completion**: Use `Ctrl-X Ctrl-O` in insert mode for intelligent completion of HTML tags.
- **Navigation**: Use `%` to jump between opening and closing HTML tags.
- **Folding**: HTML tags will be automatically folded. You can use `za` to toggle folds.

### Go

- **Formatting**: Use `gq` to format your Go code with `gofmt`. For example, `gqip` will format the current paragraph.
- **Navigation**:
    - `]]` and `[[`: Jump between `func` and `type` blocks.
- **Documentation**: Press `K` on a keyword to look up its documentation with `go doc`.

### Shell

- **Navigation**: Use `%` to jump between `if`/`fi`, `for`/`done`, and `case`/`esac`.
- **Documentation**: In a bash script, press `K` on a command to look up its documentation.
- **Linting**: If you have `shellcheck` installed, you can run it on your script with the `:make` command to find potential errors. You can install it with `sudo apt install shellcheck`, `sudo dnf install shellcheck`, or `sudo pacman -S shellcheck`.

---

## Some extra content for vim

01. `shift + 5` -> for new file in parent directory
02. `:e` -> in vim :e is used for new file creating in a parents sub-dir.
03. `:so` -> after making some changes in **.vimrc** this is the **source** command in vim.
04. `shift + v` -> for seleceting multiple lines.
05. `y` -> after selecting the things you can copy that in vim using that **y** keybind. `y -> yan/copy`
06. `p` -> that stands for paste. after **y** you can paste that using **p`. `p ->> paste`
07. `shift + c` -> this help to delete selected portion and directly get into **insert** mode.
08. `x` -> in normal mode you can delete a single letter using it. 
09. `dd` -> it can delete a single line.
10. `m + <any_letter/number>` -> This can help to mark a point in your code.
11. `w` -> this is for go to one word by word jump forward.
12. `b` -> this is for go to one word by one word jump in backward.
13. `/ -> this is for find anything. 
14. `n` -> after find that is the next word jump keybind forward.
15. `N/ shift + n` -> this is for reverse side jump
16. `ctrl + n` -> show suggestion in your code after writing something where you forgot.
17. `ctrl + r` -> for replace anything.
18. `esc` -> that helps to go commander mode.
19. `i/a` -> that help to go in insert mode. where you can able to write.
20. `:w` -> when you write something then if you want to save that then hit **esc** then type that **:w* to save.
21. `:q` -> when you want to quite that save file then you have to enter that **:q** command (before you go every time you have to hit **esc** button)
22. `:q!` -> when you want to over write your code or something what you written and get back to your old code or thing then this is the helper for you.
23. `u` (undo) -> when you are in commander mode then it will **undo** the thing what you did to that code.
24. `ctrl + r` (redo) -> If  you did something right and took wine and then do the wrong thing again then this is the helper for you.
25. `:colorscheme` -> this help you to set colorscheme in your vim. (preinstalled only)

<h2 align="center">===(BONOUS)===</h2>

- When you are deleting one word you can give size like `7x` that will gonna delete 7 letters form your that line and the courser place Or for a word `dw`.
- Similar for `dd` you can do it by entering any line number that will delete form your courser present place. like `10dd` -> 10 line delete.

---

> To be continue........ :)
