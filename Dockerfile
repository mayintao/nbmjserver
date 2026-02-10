# 1️⃣ 使用 OpenJDK 17 作为基础镜像（Temurin 版，官方推荐替代）
FROM eclipse-temurin:17-jdk-jammy

WORKDIR /app

# 安装 wget
RUN apt-get update && apt-get install -y wget

# 下载 GitHub Releases 里的 JAR
RUN wget -O app.jar "https://github.com/mayintao/nbmjserver/releases/download/nbmjserver-0210-1/app-0.0.1-SNAPSHOT.jar"

# 让 Docker 监听 10000 端口
EXPOSE 10000

# 运行 JAR
CMD ["java", "-jar", "app.jar"]
