FROM debian:stable-slim
RUN apt update && apt install -y gawk bat vim nano jed jove tmux entr
RUN dpkg-divert --package batcat --add --rename --divert /usr/bin/bat /usr/bin/batcat

# enable nano's syntax highlighting (a little overboard, I know)
RUN find /usr/share/nano/ -iname "*.nanorc" -exec echo include {} \; >> ~/.nanorc

# not necessary because jove seems to do this on its own
#RUN dpkg-divert --package jove --add --rename --divert /usr/bin/emacs /usr/bin/jove

COPY awkrepl /bin
RUN chmod a+x /bin/awkrepl
COPY examples.awk /root/.repl.awk
CMD awkrepl
