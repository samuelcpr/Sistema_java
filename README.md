# Ambiente de Desenvolvimento Java com Docker

Este repositório contém a configuração para um ambiente de desenvolvimento Java utilizando Docker, permitindo o desenvolvimento e a execução de aplicações Java de forma simplificada. Ele está otimizado para uso com o Visual Studio Code.

## Pré-requisitos

- Docker e Docker Compose instalados
- Visual Studio Code instalado
- Extensão Remote - Containers para VS Code

## Estrutura do Repositório

. ├── Dockerfile ├── docker-compose.yml └── meu-projeto └── pom.xml


## Como Configurar

1. **Clone o Repositório**

   ```bash
   git clone https://github.com/seuusuario/seurepositorio.git
   cd seurepositorio

# Construir a Imagem Docker

Execute o seguinte comando no terminal:

`docker-compose build`

# Iniciar o Container

Para iniciar o container, use o comando:

`docker-compose up -d`

# Conectar ao Container no VS Code

Container... e selecione o container java-dev-container.

# Estrutura do Projeto
O projeto inclui um diretório chamado meu-projeto, que contém um arquivo pom.xml com a configuração do Maven. O pom.xml define as dependências e as configurações do compilador.

# Exemplo de pom.xml

```xml
<project xmlns="http://maven.apache.org/POM/4.0.0"
         xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
         xsi:schemaLocation="http://maven.apache.org/POM/4.0.0 http://maven.apache.org/xsd/maven-4.0.0.xsd">
    <modelVersion>4.0.0</modelVersion>

    <groupId>com.exemplo</groupId>
    <artifactId>meu-projeto</artifactId>
    <version>1.0-SNAPSHOT</version>

    <properties>
        <maven.compiler.source>17</maven.compiler.source>
        <maven.compiler.target>17</maven.compiler.target>
    </properties>

    <dependencies>
        <dependency>
            <groupId>junit</groupId>
            <artifactId>junit</artifactId>
            <version>4.12</version>
            <scope>test</scope>
        </dependency>
    </dependencies>

    <build>
        <plugins>
            <plugin>
                <groupId>org.apache.maven.plugins</groupId>
                <artifactId>maven-compiler-plugin</artifactId>
                <version>3.8.1</version>
                <configuration>
                    <source>17</source>
                    <target>17</target>
                </configuration>
            </plugin>
        </plugins>
    </build>
</project>
```
# Como Criar um Novo Projeto Java

Dentro do container, você pode criar um novo projeto Java usando o Maven:

````
cd /workspace
mvn archetype:generate -DgroupId=com.exemplo -DartifactId=meu-novo-projeto -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false

````

# Compilar e Executar o Projeto
Para compilar e executar o seu projeto Java, siga os passos abaixo:

>>Navegue até o diretório do seu projeto:

```bash
Copiar código
cd meu-projeto
Compile o projeto:``

bash
Copiar código
mvn clean package
Execute a aplicação:

bash
Copiar código
java -cp target/meu-projeto-1.0-SNAPSHOT.jar com.exemplo.App

```

Contribuição
Se você deseja contribuir, sinta-se à vontade para abrir um pull request ou relatar problemas.

Licença
Este projeto está licenciado sob a MIT License.


### Instruções de Uso

- **Substitua** `seuusuario` e `seurepositorio` pela sua informação real do GitHub.
- **Ajuste** qualquer parte da documentação conforme necessário para se adequar ao seu projeto e práticas.

Se precisar de mais ajuda ou ajustes, é só avisar!
