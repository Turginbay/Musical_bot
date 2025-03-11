# Python 3.10 бейнесін қолданамыз
FROM python:3.10

# Жұмыс директориясын құрамыз
WORKDIR /app

# Қажетті файлдарды контейнерге көшіреміз
COPY requirements.txt /app/requirements.txt
COPY bot.py /app/bot.py

# Егер keep_alive.py файлы қажет болса, оны да көшіреміз
COPY keep_alive.py /app/keep_alive.py

# Python тәуелділіктерін орнатамыз
RUN pip install --no-cache-dir -r /app/requirements.txt

# Ботты іске қосу
CMD ["python", "/app/bot.py"]
