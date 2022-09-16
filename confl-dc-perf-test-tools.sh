

sudo apt-get update -y
sudo apt-get install -y openjdk-11-jre-headless

sudo apt-get -y update
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt-get install -y ./google-chrome-stable_current_amd64.deb

sudo apt-get -y update
sudo apt-get -y install python3.9-dev python3-pip virtualenv
sudo update-alternatives --install /usr/bin/python python /usr/bin/python3.9 1


# virtualenv venv -p /usr/bin/python
virtualenv venv -p python3
source venv/bin/activate
pip install -r requirements.txt #pip install -r requirements.txt

##### Use tools
source venv/bin/activate
cd app
bzt confluence.yml

## JMeter
#Navigate to dc-app-performance-toolkit/app folder and launch JMeter by 
cd dc-app-performance-toolkit/app
python util/jmeter/start_jmeter_ui.py --app confluence
#Common:
# ~/.bzt/jmeter-taurus/5.2.1/bin/jmeter
