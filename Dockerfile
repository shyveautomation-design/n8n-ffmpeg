FROM mwader/static-ffmpeg:latest AS ffmpeg

FROM n8nio/n8n:latest

USER root
COPY --from=ffmpeg /ffmpeg /usr/local/bin/ffmpeg
COPY --from=ffmpeg /ffprobe /usr/local/bin/ffprobe
USER node
