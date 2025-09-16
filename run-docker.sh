docker run \
   --name zigbee2mqtt \
   --restart=unless-stopped \
   --device=/dev/serial/by-id/usb-Texas_Instruments_TI_CC2531_USB_CDC___0X00124B0018ED3DDF-if00:/dev/ttyACM0 \
   -p 8080:8080 \
   -v $(pwd)/data:/app/data \
   -v /run/udev:/run/udev:ro \
   -e TZ=Europe/Paris \
   ghcr.io/koenkk/zigbee2mqtt
