FROM n8nio/n8n:latest

# Workflow file ko n8n ke default directory mein copy karne ke liye
COPY workflow.json /etc/n8n/templates/workflow.json

# Environment variables jo boot hote hi workflow auto-load karenge
ENV N8N_ENFORCE_SETTINGS_FILE_PERMISSIONS=true
ENV N8N_FLOWS_TO_LOAD_ON_BOOT=/etc/n8n/templates/workflow.json
