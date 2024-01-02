FROM rockylinux:9.3
LABEL maintainer="mike.kinney@gmail.com"
RUN dnf install -y wget rpmdevtools rpmlint
RUN dnf groupinstall -y "RPM Development Tools"
RUN wget https://go.dev/dl/go1.21.5.linux-amd64.tar.gz
RUN tar -C /usr/local -xzf go1.21.5.linux-amd64.tar.gz
WORKDIR /root
RUN rpmdev-setuptree
COPY snet.spec /root/rpmbuild/SPECS/
RUN wget https://github.com/mkinney/snet/archive/refs/tags/v0.4.tar.gz
RUN mv v0.4.tar.gz /root/rpmbuild/SOURCES/snet-0.4.tar.gz
RUN rpmbuild -bb /root/rpmbuild/SPECS/snet.spec
