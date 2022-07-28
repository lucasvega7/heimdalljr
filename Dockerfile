FROM python:3.9

# 
WORKDIR /code

# 
COPY ./requirements.txt /code/requirements.txt

# 
RUN pip install -r /code/requirements.txt

# 
COPY ./ /code/app

RUN cd /code/app

# 
CMD ["python", "-m", "uvicorn", "main:app"]
