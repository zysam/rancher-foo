# 第一次时构建基础镜像
FROM r-klg.com/klg-node-4x:latest

WORKDIR /apps/rfoo
COPY . .

RUN npm install --production &&\
	npm cache clean
EXPOSE 8008
CMD ["npm","start"]
