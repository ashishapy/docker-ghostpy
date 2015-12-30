# Build from the ghostpy
FROM ashishapy/ghostpy:0.7.4_2

MAINTAINER Ashish Pandey <ashish@ashishapy.com>

# Add in better default config adapted from https://github.com/kitematic/ghost.git
ADD config.example.js config.example.js

# Fix ownership in src
RUN chown -R user $GHOST_SOURCE/content

# Default environment variables
ENV GHOST_URL http://my-ghost-blog.com
