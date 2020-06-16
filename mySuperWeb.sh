
# sudo killall -9 dotnet
sudo killall -9 myWebApp
sudo chmod +x /home/ec2-user/mySuperWeb/build_output/myWebApp
cd /home/ec2-user/mySuperWeb/build_output/
./myWebApp &
