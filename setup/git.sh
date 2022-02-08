# Set up git using git config
echo "Type in your full name"
read name

echo "Type in your email address" 
read email

git config --global user.name "$name"
git config --global user.email "$email"

# Generate ssh key
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N "" -q
pbcopy < ~/.ssh/id_rsa.pub
