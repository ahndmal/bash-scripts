#echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] 
#https://pkg.cloudflare.com/ 20.04 main' |
#sudo tee /etc/apt/sources.list.d/cloudflare-main.list

wget https://github.com/cloudflare/cloudflared/releases/latest/download/cloudflared-linux-amd64.deb

echo 'deb [signed-by=/usr/share/keyrings/cloudflare-main.gpg] https://pkg.cloudflare.com/ focal main' |
sudo tee /etc/apt/sources.list.d/cloudflare-main.list

sudo curl https://pkg.cloudflare.com/cloudflare-main.gpg -o /usr/share/keyrings/cloudflare-main.gpg

sudo apt-get update
