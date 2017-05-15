#!/usr/bin/env bash

# To get github ssh access
# to download the repo and run `run.sh`

VERSION=0.1.1
USAGE='Usage: ./run.sh -hv -e your.email@example.com '

#{
#  [[ "${BASH_SOURCE[0]}" != $0 ]] && echo "Setting up your dev box"
#} || {
#  echo "
#  Please run script as 'source'
#  ${USAGE}
#  "
#  exit 1
#}

# --- Option processing ---------------------------------------------
while getopts ":v:h:p:r:q:" o; do
  case "${o}" in
    v)
      echo "Version $VERSION"
      return 0;
      ;;
    h)
      echo $USAGE
      return 0;
      ;;
    e)
      EMAIL=$OPTARG
      ;;
    ?)
      echo "Unknown option $OPTARG"
      return 0;
      ;;
    :)
      echo "No argument value for option $OPTARG"
      return 0;
      ;;
    *)
      echo $USAGE
      echo "Unknown error while processing options"
      return 0;
      ;;
  esac
done

if [ ! ${EMAIL} ]
then
  echo ${USAGE}
fi

mkdir -p ~/.ssh
ssh-keygen -t rsa -b 4069 -f ~/.ssh/bs_id_rsa -q -N "" -C "$EMAIL"
sleep 1
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/bs_id_rsa

# Install git so we can `git clone` the repo after adding new ssh key
sudo apt-get install -y git

sleep 1
sudo apt-get install -yq xclip
xclip -sel clip < ~/.ssh/bs_id_rsa.pub

echo ""
echo "------------------"
echo "Now go to https://github.com/settings/keys and paste ~/.ssh/bs_id_rsa.pub into new ssh key"
echo ""
echo "If xclip was successful, may already have .pub in your clipboard ready to paste"
echo ""
