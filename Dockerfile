FROM python:3
ENV PYTHONUNBUFFERED 1
RUN mkdir /app
WORKDIR /app
COPY requirements.txt /app
RUN pip install --upgrade pip
RUN pip install -r requirements.txt --no-cache-dir
COPY . /app
#RUN cd /app && pip install .
EXPOSE 5000
CMD [ "python", "app.py" ]