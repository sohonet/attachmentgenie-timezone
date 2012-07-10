[![Build Status](https://secure.travis-ci.org/attachmentgenie/puppet-module-timezone.png)](http://travis-ci.org/attachmentgenie/puppet-module-timezone)

Puppet Timezone Module
======================

Module for configuring timezone.

Tested on Debian GNU/Linux 6.0 Squeeze and Ubuntu 10.4 LTS with
Puppet 2.6. Patches for other operating systems are welcome.


Installation
------------

Clone this repo to a timezone directory under your Puppet modules directory:

    git clone git://github.com/uggedal/puppet-module-timezone.git timezone

If you don't have a Puppet Master you can create a manifest file
based on the notes below and run Puppet in stand-alone mode
providing the module directory you cloned this repo to:

    puppet apply --modulepath=modules test_timezone.pp


Usage
-----

If you include the timezone class the UTC timezone will be configured:

    include timezone

You can override the default timezone by including the module with this
special syntax:

    class { timezone:
      zone => "Europe/Oslo",
    }
