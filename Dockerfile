FROM debian:stable-slim
RUN apt update && apt install -y gawk bat vim tmux entr
RUN dpkg-divert --package batcat --add --rename --divert /usr/bin/bat /usr/bin/batcat
COPY awkrepl .
RUN touch ~/.awk.repl
RUN chmod a+x awkrepl
CMD ./awkrepl
