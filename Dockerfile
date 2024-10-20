# Usando uma imagem base do OpenJDK
FROM openjdk:17-jdk-slim

# Instalar ferramentas adicionais
RUN apt-get update && apt-get install -y \
    curl \
    git \
    maven \
    gradle \
    bash \
    && apt-get clean && rm -rf /var/lib/apt/lists/*

# Define o diretório de trabalho
WORKDIR /workspace

# Expor a porta padrão do Java (ajuste conforme necessário)
EXPOSE 8080

# Comando para iniciar o container
CMD ["bash"]
