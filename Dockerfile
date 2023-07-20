FROM python:3.3


RUN 'pip install --upgrade pip'


COPY . .


RUN python manage.py migrate


CMD ["python","manage.py","runserver","0.0.0.0:8005"]
