while true; do
  TEXT=$(echo " `mpd.sh` | `cat /proc/loadavg | cut -c 1-14` | `free -m | awk '$1 ~ /^-/ {print $3}'` MB | `date +%k:%M`");
  xsetroot -name "$TEXT";
  sleep 3;
done;
