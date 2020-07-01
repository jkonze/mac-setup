# Mac Setup Files

- Git setup
    - git config --global user.name "Firstname Lastname"
    - git config --global user.email "your@email.com"
- SSH setup
    - ssh-keygen -t rsa -b 4096 -C "your_email@example.com"
    - eval "$(ssh-agent -s)"
    - ssh-add -K ~/.ssh/id_rsa

`sudo chmod +x setup.sh && sudo ./setup.sh`

Remember to install Intelij