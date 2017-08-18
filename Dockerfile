FROM openjdk:8-jre

# set maintainer
LABEL maintainer "fetigue@localhost.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://34.202.229.37:80 || exit 1

# tell docker what port to expose
EXPOSE 80
