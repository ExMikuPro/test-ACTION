# 第一阶段：构建阶段
FROM oven/bun:1 AS build

# 设置环境变量（让 Bun 可执行）
#ENV PATH="/root/.bun/bin:$PATH"

# 设置工作目录
WORKDIR /app

# 复制项目代码到容器
COPY apps/backend/dist/. .

CMD ["bun run index.js"]
