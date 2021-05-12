FROM python:3.6-alpine
RUN pip install flask
EXPOSE 8080
COPY . /prinquest
WORKDIR /prinquest
ENTRYPOINT ["python"]
CMD ["app/app.py"]
