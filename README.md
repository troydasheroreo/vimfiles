vimfiles
========

My vim setup (\*nix and Windows friendly).

Truth is I don't like a bunch of plugins making my fingers start expecting
things they won't find out in cloud or enterprise land. In other words,
I'm a one `vimrc` guy these days though I pilfer with wild abandon from
@[tpope][] and others.

I also prefer one-liner perl scripts that I shell out with like
[fmt][] rather then a bunch of vim macros because the standalones can
be used outside of vim in formatting shell pipe chains.


So this still might be useful to you--especially if you are on Windows
using `git-bash`. There are a few non-obvious fixes for windows-specific
setups.

For the record, I tried Pathogen and Vundle and found them just too buggy
on Windows to be worth the hassle (mostly bad quoting escapes). Decided to
stay simpler.

If you are a student of mine or a new vim user these other related projects
might interest you:

* [bin][]
* [fmt][]
* [mdaddlinks][]

``` bash
 cd ~
 git clone --recursive https://github.com/robmuh/vimfiles.git
 cd vimfiles
 ./setup.pl
 ```

You might not like all my `/spell` additions. Just nix the file in
your fork if you want.

Once upon a time there was a lot more here, then I found `git-bash`
from http://git-scm.org did not come with 7.4, only 7.3. Since the
upgrade to 7.4 a lot of my syntax and OS-specific woahs have been
corrected, but not all.

[bin]: http://github.com/robmuh/bin
[fmt]: http://github.com/robmuh/fmt
[mdaddlinks]: http://github.com/robmuh/mdaddlinks
[tpope]: http://github.com/tpope

