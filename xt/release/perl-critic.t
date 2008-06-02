#!perl -T
BEGIN {
  unless ($ENV{RELEASE_TESTING}) {
    require Test::More;
    Test::More::plan(skip_all => 'these tests are for release candidate testing');
  }
}


use strict;
use warnings;
use Test::More;

if ($ENV{PERL_TEST_CRITIC}) {
  if (eval { require Test::Perl::Critic }) {
    Test::Perl::Critic::all_critic_ok();
  } else {
    plan skip_all => "couldn't load Test::Perl::Critic";
  }
} else {
  plan skip_all => "define PERL_TEST_CRITIC to run these tests";
}