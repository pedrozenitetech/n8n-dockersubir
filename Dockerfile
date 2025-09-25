FROM n8nio/n8n:latest

# Instala Redis
RUN apt-get update && apt-get install -y redis-server

# Copia o start.sh
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Expõe portas
EXPOSE 5678 6379

# Inicia tudo
CMD ["/app/start.sh"]
