build snet as rpm

https://github.com/mkinney/snet

using: https://www.redhat.com/sysadmin/create-rpm-package as a guide

# TODO: should prob switch snet over to semvar
# TODO: replace hardcoded versions with variables
# TODO: publish rpm

make
make test

docker run -it mkinney:snet_rpm_test
rpm -qa snet
