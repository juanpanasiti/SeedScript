read "Ingrese su nombre: " nombre
read "Ingrese su email: " email

git config --global color.ui true
git config --global user.name "$nombre"
git config --global user.email "$email"
ssh-keygen -t rsa -b 4096 -C "$email"
