FROM python:3.11-slim

WORKDIR /app

COPY requirements.txt ./

RUN pip install --no-cache-dir -r requirements.txt

COPY app.py .
COPY main_app_logic.cpython-311-x86_64-linux-gnu.so .

EXPOSE 8501

CMD ["streamlit", "run", "app.py"]
