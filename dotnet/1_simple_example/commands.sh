#Link: https://learn.microsoft.com/en-us/dotnet/core/docker/introduction
# Topic: 1 Introduction to .NET and Docker
dotnet new webapp -o 1_simple_example_app
dotnet publish -t:PublishContainer
docker run --rm -d -p 8000:8080 1_simple_example_app
curl -s http://localhost:8000 | grep ASP.NET
docker stop 29f707aadb11
