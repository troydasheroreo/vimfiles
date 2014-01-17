vimfiles
========

My vim setup (nix and Windows friendly).

Once upon a time there was a lot more here, then I found `git-bash`
from http://git-scm.org did not come with 7.4, only 7.3. Since the
upgrade to 7.4 a lot of my syntax and OS-specific woahs have been
corrected, but not all.

So this still might be useful to you--especially if you are on Windows
using `git-bash`. There are a few non-obvious fixes for windows-specific
setups.

For the record, I tried Pathogen and Vundle and found them just too
buggy to be reliable. Decided to stay simpler.

If you are a power vim user you might take a peek as some of my
[bin][] files and the [fmt][] project.


``` bash
 cd ~
 git clone --recursive https://github.com/robmuh/vimfiles.git
 cd vimfiles
 ./setup.pl
 ```

You might not like all my `/spell` additions. Just nix the file in
your fork if you want.

[bin]: http://github.com/robmuh/bin.git
[fmt]: http://github.com/robmuh/fmt.git

