# set python3 as default
alias python=$(which python3)

# install pip and pip dependencies
if [[ pip != "pip" ]]; then
    echo "Installing pip..."
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
    python get-pip.py
fi

port select --set pip pip3

pip install --upgrade setuptools
pip install --upgrade pip

pip install pandas
pip install virtualenv
pip install awscli
pip install numpy
pip install requests
pip install pytest
