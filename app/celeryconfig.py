import os
broker_url='amqp://safecv:safecv@10.200.1.152:5672//'
result_backend = 'rpc://'
enable_utc = True
task_acks_late=True
task_reject_on_worker_lost=True
worker_prefetch_multiplier=1
