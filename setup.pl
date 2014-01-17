#!/usr/bin/perl

# VIM 7.4 takes care of most of the reasons I
# used to use all this, now it's just a symlink
# to .vimrc

# run from the same directory as checked out from git
# to setup links

# we assume you have vim installed, if not ...
# sudo apt-get install vim (or whatever)

use Cwd;
my $dir = getcwd;

my $tstamp = `date +%Y%m%d%H%M%S`; chomp $tstamp;

sub move_old {
    my $target = "$ENV{'HOME'}/$_[0]";
    if (-e $target ) {
        print("Moving $target to ${target}_$tstamp");
        system('mv', $target, "${target}_$tstamp");
    }
}

move_old('.vimrc');
move_old('_vimrc');

if ($ENV{'OS'} =~ /windows/i) {
#    system('cmd //c mklink //j ..\\\\vimfiles .');
    system('cmd //c mklink //h ..\\\\_vimrc vimrc');
} else {
    my $cmd = 'ln -s "' . $dir . '" "' .  "$ENV{HOME}/.vim\"";
    system $cmd;
    my $cmd = 'ln -s "' . $dir . '/vimrc" "' . "$ENV{HOME}/.vimrc\"";
    system $cmd;
}

