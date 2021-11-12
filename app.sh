
git clone https://github.com/u-masao/streamlit.git
cd streamlit
git remote add remote https://github.com/streamlit/streamlit.git
git checkout develop
git submodule update --init
git checkout -b feature/dummy

curl -fsSL https://deb.nodesource.com/setup_17.x | bash -
apt-get install -y nodejs
npm update npm
npm install -g yarn

cd lib
pipenv --python 3.8
pipenv shell

cd ..
echo make mini-devel
