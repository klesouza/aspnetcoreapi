FROM microsoft/dotnet:latest

RUN mkdir /app
WORKDIR /app
COPY src/project.json project.json
RUN dotnet restore
COPY src/ .
EXPOSE 5000
CMD ["dotnet", "run"]