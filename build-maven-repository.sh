rm -rf tmp
rm -rf dist
mkdir -p tmp
mkdir -p dist
cd tmp
curl https://github.com/spotify/android-streaming-sdk/archive/24-noconnect-2.20b.zip --output 24-noconnect-2.20b.zip
unzip 24-noconnect-2.20b
mv android-sdk-24-noconnect-2.20b/spotify-player-24-noconnect-2.20b.aar spotify-player-24-noconnect-2.20b.aar
cd ..
docker run -v ${PWD}:/host maven:3.5.4-alpine \
  mvn deploy:deploy-file \
  -Durl=file:///host/dist \
  -Dfile=/host/tmp/spotify-player-24-noconnect-2.20b.aar \
  -DgroupId=com.thirdparty \
  -DartifactId=spotify-player \
  -Dpackaging=aar \
  -Dversion=24
