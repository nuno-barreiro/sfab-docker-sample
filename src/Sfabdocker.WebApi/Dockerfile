FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build-env
WORKDIR /app

# Restore project dependencies
COPY *.csproj ./
RUN dotnet restore

# Copy all other files and build to output directory
COPY . ./
RUN dotnet publish -c Release -o out

# Build runtime image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1 AS build-runtime
WORKDIR /app

COPY --from=build-env /app/out .
ENTRYPOINT [ "dotnet", "Sfabdocker.WebApi.dll" ]

EXPOSE 80