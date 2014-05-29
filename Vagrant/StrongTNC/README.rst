StrongTNC Test VM
=================

This test VM is automatically configured and provisioned.

Requirements
------------

- vagrant
- virtualbox
- ansible

Deploying
---------

To deploy the test VM using the default database (SQLite)::

    $ vagrant up

If you want to use MySQL, set the `DATABASE` env variable::

    $ DATABASE=mysql vagrant up

If the VM already exists and you want to re-run the provisioning script::

    $ DATABASE=mysql vagrant provision 
