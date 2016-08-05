# 生产环境
FROM r-klg.com/rfoo:base

WORKDIR /apps/rfoo
RUN mv ./node_modules ../ &&\
		rm -rf * &&\
		mv ../node_modules ./

ADD . .

RUN npm install --production &&\
	npm cache clean
EXPOSE 8008
CMD ["npm","start"]
