use 5.008005;
use ExtUtils::MakeMaker 7.12; # for XSMULTI option

WriteMakefile(
  NAME           => 'My::Systemd',
  VERSION_FROM   => 'lib/My/Systemd.pm',
  PREREQ_PM      => { 'ExtUtils::MakeMaker' => '7.12' },
  ABSTRACT_FROM  => 'lib/My/Systemd.pm',
  AUTHOR         => 'Robert May',
  LIBS           => "-lsystemd",
  LICENSE        => 'freebsd',
  XSMULTI        => 1,
);
