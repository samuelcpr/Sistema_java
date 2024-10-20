# Ambiente de Desenvolvimento Java com Docker

# Este repositório contém a configuração para um ambiente de desenvolvimento Java utilizando Docker,
# permitindo o desenvolvimento e a execução de aplicações Java de forma simplificada.
# Ele está otimizado para uso com o Visual Studio Code.

# Pré-requisitos
echo "Pré-requisitos:"
echo "- Docker e Docker Compose instalados"
echo "- Visual Studio Code instalado"
echo "- Extensão Remote - Containers para VS Code"

# Estrutura do Repositório
echo "Estrutura do Repositório:"
echo "."
echo "├── Dockerfile"
echo "├── docker-compose.yml"
echo "└── meu-projeto"
echo "    └── pom.xml"

# Como Configurar
echo "Como Configurar:"

# Clonar o Repositório
echo "1. Clone o Repositório"
echo "   git clone https://github.com/seuusuario/seurepositorio.git"
echo "   cd seurepositorio"

# Construir a Imagem Docker
echo "# Construir a Imagem Docker"
echo "Execute o seguinte comando no terminal:"
echo "docker-compose build"

# Iniciar o Container
echo "# Iniciar o Container"
echo "Para iniciar o container, use o comando:"
echo "docker-compose up -d"

# Conectar ao Container no VS Code
echo "# Conectar ao Container no VS Code"
echo "Abra o comando de paleta do VS Code e selecione 'Remote-Containers: Attach to Running Container...'"
echo "e selecione o container java-dev-container."

# Estrutura do Projeto
echo "# Estrutura do Projeto"
echo "O projeto inclui um diretório chamado meu-projeto, que contém um arquivo pom.xml com a configuração do Maven."
echo "O pom.xml define as dependências e as configurações do compilador."

# Exemplo de pom.xml
echo "# Exemplo de pom.xml"
cat << 'EOF'
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
EOF

# Como Criar um Novo Projeto Java
echo "# Como Criar um Novo Projeto Java"
echo "Dentro do container, você pode criar um novo projeto Java usando o Maven:"
cat << 'EOF'
cd /workspace
mvn archetype:generate -DgroupId=com.exemplo -DartifactId=meu-novo-projeto -DarchetypeArtifactId=maven-archetype-quickstart -DinteractiveMode=false
EOF

# Compilar e Executar o Projeto
echo "# Compilar e Executar o Projeto"
echo "Para compilar e executar o seu projeto Java, siga os passos abaixo:"
echo "Navegue até o diretório do seu projeto:"
cat << 'EOF'
cd meu-projeto
# Compile o projeto:
mvn clean package
# Execute a aplicação:
java -cp target/meu-projeto-1.0-SNAPSHOT.jar com.exemplo.App
EOF

# Contribuição
echo "Contribuição"
echo "Se você deseja contribuir, sinta-se à vontade para abrir um pull request ou relatar problemas."

# Licença
echo "Licença"
echo "Este projeto está licenciado sob a MIT License."

# Instruções de Uso
echo "Instruções de Uso:"
echo "- Substitua seuusuario e seurepositorio pela sua informação real do GitHub."
echo "- Ajuste qualquer parte da documentação conforme necessário para se adequar ao seu projeto e práticas."
