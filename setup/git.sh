# set up git using git config
echo "Type in your full name"
read name

echo "Type in your email address" 
read email

echo "Type in your username" 
read user

git config --global user.name "$name"
git config --global user.email "$email"
git config --global github.user "$user"

# generate ssh key
ssh-keygen -t rsa -f ~/.ssh/id_rsa -N "" -q
pbcopy < ~/.ssh/id_rsa.pub
