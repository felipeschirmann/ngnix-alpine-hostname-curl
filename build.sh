color=$1
dockerid=$2
version=$3
machine=$(uname -m)

mkdir -p files/root/etc/nginx/conf.d/
sed 's/__COLOR__/'$color'/g' default.conf > files/root/etc/nginx/conf.d/default.conf
docker build . -t ngnix-alpine-curl-hostname-$color-$machine
rm files/root/etc/nginx/conf.d/default.conf
docker tag ngnix-alpine-curl-hostname-$color-$machine $dockerid/ngnix-alpine-curl-hostname-$color-$machine
docker tag ngnix-alpine-curl-hostname-$color-$machine $dockerid/ngnix-alpine-curl-hostname-$color-$machine:$version
docker push $dockerid/ngnix-alpine-curl-hostname-$color-$machine
docker push $dockerid/ngnix-alpine-curl-hostname-$color-$machine:$version