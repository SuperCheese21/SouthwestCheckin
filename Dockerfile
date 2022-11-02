FROM python:3.7
WORKDIR /usr/src/app

COPY requirements.txt ./
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

ENTRYPOINT ["sh", "-c", "./entrypoint.sh $CONFIRMATION_CODE $FIRST_NAME $LAST_NAME"]
