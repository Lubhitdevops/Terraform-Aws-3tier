Here’s a **professional README.md** you can directly use for your GitHub repo with your Terraform 3-Tier project. I’ve included **License, Acknowledgment, Tools Used, and proper sections** in a clean, professional format.

---

# Terraform 3-Tier Architecture on AWS

This project provisions a **3-tier architecture** on **AWS** using **Terraform**.
It includes **VPC, Subnets, Internet Gateway, Route Tables, Security Groups, EC2 Instances, S3 Bucket, and an Application Load Balancer (ALB)** with target groups for high availability.

---

## 📌 Features

* **Custom VPC** with two subnets across availability zones.
* **Internet Gateway** and **Route Tables** for internet access.
* **Security Group** with HTTP (80) and SSH (22) rules.
* **Two EC2 Instances** acting as web servers with user-data bootstrap scripts.
* **Application Load Balancer (ALB)** with target groups distributing traffic.
* **S3 Bucket** for storage needs.
* **Outputs** load balancer DNS for easy access.

---

## 🏗️ Architecture Diagram (Conceptual)

```
              Internet
                  │
           ┌──────┴───────┐
           │   AWS ALB    │
           └──────┬───────┘
                  │
        ┌─────────┴─────────┐
        │                   │
   WebServer1           WebServer2
  (EC2 in Subnet1)     (EC2 in Subnet2)
        │                   │
   ┌────┴─────┐        ┌────┴─────┐
   │ Subnet 1 │        │ Subnet 2 │
   └──────────┘        └──────────┘
          \                /
           \              /
             └── VPC + IGW ┘
```

---

## 🚀 Getting Started

### ✅ Prerequisites

* [Terraform](https://developer.hashicorp.com/terraform/downloads) >= 1.0
* AWS CLI configured with valid credentials (`aws configure`)
* Basic knowledge of AWS networking

### ⚙️ Deployment Steps

1. Clone this repository:

   ```bash
   git clone https://github.com/yourusername/terraform-3tier-aws.git
   cd terraform-3tier-aws
   ```

2. Initialize Terraform:

   ```bash
   terraform init
   ```

3. Validate configuration:

   ```bash
   terraform validate
   ```

4. Plan infrastructure:

   ```bash
   terraform plan
   ```

5. Apply infrastructure:

   ```bash
   terraform apply -auto-approve
   ```

6. Get the Load Balancer DNS:

   ```bash
   terraform output loadbalancerdns
   ```

7. Open the Load Balancer DNS in browser to access the web application.

---

## 🛠️ Tools & Technologies Used

* **Terraform** – Infrastructure as Code (IaC)
* **AWS EC2** – Virtual servers for web hosting
* **AWS VPC, Subnets, IGW, Route Tables** – Networking setup
* **AWS ALB** – Load balancing for high availability
* **AWS S3** – Storage bucket
* **Linux (Amazon Linux 2)** – OS for EC2 instances

---

## 📂 Project Structure

```
terraform-3tier-aws/
│── main.tf           # Main Terraform configuration
│── variables.tf      # Input variables (customizable values)
│── outputs.tf        # Output values
│── userdata.sh       # Bootstrap script for webserver1
│── userdata1.sh      # Bootstrap script for webserver2
│── README.md         # Project Documentation
│── LICENSE           # MIT License
```

---

## 📜 License

This project is licensed under the **MIT License** – see the [LICENSE](./LICENSE) file for details.

---

## 🙏 Acknowledgments

* [HashiCorp Terraform Docs](https://developer.hashicorp.com/terraform/docs)
* [AWS Documentation](https://docs.aws.amazon.com/)
* Open-source community for inspiration and resources.

---

## 📧 Author

👤 **Lubhit Mawar**

* GitHub: [@yourusername](https://github.com/yourusername)
* LinkedIn: www.linkedin.com/in/lubhit-mawar-542171249


---

👉 Would you like me to also create a **`LICENSE` file (MIT)** and a **`variables.tf`/`outputs.tf`** template for your repo so it looks even more professional?
