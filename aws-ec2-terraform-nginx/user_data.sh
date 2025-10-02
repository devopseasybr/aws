#!/bin/bash
# Atualiza pacotes
yum update -y

# Instala NGINX
amazon-linux-extras enable nginx1
yum install -y nginx

# Cria página HTML mais bonita
cat <<EOT > /usr/share/nginx/html/index.html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Terraform + EC2 + NGINX</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #4facfe, #00f2fe);
            color: #fff;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
            text-align: center;
        }
        h1 {
            font-size: 3em;
            text-shadow: 2px 2px 4px rgba(0,0,0,0.3);
        }
        p {
            font-size: 1.2em;
        }
        .container {
            background: rgba(0,0,0,0.3);
            padding: 30px 50px;
            border-radius: 15px;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>🚀 Hello from Terraform + EC2 + NGINX!</h1>
        <p>Este é um exemplo de página estática criada via Terraform e User Data.</p>
    </div>
</body>
</html>
EOT

# Inicia e habilita o NGINX
systemctl start nginx
systemctl enable nginx

