sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_1_0
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_1_0
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_1_2
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_1_2
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_2_0
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_2_0
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_2_1
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_2_1
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_3_1
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_3_1
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_3_2
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_3_2
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_3_4
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_3_4
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_1
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_1
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_2
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_2
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_3
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_3
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_4
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_4
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_5
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_5
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_6
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_6
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_7
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_7
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_8
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_8
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_10
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_10
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_13
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_13
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_4_15
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_4_15
sleep 1
sudo -u casper /etc/casper/pull_casper_node_version.sh casper-test.conf 1_5_2
sleep 1
sudo -u casper /etc/casper/config_from_example.sh 1_5_2


sudo logrotate -f /etc/logrotate.d/casper-node
sudo systemctl start casper-node-launcher; sleep 2
systemctl status casper-node-launcher

echo "##########################################"
echo "Installation finished"
echo "Bond to the network"
echo "##########################################"
