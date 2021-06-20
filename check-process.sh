#! /bin/bash

#監視プロセス名
PROCESS_NAME=name

#ログファイル
FILENAME=/var/log/log_name.log

#プロセス数をカウントする
count = `ps -ef | grep $PROCESS_NAME | grep -v grep | wc -l`

#カウントに応じて処理を分ける
if [ $count = 0 ]; then
	date "+%Y/%m/%d %H:%M:%S" >> $FILENAME
	echo "$PROCESS_NAME Down" >> $FILENAME
	#再起動の処理を入れる
	systemctl restart $PROCESS_NAME
	echo "PROCESS_NAME Restart" >> $FILENAME
else
	date "+%Y/%m/%d %H:%M:%S" >> $FILENAME
	echo "$PROCESS_NAME ALIVE" >> $FILENAME
fi

