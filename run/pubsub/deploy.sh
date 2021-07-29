gcloud run deploy pubsub-gevent \
--image=gcr.io/ptone-misc/pubsub-sample:gevent \
--timeout=300 \
--max-instances=800 \
--region=us-central1 \
--memory=1024Mi \
--allow-unauthenticated \
--set-env-vars SLEEP=2 \
--project=ptone-misc --async

gcloud run deploy pubsub-gunicorn \
--image=gcr.io/ptone-misc/pubsub-sample \
--timeout=300 \
--max-instances=800 \
--region=us-central1 \
--memory=1024Mi \
--allow-unauthenticated \
--set-env-vars SLEEP=2 \
--project=ptone-misc --async