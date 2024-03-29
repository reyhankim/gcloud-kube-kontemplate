FROM google/cloud-sdk:latest

ENV GOROOT=/usr/lib/google-cloud-sdk/platform/google_appengine/goroot-1.9
ENV GOPATH=/usr/lib/google-cloud-sdk/platform/google_appengine/gopath
ENV PATH $PATH:$GOROOT/bin:$GOPATH/bin

RUN ln -s $GOROOT/bin/goapp /usr/local/bin/go && \
    go get -u github.com/golang/dep/cmd/dep

RUN go get github.com/tazjin/kontemplate/...