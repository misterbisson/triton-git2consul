FROM node:4-slim

RUN apt-get update \
    && apt-get install -y \
        curl \
        git \
        less \
    && rm -rf /var/lib/apt/lists/*

RUN npm install --global \
		git2consul \
		json \
	&& rm -rf /tmp/*

EXPOSE 5050/tcp

COPY /entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["git2consul"]
