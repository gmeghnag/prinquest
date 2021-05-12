FROM python:3.6-alpine
RUN pip install flask
EXPOSE 8080
USER root
COPY . /prinquest
RUN chgrp -R 0 /prinquest \
    && chmod -R g=u /prinquest
USER 1001
WORKDIR /prinquest

ENTRYPOINT ["python"]
CMD ["app/app.py"]
