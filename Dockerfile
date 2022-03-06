FROM python:3.7
RUN pip3 install 'apache-airflow'
RUN airflow db init
CMD (airflow scheduler &) && airflow webserver 