sudo apt-get install libjpeg8-dev imagemagick libv4l-dev

sudo ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h

# Unzip and make
mkdir mjpg
unzip mjpg-streamer-code-r182.zip -d mjpg
cd mjpg/mjpg-streamer-code-r182/mjpg-streamer
make mjpg_streamer input_file.so output_http.so

# Copy relevant file to usr/local
sudo cp mjpg_streamer /usr/local/bin
sudo cp output_http.so input_file.so /usr/local/lib/
$ sudo cp -R www /usr/local/www



