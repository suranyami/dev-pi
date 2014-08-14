# Add Erlang Solutions to the apt-get sources.

sudo su -
echo "deb http://packages.erlang-solutions.com/debian wheezy contrib" >> /etc/apt/sources.list
exit

# Import the Erlang Solutions public key
wget http://packages.erlang-solutions.com/debian/erlang_solutions.asc
sudo apt-key add erlang_solutions.asc && rm erlang_solutions.asc

# Now, update the package database
sudo apt-get update

# Install erlang-mini
sudo apt-get install -y erlang-mini

# Then clone the Elixir source and build

git clone https://github.com/elixir-lang/elixir.git
cd elixir
make clean test
