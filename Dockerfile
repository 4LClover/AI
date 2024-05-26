FROM python:3.9-slim
COPY . /app
COPY requirements.txt requirements.txt							
RUN pip install -r requirements.txt				
WORKDIR /app
CMD ["python", "-m", "gunicorn", "-w", "4", "app:app"]