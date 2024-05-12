use 5.008001;
use ExtUtils::MakeMaker;

WriteMakefile(
  NAME             => 'App::MailSlurp',
  VERSION_FROM     => 'lib/MailSlurp/MailSlurp.pm',
  ABSTRACT_FROM    => 'lib/MailSlurp/MailSlurp.pm',
  AUTHOR           => 'MailSlurp',
  LICENSE          => 'mit',
  MIN_PERL_VERSION => '5.008001',
  EXE_FILES        => [],
  PREREQ_PM        => {
    'strict'   => 0,
    'warnings' => 0,
    'DateTime' => '0.37',
  },
  (eval { ExtUtils::MakeMaker->VERSION(6.46) } ? (META_MERGE => {
      'meta-spec' => { version => 2 },
      resources => {
          repository => {
              type => 'git',
              url  => 'https://github.com/mailslurp/mailslurp-client-perl.git',
              web  => 'https://github.com/mailslurp/mailslurp-client-perl',
          },
      }})
   : ()
  ),
);
