echo "==== starting installations..."
echo date +"%d/%m/%Y - %H:%M:%S"

curl --compressed -o- -L https://yarnpkg.com/install.sh | bash

curl https://github.com/AndriiMaliuta/bash-scripts

chmod -R +x .



