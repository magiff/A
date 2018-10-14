#echo -e "$CONFIG_JSON" > config.json
#if [ "$CERT_PEM" != "$KEY_PEM" ]; then
#  echo -e "$CERT_PEM" > cert.pem
#  echo -e "$KEY_PEM"  > key.pem
#fi

cd /user/bin/v2ray
wget -O v2ray.zip http://github.com/v2ray/v2ray-core/releases/download/v$VER/v2ray-linux-64.zip
unzip v2ray.zip
rm -rf v2ray.zip

chmod +x v2ray v2ctl
./v2ray
