FROM ollama/ollama:latest
ARG MODEL_NAME=llama3.1

COPY install-model.sh /tmp/install-model.sh
RUN /tmp/install-model.sh ${MODEL_NAME}

EXPOSE 11434