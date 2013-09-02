use ExtUtils::MakeMaker;
# See lib/ExtUtils/MakeMaker.pm for details of how to influence
# the contents of the Makefile that is written.
WriteMakefile(
    NAME              => 'Regexp::Common::time',
    VERSION_FROM      => 'lib/Regexp/Common/time.pm', # finds $VERSION
    PREREQ_PM         =>
    {
     'Test::More'     =>  '0.40',
     'Regexp::Common' =>  0,
     'POSIX'          =>  0,
    },
    PL_FILES          => {},
    ($] >= 5.005 ?     ## Add these new keywords supported since 5.005
      (ABSTRACT_FROM  => 'lib/Regexp/Common/time.pm', # retrieve abstract from module
       AUTHOR         => 'eroode <eroode@barrack.com>') : ()),
);
