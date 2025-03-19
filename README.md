# Vehicle_Insurance_Prediction_MLOPS_Project

# 🚀 MLOps Project - End-to-End Machine Learning Pipeline

## 🔥 Overview

Welcome to my MLOps project! This repository demonstrates a production-ready machine learning pipeline with MLOps best practices, CI/CD integration, cloud deployment, and monitoring.

This project covers everything from data ingestion, processing, model training, and evaluation to cloud deployment using AWS and Docker. It ensures scalability, reliability, and automation at every step.

---

## 📌 Features

✅ Automated project setup with `template.py` ✅ Virtual environment management ✅ Data ingestion and preprocessing pipeline ✅ MongoDB Atlas for data storage ✅ Logging, exception handling, and notebooks for analysis ✅ Model training, evaluation, and versioning ✅ AWS S3 for model storage ✅ Dockerized deployment with GitHub Actions CI/CD ✅ EC2-based cloud hosting

---

## 📂 Project Structure

```
MLOps-Project/
│-- src/
│   ├── configuration/
│   ├── components/
│   ├── data_access/
│   ├── entity/
│   ├── pipelines/
│   ├── utils/
│-- notebook/
│-- static/
│-- templates/
│-- setup.py
│-- pyproject.toml
│-- requirements.txt
│-- Dockerfile
│-- .github/workflows/aws.yaml
│-- README.md
```

---

## ⚙️ Setup & Installation

### 1️⃣ Clone the Repository

```bash
git clone https://github.com/your-repo/mlops-project.git
cd mlops-project
```

### 2️⃣ Setup Virtual Environment & Install Dependencies

```bash
conda create -n vehicle python=3.10 -y
conda activate vehicle
pip install -r requirements.txt
```

### 3️⃣ Verify Package Installation

```bash
pip list
```

---

## 🗄️ MongoDB Atlas Setup

1️⃣ **Sign up** on [MongoDB Atlas](https://www.mongodb.com/atlas/database) 2️⃣ **Create a new project** and cluster (M0 - free tier) 3️⃣ **Setup database user** (username & password) 4️⃣ **Whitelist IP:** Add `0.0.0.0/0` for global access 5️⃣ **Get Connection String** from **Drivers** (Python 3.6+) 6️⃣ **Save & use** in your `.env` file

---

## 🛠️ Logging & Exception Handling

📌 Logger and exception handling implemented in `logger.py` and `exception.py`. These ensure robust error tracking and debugging during execution.

---

## 📊 Data Ingestion & Preprocessing

✅ Fetch data from MongoDB Atlas 📥 ✅ Convert JSON to Pandas DataFrame 🐼 ✅ Store processed data locally 🗄️ ✅ Implemented in `data_ingestion.py` & `data_preprocessing.py`

To connect to MongoDB, configure environment variables:

```bash
export MONGODB_URL="mongodb+srv://<username>:<password>@cluster.mongodb.net/"
echo $MONGODB_URL
```

---

## 🔍 Data Validation & Transformation

✅ Schema validation using `config.schema.yaml` ✅ Data cleaning & feature engineering ✅ Handled in `data_validation.py` and `data_transformation.py`

---

## 🤖 Model Training & Evaluation

✅ Uses `scikit-learn`, `XGBoost`, and `TensorFlow` ✅ Model training implemented in `model_trainer.py` ✅ Evaluation with a threshold score of `0.02` ✅ Model versioning handled using AWS S3

---

## ☁️ AWS Services Setup

### 1️⃣ IAM User & Credentials

- Create a new **IAM user** on AWS
- Attach **AdministratorAccess** policy
- Generate **Access Key & Secret Key**
- Set environment variables:

```bash
export AWS_ACCESS_KEY_ID="your-access-key"
export AWS_SECRET_ACCESS_KEY="your-secret-key"
echo $AWS_ACCESS_KEY_ID
```

### 2️⃣ S3 Storage

- Create an S3 bucket named **my-model-mlopsproj**
- Used for model storage and retrieval
- Configured in `aws_connection.py`

---

## 🚀 CI/CD Pipeline

✅ **GitHub Actions** configured in `.github/workflows/aws.yaml` ✅ **Dockerized deployment** for containerized execution ✅ **ECR (Elastic Container Registry) & EC2** hosting

### 1️⃣ Setup Docker & Push to AWS ECR

```bash
docker build -t vehicleproj .
docker tag vehicleproj:latest <ECR_REPO_URI>:latest
docker push <ECR_REPO_URI>:latest
```

### 2️⃣ Deploy on EC2

- Setup EC2 instance with **Ubuntu**
- Install **Docker** and connect to GitHub runner
- Configure inbound rules to expose **port 5080**

```bash
sudo apt-get update -y
sudo apt-get install docker.io -y
sudo usermod -aG docker ubuntu
docker run -p 5080:5080 <ECR_REPO_URI>:latest
```

🌍 **Access the deployed app at:** `http://<EC2-Public-IP>:5080`

---

## 🎯 Prediction Pipeline

✅ Web-based **Flask API** for real-time predictions ✅ Hosted using **Gunicorn** & **NGINX** ✅ Route: `/predict`

---

## 🛡️ Future Enhancements

🚀 Model monitoring & logging with **MLflow** 📊 🚀 AutoML implementation with **H2O.ai** 🤖 🚀 Deployment with **Kubernetes** for scalability ☁️

---

## 💡 Conclusion

This MLOps project streamlines the entire ML lifecycle, integrating **data engineering, model training, cloud deployment, and CI/CD** into a seamless workflow.

**🚀 Let’s innovate and scale AI solutions with MLOps!** 🔥

📩 Feel free to connect with me on www.linkedin.com/in/govinda-sah or explore my other projects! 😃


