# Watering-App
App to receive data from a pico device that waters plants.

## Installing ruby and ruby on rails
- sudo apt-get install libyaml-dev
- git clone https://github.com/rbenv/rbenv.git ~/.rbenv
- echo 'eval "$(~/.rbenv/bin/rbenv init - bash)"' >> ~/.bashrc
- reload terminal
- git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
- git -C "$(rbenv root)"/plugins/ruby-build pull
- rbenv install 3.2.0
- rbenv global 3.2.0
- gem install bundler
- gem env home
- gem install rails -v 7.0.6
