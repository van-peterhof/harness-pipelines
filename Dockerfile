FROM mcr.microsoft.com/dotnet/sdk:8.0 AS build-env
WORKDIR /app

copy src/Peterhof.Web ./

RUN dotnet restore 
RUN dotnet build -c Release
RUN dotnet publish -c Release -o out


FROM mcr.microsoft.com/dotnet/sdk:8.0
WORKDIR /app
COPY --from=build-env /app/out .
ENTRYPOINT ["dotnet", "Peterhof.Web.dll"]