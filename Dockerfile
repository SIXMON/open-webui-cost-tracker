FROM python:3.12-bullseye

WORKDIR /app
COPY streamlit_app.py /app/
COPY requirements.txt /app/

RUN pip install -r requirements.txt

CMD ["streamlit", "run", "streamlit_app.py",  "--server.port=8080", "browser.gatherUsageStats=false"]