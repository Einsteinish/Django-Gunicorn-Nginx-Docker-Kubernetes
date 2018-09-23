# [START docker]
# create a virtualenv for the application dependencies.
# If you want to use Python 2, use the -p python2.7 flag.
RUN virtualenv -p python3 /env
ENV PATH /env/bin:$PATH

ADD requirements.txt /app/requirements.txt
RUN /env/bin/pip install --upgrade pip && /env/bin/pip install -r /app/requirements.txt
ADD . /app

CMD gunicorn -b :$PORT mysite.wsgi
# [END docker]

