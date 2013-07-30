Ubuntu 12.04LTS

## requirements

    $ sudo apt-get update && sudo apt-get upgrade
    $ sudo cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime
    $ sudo apt-get install -y language-pack-ja curl libxml2-dev libxslt1-dev


### git

    $ sudo apt-get install -y python-software-properties
    $ sudo apt-add-repository ppa:git-core/ppa
    $ sudo apt-get update
    $ sudo sudo apt-get install -y git-core
    $ git --version
    git version 1.8.3.4 or something.

Actually, just running 

    $ sudo apt-get install git-core

will do, but latest git is recommended.


### Ruby2.0, Chef, and Berkshelf

install them as root.

    $ sudo su -
    # \curl -L https://get.rvm.io | bash -s stable --ruby
    # gem install --no-ri --no-rdoc chef
    # gem install --no-ri --no-rdoc berkshelf


## run Chef

    # git clone git@github.com:soplana/conf.git /opt/chef-repo
    # cd !$
    # berks install --path vendor/cookbooks

Then you can run chef-solo with a role you need to cook for.

    # chef-solo -c solo.rb -j ./roles/aerochat.json
    # chef-solo -c solo.rb -j ./roles/aerochat-node.json

