#Link: https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows&pivots=dotnet-9-0
#Topic: 2 Tutorial: Containerize a .NET app
dotnet new console -o App -n DotNet.Docker
cd App
dotnet run
# Hello world
#Rewrite code
dotnet run -- 5
dotnet publish -c Release
# LINK : https://learn.microsoft.com/en-us/dotnet/core/docker/build-container?tabs=windows&pivots=dotnet-9-0#create-the-dockerfile
# Writing the Dockerfile in App/
docker build -t counter-image -f Dockerfile .
docker create --name core-counter-console-app counter-image


docker start core-counter-console-app
docker attach --sig-proxy=false core-counter-console-app # The --sig-proxy=false parameter ensures that Ctrl+C doesn't stop the process in the container.
docker stop core-counter-console-app
docker rm core-counter-console-app
docker run -it --rm counter-image 3; # Input parameter max=3
docker run -it --rm --entrypoint "sh" counter-image; #In this example, ENTRYPOINT is changed to bash. The exit command is run which ends the process and stop the container. 
docker rmi counter-image
