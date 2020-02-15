echo "Ingrese su nombre: " nombre
read nombre
echo "Ingrese su email: "
read email

git config --global color.ui true
git config --global user.name "$nombre"
git config --global user.email "$email"
ssh-keygen -t rsa -b 4096 -C "$email"
