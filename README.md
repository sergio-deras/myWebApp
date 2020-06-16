Next steps:
* Check if we can constuct correctly targeting linux_64 and not using the dotnet runtime 
* Use containers


Main issues:
* The root path of the app, CSS files and wwwroot are not used if the app is not running here, there should be a config path


Quick steps
* Create a CodePipeline
* Configure the source
* Configure a Build with CodeBuild
* Create a LConfig 
* Create a AS with 

#!/bin/bash
sudo yum -y update
sudo yum install -y ruby
sudo yum install -y wget
#sudo rpm -Uvh https://packages.microsoft.com/config/centos/7/packages-microsoft-prod.rpm
#sudo yum install -y aspnetcore-runtime-3.1
cd /home/ec2-user
wget https://aws-codedeploy-us-east-1.s3.us-east-1.amazonaws.com/latest/install
chmod +x ./install
sudo ./install auto

Two roles are needed
* One for the EC2 to access S3 artifacts
* One to allow CodeDeploy to use AS resources


Create with
- dotnet new webApp -o myWebApp --no-https

Build process
- dotnet build

Publish (create a deployable app in Win 64)
- dotnet publish -r win-x64

Publish an app cross-platform runtime-dependent. An executable that targets your current platform is created along with the dll file.
- dotnet publish

Publish a Linux x64 deployable
- dotnet publish -r linux-x64

You can indicate the output folder with -o


https://docs.microsoft.com/en-us/aspnet/core/host-and-deploy/?view=aspnetcore-3.1
https://docs.microsoft.com/en-us/dotnet/core/deploying/


https://stackoverflow.com/questions/53291534/how-to-deploy-a-dotnet-core-app-using-aws-codepipeline-to-elasticbeanstalk/53294280

https://aws.amazon.com/blogs/developer/exploring-asp-net-core-part-1-deploying-from-github/