#yumアップデート
sudo yum update -y

#ロケール設定
cp -p /etc/localtime /etc/localtime.org
ln -sf /usr/share/zoneinfo/Asia/Tokyo /etc/localtime

#スワップ領域を追加
sudo fallocate -l 1024M /swapfile
sudo chmod 600 /swapfile

#スワップの作成と有効化
sudo mkswap /swapfile
sudo swapon /swapfile

#確認
free

#ユーザーの作成
sudo useradd username -g groupname
passwd username

#ssh接続
su username
mkdir .ssh
chmod 700 .ssh
vi .ssh/authorized_keys
chmod 400 .ssh/authorized_keys


