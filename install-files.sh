[[ -z "$1" ]] && echo "Please specify build version, e.g., 9.0.30" && exit 1

[[ ! -d output/embed ]] && echo "You must first run deploy and embed ant tasks" && exit 1

# no classifier
mvn install:install-file -Dfile=output/embed/tomcat-embed-core.jar -Dsources=output/embed-src-jars/tomcat-embed-core-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-core -Dversion="$1" -Dpackaging=jar
mvn install:install-file -Dfile=output/embed/tomcat-embed-el.jar -Dsources=output/embed-src-jars/tomcat-embed-el-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-el -Dversion="$1" -Dpackaging=jar
mvn install:install-file -Dfile=output/embed/tomcat-embed-jasper.jar -Dsources=output/embed-src-jars/tomcat-embed-jasper-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-jasper -Dversion="$1" -Dpackaging=jar
mvn install:install-file -Dfile=output/embed/tomcat-embed-websocket.jar -Dsources=output/embed-src-jars/tomcat-embed-websocket-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-websocket -Dversion="$1" -Dpackaging=jar

# with loom classifier
#mvn install:install-file -Dfile=output/embed/tomcat-embed-core.jar -Dsources=output/embed-src-jars/tomcat-embed-core-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-core -Dversion="$1" -Dpackaging=jar -Dclassifier=loom
#mvn install:install-file -Dfile=output/embed/tomcat-embed-el.jar -Dsources=output/embed-src-jars/tomcat-embed-el-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-el -Dversion="$1" -Dpackaging=jar -Dclassifier=loom
#mvn install:install-file -Dfile=output/embed/tomcat-embed-jasper.jar -Dsources=output/embed-src-jars/tomcat-embed-jasper-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-jasper -Dversion="$1" -Dpackaging=jar -Dclassifier=loom
#mvn install:install-file -Dfile=output/embed/tomcat-embed-websocket.jar -Dsources=output/embed-src-jars/tomcat-embed-websocket-src.jar -DgroupId=org.apache.tomcat.embed -DartifactId=tomcat-embed-websocket -Dversion="$1" -Dpackaging=jar -Dclassifier=loom