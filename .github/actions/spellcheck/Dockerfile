FROM python:3.7

LABEL "com.github.actions.name"="Spellcheck Action"
LABEL "com.github.actions.description"="Check spelling of files in repository"
LABEL "com.github.actions.icon"="mic"
LABEL "com.github.actions.color"="purple"

LABEL "repository"="https://github.com/DK-Hostmaster/DKHM-RFC-Delete-Domain"

RUN apt-get update && apt-get install -y \
    aspell \
 && rm -rf /var/lib/apt/lists/*
RUN pip3 install pyspelling
COPY entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

WORKDIR /tmp

ENTRYPOINT ["/entrypoint.sh"]
