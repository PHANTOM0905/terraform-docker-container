# Terraform Docker Container 🚀

This project provisions a simple **Docker container running Nginx** using **Terraform**.

## 📦 What It Does

- Pulls the latest **nginx** image from Docker Hub
- Creates a Docker container named `nginx-container`
- Maps container port `80` to host port `8000`
- You can view it at [http://localhost:8000](http://localhost:8000)

## 🛠️ Tools Used

- [Terraform](https://www.terraform.io/) (v1.12.1+)
- [Docker](https://www.docker.com/)
- [kreuzwerker/docker provider](https://registry.terraform.io/providers/kreuzwerker/docker/latest)

## 📁 File Structure

terraform-docker-container/
├── main.tf # Terraform configuration file
├── .gitignore # Ignore Terraform-specific files
└── README.md # Project overview (this file)


## ▶️ How to Run

1. Make sure Docker and Terraform are installed.
2. Clone the repo:
   ```bash
   git clone https://github.com/PHANTOM0905/terraform-docker-container.git
   cd terraform-docker-container

3. Initialize terraform 
    terraform init

4. Apply the configuration
    terraform apply

5. Open in browser
    http://localhost:8000
    
6. To remove container
    terraform destroy


