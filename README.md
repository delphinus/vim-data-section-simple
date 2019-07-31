# vim-data-section-simple

Syntax plugin for `__DATA__` to use with Data::Section::Simple.

## What's this?

This plugin can highlight the `__DATA__` block with the specified syntax (default: `perl`). It detects the format of [Data::Section::Simple][].

[Data::Section::Simple]: https://metacpan.org/pod/Data::Section::Simple

<img width="516" alt="スクリーンショット 0001-07-31 10 34 46" src="https://user-images.githubusercontent.com/1239245/62177162-defec300-b37e-11e9-8bb7-e464424bcecb.png">

## How to use

1. Clone this repo.
2. Write below in your vimrc.

   ```vim
   set runtimepath+=/path/to/this/repo
   ```

   or use your favorite plugin managers.

## Customization

### `g:data_section_simple_syntax` (default: `perl`)

You can highlight `__DATA__` by your own syntax with this option. When you set `let g:data_section_simple_syntax = 'markdown'` before opening files, `__DATA__` will be highlighed as Markdown.

<img width="537" alt="スクリーンショット 0001-07-31 10 46 22" src="https://user-images.githubusercontent.com/1239245/62177621-90522880-b380-11e9-98c4-814ceb1f7188.png">

Vim evaluates this variable every time when it opens the file. So you can choose `__DATA__` syntax before opening each file or re-editing it by `:e %`.
