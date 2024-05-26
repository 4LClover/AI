FROM python:3.9-slim
COPY . /app
COPY requirements.txt requirements.txt							
RUN pip install -r requirements.txt				
WORKDIR /app
CMD ["python", "-m", "flask", "run", "--host=0.0.0.0"]