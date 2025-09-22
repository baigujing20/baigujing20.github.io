# 使用 OpenJDK 作为基础镜像
FROM openjdk:21-jre-slim

# 设置工作目录
WORKDIR /usr/src/app/

# 将 JAR 文件复制到容器中
COPY vmq.war /usr/src/app/

# 暴露应用的端口
EXPOSE 8080

# 定义容器启动时执行的命令
CMD ["java", "-jar", "vmq.war"]