# Build from the ghostpy
ENV GHOSTPY_VERSION 0.7.4_2

FROM ashishapy/ghostpy:${GHOSTPY_VERSION}

MAINTAINER Ashish Pandey <ashish@ashishapy.com>

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://my-ghost-blog.com
