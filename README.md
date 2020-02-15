# gcloud-kubectl-docker
`google/cloud-sdk:alpine` image with `kubectl` component

Dockerfile:
```
FROM google/cloud-sdk:alpine

RUN apk --update add gettext
RUN gcloud components install kubectl
RUN yes | \
    gcloud auth configure-docker

CMD [ "/bin/bash" ]

```
