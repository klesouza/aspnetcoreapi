FROM microsoft/dotnet:latest

RUN mkdir /app
WORKDIR /app
COPY src/project.json project.json
RUN dotnet restore
COPY src/ .
EXPOSE 5000
CMD ["dotnet", "run"]

#docker build -f aspnetcoreapi .
#docker run -p 5000:5000 --name aspnetcoreapi aspnetcoreapi