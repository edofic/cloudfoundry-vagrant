
echo "View instructions at https://github.com/cloudfoundry/vcap"

echo "Installing Openssh-server"
sudo apt-get install openssh-server

echo "Installing curl"
sudo apt-get install curl

echo "Installing vcap. default domain will be vcap.me. Change if needed"
bash < <(curl -s -k -B https://raw.github.com/cloudfoundry/vcap/master/dev_setup/bin/vcap_dev_setup -D vcap.me)

echo "If Installation successful, run ~/cloudfoundry/vcap/dev_setup/bin/vcap_dev start"