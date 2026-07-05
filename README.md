# n8n-AI-Chatboat

An automated AI Agent workflow built on n8n integrated with OpenRouter (LLM) and Google Sheets for managing user queries, plans details, and filtering unanswered questions automatically.

---

## 🚀 Project Overview

This repository contains a production-ready **n8n workflow** designed to act as an intelligent customer support assistant. It uses an AI Agent equipped with memory and specific tools to interact with Google Sheets for fetching predefined answers and tracking unresolved queries.

### Key Features
* **AI Agent with Memory:** Uses OpenRouter to process natural language questions while remembering the conversation context.
* **Google Sheets Integration:** 
  * Reads **Plans** and **FAQs** sheets to answer user queries accurately.
  * Dynamically appends unresolved or **Unanswered** questions to a separate sheet for human review.
* **Smart Delay:** Includes a wait mechanism to manage execution pacing.

---

## 📁 Repository Structure

* `My workflow (1).json` - The exported n8n workflow configuration containing the AI Agent architecture.
* `Dockerfile` - Customized configuration to package n8n.
* `README.md` - Documentation and setup guide for the project.

---

## 🛠️ How to Run This Project Post-Trial (Self-Hosting)

If your n8n cloud trial expires or you want to host this workflow independently, you can easily run this entire setup locally or on a cloud server using Docker:
### 1. Clone the Repository 
```bash 
git clone https://github.com/CodewithHarshita24/n8n-AI-Chatboat.git
# Navigate into the project directory
cd n8n-AI-Chatboat
```

# Build the Docker image from the Dockerfile and tag it as 'n8n-ai-chatbot'
```bash
docker build -t n8n-ai-chatbot .
```

# Run the Docker container, exposing it on port 5678
```bash
docker run -it --rm --name n8n-chatbot -p 5678:5678 n8n-ai-chatbot
```

# Access the application by:
```bash
http://localhost:5678
```

