# Step-1
docker build -t flask-app .


docker run -p 5000:5000 flask-app
# Step 2
gcloud auth configure-docker

# Push to Container Registry 
docker tag flask-app gcr.io/gluestick-f3d1a/flask-app
docker push gcr.io/gluestick-f3d1a/flask-app

gcloud run deploy flask-app --image gcr.io/gluestick-f3d1a/flask-app --region us-central1


# Push to Artifact Registry 
docker tag demo-flask-app us-central1-docker.pkg.dev/udemy-mlops-395416/python-apps/demo-flask-app
docker push us-central1-docker.pkg.dev/udemy-mlops-395416/python-apps/demo-flask-app

gcloud run deploy demo-flask-app2 \
--image us-central1-docker.pkg.dev/udemy-mlops-395416/python-apps/demo-flask-app \
--region us-central1