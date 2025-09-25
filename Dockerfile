# Usa a imagem oficial do n8n como base
FROM n8nio/n8n:latest

# Instala Redis e WaHA (ajuste se WaHA tiver imagem própria)
RUN apt-get update && apt-get install -y redis-server && \
    curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    npm install -g waha  # Instala WaHA globalmente (confirme se é assim)

# Copia o start.sh
COPY start.sh /app/start.sh
RUN chmod +x /app/start.sh

# Expõe as portas
EXPOSE 5678 3000 6379

# Inicia com o script
CMD ["/app/start.sh"]
