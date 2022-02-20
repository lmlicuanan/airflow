#!/bin/bash
export AIRFLOW_HOME=/home/linolicuanan/airflow-medium
cd /home/linolicuanan/airflow-medium
conda activate /home/linolicuanan/miniconda3/envs/airflow-medium
nohup airflow scheduler >> scheduler.log &
nohup airflow webserver -p 8080 >> webserver.log &

# gsutil cp gs://airflow-2022-02-20/airflow-init.sh .