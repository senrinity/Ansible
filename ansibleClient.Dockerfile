FROM ubuntu
RUN apt update
RUN apt install software-properties-common -y

RUN apt install -y openssh-server -y
RUN mkdir /var/run/sshd

#Создадим юзера
RUN useradd -m -d /home/daniil daniil && echo 'daniil:Ghjcnjnfr1' | chpasswd

CMD ["/usr/sbin/sshd", "-D"]