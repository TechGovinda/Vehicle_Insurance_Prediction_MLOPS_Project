# use an official python 3.10 image from docker Hub

from python:3.10-slim-buster

# set the working directory 
WORKDIR /app

#  copy your application
COPY . /app

# install the dependencies
RUN pip install -r requirements.txt

# command to run the FASTAPI app
# CMD ["python3", "app.py"]

# Expose the port FASTAPI will run on
EXPOSE 5000

# command to run the FASTAPI app
CMD ["python3", "app.py"]
# CMD ["unicorn","app:app", "--host","0.0.0.0", "--port","80000"]

