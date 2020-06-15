Create with
- dotnet new webApp -o myWebApp --no-https

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