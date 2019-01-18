cd /Users/chasecook/Documents/work_stuff/browsermob-proxy
mvn install:install-file -Dfile=/Users/chasecook/Desktop/littleproxy-1.1.0-beta-bmp-17-sources/target/littleproxy-1.1.0-beta-bmp-17.jar -DgroupId=net.lightbody.bmp -DartifactId=littleproxy -Dversion=1.1.0-beta-bmp-17 -Dpackaging=jar


cd browsermob-core 
mvn install:install-file -Dfile=/Users/chasecook/Desktop/littleproxy-1.1.0-beta-bmp-17-sources/target/littleproxy-1.1.0-beta-bmp-17.jar -DgroupId=net.lightbody.bmp -DartifactId=littleproxy -Dversion=1.1.0-beta-bmp-17 -Dpackaging=jar

cd ../mitm
mvn install:install-file -Dfile=/Users/chasecook/Desktop/littleproxy-1.1.0-beta-bmp-17-sources/target/littleproxy-1.1.0-beta-bmp-17.jar -DgroupId=net.lightbody.bmp -DartifactId=littleproxy -Dversion=1.1.0-beta-bmp-17 -Dpackaging=jar

cd /Users/chasecook/Documents/work_stuff/browsermob-proxy

# rebuild bmp
mvn -DskipTests

# start bmp
java -jar browsermob-dist/target/browsermob-dist-2.1.6-SNAPSHOT.jar
