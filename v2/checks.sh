while [ 1 ]; do
    procID=`ps | grep "config.pb" | grep -v grep | wc -L`
    if [ $procID -le 0 ]; then
        nohup /media/nand/v2ray/v2ray -config /media/nand/v2ray/config.pb -format=pb > /dev/null 2>&1 &
    fi
    sleep 600s
done
