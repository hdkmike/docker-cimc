FROM jlesage/baseimage-gui:debian-11

ENV APP_NAME="Cisco IMC"  \
    CIMC_PORT=443      \
    DISPLAY_WIDTH=1100   \
    DISPLAY_HEIGHT=800

RUN APP_ICON_URL=https://upload.wikimedia.org/wikipedia/commons/thumb/6/64/Cisco_logo.svg/320px-Cisco_logo.svg.png && \
    install_app_icon.sh "$APP_ICON_URL"

RUN apt-get update && \
    apt-get install -y wget icedtea-netx && \
    apt-get autoremove -y && \
    rm -rf /var/lib/apt/lists/*

RUN mkdir /app && \
    chown ${USER_ID}:${GROUP_ID} /app

COPY startapp.sh /startapp.sh

WORKDIR /app
