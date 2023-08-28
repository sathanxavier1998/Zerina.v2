if [ -z $UPSTREAM_REPO ]
then
  echo "Cloning main Repository"
  git clone https://github.com/sathanxavier1998/Zerina.v2.git /zerina.v2
else
  echo "Cloning Custom Repo from $UPSTREAM_REPO "
  git clone $UPSTREAM_REPO /zerina.v2
fi
cd /zerina.v2
pip3 install -U -r requirements.txt
echo "Starting Bot...."
python3 bot.py
