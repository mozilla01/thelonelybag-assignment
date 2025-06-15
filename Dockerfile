FROM python:3.13
WORKDIR /data

COPY requirements.txt ./
COPY thelonelybag ./thelonelybag
COPY manage.py ./
COPY templates ./templates

RUN chmod -R 777 /data
RUN pip install -r requirements.txt

EXPOSE 8000

RUN useradd app
USER app

CMD ["python", "manage.py", "runserver", "0.0.0.0:8000"]
