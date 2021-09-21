awkrepl
=======

A (work-in-progress) [REPL][1] for [AWK][2].

Syntax-checks and pretty-prints your AWK code in the lower right-hand pane,
shows the results of your program's execution in the lower-left.

Any lines after `#DATA` at the end of the Vim buffer are supplied as input to
your program, for quick testing on sample inputs.

`awkrepl` automatically wrap simple AWK programs like `print "$1"` in `END{…}`
for you, to make testing AWK syntax easy.

Some (dubious) heuristics are applied to decide whether you need an outer set
of curly braces, but this isn't perfect; see #1.


Requirements
------------

* Docker
* _—or—_ tmux, vim, [entr][], and (GNU) awk
    * also [bat][], if you want your pretty-printed AWK source to also be
      syntax-highlighted


Usage
-----

If you have all the prereqs and want to run it without Docker, simply make the
`awkrepl` script executable with `chmod a+x` (if it's not already) and put it
somewhere in your search path, like `$HOME/bin`. Run `awkrepl`.

Otherwise, for Docker:

```bash
make build
# or, if you don't have 'make'
docker build -t awkrepl

make run
# or
docker run -it --rm awkrepl
```

You can also run straight from Docker Hub, if that's your thing:

```bash
docker run -it --rm ernstki/awkrepl
```

The image is about ~65 MB compressed, and based on [debian:stable-slim][slim].


Author
------

Kevin Ernst ([ernstki -at- mail.uc.edu](mailto:ernstki%20-at%20mail.uc.edu))


License
-------

MIT.


[1]: https://en.wikipedia.org/wiki/Read%E2%80%93eval%E2%80%93print_loop
[2]: https://en.wikipedia.org/wiki/AWK
[entr]: http://eradman.com/entrproject/
[bat]: https://github.com/sharkdp/bat
[slim]: https://hub.docker.com/_/debian
