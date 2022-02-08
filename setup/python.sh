# Set python3 as default
alias python=$(which python3)

# Install pip and pip dependencies
if [[ pip != "pip" ]]; then
    echo "Installing pip..."
    curl "https://bootstrap.pypa.io/get-pip.py" -o "get-pip.py"
    python get-pip.py
fi

# Set pip3 as default
port select --set pip pip3

# Install and upgrade pip packages
pip install --upgrade setuptools
pip install --upgrade pip

pip install pandas
pip install virtualenv
pip install awscli
pip install numpy
pip install requests
pip install pytest
