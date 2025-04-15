# 使用官方 Node.js 镜像作为基础
FROM node:18

# 设置工作目录
WORKDIR /app

# 拷贝依赖文件并安装依赖
COPY package*.json ./
RUN npm install

# 拷贝应用代码
COPY . .

# 暴露 Cloud Run 默认端口
EXPOSE 8080

# 使用环境变量中的 PORT（Cloud Run 会注入）
ENV PORT=8080

# 启动服务
CMD ["npm", "start"]

