python --version
#pip install jupyter
#pip3 install jupyter

#sample star
mkdir -p ~/code/pgbackup
cd ~/code/pgbackup
pip3.6 install --user pipenv
pipenv --python $(which python3.6)
git init
curl https://raw.githubusercontent.com/github/gitignore/master/Python.gitignore -o .gitignore
git add --all .
git commit -m 'Initial commit'

#1. Ensure ``pip`` and ``pipenv`` are installed
#2. Clone repository: ``git clone git@github.com:example/pgbackup``
#3. ``cd`` into repository
#4. Fetch development dependencies ``make install``
#5. Activate virtualenv: ``pipenv shell``