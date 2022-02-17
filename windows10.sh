rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/GCngrok > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
nohup ./ngrok tcp 5900 &>/dev/null &
./ngrok tcp --region $CRP 5900 &>/dev/null &
echo Downloading File From akuh.net
echo "===================================="
sudo apt install qemu-system-x86 curl -y > /dev/null 2>&1
echo "===================================="
echo "Download windows files"
echo "===================================="
curl -L -o lite10.qcow2 https://app.vagrantup.com/thuonghai2711/boxes/WindowsQCOW2/versions/1.1.3/providers/qemu.box
echo "===================================="
echo "Wait"
echo "===================================="
echo "===================================="
echo "Starting Windows"
echo "===================================="
echo RDP Address:
echo "===================================="
echo "===================================="
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Ctrl+C To Copy"
echo "Wait 1-2 minute to finish bot"
echo "Dont Close This Tab"
echo "Please support akuh.net thank you"
echo "===================================="
echo "===================================="
echo "Username: akuh"
echo "Password: Akuh.Net"
echo "===================================="
echo "===================================="
sudo qemu-system-x86_64 -vnc :0 -hda lite10.qcow2  -smp cores=8  -m 12192M -machine usb=on -device usb-tablet > /dev/null 2>&1
sleep 43200

echo "===================================="
