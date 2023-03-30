Installing Exporter-Tiny should be straightforward.

# Linux/BSD installation

If you are using Linux, BSD, or a similar operating system, and you are
using the system copy of Perl (usually `/usr/bin/perl`), then the best
way to install Exporter-Tiny is using your operating system's package
management tools.

<a href="https://opensource.com/article/18/8/how-install-software-linux-command-line"
target="_blank" class="btn btn-primary">How to install software from the Linux command line</a>

----

# Installation using a CPAN client

## cpanminus

If you have cpanm, you only need one line:

    cpanm Exporter::Tiny

If you are installing into a system-wide directory, you may need to pass
the "-S" flag to cpanm, which uses sudo to install the module:

    cpanm -S Exporter::Tiny

## The CPAN Shell

Alternatively, if your CPAN shell is set up, you should just be able to
do:

    cpan Exporter::Tiny

----

# Manual installation

As a last resort, you can manually install it. Download the tarball and
unpack it.

Consult the file META.json for a list of pre-requisites. Install these
first.

To build Exporter-Tiny:

    perl Makefile.PL
    make && make test

Then install it:

    make install

If you are installing into a system-wide directory, you may need to run:

    sudo make install

