FROM ubuntu:jammy
run apt update && apt install -y nano && groupadd -g 30025 "domain_users"
run useradd -m -u 30017 -g 30025 alu10549284
user alu10549284
workdir /home/alu10549284
cmd ["/bin/bash"]
