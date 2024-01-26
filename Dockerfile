FROM python:3.8-slim
RUN mkdir -p /app
COPY . /app/
WORKDIR /app/
RUN pip install -r requirements.txt
EXPOSE 8080
CMD ["foreign-language-timeline.py"]
ENTRYPOINT ["python"]
