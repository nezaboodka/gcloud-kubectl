FROM google/cloud-sdk:alpine

RUN apk --update add gettext

RUN gcloud components install kubectl \
    && rm -rf /google-cloud-sdk/.install/.backup \
    #  remove old versions of kubectl
    && rm -f /google-cloud-sdk/bin/kubectl.*

RUN gcloud auth configure-docker

CMD [ "/bin/bash" ]
