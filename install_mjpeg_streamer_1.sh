sudo apt-get install libjpeg8-dev imagemagick libv4l-dev

sudo ln -s /usr/include/linux/videodev2.h /usr/include/linux/videodev.h

# Download mjpg streamer and copy to the current directory 
repo_dir=$(pwd)
wget "https://sourceforge.net/code-snapshots/svn/m/mj/mjpg-streamer/code/mjpg-streamer-code-r182.zip"
cd /home/pi/Downloads
cp mjpg-streamer-code-r182.zip $repo_dir
cd $repo_dir

# Unzip and make
mkdir mjpg
unzip mjpg-streamer-code-r182.zip -d mjpg
cd mjpg/mjpg-streamer-code-r182/mjpg-streamer
make mjpg_streamer input_file.so output_http.so

# Copy relevant file to usr/local
sudo cp mjpg_streamer /usr/local/bin
sudo cp output_http.so input_file.so /usr/local/lib/
$ sudo cp -R www /usr/local/www
mkdir /tmp/stream


