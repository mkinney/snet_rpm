build snet as rpm

using: https://www.redhat.com/sysadmin/create-rpm-package as a guide

# TODO: should prob switch snet over to semvar

# TODO: replace hardcoded versions with variables
# TODO: publish rpm

docker build -t mkinney/snet_rpm .
img_id=$(docker create mkinney:snet_rpm)
docker cp $img_id:/root/rpmbuild/RPMS/x86_64/snet-0.4-1.el9.x86_64.rpm .
