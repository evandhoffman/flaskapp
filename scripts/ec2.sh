#!/bin/bash

# Usage: ec2.sh <app> <environment> <num_servers> <server_size>

APP=$1
ENV=$2
NUM_S=$3
INSTANCE_TYPE=$4

AMI_ID=ami-d05e75b8
KEYPAIR_NAME=eh201508
SECURITY_GROUP=sg-75b22212
SUBNET_ID=subnet-24dff853

# $ aws ec2 run-instances --image-id ami-xxxxxxxx --count 1 --instance-type t1.micro --key-name MyKeyPair --security-group-ids sg-xxxxxxxx --subnet-id subnet-xxxxxxxx


aws ec2 run-instances --image-id $AMI_ID --count $NUM_S --instance-type $INSTANCE_TYPE --key-name $KEYPAIR_NAME --security-group-ids $SECURITY_GROUP --subnet-id $SUBNET_ID
