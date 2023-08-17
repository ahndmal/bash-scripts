##  Heroku
# sudo snap install --classic heroku
# curl https://cli-assets.heroku.com/install.sh | sh

# GCLOUD
curl -O https://dl.google.com/dl/cloudsdk/channels/rapid/downloads/google-cloud-sdk-359.0.0-linux-x86_64.tar.gz
tar -xvzf google-cloud-sdk-359.0.0-linux-x86_64.tar.gz
./google-cloud-sdk/install.sh -y
./google-cloud-sdk/bin/gcloud init

# AWS
# https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install

# 
