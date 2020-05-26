# Build 
# This will copy the built resources to the build director ./dist. 
# Run `sh ./build.sh`

# clear the build dir
echo "Clean ./dist"
rm -rf ./dist
mkdir ./dist

# build server
echo "Build Server"
cd ./server
pwd
pub get
cd ..

# build app
echo "Build Client"
cd ./client
pwd
flutter build web
cd ..


# Build server in the ./dist directory
# Copy the server resources (dart web server)
echo "Copy Resources to ./dist"
cp -R ./server/* ./dist
# Copy the client resources (flutter app)
cp -R ./client/build/web/* ./dist/html
