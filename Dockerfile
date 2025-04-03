FROM eclipse-temurin:8-jdk-alpine

COPY . /sigidoc
WORKDIR /sigidoc

ENV ANT_OPTS=" \
  -Dinfo.aduna.platform.appdata.basedir=./webapps/openrdf-sesame/app_dir/ \
  -Dorg.eclipse.jetty.LEVEL=WARN"

CMD ["sw/ant/bin/ant", "-f", "local.build.xml"]
