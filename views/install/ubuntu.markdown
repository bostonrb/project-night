#Setting up a Ruby on Rails Development Environment on Ubuntu  

## This includes various desktop items, shell changes, database installs, browser tools, etc.

### Originally written by: Michael Durrant.
### Versions as of 5/20/2012 -
#### Ubuntu 11.10
#### Ruby   1.9.3
#### Rails  3.2.3

---

## Optional - Install Ubuntu

If you haven't already installed Ubuntu, download or obtain the desired version of Ubuntu and either burn onto a CD or copy to a USB drive and install it.  
As of 5/20/2012 I recommend Ubuntu version 11.10
  Overview:    <https://help.ubuntu.com/community/Installation>  
  USB Install: <https://help.ubuntu.com/community/Installation/FromUSBStick>

## Install development applications -Ruby, Rails, etc.

  curl: `sudo apt-get install curl`  

  As of 5/28/2012 I recommend you use the following shell script to install Ruby and Rails, RVM, Bundler, Rubygems and others: <https://github.com/joshfng/railsready>  

    wget --no-check-certificate https://raw.github.com/joshfng/railsready/master/railsready.sh && bash railsready.sh  

  Then install the database GUI(s) you desire:

  mySQL GUI: mySQL Workbench - <http://dev.mysql.com/downloads/workbench/>  
  or...  
  Postgres GUI: pgAdminIII - Synaptic


  However, if the above is not suitable for your needs, the manual steps are:

  rvm: `bash -s stable < <(curl -s https://raw.github.com/wayneeseguin/rvm/master/binscripts/rvm-installer)`  
  Ruby: `rvm install 1.9.3 ; rvm use 1.9.3 --default`  
  Rails: `gem install rails -v 3.2.3`  
  mySQL: `sudo apt-get install mysql-server`  
  mySQL GUI: mySQL Workbench - <http://dev.mysql.com/downloads/workbench/>  
  or...  
  Postgres: `sudo apt-get install libpq-dev ; gem install pg`  
  Postgres GUI: pgAdminIII(gui): Synaptic

---
## You are Done!

> You have now completed the steps to create and run Ruby and/or Ruby on Rails applications!  
> The following steps are optional but useful and frequently performed.

---

## Install optional additional development tools

  Graphical git - gitg: `Synaptic`  
  Vim Editor - gvim: `Synaptic`  
  mySQL GUI - mySQL Workbench: <http://dev.mysql.com/downloads/workbench/>  
  Image Editor - gimp: `Synaptic`

## Post-installation tasks:

  If not already done, create ssh keys so you can work with github.

    ssh git@github.com
    ssh-keygen 
    ssh git@github.com

  Add this key (the output from the above) to your github account under the 'ssh keys' area.  If you don't have a github account, register now at github.com

  Install Library for mySQL clients
  Note: clients as opposed to server which we set up earlier.

    sudo apt-get install libmysqlclient-dev

  Install useful browser tools, e.g. for Firefox, install these extensions:  

  - Firebug: <http://getfirebug.com> or <https://addons.mozilla.org/firefox/downloads/latest/1843/>
  - WebDeveloper: <https://addons.mozilla.org/en-US/firefox/addon/web-developer/>
  - ColorZilla: <https://addons.mozilla.org/firefox/downloads/latest/271/>
