# --- wget https://marketplace.atlassian.com/download/apps/1210993/version/42510

wget https://marketplace.atlassian.com/download/apps/1210993/version/900100100

echo "sdk downloaded"

tar -xvf atlassian-plugin-sdk-9.1.1.tar.gz  

cd atlassian-plugin-sdk-9.1.1.tar.gz && pwd >> ~/.profile

echo ">>> Atlassian SDK installed!"
