# EmberChat

### In development
* rails api
* ember client

### About
##### This is an attempt at getting something up and running to structure future applications with

#### Coming Next
* A way to template future applications
* Figure what needs to be bootstrapped to set up a simple dev env using vagrant
 * Doing this will help figure out what server configuration this type of app will require



#### Additional Notes
* I feel this is the almost any app should be structure (separating front-end from back-end)
* This will
 * Make for easier testing
 * Faster debugging

### Setting up dev environment
* Requirements
 * Ruby
 * Vagrant
 * Virtual Machine
 * Git
* Fork and clone

```sh
$ cd /path/to/EmberChat
$ vagrant up
$ vagrant ssh
# In  a future version this will be provisioned by vagrant
$ sudo apt-get update
$ sudo apt-get install -y npm
$ sudo npm install -g n
$ sudo npm install -g ember-cli
# $ sudo npm install bower
$ sudo n stable
# Open two terminal tabs or windows
# In the first:
$ cd /srv/emberchat.com
# This can be done outside of vagrant
$ sudo npm install && sudo bower install
$ ember serve
# you can now find the ember here: http://33.33.33.100:4200/

# In the second:
$ cd /srv/api.emberchat.com
$ bundle
$ bundle exec rails generate rspec:install
$ bundle exec rails generate active_admin:install
$ bundle exec spring binstub --all
$ bundle exec rake db:create db:migrate
$ rails s -b0.0.0.0
# you can now find the ember here: http://33.33.33.100:3000/
```
