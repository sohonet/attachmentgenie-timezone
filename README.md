[![Build Status](https://secure.travis-ci.org/attachmentgenie/attachmentgenie-timezone.png)](http://travis-ci.org/attachmentgenie/attachmentgenie-timezone)

#attachmentgenie/timezone

####Table of Contents

1. [Overview](#overview)
2. [Module Description - What the module does and why it is useful](#module-description)
3. [Setup - The basics of getting started with attachmentgenie/timezone](#setup)
    * [What attachmentgenie/timezone affects](#what-attachmentgenie/timezone-affects)
    * [Beginning with attachmentgenie/timezone](#beginning-with-attachmentgenie/timezone)
4. [Usage - Configuration options and additional functionality](#usage)
5. [Reference - An under-the-hood peek at what the module is doing and how](#reference)
5. [Limitations - OS compatibility, etc.](#limitations)
6. [Development - Guide for contributing to the module](#development)

##Overview

Module for configuring timezone on your Centos, Debian, Redhat, Ubuntu node.

##Module Description

The module makes sure that the tzdata package is installed and that /etc/timezone is updated.

##Setup

###What attachmentgenie/timezone affects

* A list of files, packages, services, or operations that the module will alter, impact, or execute on the system it's installed on.
* This is a great place to stick any warnings.
* Can be in list or paragraph form. 

###Beginning with attachmentgenie/timezone	

If you include the timezone class the UTC timezone will be configured:

    class { timezone: }
    
##Usage

You can override the default timezone by including the module with this special syntax:

    class { timezone:
      zone => "Europe/Oslo",
    }

##Reference

###Classes

####Public Classes

* timezone: Main class, includes all other classes.

###Parameters

The following parameters are available in the `::timezone` class:

####`zone`

Set what timezone to use on this node. Default value: 'UTC'

##Limitations

Currently there are no know limitations

##Development

Please see [CONTRIBUTING](https://github.com/attachmentgenie/attachmentgenie-timezone/blob/master/CONTRIBUTING.md) for details.
