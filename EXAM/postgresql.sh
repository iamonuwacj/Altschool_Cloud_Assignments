#!/bin/bash
sudo apt upgrade -y
sudo apt install postgresql postgresql-contrib -y
sudo passwd postgres <<-'EOF'
1234
1234
EOF
sudo su - postgres -c "createuser chinedu"
sudo su - postgres -c "createdb chinedudb"
sudo -u postgres psql <<-'EOF'
GRANT ALL PRIVILEGES ON DATABASE kylodb TO kylo;
EOF
