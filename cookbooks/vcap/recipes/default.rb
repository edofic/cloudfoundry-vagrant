package "openssh-server" do
  action :install
end

package "curl" do
  action :install
end

execute "install vcap" do
  command "curl -s -k -B https://raw.github.com/cloudfoundry/vcap/master/dev_setup/bin/vcap_dev_setup -D #{node[:vcap][:domain]} | bash -s --"
end


execute "run vcap" do
  command "~/cloudfoundry/vcap/dev_setup/bin/vcap_dev start"
end