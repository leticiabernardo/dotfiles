echo "Type in your full name"
read username

echo "Type in your email address" 
read email

git config --global user.name $username
git config --global user.email $email
