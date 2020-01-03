##sample web ap to deploy
mkdir webapp
cd webapp
dotnet new mvc
dotnet build
dotnet run

##.dockerignore
bin\
obj\

#docker
docker images
docker build -t webapp .
docker run -d -p 8080:80 --name myapp webapp
docker images
docker ps - a

##dockerfile
FROM microsoft/dotnet:sdk AS build-env
WORKDIR /app

# Copy csproj and restore as distinct layers
COPY webapp/*.csproj ./
RUN dotnet restore

# Copy everything else and build
COPY ./webapp ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM microsoft/dotnet:aspnetcore-runtime
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "webapp.dll"]