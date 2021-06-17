# InitialSetting
EC2 initial setting

## ADD USER AND GROUP

```
groupadd xxxx
```  

```
useradd username -g xxxx
```  

## SET TIMEZONE AND LANG

```
sudo timedatectl set-timezone Asia/Tokyo
```  

```
sudo localectl set-locale LANG=ja_JP.utf-8
```

```
sudo systemctl restart crond.service
```  
## RESTART CRON

```
sudo systemctl restart crond.service
```



