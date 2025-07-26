FROM quay.io/fedora/fedora-bootc:42
ADD Packages.txt /tmp/Packages.txt 
ADD *.repo /etc/yum.repos.d/
RUN dnf install -y \
  https://mirrors.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm \
  https://mirrors.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm
RUN dnf install -y $(cat /tmp/Packages.txt) && dnf clean all
#RUN dnf install -y $(cat /tmp/Packages.txt) --skip-unavailable && dnf clean all
