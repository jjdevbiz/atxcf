from ubuntu:16.04

env repo https://github.com/transfix/atxcf.git
env SLACK_TOKEN ${TOKEN}

run apt-get update
run apt-get update
run apt-get install -y git python-pip python-dev libmysqlclient-dev

run pip install --upgrade pip
run pip install Flask==0.10.1
run pip install Flask-Cors==2.1.2
run pip install networkx==1.11
run pip install pyquery==1.2.11
run pip install requests==2.9.1
run pip install slackbot==0.3.0
run pip install filelock==2.0.5
run pip install peewee
run pip install krakenex
#run pip install coinmarketcap=1.2.1
run pip install coinmarketcap
#run pip install mysqldb==1.2.3
run pip install MySQL-python

run git clone https://github.com/transfix/atxcf.git

workdir atxcf
add bin/run.sh .

cmd sh run.sh
