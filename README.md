Role Name vagrant-virtualbox-setup
=========
This role is intended to handle some of the issues I have had with managing vagrant/virtualbox environments.  It should do the following:
* Add a service that runs on boot, statusing the vboxadd service and rebuilding it if it is hosed.  This allows the box to handle kernel upgrades.
* Check the vboxsf mounts that have been added, and add them to the fstab (again allowing reboots during the provision)
* Add an hourly cron that will email when a reboot is necessary (staged kernel)

Requirements
------------
This assumes that the basebox already has the VirtualBox Guest Additions installed.  It also adds the potential requirement that if the vboxsf mounts are changed that the box may need to be destroyed.  It depends on whether there are any collisions in the fstab.  Nonetheless, at this point in time, the role does not clean up non-existing vboxsf mounts from the fstab.

Role Variables
--------------
None

Dependencies
------------
None


Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: vagrant
      roles:
         - { role: biggsean.vagrant-virtualbox-setup }

License
-------

MIT

