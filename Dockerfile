# 
FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

RUN python3 -m venv /code/venv

RUN . /code/venv/bin/activate

# 
RUN pip install --no-cache-dir --upgrade -r /code/requirements.txt

# 
COPY . /code

# 
CMD ["uvicorn", "main:api", "--host", "0.0.0.0", "--port", "80"]