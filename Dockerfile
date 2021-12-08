FROM python:3.8
ADD requirements.txt /
RUN pip install -r /requirements.txt
ADD dashboard.py /
ENV PYTHONUNBUFFERED=1
CMD [ "python", "./dashboard.py" ]
