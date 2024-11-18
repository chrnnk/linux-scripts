apt install lsb-release -y
wget https://packages.wazuh.com/4.x/apt/pool/main/w/wazuh-agent/wazuh-agent_4.9.2-1_amd64.deb && sudo WAZUH_MANAGER='wazuh.home.chrnnk.tv' dpkg -i ./wazuh-agent_4.9.2-1_amd64.deb
systemctl daemon-reload
systemctl enable wazuh-agent
systemctl start wazuh-agent
# nano /var/ossec/etc/ossec.conf
# <ossec_config>
#   <client>
#     <server>
#       <address>wazuh.home.chrnnk.tv</address>
