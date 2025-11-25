FROM n8nio/n8n:latest

EXPOSE 5678

ENV N8N_HOST=0.0.0.0

CMD ["n8n", "start"]
