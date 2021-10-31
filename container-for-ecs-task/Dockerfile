FROM python

# Setup AWS cli
RUN pip3 install awscli

# Setup app
COPY . .

CMD [ "bash", "app.sh" ]
