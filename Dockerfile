FROM n8nio/n8n:ai-beta

ARG PGPASSWORD
ARG PGHOST
ARG PGPORT
ARG PGDATABASE
ARG PGUSER

ENV DB_TYPE=postgresdb
ENV DB_POSTGRESDB_DATABASE=$PGDATABASE
ENV DB_POSTGRESDB_HOST=$PGHOST
ENV DB_POSTGRESDB_PORT=$PGPORT
ENV DB_POSTGRESDB_USER=$PGUSER
ENV DB_POSTGRESDB_PASSWORD=$PGPASSWORD
ENV N8N_USER_FOLDER=$RAILWAY_VOLUME_MOUNT_PATH

ENV N8N_PROTOCOL=https
ENV N8N_HOST=n8n-production-1193.up.railway.app
ENV WEBHOOK_URL=https://n8n-production-1193.up.railway.app
ENV WEBHOOK_TUNNEL_URL=https://n8n-production-1193.up.railway.app
ENV VUE_APP_URL_BASE_API=https://n8n-production-1193.up.railway.app/

ENV N8N_ENCRYPTION_KEY=aTbRPyiqxI



CMD ["n8n", "start"]
