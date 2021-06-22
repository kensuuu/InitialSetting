#! /bin/bash
#######################################
# check process
# check memory usage
#######################################
PROCESS_NAME=process_name

function is_process_alive() {
	count = `ps awux | grep -v grep | grep -w $PROCESS_NAME | wc -l`
	if [[ $count -eq 0 ]]; then
		echo 0
	else
		echo 1
	fi
}

#instance config
readonly INSTANCE_ID='your_instance_id'
readonly REGION='your_instance_region'

#process count
PROCESS_COUNT=`is_process_alive $@`

USEDMEMORY=$(free -m | awk 'NR==2{printf "%.2f\t", $3*100/$2 }')

aws cloudwatch put-metric-data --metric-name memory-usage --region $REGION --dimensions Instance=$INSTANCE_ID --namespace "MEMORY USAGE" --value $USEDMEMORY
