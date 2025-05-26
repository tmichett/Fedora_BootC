FROM quay.io/fedora/fedora-bootc:42
ADD Packages.txt /tmp/Packages.txt 
ADD *.repo /etc/yum.repos.d/
RUN dnf install -y $(cat /tmp/Packages.txt) --skip-unavailable && dnf clean all
