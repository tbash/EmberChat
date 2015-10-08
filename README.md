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
 * [Ruby](https://www.ruby-lang.org/en/)
 * Bundler
  * `$ gem install bundler`
 * [Rails](http://guides.rubyonrails.org/)
 * [Vagrant](https://www.vagrantup.com/)
 * [VirtualBox](https://www.virtualbox.org/wiki/Downloads)
 * [Git](http://git-scm.com/)
 * [Node.js](http://nodejs.org/) (with NPM)
 * [Bower](http://bower.io/)
 * [Ember CLI](http://www.ember-cli.com/)
 * [PhantomJS](http://phantomjs.org/)
* Fork and clone

```sh
$ cd /path/to/EmberChat
# Open two terminal tabs or windows
# In the first:
$ cd emberchat.com
$ npm install && bower install
$ ember serve
# you can now find the ember side here: http://localhost:4200/

# In the second:
$ vagrant up
$ vagrant ssh
$ cd /srv/api.emberchat.com
$ bundle
$ rake db:setup db:migrate
$ rails s
# you can now find the rails side here: http://33.33.33.100:3000/admin
# log in with username: admin@tbash.co password: password
# you can now find the rails routes/docs here: http://33.33.33.100:3000/documentation
```
