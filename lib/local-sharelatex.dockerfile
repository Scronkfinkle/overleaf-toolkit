FROM sharelatex/sharelatex
RUN apt update && apt upgrade -y && apt install -y python3-pygments

ADD update-tlmgr-latest.sh /var/update-tlmgr-latest.sh
RUN /var/update-tlmgr-latest.sh
RUN echo  "shell_escape = t" >> /usr/local/texlive/2023/texmf.cnf
RUN tlmgr install biblatex
RUN tlmgr install minted
RUN tlmgr install csquotes
