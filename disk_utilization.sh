#! /bin/bash
disc_usage=$(df -h .| tail -1 | awk -F " " '{print $(NF-1)}' | sed 's/%//g')
if[disc_usage -gt 90]; then
echo "disck is full, Please action immeditely"| Mail -s "Disc is Full" -c admin@gmail.com
fi
