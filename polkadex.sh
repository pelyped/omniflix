#!/bin/bash

exists()
{
  command -v "$1" >/dev/null 2>&1
}
if exists curl; then
        echo ''
else
  sudo apt update && sudo apt install curl -y < "/dev/null"
fi
bash_profile=$HOME/.bash_profile
if [ -f "$bash_profile" ]; then
    . $HOME/.bash_profile
fi
sleep 1 && curl -s https://api.nodes.guru/logo.sh | bash && sleep 1
sudo apt update && sudo apt install jq -y
cd $HOME
#PULSAR_LATEST_TAG=$(curl -s https://api.github.com/repos/subspace/pulsar/tags | jq -r '.[0].name')
#wget -O pulsar https://github.com/subspace/pulsar/releases/download/$PULSAR_LATEST_TAG/pulsar-ubuntu-x86_64-v2-$PULSAR_LATEST_TAG
#sudo chmod +x pulsar
#sudo mv pulsar /usr/local/bin/
wget -O subspace-node https://github.com/subspace/subspace/releases/download/gemini-3h-2024-feb-20/subspace-node-ubuntu-x86_64-skylake-gemini-3h-2024-feb-20
wget -O subspace-farmer https://github.com/subspace/subspace/releases/download/gemini-3h-2024-feb-20/subspace-farmer-ubuntu-x86_64-skylake-gemini-3h-2024-feb-20
sudo chmod +x subspace-node subspace-farmer
sudo mv subspace-node /usr/local/bin/
sudo mv subspace-farmer /usr/local/bin/

sudo systemctl restart subspaced
sleep 20
sudo systemctl restart subspaced-farmer
echo -e '\n\e[42mYour Subspace node updated successfully\e[0m\n' && sleep 1
