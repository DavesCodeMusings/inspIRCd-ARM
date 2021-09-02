#!/bin/bash
docker run -d \
  --name inspIRCd \
  --hostname inspircd \
  --publish 6667:6667 \
  davescodemusings/inspircd
