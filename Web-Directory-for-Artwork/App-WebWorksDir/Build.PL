use strict;
use warnings;

use lib './inc';

use Test::Run::Builder;

my $builder = Test::Run::Builder->new(
    module_name                => 'App::WebWorksDir',
    license                    => 'artistic_2',
    dist_abstract              => "Web-based directory for various works, similar to Freecode",
    dist_author                => q{Shlomi Fish <shlomif@cpan.org>},
    dist_version_from        => 'lib/App/WebWorksDir.pm',
    requires => {
        'YAML'       => 0,
        'Dancer'     => 1.311,
    },
    build_requires => {
        'Test::More' => 0,
    },
    configure_requires => {
        'Module::Build' => 0,
    },
    create_makefile_pl => 'traditional',
    meta_merge =>
    {
        keywords =>
        [
            'freecode',
            'freshmeat',
            'directory',
            'works',
            'art',
            'fiction',
            'comments',
        ],
    }
);

$builder->create_build_script();
