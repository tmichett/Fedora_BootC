FROM quay.io/fedora/fedora-bootc:41
RUN dnf install -y httpd firewalld && dnf clean all
