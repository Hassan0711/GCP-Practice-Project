export IMAGE_FAMILY="tf-latest-cu92"
export ZONE="us-west1-b"
export INSTANCE_NAME="kwame-instance"
export INSTANCE_TYPE="n1-standard-8"
gcloud compute instances create $INSTANCE_NAME \
        --zone=$ZONE \
        --image-family=$IMAGE_FAMILY \
        --maintenance-policy=TERMINATE \
        --accelerator="type=nvidia-tesla-v100,count=8" \
        --machine-type=$INSTANCE_TYPE \
        --boot-disk-size=120GB \
        --metadata="install-nvidia-driver=True"

#List  instances
gcloud compute instances list

#View instance status 
gcloud compute instances describe $INSTANCE_NAME

#Access new instance
gcloud compute ssh $INSTANCE_NAME

#Stop instance
gcloud compute instances stop $INSTANCE_NAME
