from celery import Celery
from kombu import Queue, Exchange

app = Celery('sampletask')
app.config_from_object('celeryconfig')

@app.task
def add(x, y):
    #we're taking the example task you'd see first in celery docs.
    return x + y
