# Generate an ssh-key:
# ssh-keygen
#
# # Then put the public key up on Github:
# cat ~/.ssh/id_rsa.pub


sudo apt-get update

# Install essentials:

sudo apt-get install -y git curl zlib1g-dev subversion
sudo apt-get install -y openssl libreadline6-dev git-core zlib1g libssl-dev
sudo apt-get install -y libyaml-dev libsqlite3-dev sqlite3
sudo apt-get install -y libxml2-dev libxslt-dev
sudo apt-get install -y autoconf automake libtool bison
sudo apt-get install -y vim
sudo apt-get install -y zsh
sudo apt-get install -y network-manager

# Copy the output into the “Add SSH Key” section of your profile on GitHub.

# You’ll also want to copy the public key any other machines you want to use to access the Raspberry Pi, and paste it into:
# ~/.ssh/authorized_keys

# Now let’s get RVM installed:
curl -L https://get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm install 2.0.0

# Install Rails:

gem install rails
gem install bundler

# Rails needs a working Javascript.
# The easiest way to get that happening seems to be by installing Node.js,
# which is handy anyway if we want to do some CoffeeScript:

gem install execjs
wget http://nodejs.org/dist/v0.10.30/node-v0.10.30.tar.gz
tar xvzf node-v0.10.30.tar.gz
cd node-v0.10.30
./configure
make
sudo make install

# And install oh-my-zsh:

curl -L https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh | sh

# If the above doesn’t change your default shell, then try this:
# chsh -s /bin/zsh
