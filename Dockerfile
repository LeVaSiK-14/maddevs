FROM python:3.8
ENV PYTHONDONTWRITEBYTECODE 1
ENV PYTHONUNBUFFERED=1
WORKDIR /app
ADD ./requirements.txt /app/
RUN pip install --upgrade pip
RUN pip install -r /app/requirements.txt
ADD ./docker /app/docker
ADD ./ /app/
RUN ["chmod", "+x", "wsgi-entrypoint.sh"]
EXPOSE 8000