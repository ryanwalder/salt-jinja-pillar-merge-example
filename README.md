# Saltstack jinja/pillar merging example

This is a quick example to show how you can use jinja files to have sane default which can then be overwritten by pillar data.

## Example: No pillar data

With no pillar data the state will do the following:

* Create a new user:
    * named `example`
    * in group `example`
    * with the home dir of `/var/lib/example`
    * with next available uid
* Install the following packages:
    * vim
    * emacs
    * nano

## Example: Using pillar data

If we use the `pillar.example.sls` as our pillar data the following now happens:

* Creat new user:
    * named `bob` 
    * in group `admins`
    * with uid `1234`
    * with home of `/var/lib/example`
* Install the following packages:
    * vim
    * emacs
    * nano
