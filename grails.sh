#! /bin/bash

if [[ "$(docker images -q bwagner/grails 2> /dev/null)" == "" ]]; then
  docker build -t bwagner/grails .
fi

docker run -it -v `pwd`/grailsApp:/app --rm bwagner/grails "$@"
