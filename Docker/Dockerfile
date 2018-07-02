FROM kalilinux/kali-linux-docker 
RUN apt -y update
RUN apt -y upgrade
RUN apt install -y openssh-server
RUN apt install -y fail2ban
RUN apt install -y kali-linux
RUN apt install -y kali-linux-top10
RUN apt clean
RUN mkdir /run/sshd
RUN ssh-keygen -A
ADD ./sshd_config /etc/ssh/sshd_config
RUN echo root:JokesOnYou | chpasswd
RUN mkdir /root/.ssh
RUN touch /root/.ssh/authorized_keys
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDk+wOcxzl4anZMQZcqebDyO1pZ+H93QwnmCIWD1fytNH3aRXDr6vSfPab+3tg/buyj4yz36n6X9zGbQbx+GD0hC4FIYCjq851+BeruIgmQ8vRrpjjHkbi+kHc3fVFWPknrWKM3ZKzZOLSDZLin2dMAmckrSLSxJz4FYcRnkTb+q+MLv+Gc3eU8umzRJVlLd3BL7Vlfq1Yuq0tg4gVc/DA+eXoGgUBAOed5ZV4FRHWDT+Qn2vGO4aAMubwLc2FuJ7oXzxFVjfySPT+R60NGFFPzKauZZRggFVtqZuombpIMGErEU0AvTxp2WVULsKgBnuGbU/cVdVx8GtH12upThfDJ' >> /root/.ssh/authorized_keys
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQD1sIviGxpXehhhw+rG+aWXqQ1KZ6yCsXxWL5m6ZjIPVOQncS9axyW5CD8poolvlWyfb8jYZbPf+f1D8eUd8JqNMXvtOuDKFwDs94TuZ1SnD/JBWcoAO+G5TJD3XQEUokpSayXv1ZMtIYsERkXsDWpEKmYpAZFzWpPu9I1GJ7e6H8Drc3vmC19TV+P3Go+fVoMXaPEKoAknzFbbuG/7YnuMBIH1fyF3bjlCKizUUa3+lm2a3bL0PoctRVwZ6Hp4b/cZ6Sa4IGWjDYhTJHFNu6Ng4twlzkbirAzkfRpjMqjZ2SwGsQRiOqoiebJ+Sx2t4n3FBjwGr/o4gtOXXyxebmqbXnya3cFbSdvLIMrsvhUmpMVwHkn8vdQAll6WvHi6qXEprkBvUj3ic8XgNGFVuia5M/j/9SqwZaToZnX5oozw+eZHoxEB1mwd3avh0eWxbaRcRlgLIyxZoblRZc5pPdz+D74SsYkDFSHz1psiste0vmZdHACVAAmx0kOUGF/MrrJI25g3+DGAsgZwhPTpuFAcFfPCkhGQY/IjcunwuW0cx1Musw/MCP61eHUKPxcjTmaNlDl9ZxObEjd/hDbEnvRnnCB0gY1qgpgRt/4LT+GhCbcj6YHFjTz5KxBM+gIOSWxAEj6leCQ+nHhFrsh1hazCd3UywLfTVc97u+ZjBIkdtw==' >> /root/.ssh/authorized_keys
RUN useradd -m JosephKer
RUN usermod -s /bin/bash JosephKer
RUN mkdir /home/JosephKer/.ssh
RUN touch /home/JosephKer/.ssh/authorized_keys
RUN chmod 0644 /home/JosephKer/.ssh/authorized_keys 
RUN echo 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCkP46xIOFFW8hESHTEPAfXy0JxtnwiL0L/BCuRQidttESGGfrogkg24sQ3rZ+riu4GGpk66WqmsMt3E3/dfOX3/BM0RTo7P3ULj4Kaq3NWoKQbGfpaNMWSg6GoxKYtdHTnf+FUXXEfdz9tDRTlsdQPWsBWtP0yui2TM39R36IgD07B5lVn3S/zjwDPlhD4p7cMdSJMn75mz3l5f2y1ETwM+EjJWkDbKWm07QTuw+1mQWB8/OK34Cvdky7hQ9T/fkuv0xLZCpxWTXvzghKqkqScYXEyL03b/00tyOJae4SFwy+5dToVEBOaV4m59vpfPqAU06xwZacvesgkSaL0wVkL ' >> /home/JosephKer/.ssh/authorized_keys
RUN echo "" > /etc/motd
CMD service rsyslog start &&  service ssh start && service fail2ban start && tail -F /var/log/auth.log