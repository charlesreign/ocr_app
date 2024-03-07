# 
FROM python:3.9

# work directory
WORKDIR /code

# dependencies
COPY ./requirements.txt /code/requirements.txt

# install dependencies
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# app files
COPY . /code

# running command
CMD ["uvicorn", "main:api", "--host", "0.0.0.0", "--port", "80"]