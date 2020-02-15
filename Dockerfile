FROM google/cloud-sdk:alpine

RUN apk --update add gettext
RUN gcloud components install kubectl
RUN yes | \
    gcloud auth configure-docker

CMD [ "/bin/bash" ]
