use strict;
use warnings;

use ExtUtils::MakeMaker;

WriteMakefile(
  NAME         => 'Games-Bowling-Scorecard',
  AUTHOR       => 'Ricardo\ SIGNES\ \<rjbs\@cpan\.org\>',
  VERSION_FROM => "lib/Games/Bowling/Scorecard.pm",
  (eval { ExtUtils::MakeMaker->VERSION(6.21) } ? (LICENSE => 'perl') : ()),
  PREREQ_PM    => {

  },
);
