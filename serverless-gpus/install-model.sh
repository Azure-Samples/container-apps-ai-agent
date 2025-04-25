MODEL_NAME=$1

# start ollama and get process id
ollama serve &
PID=$(ps -ef | grep "ollama" | grep -v grep | awk '{print $2}')

# wait for ollama to start
sleep 10

# install model
ollama pull $MODEL_NAME

# stop ollama
kill $PID
