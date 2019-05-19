
# Ensure /tmp/strem exists 
if [ -d "/tmp/stream" ] 
then
 echo "/tmp/stream has already been created"
else
 mkdir /tmp/stream
 echo "Created /tmp/stream"
fi

# User could either call the 1) & 2) from two different terminal or call 3) from a single terminal  

# 1)
#LD_LIBRARY_PATH=/usr/local/lib mjpg_streamer -i "input_file.so -f /tmp/stream -n pic.jpg" -o "output_http.so -w /usr/local/www"

#2)
# raspistill --nopreview -w 640 -h 480 -q 5 -o /tmp/stream/pic.jpg -tl 100 -t 9999999 -th 0:0:0 & 

#3)
raspistill --nopreview -w 640 -h 480 -q 5 -o /tmp/stream/pic.jpg -tl 100 -t 9999999 -th 0:0:0 & LD_LIBRARY_PATH=/usr/local/lib mjpg_streamer -i "input_file.so -f /tmp/stream -n pic.jpg" -o "output_http.so -w /usr/local/www"
